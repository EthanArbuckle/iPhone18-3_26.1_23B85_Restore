_BYTE *storeEnumTagSinglePayload for PommesResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223171C60()
{
  result = qword_27D0591D0;
  if (!qword_27D0591D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591D0);
  }

  return result;
}

unint64_t sub_223171CB8()
{
  result = qword_280FCCBC0;
  if (!qword_280FCCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBC0);
  }

  return result;
}

unint64_t sub_223171D10()
{
  result = qword_280FCCBC8;
  if (!qword_280FCCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return type metadata accessor for PommesResultCandidateMessage.Builder(0);
}

id PommesTRPCandidateMessage.pommesResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_223171E0C(v2, v3);
}

id sub_223171E0C(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void *PommesTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return PommesTRPCandidateMessage.init(build:)(v2, v0);
}

void *PommesTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v110 = a2;
  v111 = a1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v102 = &v93 - v4;
  v5 = sub_2231FFF44();
  v6 = OUTLINED_FUNCTION_9(v5);
  v104 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v103 = v11 - v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v93 - v14;
  v16 = sub_2231FFDA4();
  v17 = OUTLINED_FUNCTION_9(v16);
  v106 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v101 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v93 - v23;
  v24 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v29 = (v28 - v27);
  *v29 = 15;
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  v30 = v25[8];
  __swift_storeEnumTagSinglePayload(v28 - v27 + v30, 1, 1, v16);
  v31 = &v29[v25[9]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v29[v25[10]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v29[v25[11]];
  v108 = v16;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v16);
  v34 = &v29[v25[12]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v29[v25[13]];
  *v35 = 0;
  v35[8] = -1;
  v36 = v25[14];
  v105 = v5;
  __swift_storeEnumTagSinglePayload(&v29[v36], 1, 1, v5);
  v37 = &v29[v25[15]];
  *v37 = 0;
  v37[1] = 0;
  v111(v29);
  v38 = *v29;
  if (v38 == 15 || !*(v29 + 2))
  {
    goto LABEL_14;
  }

  v110 = *(v29 + 2);
  LODWORD(v111) = v38;
  v100 = *(v29 + 1);
  sub_2230D3008(&v29[v30], v15, &qword_27D0575C0, &qword_2232035E0);
  v39 = v108;
  if (__swift_getEnumTagSinglePayload(v15, 1, v108) == 1)
  {
    sub_2230D40E0(v15, &qword_27D0575C0, &qword_2232035E0);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v64 = sub_223200014();
    __swift_project_value_buffer(v64, qword_280FCE830);
    v65 = sub_223200004();
    v66 = sub_223200254();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v113 = v68;
      *v67 = 136446210;
      v69 = sub_2230F7898();
      v71 = sub_2231A5D38(v69, v70, &v113);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_2230CE000, v65, v66, "Could not build %{public}s: Builder has missing required fields", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    v72 = v112;
    sub_223172720(v29);
    type metadata accessor for PommesTRPCandidateMessage(0);
    v73 = *((*MEMORY[0x277D85000] & *v72) + 0x30);
    v74 = *((*MEMORY[0x277D85000] & *v72) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = v106;
  v41 = *(v106 + 32);
  v42 = v15;
  v99 = v106 + 32;
  v43 = v41;
  v41(v107, v42, v39);
  v44 = *(v31 + 1);
  v45 = v39;
  if (!v44)
  {
    (*(v40 + 8))(v107, v39);
    goto LABEL_14;
  }

  if (!*(v32 + 1) || (v46 = *(v34 + 1)) == 0 || (v47 = v35[8], v47 == 255))
  {
    (*(v106 + 8))(v107, v45);
    goto LABEL_14;
  }

  v98 = *(v32 + 1);
  ObjectType = v44;
  v48 = *v32;
  v95 = *v31;
  v96 = v48;
  v94 = *v34;
  v49 = *v35;
  v50 = v46;
  sub_223171E0C(*v35, v47 & 1);
  v51 = v101;
  sub_2231FFD94();
  v52 = v112;
  v43(v112 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v51, v108);
  v53 = (v52 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId);
  *v53 = v94;
  v53[1] = v50;
  v101 = v50;
  v54 = v52 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult;
  v55 = v49;
  *v54 = v49;
  *(v54 + 8) = v47 & 1;
  v56 = v102;
  sub_2230D3008(&v29[v36], v102, &qword_27D0591A8, &unk_223211810);
  v57 = v105;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v105);
  v59 = v47;
  v97 = v49;
  if (EnumTagSinglePayload == 1)
  {
    v61 = v103;
    v60 = v104;
    (*(v104 + 104))(v103, *MEMORY[0x277D56670], v57);
    v62 = __swift_getEnumTagSinglePayload(v56, 1, v57);
    v63 = v59;
    sub_2231741F8(v55, v59);

    if (v62 != 1)
    {
      sub_2230D40E0(v56, &qword_27D0591A8, &unk_223211810);
    }
  }

  else
  {
    v61 = v103;
    v60 = v104;
    (*(v104 + 32))(v103, v56, v57);
    v63 = v59;
    sub_2231741F8(v55, v59);
  }

  (*(v60 + 32))(v112 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason, v61, v57);
  v77 = v37[1];
  v78 = v107;
  if (v77)
  {
    v79 = *v37;
    v80 = v37[1];

    v82 = v106;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v83 = sub_223200014();
    __swift_project_value_buffer(v83, qword_280FCE830);
    v84 = sub_223200004();
    v85 = sub_223200254();
    v86 = os_log_type_enabled(v84, v85);
    v82 = v106;
    if (v86)
    {
      OUTLINED_FUNCTION_18_9();
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_2230CE000, v84, v85, "Warning: PommesTRPCandidateMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v87, 2u);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    v77 = 0x80000002232216F0;
    v79 = 0xD000000000000024;
  }

  v88 = v97;
  MEMORY[0x28223BE20](v81);
  *(&v93 - 80) = v111;
  v89 = v110;
  *(&v93 - 9) = v100;
  *(&v93 - 8) = v89;
  v90 = v95;
  *(&v93 - 7) = v78;
  *(&v93 - 6) = v90;
  v91 = v96;
  *(&v93 - 5) = ObjectType;
  *(&v93 - 4) = v91;
  *(&v93 - 3) = v98;
  *(&v93 - 2) = v79;
  *(&v93 - 1) = v77;
  v75 = TRPCandidateRequestMessageBase.init(build:)(sub_223174210);
  v92 = v75;
  sub_223174250(v88, v63);

  sub_223172720(v29);
  if (v75)
  {
  }

  (*(v82 + 8))(v78, v108);
  return v75;
}

uint64_t sub_223172720(uint64_t a1)
{
  v2 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22317279C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D40E0(a1 + v20, &qword_27D0575C0, &qword_2232035E0);
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

uint64_t PommesTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.sessionId.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 24));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.pegasusId.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 36));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

id PommesTRPCandidateMessage.Builder.pommesResult.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_7() + 44);
  v3 = *v2;
  *v0 = *v2;
  v4 = *(v2 + 8);
  *(v0 + 8) = v4;

  return sub_2231741F8(v3, v4);
}

void PommesTRPCandidateMessage.Builder.pommesResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for PommesTRPCandidateMessage.Builder(0) + 44);
  sub_223174250(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t PommesTRPCandidateMessage.Builder.searchReason.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 48));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_16_7() + 52));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t PommesTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 52));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_223172F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4973757361676570 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x724573656D6D6F70 && a2 == 0xEB00000000726F72;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000223224520 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_2232006B4();

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

unint64_t sub_223173120(char a1)
{
  result = 0x4973757361676570;
  switch(a1)
  {
    case 1:
      result = 0x6449756374;
      break;
    case 2:
      result = 0x655273656D6D6F70;
      break;
    case 3:
      result = 0x724573656D6D6F70;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231731DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223172F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223173204(uint64_t a1)
{
  v2 = sub_223174274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223173240(uint64_t a1)
{
  v2 = sub_223174274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesTRPCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v93 = &v89 - v5;
  v6 = sub_2231FFF44();
  v94 = OUTLINED_FUNCTION_9(v6);
  v95 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v97 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v96 = (v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591D8, &qword_223211A30);
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v89 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_223174274();
  sub_223200794();
  if (v1)
  {
    v30 = v13;
    LODWORD(v32) = 0;
    v33 = 0;
    v34 = 0;
    v35 = OS_LOG_TYPE_DEFAULT;
    v36 = v99;
    goto LABEL_4;
  }

  v92 = v12;
  LOBYTE(v100) = 0;
  sub_2230D45E8(&qword_27D057ED0);
  v31 = v96;
  sub_223200554();
  v42 = v98;
  (*(v97 + 32))(v98 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v31, v13);
  LOBYTE(v100) = 1;
  v43 = sub_2232004F4();
  v30 = v13;
  v44 = (v42 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId);
  *v44 = v43;
  v44[1] = v45;
  v102 = 2;
  sub_2230FB7A0();
  sub_2232004C4();
  v36 = v99;
  v96 = v27;
  v91 = v20;
  v46 = v101;
  v32 = v101 >> 60;
  v33 = v22;
  if (v101 >> 60 == 15)
  {
    v102 = 3;
    sub_223171720();
    sub_2232004C4();
    v47 = v95;
    v51 = v100;
    if (v100 == 10)
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v52 = sub_223200014();
      __swift_project_value_buffer(v52, qword_280FCE830);
      v53 = sub_223200004();
      v35 = sub_223200254();
      if (os_log_type_enabled(v53, v35))
      {
        OUTLINED_FUNCTION_18_9();
        v54 = swift_slowAlloc();
        LODWORD(v32) = v54;
        *v54 = 0;
        OUTLINED_FUNCTION_21_6(&dword_2230CE000, v55, v56, "Unable to deserialize TCU-mapped POMMES result: encoded data contained neither PommesResponse nor PommesError");
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      sub_223171774();
      v57 = swift_allocError();
      OUTLINED_FUNCTION_6_17(v57, v58);
LABEL_38:
      v76 = OUTLINED_FUNCTION_19_2();
      v77(v76, v91);
      v34 = 0;
      OUTLINED_FUNCTION_11_11();
      goto LABEL_4;
    }
  }

  else
  {
    v90 = v22;
    v48 = v100;
    sub_2231717C8();
    sub_2231FFFF4();
    v49 = sub_223200264();
    v50 = v46;
    v47 = v95;
    v51 = v49;
    v89 = v48;
    if (!v49)
    {
      v33 = v90;
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v70 = sub_223200014();
      __swift_project_value_buffer(v70, qword_280FCE830);
      v71 = sub_223200004();
      v35 = sub_223200254();
      if (os_log_type_enabled(v71, v35))
      {
        OUTLINED_FUNCTION_18_9();
        v72 = swift_slowAlloc();
        LODWORD(v32) = v72;
        *v72 = 0;
        _os_log_impl(&dword_2230CE000, v71, v35, "Unable to deserialize TCU-mapped POMMES result: encoded PommesResponse data was not unarchivable", v72, 2u);
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780](v73);
      }

      sub_223171774();
      v74 = swift_allocError();
      OUTLINED_FUNCTION_6_17(v74, v75);
      sub_22310A610(v89, v50);
      goto LABEL_38;
    }

    sub_22310A610(v89, v50);
    v33 = v90;
  }

  v59 = v98 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult;
  *v59 = v51;
  v59[8] = v32 > 0xE;
  LOBYTE(v100) = 4;
  v32 = v91;
  sub_223200494();
  if (v60)
  {
    v61 = v93;
    sub_2231FFF24();
    if (__swift_getEnumTagSinglePayload(v61, 1, v94) != 1)
    {
      v78 = *(v47 + 32);
      v79 = OUTLINED_FUNCTION_2_1();
      v80(v79);
      v81 = *(v47 + 16);
      v82 = OUTLINED_FUNCTION_17_6(OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason);
      v83 = v94;
      v84(v82);
      sub_2230F7158(v36, &v100);
      v85 = TRPCandidateRequestMessageBase.init(from:)(&v100);
      v86 = v83;
      v34 = v85;
      (*(v47 + 8))(v92, v86);
      v87 = OUTLINED_FUNCTION_19_2();
      v88(v87, v32);
      __swift_destroy_boxed_opaque_existential_1(v36);
      return v34;
    }

    sub_2230D40E0(v61, &qword_27D0591A8, &unk_223211810);
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v62 = sub_223200014();
  __swift_project_value_buffer(v62, qword_280FCE830);
  v63 = sub_223200004();
  v35 = sub_223200254();
  if (os_log_type_enabled(v63, v35))
  {
    OUTLINED_FUNCTION_18_9();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_21_6(&dword_2230CE000, v64, v65, "Unable to deserialize TCU-mapped POMMES result: encoded data had missing or invalid PommesSearchReason raw value");
    v32 = v91;
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
  }

  sub_223171774();
  v66 = swift_allocError();
  OUTLINED_FUNCTION_6_17(v66, v67);
  v68 = OUTLINED_FUNCTION_19_2();
  v69(v68, v32);
  OUTLINED_FUNCTION_11_11();
  v34 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v36);
  if ((v35 & 1) == 0)
  {
    v37 = v98;
    if (v32)
    {
      (*(v97 + 8))(v98 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v30);
      if (!v33)
      {
        goto LABEL_7;
      }
    }

    else if (!v33)
    {
LABEL_7:
      if (!v34)
      {
LABEL_9:
        type metadata accessor for PommesTRPCandidateMessage(0);
        v38 = *((*MEMORY[0x277D85000] & *v37) + 0x30);
        v39 = *((*MEMORY[0x277D85000] & *v37) + 0x34);
        swift_deallocPartialClassInstance();
        return v34;
      }

LABEL_8:
      sub_223174268(*(v37 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult), *(v37 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8));
      goto LABEL_9;
    }

    v41 = *(v37 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId + 8);

    if (!v34)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return v34;
}

uint64_t sub_223173C10(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591E0, &qword_223211A38);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223174274();
  sub_2232007A4();
  LOBYTE(v23[0]) = 0;
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  OUTLINED_FUNCTION_8_2();
  sub_223200654();
  if (!v2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId);
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId + 8);
    LOBYTE(v23[0]) = 1;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8))
    {
      LOBYTE(v23[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
      sub_22317180C();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
LABEL_9:
      sub_2231FFF34();
      LOBYTE(v23[0]) = 4;
      OUTLINED_FUNCTION_8_2();
      sub_2232005F4();

      sub_2231E5494(a1);
      goto LABEL_3;
    }

    v23[0] = 0;
    v16 = [objc_opt_self() archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v23];
    v17 = v23[0];
    if (v16)
    {
      v22 = v15;
      v18 = sub_2231FFD24();
      v20 = v19;

      v23[0] = v18;
      v23[1] = v20;
      sub_2230D7754();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_223174268(v22, 0);
      sub_2230D94DC(v18, v20);
      goto LABEL_9;
    }

    v21 = v17;
    sub_2231FFD04();

    swift_willThrow();
    sub_223174268(v15, 0);
  }

LABEL_3:
  v11 = OUTLINED_FUNCTION_10_12();
  result = v12(v11);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223174034()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId + 8);

  sub_223174268(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8));
  v5 = OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason;
  v6 = sub_2231FFF44();
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 8);

  return v8(v0 + v5);
}

id PommesTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PommesTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2231741F8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_223171E0C(result, a2 & 1);
  }

  return result;
}

void sub_223174250(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_223174268(a1, a2 & 1);
  }
}

void sub_223174268(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_223174274()
{
  result = qword_280FCD1B8;
  if (!qword_280FCD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1B8);
  }

  return result;
}

uint64_t sub_2231742D0()
{
  result = sub_2231FFDA4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2231FFF44();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_223174404()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231745E4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223174580();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231745E4(319, qword_280FCA550, MEMORY[0x277D56678]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740);
            v1 = v11;
            if (v12 <= 0x3F)
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

void sub_223174580()
{
  if (!qword_280FCA338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0591E8, &qword_223217BC0);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA338);
    }
  }
}

void sub_2231745E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PommesTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223174718()
{
  result = qword_27D0591F0;
  if (!qword_27D0591F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591F0);
  }

  return result;
}

unint64_t sub_223174770()
{
  result = qword_280FCD1A8;
  if (!qword_280FCD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1A8);
  }

  return result;
}

unint64_t sub_2231747C8()
{
  result = qword_280FCD1B0;
  if (!qword_280FCD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return type metadata accessor for PommesTRPCandidateMessage.Builder(0);
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t static AjaxMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 6);
  v18 = *(a1 + 5);
  v19 = *(a1 + 4);
  v4 = *(a1 + 7);
  v5 = a1[64];
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v16 = *(a2 + 7);
  v17 = *(a2 + 6);
  v15 = a2[64];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a1 + 2);
  v26 = *(a1 + 1);
  v27 = v11;
  v20 = v9;
  v21 = v10;

  v12 = static QueryType.== infix(_:_:)(&v26, &v20);

  if (v12)
  {
    v26 = v2;
    v27 = v19;
    v28 = v18;
    v29 = v3;
    v30 = v4;
    v31 = v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    sub_22317716C();
    OUTLINED_FUNCTION_26_2();
    sub_22317716C();
    v13 = static AjaxMetadata.AjaxQuery.== infix(_:_:)(&v26, &v20);
    OUTLINED_FUNCTION_26_2();
    sub_22311DE7C();
    sub_22311DE7C();
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t AjaxMetadata.queryType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t AjaxMetadata.init(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEE4();

  v2 = v34;
  if (v34 == 4)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_223200014();
    __swift_project_value_buffer(v3, qword_280FCE830);
    v4 = sub_223200004();
    v5 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v5))
    {
      v6 = OUTLINED_FUNCTION_72();
      *v6 = 0;
      OUTLINED_FUNCTION_62_0();
      _os_log_impl(v7, v8, v9, v10, v6, 2u);
      OUTLINED_FUNCTION_14();
    }

    v2 = 3;
  }

  v33 = v2;
  swift_getKeyPath();
  sub_2231FFEE4();

  v11 = v36;
  if (v36 >> 1 == 0xFFFFFFFF)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v12 = sub_223200014();
    __swift_project_value_buffer(v12, qword_280FCE830);
    v13 = sub_223200004();
    v14 = sub_223200254();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_72();
      *v15 = 0;
      _os_log_impl(&dword_2230CE000, v13, v14, "AjaxMetadata: missing query. Converting from queryType", v15, 2u);
      OUTLINED_FUNCTION_14();
    }

    swift_getKeyPath();
    sub_2231FFEE4();

    v17 = v34;
    v18 = v35;
    if (v35)
    {
      if (v35 != 1)
      {
        MEMORY[0x28223BE20](v16);
        sub_2230D7C34(v34, v35);
        sub_2230D827C();

        OUTLINED_FUNCTION_67();

        sub_2230D7BB4(v34, v35);
        result = sub_2230D7BB4(v34, v35);
        v32 = v34;
        v27 = v35;
        v29 = v37;
        v28 = v38;
        v30 = v39;
        v11 = v36 | 0x8000000000000000;
        goto LABEL_25;
      }

      v19 = sub_223200004();
      v20 = sub_223200254();
      if (OUTLINED_FUNCTION_61(v20))
      {
        v21 = OUTLINED_FUNCTION_72();
        *v21 = 0;
        OUTLINED_FUNCTION_62_0();
        _os_log_impl(v22, v23, v24, v25, v21, 2u);
        OUTLINED_FUNCTION_14();
      }

      sub_2230D7C48();
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1();

      v18 = 0;
      v17 = 0;
    }

    else
    {
      sub_2230D7C48();
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1();
    }

    v30 = 0;
    v32 = v34;
    v27 = v35;
    v11 = v36;
    v29 = v37;
    v28 = v38;
LABEL_25:
    v31 = v33;
    goto LABEL_26;
  }

  v27 = v35;
  v29 = v37;
  v28 = v38;
  v30 = v39;
  swift_getKeyPath();
  sub_2231FFEE4();

  v18 = v35;
  if (v35 == 1)
  {
    v31 = v33;
    if ((v36 & 0x8000000000000000) != 0)
    {

      v17 = v34;
      v18 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    v17 = v34;
    v31 = v33;
  }

  v32 = v34;
LABEL_26:
  *a1 = v31;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v32;
  *(a1 + 32) = v27;
  *(a1 + 40) = v11;
  *(a1 + 48) = v29;
  *(a1 + 56) = v28;
  *(a1 + 64) = v30;
  return result;
}

uint64_t AjaxMetadata.Builder.queryType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

uint64_t sub_223174E8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(v2 + 64);
  return a1();
}

__n128 AjaxMetadata.Builder.query.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  sub_223179448(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t sub_223174F38(uint64_t a1)
{
  v2 = sub_22317945C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223174F74(uint64_t a1)
{
  v2 = sub_22317945C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223174FB0(uint64_t a1)
{
  v2 = sub_2231794B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223174FEC(uint64_t a1)
{
  v2 = sub_2231794B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.CorrectionOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591F8, &qword_223211C90);
  OUTLINED_FUNCTION_9(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059200, &qword_223211C98);
  OUTLINED_FUNCTION_9(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v40 = v25[3];
  v41 = v25[4];
  OUTLINED_FUNCTION_5_3(v25);
  sub_22317945C();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_2231794B0();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  (*(v28 + 8))(v33, v26);
  (*(v36 + 8))(v21, v34);
  OUTLINED_FUNCTION_9_0();
}

uint64_t AjaxMetadata.AjaxQuery.CorrectionOutcome.hashValue.getter()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void AjaxMetadata.AjaxQuery.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059218, &qword_223211CA0);
  OUTLINED_FUNCTION_9(v4);
  v46 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059220, &unk_223211CA8);
  OUTLINED_FUNCTION_9(v11);
  v47 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_16();
  v16 = v3[3];
  v17 = v3[4];
  OUTLINED_FUNCTION_5_3(v3);
  sub_22317945C();
  sub_223200794();
  if (v0)
  {
    goto LABEL_10;
  }

  v44 = v10;
  v45 = v3;
  v18 = sub_223200594();
  v19 = sub_2230E0B80(v18, 0);
  v21 = v1;
  if (v22 == v20 >> 1)
  {
    v46 = v19;
LABEL_9:
    v35 = v11;
    v36 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v38 = &type metadata for AjaxMetadata.AjaxQuery.CorrectionOutcome;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v40 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v36);
    (*(v41 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v47 + 8))(v21, v35);
    v3 = v45;
LABEL_10:
    v42 = v3;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_61_0();
  if (v24 == v25)
  {
    __break(1u);
    return;
  }

  v26 = sub_2230E0B40(v23 + 1);
  v28 = v27;
  v30 = v29;
  swift_unknownObjectRelease();
  v31 = v28 == v30 >> 1;
  v32 = v45;
  v33 = v46;
  if (!v31)
  {
    v46 = v26;
    goto LABEL_9;
  }

  sub_2231794B0();
  v34 = v44;
  sub_223200474();
  swift_unknownObjectRelease();
  (*(v33 + 8))(v34, v4);
  (*(v47 + 8))(v21, v11);
  v42 = v32;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v42);
  OUTLINED_FUNCTION_9_0();
}

uint64_t AjaxMetadata.AjaxQuery.ImplicitQuery.redactedUtterance.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t static AjaxMetadata.AjaxQuery.ImplicitQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_38_1(a1, a2);
    v11 = v11 && v9 == v10;
    if (v11)
    {
      if (v2 != v6)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v12 = sub_2232006B4();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v5)
    {
      return result;
    }
  }

  if (((v2 ^ v6) & 1) == 0)
  {
LABEL_13:
    if (v4)
    {
      if (v7)
      {
        if (v3 == v8 && v4 == v7)
        {
          return 1;
        }

        OUTLINED_FUNCTION_2_1();
        if (sub_2232006B4())
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2231756E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000223224190 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

unint64_t sub_223175800(char a1)
{
  result = 0xD000000000000011;
  if (!a1)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_223175858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231756E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223175880(uint64_t a1)
{
  v2 = sub_223179504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231758BC(uint64_t a1)
{
  v2 = sub_223179504();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.ImplicitQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059228, &qword_223211D18);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v14 = v0[4];
  v15 = v0[3];
  v13 = v4[3];
  OUTLINED_FUNCTION_29(v4, v13);
  sub_223179504();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_30_2();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_4();
    sub_223179558();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  (*(v7 + 8))(v2, v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.ImplicitQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_8_1();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059240, &qword_223211D20);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v24 = v15[3];
  v25 = v15[4];
  OUTLINED_FUNCTION_5_3(v15);
  sub_223179504();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v26 = sub_223200494();
    v28 = v27;
    OUTLINED_FUNCTION_29_4();
    sub_2231795AC();
    OUTLINED_FUNCTION_19_3();
    sub_2232004C4();
    OUTLINED_FUNCTION_77();
    v29 = sub_223200494();
    v31 = v30;
    v32 = v29;
    (*(v20 + 8))(v13, v18);
    *v17 = v26;
    *(v17 + 8) = v28;
    *(v17 + 16) = a12;
    *(v17 + 24) = v32;
    *(v17 + 32) = v31;

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t AjaxMetadata.AjaxQuery.ExplicitQuery.redactedUtterance.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t static AjaxMetadata.AjaxQuery.ExplicitQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_38_1(a1, a2);
    v13 = v13 && v11 == v12;
    if (v13)
    {
      if (v2 != v7)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v14 = sub_2232006B4();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v6)
    {
      return result;
    }
  }

  if (((v2 ^ v7) & 1) == 0)
  {
LABEL_13:
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }

      v16 = v3 == v9 && v4 == v8;
      if (!v16 && (sub_2232006B4() & 1) == 0)
      {
        return 0;
      }

LABEL_22:
      if (v5 == 6)
      {
        if (v10 != 6)
        {
          return 0;
        }
      }

      else if (v10 == 6 || (sub_223106D04(v5, v10) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    return 0;
  }

  return result;
}

uint64_t sub_223175E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72656E74726170 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_223175F64(char a1)
{
  result = 0x72656E74726170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_223175FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223175E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223176020(uint64_t a1)
{
  v2 = sub_223179600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317605C(uint64_t a1)
{
  v2 = sub_223179600();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.ExplicitQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059250, &qword_223211DA8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v0;
  v12 = v0[1];
  v17 = *(v0 + 16);
  v15 = v0[4];
  v16 = v0[3];
  v14 = *(v0 + 40);
  v13 = v4[3];
  OUTLINED_FUNCTION_29(v4, v13);
  sub_223179600();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_30_2();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_4();
    sub_223179558();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    sub_223179654();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v7 + 8))(v2, v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.ExplicitQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, __int16 a13, char a14)
{
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059268, &qword_223211DB0);
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v23 = v16[4];
  OUTLINED_FUNCTION_29(v16, v16[3]);
  sub_223179600();
  sub_223200794();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    OUTLINED_FUNCTION_63_0();
    v24 = sub_223200494();
    v26 = v25;
    OUTLINED_FUNCTION_29_4();
    sub_2231795AC();
    OUTLINED_FUNCTION_63_0();
    sub_2232004C4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_63_0();
    v30 = sub_223200494();
    v31 = v27;
    sub_2231796A8();
    OUTLINED_FUNCTION_63_0();
    sub_2232004C4();
    v28 = OUTLINED_FUNCTION_37_2();
    v29(v28);
    *v18 = v24;
    *(v18 + 8) = v26;
    *(v18 + 16) = a14;
    *(v18 + 24) = v30;
    *(v18 + 32) = v31;
    *(v18 + 40) = a12;

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxMetadata.AjaxQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v16 = *(a1 + 40);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[4];
  v10 = *(a2 + 40);
  if (v3 < 0)
  {
    if (v8 < 0)
    {
      v20 = *a1;
      v21 = v2;
      v22 = v3 & 1;
      v23 = v4;
      v24 = v5;
      v25 = v16;
      v17 = v6;
      v18 = v7;
      OUTLINED_FUNCTION_39_2();
      v19 = v10;
      sub_22317716C();
      sub_22317716C();
      OUTLINED_FUNCTION_34_2();
      sub_22317716C();
      sub_22317716C();
      v13 = static AjaxMetadata.AjaxQuery.ExplicitQuery.== infix(_:_:)(&v20, &v17);
      sub_22311DE7C();
      OUTLINED_FUNCTION_34_2();
      sub_22311DE7C();
      v11 = v13;
      OUTLINED_FUNCTION_34_2();
      sub_22311DE7C();
      goto LABEL_7;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = *a1;
    v21 = v2;
    v22 = v3 & 1;
    v23 = v4;
    v24 = v5;
    v17 = v6;
    v18 = v7;
    OUTLINED_FUNCTION_39_2();
    v11 = static AjaxMetadata.AjaxQuery.ImplicitQuery.== infix(_:_:)(&v20, &v17);
    sub_22317716C();
    OUTLINED_FUNCTION_57_0();
    sub_22317716C();
    OUTLINED_FUNCTION_57_0();
    sub_22311DE7C();
LABEL_7:
    sub_22311DE7C();
    return v11 & 1;
  }

  v15 = *a2;
  v14 = a2[3];
  sub_22317716C();
  OUTLINED_FUNCTION_64();
  sub_22317716C();
  OUTLINED_FUNCTION_64();
  sub_22311DE7C();
  sub_22311DE7C();
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2231767C8(uint64_t a1)
{
  v2 = sub_2231796FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223176804(uint64_t a1)
{
  v2 = sub_2231796FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223176840(uint64_t a1)
{
  v2 = sub_223179750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317687C(uint64_t a1)
{
  v2 = sub_223179750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231768B8(uint64_t a1)
{
  v2 = sub_2231797F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231768F4(uint64_t a1)
{
  v2 = sub_2231797F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059278, &qword_223211DB8);
  v4 = OUTLINED_FUNCTION_9(v3);
  v29 = v5;
  v30 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v28 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059280, &qword_223211DC0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_16();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059288, &qword_223211DC8);
  OUTLINED_FUNCTION_9(v35);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_11();
  v31 = *v0;
  v32 = v0[1];
  v19 = v0[2];
  v33 = v0[3];
  v34 = v0[4];
  v27 = *(v0 + 40);
  v20 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_2231796FC();
  OUTLINED_FUNCTION_58();
  sub_2232007A4();
  if (v19 < 0)
  {
    sub_223179750();
    OUTLINED_FUNCTION_22();
    sub_2232005B4();
    OUTLINED_FUNCTION_27_2();
    sub_2231797A4();
    sub_223200654();
    v23 = *(v29 + 8);
    v21 = v28;
    v22 = v30;
  }

  else
  {
    sub_2231797F8();
    OUTLINED_FUNCTION_22();
    sub_2232005B4();
    OUTLINED_FUNCTION_27_2();
    sub_22317984C();
    sub_223200654();
    v21 = OUTLINED_FUNCTION_3_2();
  }

  v23(v21, v22);
  v24 = *(v15 + 8);
  v25 = OUTLINED_FUNCTION_40_1();
  v26(v25);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v50 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592B8, &qword_223211DD0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592C0, &qword_223211DD8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592C8, &qword_223211DE0);
  OUTLINED_FUNCTION_9(v13);
  v49 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_11();
  v18 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_2231796FC();
  OUTLINED_FUNCTION_58();
  sub_223200794();
  if (!v0)
  {
    v55 = v3;
    v19 = sub_223200594();
    sub_2230E0B80(v19, 0);
    if (v21 != v20 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v48 = *(v23 + v22);
      sub_2230E0B40(v22 + 1);
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v48)
        {
          LOBYTE(v51) = 1;
          sub_223179750();
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          sub_2231798A0();
          OUTLINED_FUNCTION_65_0();
          swift_unknownObjectRelease();
          v36 = OUTLINED_FUNCTION_3_2();
          v37(v36);
          v38 = OUTLINED_FUNCTION_14_6();
          v39(v38);
          v40 = v51;
          v41 = v53;
          v42 = v54;
          v43 = v52 | 0x8000000000000000;
        }

        else
        {
          LOBYTE(v51) = 0;
          sub_2231797F8();
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          sub_2231798F4();
          OUTLINED_FUNCTION_65_0();
          swift_unknownObjectRelease();
          v44 = OUTLINED_FUNCTION_3_2();
          v45(v44);
          v46 = OUTLINED_FUNCTION_14_6();
          v47(v46);
          v42 = 0;
          v40 = v51;
          v43 = v52;
          v41 = v53;
        }

        *v50 = v40;
        *(v50 + 16) = v43;
        *(v50 + 24) = v41;
        *(v50 + 40) = v42;
        __swift_destroy_boxed_opaque_existential_1(v3);
        goto LABEL_10;
      }
    }

    v30 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v32 = &type metadata for AjaxMetadata.AjaxQuery;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v34 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v30);
    (*(v35 + 104))(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v1, v13);
    v3 = v55;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static QueryType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (a1[1])
  {
    if (v2)
    {
      OUTLINED_FUNCTION_38_1(a1, a2);
      v5 = v5 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_22317716C()
{
}

uint64_t sub_2231771A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223224540 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079547972657571 && a2 == 0xE900000000000065;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231772C4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x7079547972657571;
  }

  return 0x7972657571;
}

uint64_t sub_223177328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231771A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223177350(uint64_t a1)
{
  v2 = sub_223179948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317738C(uint64_t a1)
{
  v2 = sub_223179948();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592E0, &qword_223211DE8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v0;
  v12 = *(v0 + 2);
  v20 = *(v0 + 3);
  v21 = *(v0 + 1);
  v18 = *(v0 + 5);
  v19 = *(v0 + 4);
  v16 = *(v0 + 7);
  v17 = *(v0 + 6);
  v22 = v0[64];
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_5_3(v4);
  sub_223179948();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_22317999C();
  OUTLINED_FUNCTION_35_3();
  sub_223200654();
  if (!v1)
  {
    v15 = sub_2231799F0();

    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();

    if (!v15)
    {
      sub_22317716C();
      sub_223179A44();
      OUTLINED_FUNCTION_35_3();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_22311DE7C();
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059308, &qword_223211DF0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  sub_223179948();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_223179A98();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v11 = v22;
    sub_223179AEC();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v12 = v23;
    v20 = v22;
    sub_223179B40();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    v15 = v32;
    v19 = v31;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v37 = v36;
    LOBYTE(v21[0]) = v22;
    v21[1] = v22;
    v21[2] = v23;
    v21[3] = v31;
    v21[4] = v32;
    v21[5] = v33;
    v21[6] = v34;
    v21[7] = v35;
    LOBYTE(v21[8]) = v36;
    memcpy(v4, v21, 0x41uLL);
    sub_223179B94(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    LOBYTE(v22) = v11;
    v23 = v20;
    v24 = v12;
    v25 = v19;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v37;
    sub_223179BCC(&v22);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223177844(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000223224560 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000026 && 0x8000000223224580 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000002232245B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000023 && 0x80000002232245D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_2231779A4(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_223177A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223177844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223177A84(uint64_t a1)
{
  v2 = sub_223179BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177AC0(uint64_t a1)
{
  v2 = sub_223179BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177AFC(uint64_t a1)
{
  v2 = sub_223179CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177B38(uint64_t a1)
{
  v2 = sub_223179CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177B74(uint64_t a1)
{
  v2 = sub_223179C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177BB0(uint64_t a1)
{
  v2 = sub_223179C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177BEC(uint64_t a1)
{
  v2 = sub_223179CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177C28(uint64_t a1)
{
  v2 = sub_223179CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177C64(uint64_t a1)
{
  v2 = sub_223179D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177CA0(uint64_t a1)
{
  v2 = sub_223179D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrescribedAjaxTool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059328, &qword_223211DF8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059330, &qword_223211E00);
  v12 = OUTLINED_FUNCTION_9(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_3();
  v49 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059338, &qword_223211E08);
  v19 = OUTLINED_FUNCTION_9(v18);
  v47 = v20;
  v48 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_3();
  v46 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059340, &qword_223211E10);
  v26 = OUTLINED_FUNCTION_9(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_11();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059348, &qword_223211E18);
  OUTLINED_FUNCTION_9(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v44 - v37;
  v39 = *v0;
  v40 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223179BFC();
  sub_2232007A4();
  switch(v39)
  {
    case 1:
      OUTLINED_FUNCTION_29_4();
      sub_223179CF8();
      v41 = v46;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v43 = v47;
      v42 = v48;
      goto LABEL_6;
    case 2:
      sub_223179CA4();
      v41 = v49;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v43 = v50;
      v42 = v51;
      goto LABEL_6;
    case 3:
      sub_223179C50();
      v41 = v52;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v43 = v53;
      v42 = v54;
LABEL_6:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      sub_223179D4C();
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      (*(v44 + 8))(v1, v45);
      break;
  }

  (*(v33 + 8))(v38, v31);
  OUTLINED_FUNCTION_9_0();
}

uint64_t PrescribedAjaxTool.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void PrescribedAjaxTool.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  v66 = v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059378, &qword_223211E20);
  OUTLINED_FUNCTION_9(v69);
  v65 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v68 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059380, &qword_223211E28);
  v13 = OUTLINED_FUNCTION_9(v12);
  v62 = v14;
  v63 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v64 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059388, &qword_223211E30);
  v20 = OUTLINED_FUNCTION_9(v19);
  v60 = v21;
  v61 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059390, &qword_223211E38);
  OUTLINED_FUNCTION_9(v25);
  v59 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_11();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059398, &qword_223211E40);
  OUTLINED_FUNCTION_9(v30);
  v67 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_34();
  v35 = v5[4];
  OUTLINED_FUNCTION_29(v5, v5[3]);
  sub_223179BFC();
  sub_223200794();
  if (!v0)
  {
    v70 = v5;
    v36 = v1;
    v37 = sub_223200594();
    sub_2230E0B80(v37, 0);
    if (v39 != v38 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v42 == v43)
      {
        __break(1u);
        return;
      }

      v44 = *(v41 + v40);
      sub_2230E0B40(v40 + 1);
      v46 = v45;
      v48 = v47;
      swift_unknownObjectRelease();
      if (v46 == v48 >> 1)
      {
        v58 = v44;
        switch(v44)
        {
          case 1:
            OUTLINED_FUNCTION_29_4();
            sub_223179CF8();
            v55 = v3;
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            v57 = v60;
            v56 = v61;
            goto LABEL_14;
          case 2:
            sub_223179CA4();
            v55 = v64;
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            v57 = v62;
            v56 = v63;
LABEL_14:
            (*(v57 + 8))(v55, v56);
            break;
          case 3:
            sub_223179C50();
            sub_223200474();
            swift_unknownObjectRelease();
            (*(v65 + 8))(v68, v69);
            break;
          default:
            sub_223179D4C();
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            (*(v59 + 8))(v2, v25);
            break;
        }

        (*(v67 + 8))(v36, v30);
        *v66 = v58;
        __swift_destroy_boxed_opaque_existential_1(v70);
        goto LABEL_10;
      }
    }

    v49 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v51 = &type metadata for PrescribedAjaxTool;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v53 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v49);
    (*(v54 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v36, v30);
    v5 = v70;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_10:
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxRewrite.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t sub_22317872C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746963696C706D69 && a2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_66() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_66();

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

uint64_t sub_2231787D4(uint64_t a1)
{
  v2 = sub_223179DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178810(uint64_t a1)
{
  v2 = sub_223179DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22317884C(uint64_t a1)
{
  v2 = sub_223179DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178888(uint64_t a1)
{
  v2 = sub_223179DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231788C4(uint64_t a1)
{
  v2 = sub_223179E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178900(uint64_t a1)
{
  v2 = sub_223179E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryType.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593A0, &qword_223211E48);
  OUTLINED_FUNCTION_9(v5);
  v29 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593A8, &qword_223211E50);
  v11 = OUTLINED_FUNCTION_9(v10);
  v26 = v12;
  v27 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_16();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593B0, &qword_223211E58);
  OUTLINED_FUNCTION_9(v30);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v21 = v0[1];
  v28 = *v0;
  v22 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223179DA0();
  OUTLINED_FUNCTION_50_0();
  sub_2232007A4();
  if (v21)
  {
    sub_223179DF4();
    OUTLINED_FUNCTION_19_3();
    sub_2232005B4();
    sub_223179E48();
    sub_223200654();
    v23 = *(v29 + 8);
    v24 = OUTLINED_FUNCTION_40_1();
    v25(v24);
  }

  else
  {
    sub_223179E9C();
    OUTLINED_FUNCTION_19_3();
    sub_2232005B4();
    (*(v26 + 8))(v2, v27);
  }

  (*(v17 + 8))(v1, v30);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void QueryType.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v63 = v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593D8, &qword_223211E60);
  OUTLINED_FUNCTION_9(v66);
  v64 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593E0, &qword_223211E68);
  OUTLINED_FUNCTION_9(v10);
  v62 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593E8, &qword_223211E70);
  OUTLINED_FUNCTION_9(v15);
  v65 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v23 = v4[3];
  v22 = v4[4];
  OUTLINED_FUNCTION_5_3(v4);
  sub_223179DA0();
  sub_223200794();
  if (!v0)
  {
    v59 = v10;
    v60 = v2;
    v61 = v1;
    v24 = v66;
    v25 = sub_223200594();
    sub_2230E0B80(v25, 0);
    if (v27 != v26 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v30 == v31)
      {
        __break(1u);
        return;
      }

      v58 = *(v29 + v28);
      sub_2230E0B40(v28 + 1);
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      v36 = v33 == v35 >> 1;
      v37 = v64;
      if (v36)
      {
        if (v58)
        {
          LOBYTE(v67) = 1;
          sub_223179DF4();
          v38 = v61;
          v39 = v15;
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          v40 = v63;
          sub_223179EF0();
          OUTLINED_FUNCTION_19_3();
          sub_223200554();
          v52 = v65;
          swift_unknownObjectRelease();
          (*(v37 + 8))(v38, v24);
          (*(v52 + 8))(v21, v39);
          v55 = v67;
          v56 = v68;
        }

        else
        {
          LOBYTE(v67) = 0;
          sub_223179E9C();
          v50 = v60;
          v51 = v15;
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          v40 = v63;
          swift_unknownObjectRelease();
          (*(v62 + 8))(v50, v59);
          v53 = OUTLINED_FUNCTION_15_0();
          v54(v53, v51);
          v55 = 0;
          v56 = 0;
        }

        *v40 = v55;
        v40[1] = v56;
        v49 = v4;
        goto LABEL_11;
      }
    }

    v41 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v43 = &type metadata for QueryType;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v45 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_15_0();
    v48(v47, v15);
  }

  v49 = v4;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223179150(uint64_t a1)
{
  v2 = sub_223179F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317918C(uint64_t a1)
{
  v2 = sub_223179F44();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593F8, &qword_223211E78);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v9 = *v0;
  v10 = v0[1];
  v11 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_223179F44();
  OUTLINED_FUNCTION_58();
  sub_2232007A4();
  sub_2232005F4();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_40_1();
  v14(v13);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void AjaxRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059408, &qword_223211E80);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_11();
  v11 = v2[3];
  v12 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  sub_223179F44();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v0)
  {
    v13 = sub_2232004F4();
    v15 = v14;
    v16 = *(v7 + 8);
    v17 = OUTLINED_FUNCTION_40_1();
    v18(v17);
    *v4 = v13;
    v4[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223179434(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_22317716C();
  }

  return result;
}

uint64_t sub_223179448(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_22311DE7C();
  }

  return result;
}

unint64_t sub_22317945C()
{
  result = qword_27D059208;
  if (!qword_27D059208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059208);
  }

  return result;
}

unint64_t sub_2231794B0()
{
  result = qword_27D059210;
  if (!qword_27D059210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059210);
  }

  return result;
}

unint64_t sub_223179504()
{
  result = qword_27D059230;
  if (!qword_27D059230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059230);
  }

  return result;
}

unint64_t sub_223179558()
{
  result = qword_27D059238;
  if (!qword_27D059238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059238);
  }

  return result;
}

unint64_t sub_2231795AC()
{
  result = qword_27D059248;
  if (!qword_27D059248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059248);
  }

  return result;
}

unint64_t sub_223179600()
{
  result = qword_27D059258;
  if (!qword_27D059258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059258);
  }

  return result;
}

unint64_t sub_223179654()
{
  result = qword_27D059260;
  if (!qword_27D059260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059260);
  }

  return result;
}

unint64_t sub_2231796A8()
{
  result = qword_27D059270;
  if (!qword_27D059270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059270);
  }

  return result;
}

unint64_t sub_2231796FC()
{
  result = qword_27D059290;
  if (!qword_27D059290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059290);
  }

  return result;
}

unint64_t sub_223179750()
{
  result = qword_27D059298;
  if (!qword_27D059298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059298);
  }

  return result;
}

unint64_t sub_2231797A4()
{
  result = qword_27D0592A0;
  if (!qword_27D0592A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592A0);
  }

  return result;
}

unint64_t sub_2231797F8()
{
  result = qword_27D0592A8;
  if (!qword_27D0592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592A8);
  }

  return result;
}

unint64_t sub_22317984C()
{
  result = qword_27D0592B0;
  if (!qword_27D0592B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592B0);
  }

  return result;
}

unint64_t sub_2231798A0()
{
  result = qword_27D0592D0;
  if (!qword_27D0592D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592D0);
  }

  return result;
}

unint64_t sub_2231798F4()
{
  result = qword_27D0592D8;
  if (!qword_27D0592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592D8);
  }

  return result;
}

unint64_t sub_223179948()
{
  result = qword_27D0592E8;
  if (!qword_27D0592E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592E8);
  }

  return result;
}

unint64_t sub_22317999C()
{
  result = qword_27D0592F0;
  if (!qword_27D0592F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592F0);
  }

  return result;
}

unint64_t sub_2231799F0()
{
  result = qword_27D0592F8;
  if (!qword_27D0592F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592F8);
  }

  return result;
}

unint64_t sub_223179A44()
{
  result = qword_27D059300;
  if (!qword_27D059300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059300);
  }

  return result;
}

unint64_t sub_223179A98()
{
  result = qword_27D059310;
  if (!qword_27D059310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059310);
  }

  return result;
}

unint64_t sub_223179AEC()
{
  result = qword_27D059318;
  if (!qword_27D059318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059318);
  }

  return result;
}

unint64_t sub_223179B40()
{
  result = qword_27D059320;
  if (!qword_27D059320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059320);
  }

  return result;
}

unint64_t sub_223179BFC()
{
  result = qword_27D059350;
  if (!qword_27D059350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059350);
  }

  return result;
}

unint64_t sub_223179C50()
{
  result = qword_27D059358;
  if (!qword_27D059358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059358);
  }

  return result;
}

unint64_t sub_223179CA4()
{
  result = qword_27D059360;
  if (!qword_27D059360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059360);
  }

  return result;
}

unint64_t sub_223179CF8()
{
  result = qword_27D059368;
  if (!qword_27D059368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059368);
  }

  return result;
}

unint64_t sub_223179D4C()
{
  result = qword_27D059370;
  if (!qword_27D059370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059370);
  }

  return result;
}

unint64_t sub_223179DA0()
{
  result = qword_27D0593B8;
  if (!qword_27D0593B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593B8);
  }

  return result;
}

unint64_t sub_223179DF4()
{
  result = qword_27D0593C0;
  if (!qword_27D0593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593C0);
  }

  return result;
}

unint64_t sub_223179E48()
{
  result = qword_27D0593C8;
  if (!qword_27D0593C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593C8);
  }

  return result;
}

unint64_t sub_223179E9C()
{
  result = qword_27D0593D0;
  if (!qword_27D0593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593D0);
  }

  return result;
}

unint64_t sub_223179EF0()
{
  result = qword_27D0593F0;
  if (!qword_27D0593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593F0);
  }

  return result;
}

unint64_t sub_223179F44()
{
  result = qword_27D059400;
  if (!qword_27D059400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059400);
  }

  return result;
}

unint64_t sub_223179F9C()
{
  result = qword_27D059410;
  if (!qword_27D059410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059410);
  }

  return result;
}

unint64_t sub_223179FF4()
{
  result = qword_27D059418;
  if (!qword_27D059418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059418);
  }

  return result;
}

uint64_t sub_22317A048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 2 * -a2;
      *(result + 64) = 0;
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22317A0AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40) >> 1;
      v4 = -2 - v3;
      if (-2 - v3 < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22317A108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 2 * ~a2;
      *(result + 64) = 0;
    }
  }

  return result;
}

uint64_t sub_22317A18C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
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

uint64_t sub_22317A1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22317A26C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_22317A2C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22317A328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_22317A37C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22317A3E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_22317A438(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22317A4FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

_BYTE *sub_22317A580(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22317A66C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

uint64_t sub_22317A700(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

_BYTE *sub_22317A784(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22317A874()
{
  result = qword_27D059420;
  if (!qword_27D059420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059420);
  }

  return result;
}

unint64_t sub_22317A8CC()
{
  result = qword_27D059428;
  if (!qword_27D059428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059428);
  }

  return result;
}

unint64_t sub_22317A924()
{
  result = qword_27D059430;
  if (!qword_27D059430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059430);
  }

  return result;
}

unint64_t sub_22317A97C()
{
  result = qword_27D059438;
  if (!qword_27D059438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059438);
  }

  return result;
}

unint64_t sub_22317A9D4()
{
  result = qword_27D059440;
  if (!qword_27D059440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059440);
  }

  return result;
}

unint64_t sub_22317AA2C()
{
  result = qword_27D059448;
  if (!qword_27D059448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059448);
  }

  return result;
}

unint64_t sub_22317AA84()
{
  result = qword_27D059450;
  if (!qword_27D059450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059450);
  }

  return result;
}

unint64_t sub_22317AADC()
{
  result = qword_27D059458;
  if (!qword_27D059458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059458);
  }

  return result;
}

unint64_t sub_22317AB34()
{
  result = qword_27D059460;
  if (!qword_27D059460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059460);
  }

  return result;
}

unint64_t sub_22317AB8C()
{
  result = qword_27D059468;
  if (!qword_27D059468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059468);
  }

  return result;
}

unint64_t sub_22317ABE4()
{
  result = qword_27D059470;
  if (!qword_27D059470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059470);
  }

  return result;
}

unint64_t sub_22317AC3C()
{
  result = qword_27D059478;
  if (!qword_27D059478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059478);
  }

  return result;
}

unint64_t sub_22317AC94()
{
  result = qword_27D059480;
  if (!qword_27D059480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059480);
  }

  return result;
}

unint64_t sub_22317ACEC()
{
  result = qword_27D059488;
  if (!qword_27D059488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059488);
  }

  return result;
}

unint64_t sub_22317AD44()
{
  result = qword_27D059490;
  if (!qword_27D059490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059490);
  }

  return result;
}

unint64_t sub_22317AD9C()
{
  result = qword_27D059498;
  if (!qword_27D059498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059498);
  }

  return result;
}

unint64_t sub_22317ADF4()
{
  result = qword_27D0594A0;
  if (!qword_27D0594A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594A0);
  }

  return result;
}

unint64_t sub_22317AE4C()
{
  result = qword_27D0594A8;
  if (!qword_27D0594A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594A8);
  }

  return result;
}

unint64_t sub_22317AEA4()
{
  result = qword_27D0594B0;
  if (!qword_27D0594B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594B0);
  }

  return result;
}

unint64_t sub_22317AEFC()
{
  result = qword_27D0594B8;
  if (!qword_27D0594B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594B8);
  }

  return result;
}

unint64_t sub_22317AF54()
{
  result = qword_27D0594C0;
  if (!qword_27D0594C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594C0);
  }

  return result;
}

unint64_t sub_22317AFAC()
{
  result = qword_27D0594C8;
  if (!qword_27D0594C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594C8);
  }

  return result;
}

unint64_t sub_22317B004()
{
  result = qword_27D0594D0;
  if (!qword_27D0594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594D0);
  }

  return result;
}

unint64_t sub_22317B05C()
{
  result = qword_27D0594D8;
  if (!qword_27D0594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594D8);
  }

  return result;
}

unint64_t sub_22317B0B4()
{
  result = qword_27D0594E0;
  if (!qword_27D0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594E0);
  }

  return result;
}

unint64_t sub_22317B10C()
{
  result = qword_27D0594E8;
  if (!qword_27D0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594E8);
  }

  return result;
}

unint64_t sub_22317B164()
{
  result = qword_27D0594F0;
  if (!qword_27D0594F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594F0);
  }

  return result;
}

unint64_t sub_22317B1BC()
{
  result = qword_27D0594F8;
  if (!qword_27D0594F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594F8);
  }

  return result;
}

unint64_t sub_22317B214()
{
  result = qword_27D059500;
  if (!qword_27D059500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059500);
  }

  return result;
}

unint64_t sub_22317B26C()
{
  result = qword_27D059508;
  if (!qword_27D059508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059508);
  }

  return result;
}

unint64_t sub_22317B2C4()
{
  result = qword_27D059510;
  if (!qword_27D059510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059510);
  }

  return result;
}

unint64_t sub_22317B31C()
{
  result = qword_27D059518;
  if (!qword_27D059518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059518);
  }

  return result;
}

unint64_t sub_22317B374()
{
  result = qword_27D059520;
  if (!qword_27D059520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059520);
  }

  return result;
}

unint64_t sub_22317B3CC()
{
  result = qword_27D059528;
  if (!qword_27D059528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059528);
  }

  return result;
}

unint64_t sub_22317B424()
{
  result = qword_27D059530;
  if (!qword_27D059530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059530);
  }

  return result;
}

unint64_t sub_22317B47C()
{
  result = qword_27D059538;
  if (!qword_27D059538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059538);
  }

  return result;
}

unint64_t sub_22317B4D4()
{
  result = qword_27D059540;
  if (!qword_27D059540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059540);
  }

  return result;
}

unint64_t sub_22317B52C()
{
  result = qword_27D059548;
  if (!qword_27D059548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059548);
  }

  return result;
}

unint64_t sub_22317B584()
{
  result = qword_27D059550;
  if (!qword_27D059550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059550);
  }

  return result;
}

unint64_t sub_22317B5DC()
{
  result = qword_27D059558;
  if (!qword_27D059558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059558);
  }

  return result;
}

unint64_t sub_22317B634()
{
  result = qword_27D059560;
  if (!qword_27D059560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059560);
  }

  return result;
}

unint64_t sub_22317B68C()
{
  result = qword_27D059568;
  if (!qword_27D059568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059568);
  }

  return result;
}

unint64_t sub_22317B6E4()
{
  result = qword_27D059570;
  if (!qword_27D059570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059570);
  }

  return result;
}

unint64_t sub_22317B73C()
{
  result = qword_27D059578;
  if (!qword_27D059578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059578);
  }

  return result;
}

unint64_t sub_22317B794()
{
  result = qword_27D059580;
  if (!qword_27D059580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059580);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  v3 = *a2;
  return result;
}

void *OUTLINED_FUNCTION_43_1()
{

  return memcpy((v0 - 232), (v0 - 160), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_2231FFF04();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_2232007A4();
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_2231FFF04();
}

uint64_t sub_22317B954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000223221D40 == a2)
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

uint64_t sub_22317BA28(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_22317BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317B954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317BA9C(uint64_t a1)
{
  v2 = sub_22317C6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317BAD8(uint64_t a1)
{
  v2 = sub_22317C6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrewarmNLMessage.languageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode + 8);

  return v1;
}

void *PrewarmNLMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2231FFC84();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = 15;
  v41 = 0u;
  v42 = 0u;
  v43 = 3;
  a1(v40);
  v12 = v40[0];
  if (v40[0] == 15 || (v13 = *(&v41 + 1)) == 0 || !*(&v42 + 1) || (v14 = v43, v43 == 3))
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_10;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v39 = v19;
    *v18 = 136446210;
    v20 = sub_2230F7898();
    v22 = sub_2231A5D38(v20, v21, &v39);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x223DD6780](v19, -1, -1);
    v23 = v18;
LABEL_9:
    MEMORY[0x223DD6780](v23, -1, -1);
LABEL_10:

    type metadata accessor for PrewarmNLMessage();
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v38 = v41;
  v39 = v42;
  sub_2231FFC74();
  sub_2230D1D30();
  v28 = sub_2232002E4();
  v30 = v29;
  (*(v7 + 8))(v11, v4);

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v34 = sub_223200014();
    __swift_project_value_buffer(v34, qword_280FCE830);
    v16 = sub_223200004();
    v35 = sub_223200254();
    if (!os_log_type_enabled(v16, v35))
    {
      goto LABEL_10;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2230CE000, v16, v35, "languageCode is empty, can't create message", v36, 2u);
    v23 = v36;
    goto LABEL_9;
  }

  v32 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
  *v32 = v28;
  v32[1] = v30;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_conversationSessionType) = v14;

  v26 = sub_2230D20C4(v2, v12, v38, v13);
  v33 = v26;

  if (v26)
  {
  }

  return v26;
}

uint64_t type metadata accessor for PrewarmNLMessage()
{
  result = qword_280FCAB48;
  if (!qword_280FCAB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PrewarmNLMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059588, &qword_223213710);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317C6F8();
  sub_223200794();
  if (v2)
  {
    v11 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for PrewarmNLMessage();
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v13 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_2();
    v15 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
    *v15 = v10;
    v15[1] = v16;
    LOBYTE(v21[0]) = 1;
    OUTLINED_FUNCTION_5_2();
    v17 = sub_223200464();

    v18 = v17 == 1;
    if (v17 == 2)
    {
      v18 = 2;
    }

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_conversationSessionType) = v18;
    sub_2230F7158(a1, v21);
    v11 = MessageBase.init(from:)(v21);
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_22317C2E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059598, &qword_223213718);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317C6F8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode + 8);
  v18 = 0;
  sub_2232005F4();
  if (!v2)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_conversationSessionType);
    v17 = 1;
    sub_2232005F4();

    sub_2230D8F5C(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t PrewarmNLMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PrewarmNLMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PrewarmNLMessage.Builder.languageCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PrewarmNLMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

id PrewarmNLMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrewarmNLMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22317C6F8()
{
  result = qword_27D059590;
  if (!qword_27D059590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059590);
  }

  return result;
}

uint64_t sub_22317C7CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_22317C820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrewarmNLMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22317C970()
{
  result = qword_27D0595A0;
  if (!qword_27D0595A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595A0);
  }

  return result;
}

unint64_t sub_22317C9C8()
{
  result = qword_27D0595A8;
  if (!qword_27D0595A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595A8);
  }

  return result;
}

unint64_t sub_22317CA20()
{
  result = qword_27D0595B0;
  if (!qword_27D0595B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595B0);
  }

  return result;
}

uint64_t PromptInfo.promptSource.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  result = type metadata accessor for PromptInfo(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t PromptInfo.promptType.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  result = type metadata accessor for PromptInfo(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t PromptInfo.init(build:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_16_8();
  v8 = type metadata accessor for PromptId(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  v15 = type metadata accessor for PromptInfo.Builder(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  v21 = type metadata accessor for PromptInfo(0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v27 = v26 - v25;
  *v20 = 769;
  v28 = *(v16 + 32);
  __swift_storeEnumTagSinglePayload(v20 + v28, 1, 1, v8);
  a1(v20);
  sub_22317CE68(v20 + v28, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_2230D40E0(v2, &qword_27D0595B8, &qword_2232138D0);
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595C0, &qword_2232138D8);
      v34 = sub_223200104();
      v36 = sub_2231A5D38(v34, v35, &v40);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields: promptId", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    OUTLINED_FUNCTION_10_13();
    v37 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    sub_22317EF7C(v2, v14);
    sub_22317EF7C(v14, v27);
    *(v27 + *(v21 + 20)) = *v20;
    v38 = *(v20 + 1);
    OUTLINED_FUNCTION_10_13();
    *(v27 + *(v21 + 24)) = v38;
    OUTLINED_FUNCTION_6_18();
    sub_22317EF7C(v27, a2);
    v37 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v37, 1, v21);
}

uint64_t sub_22317CE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PromptInfo.description.getter()
{
  v1 = type metadata accessor for PromptId(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  BYTE8(v13) = 0;
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD000000000000019, 0x8000000223224660);
  v8 = type metadata accessor for PromptInfo(0);
  v14 = *(v0 + *(v8 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595C8, &qword_2232138E0);
  v9 = sub_223200104();
  MEMORY[0x223DD5AA0](v9);

  MEMORY[0x223DD5AA0](0x74706D6F7270202CLL, 0xEE00203A65707954);
  *&v13 = *(v0 + *(v8 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595D0, &qword_2232138E8);
  v10 = sub_223200104();
  MEMORY[0x223DD5AA0](v10);

  MEMORY[0x223DD5AA0](0x74706D6F7270202CLL, 0xEC000000203A6449);
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v0, v7);
  v11 = sub_223200104();
  MEMORY[0x223DD5AA0](v11);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return *(&v13 + 1);
}

uint64_t PromptInfo.id.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = type metadata accessor for PromptId(v2);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v1, v7);
  v8 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v8);
  return (*(v9 + 32))(v0, v7);
}

uint64_t PromptInfo.Builder.promptId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = v1 + *(type metadata accessor for PromptInfo.Builder(v2) + 24);

  return sub_22317CE68(v3, v0);
}

uint64_t PromptInfo.Builder.promptId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for PromptInfo.Builder(v2) + 24);

  return sub_22317EFD8(v0, v3);
}

uint64_t (*PromptInfo.Builder.promptId.modify())(void)
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for PromptInfo.Builder(v0) + 24);
  return nullsub_1;
}

BOOL static PromptInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static PromptId.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromptInfo(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 != 3)
  {
    return v8 != 3 && (sub_22310710C(v7, v8) & 1) != 0;
  }

  return v8 == 3;
}

uint64_t static PromptId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v38 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_10();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_19_4();
  v14 = type metadata accessor for PromptId(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_10();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595D8, &qword_2232138F0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v37 - v27;
  v29 = *(v26 + 56);
  sub_22317F288(a1, &v37 - v27);
  sub_22317F288(v37, &v28[v29]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_9();
    sub_22317F288(v28, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v38;
      (*(v6 + 32))(v2, &v28[v29], v38);
      v31 = _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
      v32 = *(v6 + 8);
      v32(v2, v35);
      v33 = v23;
      v34 = v35;
      goto LABEL_6;
    }

LABEL_8:
    (*(v6 + 8))(v23, v38);
    sub_2230D40E0(v28, &qword_27D0595D8, &qword_2232138F0);
    v31 = 0;
    return v31 & 1;
  }

  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v28, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = v20;
    goto LABEL_8;
  }

  v30 = v38;
  (*(v6 + 32))(v11, &v28[v29], v38);
  v31 = _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
  v32 = *(v6 + 8);
  v32(v11, v30);
  v33 = v20;
  v34 = v30;
LABEL_6:
  v32(v33, v34);
  sub_22317F048();
  return v31 & 1;
}

uint64_t sub_22317D5F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974706D6F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F5374706D6F7270 && a2 == 0xEC00000065637275;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_22317D70C(char a1)
{
  if (!a1)
  {
    return 0x644974706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x6F5374706D6F7270;
  }

  return 0x795474706D6F7270;
}

uint64_t sub_22317D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317D5F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317D7A0(uint64_t a1)
{
  v2 = sub_22317F09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317D7DC(uint64_t a1)
{
  v2 = sub_22317F09C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595E0, &qword_2232138F8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F09C();
  sub_2232007A4();
  v18[15] = 0;
  type metadata accessor for PromptId(0);
  OUTLINED_FUNCTION_7_18();
  sub_22317F198(v14, v15);
  sub_223200654();
  if (!v2)
  {
    v16 = type metadata accessor for PromptInfo(0);
    v18[14] = *(v3 + *(v16 + 20));
    v18[13] = 1;
    sub_22317F0F0();
    sub_2232005E4();
    v18[12] = *(v3 + *(v16 + 24));
    v18[11] = 2;
    sub_22317F144();
    sub_2232005E4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t PromptInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptId(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v28 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059608, &qword_223213900);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for PromptInfo(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F09C();
  sub_223200794();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7_18();
  sub_22317F198(v22, v23);
  sub_223200554();
  OUTLINED_FUNCTION_0_9();
  sub_22317EF7C(v28, v20);
  sub_22317F1E0();
  OUTLINED_FUNCTION_22_5();
  *(v20 + *(v14 + 20)) = v30;
  sub_22317F234();
  OUTLINED_FUNCTION_22_5();
  v24 = OUTLINED_FUNCTION_13_8();
  v25(v24);
  *(v20 + *(v14 + 24)) = v29;
  OUTLINED_FUNCTION_6_18();
  sub_22317F288(v20, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22317F048();
}

uint64_t PromptSource.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_223200464();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22317DDB8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return PromptSource.init(rawValue:)(a1);
}

unint64_t sub_22317DDC4@<X0>(void *a1@<X8>)
{
  result = PromptSource.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

SiriMessageTypes::PromptType_optional __swiftcall PromptType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PromptType.rawValue.getter()
{
  v1 = 0x6769626D61736964;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t sub_22317DF90@<X0>(uint64_t *a1@<X8>)
{
  result = PromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PromptId.description.getter()
{
  v1 = sub_2231FFDA4();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for PromptId(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v9, v16, v1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_223200374();

    v18 = 0x76456E6F69746361;
  }

  else
  {
    v18 = 0x644974706D6F7270;
  }

  v23 = v18;
  OUTLINED_FUNCTION_1_20();
  sub_22317F198(v19, v20);
  v21 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v21);

  (*(v4 + 8))(v9, v1);
  return v23;
}

uint64_t sub_22317E258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974706D6F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65)
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

uint64_t sub_22317E328(char a1)
{
  if (a1)
  {
    return 0x76456E6F69746361;
  }

  else
  {
    return 0x644974706D6F7270;
  }
}

uint64_t sub_22317E36C(uint64_t a1)
{
  v2 = sub_22317F338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E3A8(uint64_t a1)
{
  v2 = sub_22317F338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22317E3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317E258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317E414(uint64_t a1)
{
  v2 = sub_22317F2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E450(uint64_t a1)
{
  v2 = sub_22317F2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22317E48C(uint64_t a1)
{
  v2 = sub_22317F38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E4C8(uint64_t a1)
{
  v2 = sub_22317F38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptId.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059628, &qword_223213908);
  v4 = OUTLINED_FUNCTION_9(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v59 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059630, &qword_223213910);
  v11 = OUTLINED_FUNCTION_9(v10);
  v57 = v12;
  v58 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v56 = v16;
  v17 = sub_2231FFDA4();
  v18 = OUTLINED_FUNCTION_9(v17);
  v62 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_10();
  v55 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_19_4();
  v26 = type metadata accessor for PromptId(v25);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059638, &qword_223213918);
  OUTLINED_FUNCTION_9(v33);
  v64 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v54 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F2E4();
  v41 = v62;
  sub_2232007A4();
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v63, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = *(v41 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v44 = v55;
    v43(v55, v32, v17);
    v66 = 1;
    sub_22317F338();
    v45 = v59;
    sub_2232005B4();
    OUTLINED_FUNCTION_1_20();
    sub_22317F198(v46, v47);
    v48 = v61;
    sub_223200654();
    (*(v60 + 8))(v45, v48);
    v1 = v44;
  }

  else
  {
    v43(v1, v32, v17);
    v65 = 0;
    sub_22317F38C();
    sub_2232005B4();
    OUTLINED_FUNCTION_1_20();
    sub_22317F198(v49, v50);
    sub_223200654();
    v51 = OUTLINED_FUNCTION_5_18();
    v52(v51);
  }

  (*(v41 + 8))(v1, v17);
  return (*(v64 + 8))(v39, v33);
}

uint64_t PromptId.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059658, &qword_223213920);
  OUTLINED_FUNCTION_9(v82);
  v77 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v79 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059660, &qword_223213928);
  v10 = OUTLINED_FUNCTION_9(v9);
  v75 = v11;
  v76 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v78 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059668, &unk_223213930);
  v17 = OUTLINED_FUNCTION_9(v16);
  v80 = v18;
  v81 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_16_8();
  v23 = type metadata accessor for PromptId(v22);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_10();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v70 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F2E4();
  v37 = v83;
  sub_223200794();
  if (v37)
  {
    goto LABEL_8;
  }

  v70 = v29;
  v71 = v33;
  v38 = v81;
  v72 = v35;
  v73 = v23;
  v83 = a1;
  v39 = sub_223200594();
  result = sub_2230E0B80(v39, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v54 = v73;
    v55 = sub_2232003A4();
    swift_allocError();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v57 = v54;
    sub_223200484();
    sub_223200394();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = OUTLINED_FUNCTION_15_0();
    v60(v59, v38);
    a1 = v83;
LABEL_8:
    v61 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  if (v42 < (v43 >> 1))
  {
    v84 = *(v41 + v42);
    sub_2230E0B40(v42 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      v48 = v38;
      if (v84)
      {
        v86 = 1;
        sub_22317F338();
        OUTLINED_FUNCTION_14_7();
        v49 = v72;
        sub_2231FFDA4();
        OUTLINED_FUNCTION_1_20();
        sub_22317F198(v50, v51);
        v52 = v70;
        OUTLINED_FUNCTION_21_7();
        v53 = v80;
        swift_unknownObjectRelease();
        v64 = OUTLINED_FUNCTION_5_18();
        v65(v64);
        (*(v53 + 8))(v2, v48);
      }

      else
      {
        v85 = 0;
        sub_22317F38C();
        OUTLINED_FUNCTION_14_7();
        v49 = v72;
        sub_2231FFDA4();
        OUTLINED_FUNCTION_1_20();
        sub_22317F198(v62, v63);
        v52 = v71;
        OUTLINED_FUNCTION_21_7();
        swift_unknownObjectRelease();
        v66 = OUTLINED_FUNCTION_5_18();
        v67(v66);
        v68 = OUTLINED_FUNCTION_15_0();
        v69(v68, v48);
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_14();
      sub_22317EF7C(v52, v49);
      sub_22317EF7C(v49, v74);
      v61 = v83;
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_22317EF7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_18_10();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22317EFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22317F048()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_22317F09C()
{
  result = qword_27D0595E8;
  if (!qword_27D0595E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595E8);
  }

  return result;
}

unint64_t sub_22317F0F0()
{
  result = qword_27D0595F8;
  if (!qword_27D0595F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595F8);
  }

  return result;
}

unint64_t sub_22317F144()
{
  result = qword_27D059600;
  if (!qword_27D059600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059600);
  }

  return result;
}

uint64_t sub_22317F198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22317F1E0()
{
  result = qword_27D059618;
  if (!qword_27D059618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059618);
  }

  return result;
}

unint64_t sub_22317F234()
{
  result = qword_27D059620;
  if (!qword_27D059620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059620);
  }

  return result;
}

uint64_t sub_22317F288(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_18_10();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_22317F2E4()
{
  result = qword_27D059640;
  if (!qword_27D059640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059640);
  }

  return result;
}

unint64_t sub_22317F338()
{
  result = qword_27D059648;
  if (!qword_27D059648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059648);
  }

  return result;
}

unint64_t sub_22317F38C()
{
  result = qword_27D059650;
  if (!qword_27D059650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059650);
  }

  return result;
}

unint64_t sub_22317F3E4()
{
  result = qword_27D059670;
  if (!qword_27D059670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059670);
  }

  return result;
}

unint64_t sub_22317F43C()
{
  result = qword_27D059678;
  if (!qword_27D059678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059678);
  }

  return result;
}

void sub_22317F490()
{
  type metadata accessor for PromptId(319);
  if (v0 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCAC90);
    if (v1 <= 0x3F)
    {
      sub_2230D525C(319, qword_280FCACD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22317F574()
{
  sub_2230D525C(319, &qword_280FCAC90);
  if (v0 <= 0x3F)
  {
    sub_2230D525C(319, qword_280FCACD8);
    if (v1 <= 0x3F)
    {
      sub_22317F630();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22317F630()
{
  if (!qword_280FCA5C8[0])
  {
    type metadata accessor for PromptId(255);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, qword_280FCA5C8);
    }
  }
}

uint64_t sub_22317F690()
{
  result = sub_2231FFDA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptId.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22317F7DC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22317F888(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22317F968()
{
  result = qword_27D059680;
  if (!qword_27D059680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059680);
  }

  return result;
}

unint64_t sub_22317F9C0()
{
  result = qword_27D059688;
  if (!qword_27D059688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059688);
  }

  return result;
}

unint64_t sub_22317FA18()
{
  result = qword_27D059690;
  if (!qword_27D059690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059690);
  }

  return result;
}

unint64_t sub_22317FA70()
{
  result = qword_27D059698;
  if (!qword_27D059698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059698);
  }

  return result;
}

unint64_t sub_22317FAC8()
{
  result = qword_27D0596A0;
  if (!qword_27D0596A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596A0);
  }

  return result;
}

unint64_t sub_22317FB20()
{
  result = qword_27D0596A8;
  if (!qword_27D0596A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596A8);
  }

  return result;
}

unint64_t sub_22317FB78()
{
  result = qword_27D0596B0;
  if (!qword_27D0596B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596B0);
  }

  return result;
}

unint64_t sub_22317FBD0()
{
  result = qword_27D0596B8;
  if (!qword_27D0596B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596B8);
  }

  return result;
}

unint64_t sub_22317FC28()
{
  result = qword_27D0596C0;
  if (!qword_27D0596C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596C0);
  }

  return result;
}

unint64_t sub_22317FC80()
{
  result = qword_27D0596C8;
  if (!qword_27D0596C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596C8);
  }

  return result;
}

unint64_t sub_22317FCD8()
{
  result = qword_27D0596D0;
  if (!qword_27D0596D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596D0);
  }

  return result;
}

unint64_t sub_22317FD30()
{
  result = qword_27D0596D8;
  if (!qword_27D0596D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596D8);
  }

  return result;
}

unint64_t sub_22317FD84()
{
  result = qword_27D0596E0;
  if (!qword_27D0596E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596E0);
  }

  return result;
}

unint64_t sub_22317FDD8()
{
  result = qword_27D0596E8;
  if (!qword_27D0596E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_223200554();
}

void *RequestCompletedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id RequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestCompletedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RequestCompletedMessage()
{
  result = qword_280FCDAE0;
  if (!qword_280FCDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RequestConjunctionInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D0596F0 = a1;
  return result;
}

uint64_t sub_223180120@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27D0596F0;
  return result;
}

uint64_t sub_22318016C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27D0596F0 = v1;
  return result;
}

id RequestConjunctionInfo.init(build:)(void (*a1)(uint64_t *))
{
  ObjectType = swift_getObjectType();
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  a1(&v16);
  if (v17 & 1) != 0 || (v19)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      v9 = sub_2230F7898();
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder has missing required fields", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x223DD6780](v8, -1, -1);
      MEMORY[0x223DD6780](v7, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v13 = v16;
    *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount] = v18;
    *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex] = v13;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_init);
  }
}

uint64_t RequestConjunctionInfo.Builder.requestIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t RequestConjunctionInfo.Builder.requestIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RequestConjunctionInfo.Builder.requestCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t RequestConjunctionInfo.Builder.requestCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_223180470()
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

uint64_t sub_2231804E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223180470();
  *a2 = result;
  return result;
}

uint64_t sub_223180518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EE4C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22318054C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223180470();
  *a1 = result;
  return result;
}

uint64_t sub_223180574(uint64_t a1)
{
  v2 = sub_2231811F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231805B0(uint64_t a1)
{
  v2 = sub_2231811F4();

  return MEMORY[0x2821FE720](a1, v2);
}

id RequestConjunctionInfo.init(coder:)(void *a1)
{
  v1 = objc_allocWithZone(swift_getObjectType());
  v2 = RequestConjunctionInfo.init(build:)(sub_223181114);
  v3 = v2;

  if (v2)
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_2231806BC(uint64_t a1, void *a2)
{
  v4 = sub_2232000A4();
  v5 = [a2 decodeIntegerForKey_];

  *a1 = v5 & ~(v5 >> 63);
  *(a1 + 8) = 0;
  v6 = sub_2232000A4();
  v7 = [a2 decodeIntegerForKey_];

  *(a1 + 16) = v7 & ~(v7 >> 63);
  *(a1 + 24) = 0;
}

Swift::Void __swiftcall RequestConjunctionInfo.encode(with:)(NSCoder with)
{
  v2 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = sub_2232000A4();
  [(objc_class *)with.super.isa encodeInteger:v2 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestCount);
  if (v5 < 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = sub_2232000A4();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

uint64_t RequestConjunctionInfo.debugDescription.getter()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v19, sel_debugDescription);
  v3 = sub_2232000C4();
  v5 = v4;

  v20[0] = v3;
  v20[1] = v5;
  MEMORY[0x223DD5AA0](31520, 0xE200000000000000);
  v7 = v20[0];
  v6 = v20[1];
  strcpy(v20, "requestIndex: ");
  HIBYTE(v20[1]) = -18;
  v17 = *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex];
  v8 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v8);

  MEMORY[0x223DD5AA0](8236, 0xE200000000000000);
  v9 = v20[0];
  v10 = v20[1];
  v20[0] = v7;
  v20[1] = v6;

  MEMORY[0x223DD5AA0](v9, v10);

  v12 = v20[0];
  v11 = v20[1];
  strcpy(v20, "requestCount: ");
  HIBYTE(v20[1]) = -18;
  v18 = *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount];
  v13 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v13);

  MEMORY[0x223DD5AA0](125, 0xE100000000000000);
  v14 = v20[0];
  v15 = v20[1];
  v20[0] = v12;
  v20[1] = v11;

  MEMORY[0x223DD5AA0](v14, v15);

  return v20[0];
}

BOOL RequestConjunctionInfo.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_22318111C(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex) == *&v6[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex])
      {
        v3 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestCount);
        v4 = *&v6[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_22318118C(v7);
  }

  return 0;
}

id RequestConjunctionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestConjunctionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RequestConjunctionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059710, &qword_223214158);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231811F4();
  sub_2232007A4();
  v14 = *(v3 + OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex);
  v17[15] = 0;
  sub_223200644();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR___SMTRequestConjunctionInfo_requestCount);
    v17[14] = 1;
    sub_223200644();
  }

  return (*(v8 + 8))(v12, v5);
}

void *RequestConjunctionInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D059720, &qword_223214160);
  v6 = OUTLINED_FUNCTION_9(v19);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231811F4();
  v15 = ObjectType;
  sub_223200794();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v16 = v19;
    *&v3[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex] = sub_223200544();
    v21 = 1;
    *&v3[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount] = sub_223200544();
    v20.receiver = v3;
    v20.super_class = v15;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    (*(v8 + 8))(v12, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

void *sub_2231810C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = RequestConjunctionInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22318111C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22318118C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231811F4()
{
  result = qword_27D059718;
  if (!qword_27D059718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059718);
  }

  return result;
}

uint64_t sub_2231812B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2231812D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestConjunctionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231813F0()
{
  result = qword_27D059790;
  if (!qword_27D059790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059790);
  }

  return result;
}

unint64_t sub_223181448()
{
  result = qword_27D059798;
  if (!qword_27D059798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059798);
  }

  return result;
}

unint64_t sub_2231814A0()
{
  result = qword_27D0597A0;
  if (!qword_27D0597A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0597A0);
  }

  return result;
}

uint64_t static RequestContextData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D059810 = a1;
  return result;
}

uint64_t sub_2231815B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27D059810;
  return result;
}

uint64_t sub_2231815FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27D059810 = v1;
  return result;
}

void *RequestContextData.userProfileMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  v2 = v1;
  return v1;
}

void *RequestContextData.conjunctionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  v2 = v1;
  return v1;
}

void RequestContextData.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  RequestContextData.init(build:)();
}

uint64_t RequestContextData.Builder.audioSource.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextData.Builder.audioSource.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextData.Builder.audioDestination.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextData.Builder.audioDestination.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RequestContextData.Builder.responseMode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextData.Builder.responseMode.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RequestContextData.Builder.bargeInModes.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t RequestContextData.Builder.approximatePreviousTTSInterval.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_1() + 48);

  return sub_223185348(v0, v2);
}

uint64_t RequestContextData.Builder.deviceRestrictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 52));
}

uint64_t RequestContextData.Builder.deviceRestrictions.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 56));
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 56);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextData.Builder.voiceAudioSessionId.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  v3 = v1 + *(result + 60);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isInAmbient.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 72)) = v0;
  return result;
}

void *RequestContextData.Builder.conjunctionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 76));
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isDeviceLocked.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 84)) = v0;
  return result;
}

void *RequestContextData.Builder.userProfileMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 88));
  v2 = v1;
  return v1;
}

void RequestContextData.Builder.userProfileMetadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 88);

  *(v1 + v2) = v0;
}

uint64_t RequestContextData.Builder.activationTime.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestContextData.Builder(0) + 92));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t RequestContextData.Builder.suggestionRequestType.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestContextData.Builder(0) + 96));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void *RequestContextData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for RequestContextData(0));
  RequestContextData.init(build:)();
  v6 = v5;
  v7 = v5;

  if (v6)
  {
  }

  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v9 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_2231822A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v103[0] = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = v103 - v8;
  v9 = sub_2232000A4();
  v10 = [a2 decodeBoolForKey_];

  *(a1 + 48) = v10;
  v11 = sub_2232000A4();
  v12 = [a2 decodeBoolForKey_];

  *(a1 + 49) = v12;
  v13 = sub_2232000A4();
  v14 = [a2 decodeBoolForKey_];

  *(a1 + 50) = v14;
  v15 = sub_2232000A4();
  v16 = [a2 decodeBoolForKey_];

  *(a1 + 51) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C8, &qword_223214510);
  v18 = swift_allocObject();
  v106 = xmmword_223214360;
  *(v18 + 16) = xmmword_223214360;
  v19 = sub_2230FB7F4(0, &qword_27D0598D0, 0x277CBEA60);
  *(v18 + 32) = v19;
  v20 = sub_2230FB7F4(0, &qword_27D0598D8, 0x277CCACA8);
  *(v18 + 40) = v20;
  sub_2232002A4();

  if (v110)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    if (swift_dynamicCast())
    {
      v21 = v107;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_2230D40E0(&v108, &qword_27D0580F8, &unk_223208E30);
    v21 = 0;
  }

  v22 = *(a1 + 56);

  *(a1 + 56) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v106;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  sub_2232002A4();

  if (v110)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    if (swift_dynamicCast())
    {
      v24 = v107;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_2230D40E0(&v108, &qword_27D0580F8, &unk_223208E30);
    v24 = 0;
  }

  v25 = type metadata accessor for RequestContextData.Builder(0);
  v26 = v25[13];
  v27 = *(a1 + v26);

  *(a1 + v26) = v24;
  sub_2230FB7F4(0, &qword_27D0598E0, 0x277CCABB0);
  v105 = 0xD000000000000013;
  v28 = sub_223200294();
  v29 = 1;
  v103[1] = v17;
  if (v28)
  {
    v30 = v28;
    LODWORD(v108) = 0;
    BYTE4(v108) = 1;
    sub_223200784();

    v31 = v108;
    v29 = BYTE4(v108);
  }

  else
  {
    v31 = 0;
  }

  v32 = a1 + v25[15];
  *v32 = v31;
  *(v32 + 4) = v29;
  v33 = sub_2232000A4();
  v34 = [a2 containsValueForKey_];

  if (v34)
  {
    v35 = sub_223200294();
    if (v35)
    {
      v108 = 0;
      v109 = 0;
      sub_2232000B4();

      v35 = v109;
      if (v109)
      {
        v36 = v108;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a1 + 8);

    *a1 = v36;
    *(a1 + 8) = v35;
  }

  v38 = sub_2232000A4();
  v39 = [a2 containsValueForKey_];

  if (v39)
  {
    v40 = sub_223200294();
    if (v40)
    {
      v108 = 0;
      v109 = 0;
      sub_2232000B4();

      v40 = v109;
      if (v109)
      {
        v41 = v108;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = *(a1 + 24);

    *(a1 + 16) = v41;
    *(a1 + 24) = v40;
  }

  v43 = sub_2232000A4();
  v44 = [a2 containsValueForKey_];

  if (v44)
  {
    v45 = sub_223200294();
    if (v45)
    {
      v108 = 0;
      v109 = 0;
      sub_2232000B4();

      v45 = v109;
      if (v109)
      {
        v46 = v108;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = *(a1 + 40);

    *(a1 + 32) = v46;
    *(a1 + 40) = v45;
  }

  v48 = sub_2232000A4();
  v49 = [a2 containsValueForKey_];

  if (v49)
  {
    sub_2230FB7F4(0, &qword_27D0598F0, 0x277CCA970);
    v50 = sub_223200294();
    if (v50)
    {
      v51 = v50;
      v52 = sub_2231FFCC4();
      v53 = v103[0];
      __swift_storeEnumTagSinglePayload(v103[0], 1, 1, v52);
      sub_223185930(&qword_27D0598F8);
      sub_223200454();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v52);
      v55 = v104;
      if (EnumTagSinglePayload == 1)
      {
        v56 = v104;
        v57 = 1;
      }

      else
      {
        (*(*(v52 - 8) + 32))(v104, v53, v52);
        v56 = v55;
        v57 = 0;
      }

      __swift_storeEnumTagSinglePayload(v56, v57, 1, v52);
    }

    else
    {
      v58 = sub_2231FFCC4();
      v55 = v104;
      __swift_storeEnumTagSinglePayload(v104, 1, 1, v58);
    }

    sub_223185348(v55, a1 + v25[12]);
  }

  v59 = sub_2232000A4();
  v60 = [a2 containsValueForKey_];

  if (v60)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v106;
    *(v61 + 32) = sub_2230FB7F4(0, &qword_27D0598E8, 0x277CBEAC0);
    *(v61 + 40) = v20;
    sub_2232002A4();

    if (v110)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
      if (swift_dynamicCast())
      {
        v62 = v107;
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      sub_2230D40E0(&v108, &qword_27D0580F8, &unk_223208E30);
      v62 = 0;
    }

    v63 = v25[14];
    v64 = *(a1 + v63);

    *(a1 + v63) = v62;
  }

  v65 = sub_2232000A4();
  v66 = [a2 containsValueForKey_];

  if (v66)
  {
    v67 = sub_2232000A4();
    v68 = [a2 decodeBoolForKey_];

    *(a1 + v25[16]) = v68;
  }

  v69 = sub_2232000A4();
  v70 = [a2 containsValueForKey_];

  if (v70)
  {
    v71 = sub_2232000A4();
    v72 = [a2 decodeBoolForKey_];

    *(a1 + v25[17]) = v72;
  }

  v73 = sub_2232000A4();
  v74 = [a2 containsValueForKey_];

  if (v74)
  {
    v75 = sub_2232000A4();
    v76 = [a2 decodeBoolForKey_];

    *(a1 + v25[18]) = v76;
  }

  v77 = sub_2232000A4();
  v78 = [a2 containsValueForKey_];

  if (v78)
  {
    type metadata accessor for RequestConjunctionInfo();
    v79 = sub_223200294();
    v80 = v25[19];

    *(a1 + v80) = v79;
  }

  v81 = sub_2232000A4();
  v82 = [a2 containsValueForKey_];

  if (v82)
  {
    v83 = sub_2232000A4();
    v84 = [a2 decodeBoolForKey_];

    *(a1 + v25[20]) = v84;
  }

  v85 = sub_2232000A4();
  v86 = [a2 containsValueForKey_];

  if (v86)
  {
    v87 = sub_2232000A4();
    v88 = [a2 decodeBoolForKey_];

    *(a1 + v25[21]) = v88;
  }

  v89 = sub_2232000A4();
  v90 = [a2 containsValueForKey_];

  if (v90)
  {
    sub_2230FB7F4(0, &qword_280FCA3A8, off_2784D4AB8);
    v91 = sub_223200294();
    v92 = v25[22];

    *(a1 + v92) = v91;
  }

  v93 = sub_2232000A4();
  v94 = [a2 containsValueForKey_];

  if (v94)
  {
    v95 = sub_2232000A4();
    v96 = [a2 decodeInt64ForKey_];

    v97 = a1 + v25[23];
    *v97 = v96;
    *(v97 + 8) = 0;
  }

  v98 = sub_2232000A4();
  v99 = [a2 containsValueForKey_];

  if (v99)
  {
    v100 = sub_2232000A4();
    v101 = [a2 decodeIntegerForKey_];

    v102 = a1 + v25[24];
    *v102 = v101;
    *(v102 + 8) = 0;
  }
}

void sub_223182F7C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v4 = sub_2231FFCC4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  v18 = v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D059860, &qword_223214378);
  OUTLINED_FUNCTION_4(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = v72 - v23;
  sub_2230D3100(v3, v73, &qword_27D0580F8, &unk_223208E30);
  if (!v73[3])
  {
    v32 = &qword_27D0580F8;
    v33 = &unk_223208E30;
    v34 = v73;
LABEL_12:
    sub_2230D40E0(v34, v32, v33);
    goto LABEL_85;
  }

  type metadata accessor for RequestContextData(0);
  if (swift_dynamicCast())
  {
    v25 = v72[1];
    OUTLINED_FUNCTION_10_14();
    if (v28)
    {
      if (!v26)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v27);
      v31 = v31 && v29 == v30;
      if (!v31 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v26)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_10_14();
    if (v37)
    {
      if (!v35)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v36);
      v40 = v31 && v38 == v39;
      if (!v40 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v35)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_10_14();
    if (v43)
    {
      if (!v41)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v42);
      v46 = v31 && v44 == v45;
      if (!v46 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v41)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree);
    if (!v31)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled);
    if (!v31)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled);
    if (!v31)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup);
    if (!v31 || (sub_22315F340(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes), *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes]) & 1) == 0)
    {
      goto LABEL_84;
    }

    v47 = OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval;
    v48 = *(v19 + 48);
    sub_2230D3100(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval, v24, &qword_27D059858, &qword_223214370);
    sub_2230D3100(&v25[v47], &v24[v48], &qword_27D059858, &qword_223214370);
    OUTLINED_FUNCTION_46(v24);
    if (v31)
    {
      OUTLINED_FUNCTION_46(&v24[v48]);
      if (v31)
      {
        sub_2230D40E0(v24, &qword_27D059858, &qword_223214370);
        goto LABEL_51;
      }
    }

    else
    {
      sub_2230D3100(v24, v18, &qword_27D059858, &qword_223214370);
      OUTLINED_FUNCTION_46(&v24[v48]);
      if (!v49)
      {
        (*(v7 + 32))(v12, &v24[v48], v4);
        sub_223185930(&unk_27D059870);
        v50 = sub_223200094();
        v51 = *(v7 + 8);
        v51(v12, v4);
        v51(v18, v4);
        sub_2230D40E0(v24, &qword_27D059858, &qword_223214370);
        if ((v50 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_51:
        if (sub_22315F340(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions), *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions]))
        {
          v52 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo);
          v53 = *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo];
          if (v52)
          {
            if (!v53)
            {
              goto LABEL_84;
            }

            v54 = *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo];

            v55 = sub_223134FE0(v52, v53);

            if ((v55 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          else if (v53)
          {
            goto LABEL_84;
          }

          if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId) == *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId])
          {
            OUTLINED_FUNCTION_20_9(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled);
            if (v31)
            {
              if (v56 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v56 == 2 || ((v56 ^ v57) & 1) != 0)
            {
              goto LABEL_84;
            }

            OUTLINED_FUNCTION_20_9(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported);
            if (v31)
            {
              if (v58 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v58 == 2 || ((v58 ^ v59) & 1) != 0)
            {
              goto LABEL_84;
            }

            OUTLINED_FUNCTION_20_9(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient);
            if (v31)
            {
              if (v60 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v60 == 2 || ((v60 ^ v61) & 1) != 0)
            {
              goto LABEL_84;
            }

            v62 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
            v63 = *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo];
            if (v62)
            {
              if (!v63)
              {
                goto LABEL_84;
              }

              type metadata accessor for RequestConjunctionInfo();
              v64 = v63;
              v65 = v62;
              v66 = sub_2232002B4();

              if ((v66 & 1) == 0)
              {
                goto LABEL_84;
              }

LABEL_81:
              OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen);
              if (v31)
              {
                OUTLINED_FUNCTION_1_21(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked);
                if (v31)
                {
                  v67 = v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType;
                  v68 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
                  v69 = *(v67 + 8);
                  v70 = *&v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType];
                  v71 = v25[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType + 8];

                  goto LABEL_85;
                }
              }

              goto LABEL_84;
            }

            if (!v63)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_84:

        goto LABEL_85;
      }

      (*(v7 + 8))(v18, v4);
    }

    v32 = &unk_27D059860;
    v33 = &qword_223214378;
    v34 = v24;
    goto LABEL_12;
  }

LABEL_85:
  OUTLINED_FUNCTION_40();
}

void sub_223183630()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = v96 - v6;
  v8 = type metadata accessor for RequestContextData(0);
  v97.receiver = v0;
  v97.super_class = v8;
  v9 = objc_msgSendSuper2(&v97, sel_debugDescription);
  v10 = sub_2232000C4();
  v12 = v11;

  *&v98 = v10;
  *(&v98 + 1) = v12;
  MEMORY[0x223DD5AA0](31520, 0xE200000000000000);
  strcpy(&v98, "audioSource: ");
  HIWORD(v98) = -4864;
  v13 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
  if (v13)
  {
    v15 = *v14;
    v16 = v13;
  }

  else
  {
    v16 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v15, v16);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000012;
  *(&v98 + 1) = v17;
  v18 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
  v95 = v7;
  if (v18)
  {
    v20 = *v19;
    v21 = v18;
  }

  else
  {
    v21 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v20, v21);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  strcpy(&v98, "responseMode: ");
  HIBYTE(v98) = -18;
  v22 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8];
  v96[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode];
  v96[1] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v23 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v23);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  v24 = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree];
  strcpy(&v98, "isEyesFree: ");
  BYTE13(v98) = 0;
  HIWORD(v98) = -5120;
  if (v24)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v25, v26);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = v27;
  if (v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled])
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled])
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v28, v29);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = v30;
  OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled);
  v33 = v32 | 0x65750000u;
  if (v31)
  {
    v34 = 0x65736C6166;
  }

  else
  {
    v34 = v33;
  }

  if (v31)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v34, v35);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  v36 = v98;
  strcpy(&v98, "bargeInModes: ");
  HIBYTE(v98) = -18;
  v37 = MEMORY[0x223DD5B40](*&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes], MEMORY[0x277D837D0]);
  MEMORY[0x223DD5AA0](v37);

  OUTLINED_FUNCTION_17_7();
  v98 = v36;

  OUTLINED_FUNCTION_29_5();

  v38 = v98;
  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000020;
  *(&v98 + 1) = v39;
  v40 = v95;
  sub_2230D3100(&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval], v95, &qword_27D059858, &qword_223214370);
  v41 = sub_2231FFCC4();
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    sub_2230D40E0(v40, &qword_27D059858, &qword_223214370);
    v42 = 0xE500000000000000;
    v43 = 0x3E6C696E3CLL;
  }

  else
  {
    v43 = sub_2231FFC94();
    v42 = v44;
    (*(*(v41 - 8) + 8))(v40, v41);
  }

  MEMORY[0x223DD5AA0](v43, v42);

  OUTLINED_FUNCTION_17_7();
  v45 = v98;
  v98 = v38;

  MEMORY[0x223DD5AA0](v45, *(&v45 + 1));

  v46 = v98;
  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000014;
  *(&v98 + 1) = v47;
  v96[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions];

  sub_223184814(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
  sub_2231853C0();
  sub_223200084();

  v48 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v48);

  OUTLINED_FUNCTION_17_7();
  v49 = v98;
  v98 = v46;

  MEMORY[0x223DD5AA0](v49, *(&v49 + 1));

  OUTLINED_FUNCTION_3_23();
  v50 = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup];
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = v51;
  if (v50)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v50)
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v52, v53);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = v54;
  v96[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0);
  v55 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v55);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  v95 = 0xD000000000000015;
  *&v98 = 0xD000000000000015;
  *(&v98 + 1) = v56;
  LODWORD(v96[0]) = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId];
  v57 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v57);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  v58 = v98;
  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000019;
  *(&v98 + 1) = v59;
  LOBYTE(v96[0]) = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059898, &qword_223214390);
  v60 = sub_223200104();
  MEMORY[0x223DD5AA0](v60);

  v98 = v58;

  v61 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v61);

  v62 = v98;
  OUTLINED_FUNCTION_3_23();
  v64 = v63 + 4;
  *&v98 = v63 + 4;
  *(&v98 + 1) = v65;
  v66 = OUTLINED_FUNCTION_44_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported);
  MEMORY[0x223DD5AA0](v66);

  v98 = v62;

  v67 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v67);

  v68 = v98;
  strcpy(&v98, "isInAmbient: ");
  HIWORD(v98) = -4864;
  v69 = OUTLINED_FUNCTION_44_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient);
  MEMORY[0x223DD5AA0](v69);

  v70 = v98;
  v98 = v68;

  MEMORY[0x223DD5AA0](v70, *(&v70 + 1));

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000011;
  *(&v98 + 1) = v71;
  v96[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo];
  v72 = v96[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A0, &qword_223214398);
  v73 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v73);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v98 = v64;
  *(&v98 + 1) = v74;
  OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen);
  v77 = v76 | 0x65750000u;
  if (v75)
  {
    v78 = 0x65736C6166;
  }

  else
  {
    v78 = v77;
  }

  if (v75)
  {
    v79 = 0xE500000000000000;
  }

  else
  {
    v79 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v78, v79);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000010;
  *(&v98 + 1) = v80;
  OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked);
  v83 = v82 | 0x65750000u;
  if (v81)
  {
    v84 = 0x65736C6166;
  }

  else
  {
    v84 = v83;
  }

  if (v81)
  {
    v85 = 0xE500000000000000;
  }

  else
  {
    v85 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v84, v85);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v98 = v95;
  *(&v98 + 1) = v86;
  v96[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata];
  v87 = v96[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A8, &qword_2232143A0);
  v88 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v88);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000010;
  *(&v98 + 1) = v89;
  OUTLINED_FUNCTION_27_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598B0, &qword_2232143A8);
  v90 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v90);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  v91 = v98;
  OUTLINED_FUNCTION_3_23();
  *&v98 = 0xD000000000000017;
  *(&v98 + 1) = v92;
  OUTLINED_FUNCTION_27_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598B8, &qword_2232143B0);
  v93 = OUTLINED_FUNCTION_30_3();
  MEMORY[0x223DD5AA0](v93);

  v94 = v98;
  v98 = v91;

  MEMORY[0x223DD5AA0](v94, *(&v94 + 1));

  MEMORY[0x223DD5AA0](125, 0xE100000000000000);

  OUTLINED_FUNCTION_40();
}

id RequestContextData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestContextData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_223184234(void *__src, uint64_t a2, void *__dst)
{
  if (__dst != __src || __src + 16 * a2 <= __dst)
  {
    return OUTLINED_FUNCTION_5_19(__src, a2, __dst);
  }

  return __src;
}

uint64_t sub_22318427C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_4(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_37_3();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_37_3();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

void sub_22318433C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059918, &unk_223214530);
  v11 = *(sub_2231FFE94() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_23;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_18:
  v17 = *(sub_2231FFE94() - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_22318427C(a4 + v18, v9, v14 + v18, MEMORY[0x277D5DD80]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2231844F4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059910, &qword_22320D320);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2231845EC(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059900, &qword_223214518);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[3 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_28_3();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059908, &unk_223214520);
    OUTLINED_FUNCTION_28_3();
    swift_arrayInitWithCopy();
  }
}

char *sub_22318470C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C0, &qword_223214508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223184814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22318591C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_223184880(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_223184880(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223200694();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_223200204();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_223184A3C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_223184974(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_223184974(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2232006B4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_223184A3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_2232006B4();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_2232006B4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_2232006B4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_22314C798(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_22314C798(v38 > 1, v39 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          result = sub_223185070((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_223184F44(&v89, *v83, a3);
}