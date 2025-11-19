unint64_t sub_2231AE6C8()
{
  result = qword_27D05A1B8;
  if (!qword_27D05A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1B8);
  }

  return result;
}

unint64_t sub_2231AE720()
{
  result = qword_280FCAFB8;
  if (!qword_280FCAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAFB8);
  }

  return result;
}

unint64_t sub_2231AE778()
{
  result = qword_280FCAFC0;
  if (!qword_280FCAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAFC0);
  }

  return result;
}

BOOL sub_2231AE7DC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F0758();
  *a2 = result;
  return result;
}

BOOL sub_2231AE810@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F0758();
  *a1 = result;
  return result;
}

uint64_t sub_2231AE83C(uint64_t a1)
{
  v2 = sub_2230E46DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AE878(uint64_t a1)
{
  v2 = sub_2230E46DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SiriWillPromptMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1C0, &qword_2232192E8);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E46DC();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriWillPromptMessage(0);
    v13 = *((*MEMORY[0x277D85000] & *v20) + 0x30);
    v14 = *((*MEMORY[0x277D85000] & *v20) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(&qword_27D057FC8);
    sub_2232004C4();
    sub_2231261EC(v6, v20 + OBJC_IVAR____TtC16SiriMessageTypes21SiriWillPromptMessage_promptInfo);
    sub_2230F7158(a1, v19);
    v12 = RequestMessageBase.init(from:)(v19);
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t SiriWillPromptMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriWillPromptMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriWillPromptMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

id SiriWillPromptMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriWillPromptMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for SiriWillPromptMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231AEF84()
{
  result = qword_27D05A1D0;
  if (!qword_27D05A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1D0);
  }

  return result;
}

uint64_t SiriXActionCandidate.flowHandlerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidate.parse.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = *(type metadata accessor for SiriXActionCandidate(v2) + 20);
  OUTLINED_FUNCTION_15_8();
  return sub_2231B28D4(v1 + v4, v0);
}

uint64_t SiriXActionCandidate.loggingId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = *(type metadata accessor for SiriXActionCandidate(v2) + 28);
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

void SiriXActionCandidate.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v73 = v3;
  v74 = v2;
  v76 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_9_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v72 = &v69 - v9;
  OUTLINED_FUNCTION_31_1();
  v10 = sub_2231FFDA4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v71 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v70 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1D8, &qword_2232194A8);
  OUTLINED_FUNCTION_9_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_43_2();
  v22 = type metadata accessor for SiriXParse(v21);
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v28 = v27 - v26;
  v29 = type metadata accessor for SiriXActionCandidate.Builder(0);
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v75 = type metadata accessor for SiriXActionCandidate(0);
  v32 = OUTLINED_FUNCTION_4(v75);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_2();
  v37 = (v36 - v35);
  *v1 = 0;
  v1[1] = 0;
  v38 = v30[7];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v22);
  v42 = v1 + v30[8];
  *v42 = 0;
  v42[8] = 1;
  v43 = v30[9];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v10);
  v74(v1);
  v47 = v1[1];
  if (!v47)
  {
    goto LABEL_7;
  }

  v74 = *v1;
  sub_2230D3008(v1 + v38, v0, &qword_27D05A1D8, &qword_2232194A8);
  if (__swift_getEnumTagSinglePayload(v0, 1, v22) == 1)
  {
    v48 = &qword_27D05A1D8;
    v49 = &qword_2232194A8;
    v50 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v0, v28);
    if (v42[8] == 1)
    {
      OUTLINED_FUNCTION_7_28();
      sub_2231B278C();
      goto LABEL_7;
    }

    v63 = *v42;
    v64 = v72;
    sub_2230D3008(v1 + v43, v72, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v10) != 1)
    {

      OUTLINED_FUNCTION_16_12();
      v65 = v70;
      v66 = *(v71 + 32);
      v66(v70, v64, v10);
      v55 = v75;
      *v37 = v74;
      v37[1] = v47;
      v67 = v55[5];
      OUTLINED_FUNCTION_2_40();
      sub_2231B27E0(v28, v37 + v68);
      *(v37 + v55[6]) = v63;
      v66(v37 + v55[7], v65, v10);
      v62 = v76;
      sub_2231B27E0(v37, v76);
      v61 = 0;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_7_28();
    sub_2231B278C();
    v48 = &qword_27D0575C0;
    v49 = &qword_2232035E0;
    v50 = v64;
  }

  sub_2230D40E0(v50, v48, v49);
LABEL_7:
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v51 = sub_223200014();
  __swift_project_value_buffer(v51, qword_280FCE830);
  v52 = sub_223200004();
  v53 = sub_223200254();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v75;
  if (v54)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v77 = v55;
    v78 = v57;
    *v56 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1E0, &qword_2232194B0);
    v58 = sub_223200104();
    v60 = sub_2231A5D38(v58, v59, &v78);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2230CE000, v52, v53, "Could not build %{public}s: Builder has missing required fields", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_16_12();
  v61 = 1;
  v62 = v76;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v62, v61, 1, v55);
  OUTLINED_FUNCTION_40();
}

uint64_t SiriXActionCandidate.description.getter()
{
  v1 = v0;
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD00000000000001FLL, 0x8000000223225C20);
  MEMORY[0x223DD5AA0](*v1, v1[1]);
  MEMORY[0x223DD5AA0](0x3A6573726170202CLL, 0xE900000000000020);
  v2 = type metadata accessor for SiriXActionCandidate(0);
  v3 = v2[5];
  type metadata accessor for SiriXParse(0);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223225C40);
  v10 = *(v1 + v2[6]);
  v4 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v4);

  MEMORY[0x223DD5AA0](0x6E6967676F6C202CLL, 0xED0000203A644967);
  v5 = v2[7];
  sub_2231FFDA4();
  OUTLINED_FUNCTION_6_23();
  sub_2231B288C(v6, v7);
  v8 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v8);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return 0;
}

uint64_t SiriXActionCandidate.Builder.flowHandlerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidate.Builder.flowHandlerId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriXActionCandidate.Builder.parse.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXActionCandidate.Builder(v0) + 20);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXActionCandidate.Builder.affinityScore.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriXActionCandidate.Builder(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SiriXActionCandidate.Builder.affinityScore.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriXActionCandidate.Builder(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriXActionCandidate.Builder.affinityScore.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXActionCandidate.Builder(v0) + 24);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXActionCandidate.Builder.loggingId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = type metadata accessor for SiriXActionCandidate.Builder(v2);
  return sub_2230D3008(v1 + *(v3 + 28), v0, &qword_27D0575C0, &qword_2232035E0);
}

uint64_t SiriXActionCandidate.Builder.loggingId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SiriXActionCandidate.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 28), &qword_27D0575C0, &qword_2232035E0);
}

uint64_t SiriXActionCandidate.Builder.loggingId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXActionCandidate.Builder(v0) + 28);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231AFAB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E6148776F6C66 && a2 == 0xED0000644972656CLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573726170 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974696E69666661 && a2 == 0xED000065726F6353;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x49676E6967676F6CLL && a2 == 0xE900000000000064)
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

uint64_t sub_2231AFC1C(char a1)
{
  result = 0x646E6148776F6C66;
  switch(a1)
  {
    case 1:
      result = 0x6573726170;
      break;
    case 2:
      result = 0x7974696E69666661;
      break;
    case 3:
      result = 0x49676E6967676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231AFCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231AFAB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231AFCE8(uint64_t a1)
{
  v2 = sub_2231B2838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AFD24(uint64_t a1)
{
  v2 = sub_2231B2838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriXActionCandidate.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1E8, &qword_2232194B8);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_5();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B2838();
  sub_2232007A4();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_6_10();
  sub_2232005F4();
  if (!v2)
  {
    v15 = type metadata accessor for SiriXActionCandidate(0);
    v16 = v15[5];
    type metadata accessor for SiriXParse(0);
    OUTLINED_FUNCTION_14_11();
    sub_2231B288C(v17, v18);
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    v19 = *(v4 + v15[6]);
    OUTLINED_FUNCTION_6_10();
    sub_223200634();
    v20 = v15[7];
    sub_2231FFDA4();
    OUTLINED_FUNCTION_6_23();
    sub_2231B288C(v21, v22);
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
  }

  return (*(v8 + 8))(v3, v6);
}

void SiriXActionCandidate.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v50 = v0;
  v4 = v3;
  v44 = v5;
  v45 = sub_2231FFDA4();
  v6 = OUTLINED_FUNCTION_9(v45);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v46 = v11 - v10;
  v12 = OUTLINED_FUNCTION_31_1();
  v13 = type metadata accessor for SiriXParse(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1F0, &qword_2232194C0);
  v18 = OUTLINED_FUNCTION_9(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = v42 - v23;
  v25 = type metadata accessor for SiriXActionCandidate(0);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  v29 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2231B2838();
  v49 = v24;
  v30 = v50;
  sub_223200794();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v31 = v47;
    v50 = v4;
    v32 = v1;
    *v1 = sub_2232004F4();
    v1[1] = v33;
    v42[1] = v33;
    OUTLINED_FUNCTION_14_11();
    sub_2231B288C(v34, v35);
    sub_223200554();
    v36 = v25[5];
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v2, v1 + v37);
    *(v1 + v25[6]) = sub_223200534();
    OUTLINED_FUNCTION_6_23();
    sub_2231B288C(v38, v39);
    v41 = v45;
    v40 = v46;
    sub_223200554();
    (*(v31 + 8))(v49, v48);
    (*(v43 + 32))(v32 + v25[7], v40, v41);
    sub_2231B28D4(v32, v44);
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_2231B278C();
  }

  OUTLINED_FUNCTION_9_0();
}

void SiriXUSOParse.debugDescription.getter()
{
  OUTLINED_FUNCTION_42();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  sub_223200374();

  v22 = 0xD000000000000017;
  v23 = 0x8000000223225C60;
  v6 = type metadata accessor for SiriXUSOParse(0);
  v7 = (v0 + v6[6]);
  v8 = v7[1];
  *&v26 = *v7;
  *(&v26 + 1) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v9 = sub_223200104();
  MEMORY[0x223DD5AA0](v9);

  MEMORY[0x223DD5AA0](0xD000000000000014, 0x8000000223225C80);
  sub_2230D3008(v0 + v6[5], v1, &qword_27D05A200, &unk_2232194C8);
  v10 = sub_223200104();
  MEMORY[0x223DD5AA0](v10);

  MEMORY[0x223DD5AA0](11305, 0xE200000000000000);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_223200374();

  strcpy(&v26, "groupIndex: ");
  BYTE13(v26) = 0;
  HIWORD(v26) = -5120;
  v11 = (v0 + v6[7]);
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 4);
  LODWORD(v22) = v12;
  BYTE4(v22) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
  v13 = sub_223200104();
  MEMORY[0x223DD5AA0](v13);

  MEMORY[0x223DD5AA0](0x615072657375202CLL, 0xED0000203A657372);
  sub_2231FFEB4();
  OUTLINED_FUNCTION_18_10();
  v14 = sub_2231FFE14();
  v24 = v14;
  OUTLINED_FUNCTION_5_24();
  v25 = sub_2231B288C(v15, v16);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(v14 - 8) + 16))(v17, v0, v14);
  v18 = sub_2231FFEA4();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v22);
  MEMORY[0x223DD5AA0](v18, v20);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  v21 = v26;
  v22 = 0xD000000000000017;
  v23 = 0x8000000223225C60;

  MEMORY[0x223DD5AA0](v21, *(&v21 + 1));

  OUTLINED_FUNCTION_40();
}

void SiriXUSOParse.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v55 = v2;
  v56 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CA0, &qword_2232194E0);
  OUTLINED_FUNCTION_9_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31_4();
  v8 = sub_2231FFE14();
  v9 = OUTLINED_FUNCTION_9(v8);
  v54 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_31_1();
  v17 = type metadata accessor for SiriXUSOParse.Builder(v16);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v20 = type metadata accessor for SiriXUSOParse(0);
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  v30 = v18[7];
  sub_2231FFDF4();
  v53 = v30;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = (v0 + v18[8]);
  *v35 = 0;
  v35[1] = 0;
  v36 = v0 + v18[9];
  *v36 = 0;
  *(v36 + 4) = 1;
  v55(v0);
  sub_2230D3008(v0, v1, &qword_27D058CA0, &qword_2232194E0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_2230D40E0(v1, &qword_27D058CA0, &qword_2232194E0);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v37 = sub_223200014();
    __swift_project_value_buffer(v37, qword_280FCE830);
    v38 = sub_223200004();
    v39 = sub_223200254();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 136446210;
      v42 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A210, &qword_2232194E8);
      v43 = sub_223200104();
      v45 = sub_2231A5D38(v43, v44, &v57);

      *(v40 + 4) = v45;
      v20 = v42;
      _os_log_impl(&dword_2230CE000, v38, v39, "Could not build %{public}s: Builder has missing required fields", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    OUTLINED_FUNCTION_17_9();
    v46 = 1;
    v47 = v56;
  }

  else
  {
    v48 = *(v54 + 32);
    v48(v15, v1, v8);
    v48(v26, v15, v8);
    sub_2230D3008(v0 + v53, v26 + v20[5], &qword_27D05A200, &unk_2232194C8);
    v49 = v35[1];
    v50 = (v26 + v20[6]);
    *v50 = *v35;
    v50[1] = v49;
    v51 = *v36;
    LOBYTE(v48) = *(v36 + 4);

    OUTLINED_FUNCTION_17_9();
    v52 = v26 + v20[7];
    *v52 = v51;
    *(v52 + 4) = v48;
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v26, v56);
    v46 = 0;
    v47 = v56;
  }

  __swift_storeEnumTagSinglePayload(v47, v46, 1, v20);
  OUTLINED_FUNCTION_40();
}

uint64_t SiriXUSOParse.userParse.getter()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2231FFE14();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_2_1();

  return v4(v3);
}

uint64_t sub_2231B0B30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2231072AC();
}

uint64_t sub_2231B0B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F09A8();
  *a2 = result;
  return result;
}

unint64_t sub_2231B0B84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F09F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231B0BB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230F09A8();
  *a1 = result;
  return result;
}

uint64_t sub_2231B0BE0(uint64_t a1)
{
  v2 = sub_2231B29CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B0C1C(uint64_t a1)
{
  v2 = sub_2231B29CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXUSOParse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v63 = v0;
  v5 = v4;
  v58 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v61 = &v55 - v11;
  OUTLINED_FUNCTION_31_1();
  v12 = sub_2231FFF64();
  v13 = OUTLINED_FUNCTION_9_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v60 = v17 - v16;
  OUTLINED_FUNCTION_31_1();
  v18 = sub_2231FFE14();
  v19 = OUTLINED_FUNCTION_9(v18);
  v59 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A218, &unk_2232194F0);
  OUTLINED_FUNCTION_9(v23);
  v62 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v28 = type metadata accessor for SiriXUSOParse(0);
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  v33 = v5[3];
  v32 = v5[4];
  v64 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v33);
  sub_2231B29CC();
  v34 = v63;
  sub_223200794();
  if (!v34)
  {
    v56 = v1;
    v57 = v28;
    v63 = v18;
    v35 = v61;
    LOBYTE(v65) = 0;
    sub_2232004F4();
    v55 = v2;
    sub_2231FFF54();
    OUTLINED_FUNCTION_5_24();
    sub_2231B288C(v36, v37);
    sub_2231FFFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2A20();
    OUTLINED_FUNCTION_9_26();
    sub_223200554();
    v60 = v3;
    if (v66)
    {
      sub_2231FFDF4();
      v38 = v35;
      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    }

    else
    {
      v38 = v35;
      sub_2231FFDD4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231B2A9C();
    OUTLINED_FUNCTION_9_26();
    v43 = v55;
    sub_223200554();
    v44 = v59;
    v45 = v62;
    v46 = v65;
    v47 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
    sub_2231B2B18();
    OUTLINED_FUNCTION_9_26();
    sub_223200554();
    (*(v45 + 8))(v43, v23);
    v48 = v65;
    v49 = v38;
    v50 = BYTE4(v65);
    v51 = v56;
    (*(v44 + 32))(v56, v60, v63);
    v52 = v57;
    sub_2231B2B94(v49, v51 + *(v57 + 20));
    v53 = (v51 + *(v52 + 24));
    *v53 = v46;
    v53[1] = v47;
    v54 = v51 + *(v52 + 28);
    *v54 = v48;
    *(v54 + 4) = v50;
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v51, v58);
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  OUTLINED_FUNCTION_9_0();
}

void SiriXUSOParse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v41 = v1;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - v11;
  OUTLINED_FUNCTION_31_1();
  v12 = sub_2231FFF84();
  v13 = OUTLINED_FUNCTION_9(v12);
  v40 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A238, &qword_223219500);
  OUTLINED_FUNCTION_9(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_4();
  v23 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2231B29CC();
  sub_2232007A4();
  sub_2231FFF74();
  sub_2231FFE14();
  OUTLINED_FUNCTION_5_24();
  sub_2231B288C(v24, v25);
  v26 = v41;
  sub_2231FFFB4();
  v27 = (v40 + 8);
  if (v26)
  {
    (*v27)(v3, v12);
    (*(v19 + 8))(v2, v17);
  }

  else
  {
    (*v27)(v3, v12);
    LOBYTE(v42) = 0;
    sub_2232005F4();
    v28 = v2;

    v41 = type metadata accessor for SiriXUSOParse(0);
    v29 = v4;
    v30 = v4 + *(v41 + 20);
    v31 = v39;
    sub_2230D3008(v30, v39, &qword_27D05A200, &unk_2232194C8);
    v32 = sub_2231FFDF4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
    if (EnumTagSinglePayload == 1)
    {
      sub_2230D40E0(v31, &qword_27D05A200, &unk_2232194C8);
      v34 = 0;
    }

    else
    {
      v34 = sub_2231FFDE4();
      (*(*(v32 - 8) + 8))(v31, v32);
    }

    *&v42 = v34;
    BYTE8(v42) = EnumTagSinglePayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2C04();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    v35 = v41;
    v42 = *(v29 + *(v41 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    v36 = (v29 + *(v35 + 28));
    v37 = *v36;
    LOBYTE(v36) = *(v36 + 4);
    LODWORD(v42) = v37;
    BYTE4(v42) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
    sub_2231B2C80();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    (*(v19 + 8))(v28, v17);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriXUSOParse.Builder.parserIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXUSOParse.Builder(v0) + 20);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231B1718(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXUSOParse.Builder.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriXUSOParse.Builder(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriXUSOParse.Builder.appBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXUSOParse.Builder(v0) + 24);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXUSOParse.Builder.groupIndex.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  result = type metadata accessor for SiriXUSOParse.Builder(v2);
  v4 = v1 + *(result + 28);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t SiriXUSOParse.Builder.groupIndex.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriXUSOParse.Builder(v0) + 28);
  return OUTLINED_FUNCTION_8();
}

void static SiriXUSOParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v5 = v4;
  v6 = sub_2231FFDF4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A240, &qword_223219508);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  if ((sub_2231FFE04() & 1) == 0)
  {
    goto LABEL_11;
  }

  v42 = v9;
  v41 = type metadata accessor for SiriXUSOParse(0);
  v22 = *(v41 + 20);
  v23 = *(v16 + 48);
  sub_2230D3008(v5 + v22, v21, &qword_27D05A200, &unk_2232194C8);
  v24 = v3 + v22;
  v25 = v3;
  sub_2230D3008(v24, &v21[v23], &qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_46(v21);
  if (v26)
  {
    OUTLINED_FUNCTION_46(&v21[v23]);
    if (v26)
    {
      sub_2230D40E0(v21, &qword_27D05A200, &unk_2232194C8);
      goto LABEL_13;
    }

LABEL_10:
    sub_2230D40E0(v21, &qword_27D05A240, &qword_223219508);
    goto LABEL_11;
  }

  sub_2230D3008(v21, v1, &qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_46(&v21[v23]);
  if (v26)
  {
    (*(v42 + 8))(v1, v6);
    goto LABEL_10;
  }

  v27 = v42;
  (*(v42 + 32))(v0, &v21[v23], v6);
  sub_2231B288C(&qword_27D05A248, MEMORY[0x277D5DA88]);
  v28 = sub_223200094();
  v29 = *(v27 + 8);
  v29(v0, v6);
  v29(v1, v6);
  v25 = v3;
  sub_2230D40E0(v21, &qword_27D05A200, &unk_2232194C8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v30 = v41;
  v31 = *(v41 + 24);
  v32 = (v5 + v31);
  v33 = *(v5 + v31 + 8);
  v34 = (v25 + v31);
  v35 = v34[1];
  if (!v33)
  {
    if (v35)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (v35)
  {
    v36 = *v32 == *v34 && v33 == v35;
    if (v36 || (sub_2232006B4() & 1) != 0)
    {
LABEL_22:
      v37 = *(v30 + 28);
      v38 = (v5 + v37);
      v39 = *(v5 + v37 + 4);
      v40 = (v25 + v37);
      LODWORD(v37) = *(v25 + v37 + 4);
      if ((v39 & 1) == 0)
      {
        *v38;
        *v40;
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231B1C14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_34_4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_34_4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000223225CC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_34_4();

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

uint64_t sub_2231B1D08(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x65737261506F7375;
  }

  return 0xD000000000000012;
}

uint64_t sub_2231B1D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B1C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B1DD0(uint64_t a1)
{
  v2 = sub_2231B2CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B1E0C(uint64_t a1)
{
  v2 = sub_2231B2CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXParse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v40 = v5;
  v42 = type metadata accessor for SiriXUSOParse(0);
  v6 = OUTLINED_FUNCTION_4(v42);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A250, &qword_223219510);
  OUTLINED_FUNCTION_9(v9);
  v41 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_43_2();
  v15 = type metadata accessor for SiriXParse(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  v22 = v4[4];
  v43 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v23 = sub_2231B2CFC();
  sub_223200794();
  if (!v1)
  {
    sub_2231B2D50();
    OUTLINED_FUNCTION_30_4();
    if (v44)
    {
      if (v44 == 1)
      {
        sub_2230FB7A0();
        OUTLINED_FUNCTION_30_4();
        sub_2231717C8();
        OUTLINED_FUNCTION_18_10();
        v24 = sub_2231FFFF4();
        v25 = sub_223200264();
        v32 = v25;
        if (!v25)
        {
          v35 = sub_2232003A4();
          swift_allocError();
          v37 = v36;
          v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
          *v37 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A08, &qword_223205AE0);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_223205AB0;
          *(v39 + 56) = &type metadata for SiriXParse.CodingKeys;
          *(v39 + 64) = v23;
          *(v39 + 32) = 2;
          sub_223200394();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
          swift_willThrow();
          sub_2230D94DC(v44, v45);
          (*(v41 + 8))(v0, v9);
          goto LABEL_8;
        }

        v33 = OUTLINED_FUNCTION_10_16();
        v34(v33);
        sub_2230D94DC(v44, v45);
        *v21 = v32;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_10_16();
        v31(v30);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_14();
      sub_2231B288C(v26, v27);
      sub_223200554();
      v28 = OUTLINED_FUNCTION_10_16();
      v29(v28);
      OUTLINED_FUNCTION_1_34();
      sub_2231B27E0(v2, v21);
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v21, v40);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_9_0();
}

void SiriXParse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v0;
  v5 = v4;
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for SiriXUSOParse(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for SiriXParse(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A268, &qword_223219518);
  OUTLINED_FUNCTION_9(v38);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_33_5();
  v20 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2231B2CFC();
  sub_2232007A4();
  OUTLINED_FUNCTION_15_8();
  sub_2231B28D4(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v2, v12);
    LOBYTE(v39[0]) = 0;
    sub_2231B2DA4();
    OUTLINED_FUNCTION_21_11();
    if (!v1)
    {
      LOBYTE(v39[0]) = 1;
      OUTLINED_FUNCTION_13_14();
      sub_2231B288C(v25, v26);
      sub_223200654();
    }

    sub_2231B278C();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    LOBYTE(v39[0]) = 2;
    sub_2231B2DA4();
    OUTLINED_FUNCTION_21_11();
LABEL_9:
    v27 = OUTLINED_FUNCTION_18_13();
    v28(v27);
    goto LABEL_10;
  }

  v22 = *v2;
  LOBYTE(v39[0]) = 1;
  sub_2231B2DA4();
  OUTLINED_FUNCTION_21_11();
  if (!v1)
  {
    v39[0] = 0;
    v30 = [objc_opt_self() archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v39];
    v31 = v39[0];
    if (v30)
    {
      v32 = sub_2231FFD24();
      v34 = v33;

      v39[0] = v32;
      v39[1] = v34;
      sub_2230D7754();
      sub_223200654();
      v35 = OUTLINED_FUNCTION_18_13();
      v36(v35);

      sub_2230D94DC(v32, v34);
      goto LABEL_10;
    }

    v37 = v31;
    sub_2231FFD04();

    swift_willThrow();
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_18_13();
  v24(v23);

LABEL_10:
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B2618(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2231B2654@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2231B2618(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2231B2680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231B2628(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2231B278C()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2231B27E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return a2;
}

unint64_t sub_2231B2838()
{
  result = qword_280FCB4A8;
  if (!qword_280FCB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB4A8);
  }

  return result;
}

uint64_t sub_2231B288C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2231B28D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_2231B29CC()
{
  result = qword_280FCB240;
  if (!qword_280FCB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB240);
  }

  return result;
}

unint64_t sub_2231B2A20()
{
  result = qword_27D05A228;
  if (!qword_27D05A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A220, &qword_22321FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A228);
  }

  return result;
}

unint64_t sub_2231B2A9C()
{
  result = qword_27D05A100;
  if (!qword_27D05A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A100);
  }

  return result;
}

unint64_t sub_2231B2B18()
{
  result = qword_27D05A230;
  if (!qword_27D05A230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A208, &qword_2232194D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A230);
  }

  return result;
}

uint64_t sub_2231B2B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231B2C04()
{
  result = qword_280FCA428;
  if (!qword_280FCA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A220, &qword_22321FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA428);
  }

  return result;
}

unint64_t sub_2231B2C80()
{
  result = qword_280FCA328;
  if (!qword_280FCA328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A208, &qword_2232194D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA328);
  }

  return result;
}

unint64_t sub_2231B2CFC()
{
  result = qword_280FCB348;
  if (!qword_280FCB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB348);
  }

  return result;
}

unint64_t sub_2231B2D50()
{
  result = qword_27D05A258;
  if (!qword_27D05A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A258);
  }

  return result;
}

unint64_t sub_2231B2DA4()
{
  result = qword_280FCB330;
  if (!qword_280FCB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB330);
  }

  return result;
}

uint64_t sub_2231B2E20()
{
  result = type metadata accessor for SiriXParse(319);
  if (v1 <= 0x3F)
  {
    result = sub_2231FFDA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2231B2EE4()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  if (v0 <= 0x3F)
  {
    sub_2231B2FF0(319, qword_280FCB2E0, type metadata accessor for SiriXParse);
    if (v1 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA430);
      if (v2 <= 0x3F)
      {
        sub_2231B2FF0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2231B2FF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_2231B306C()
{
  sub_2231FFE14();
  if (v0 <= 0x3F)
  {
    sub_2231B2FF0(319, &qword_280FCE668, MEMORY[0x277D5DA88]);
    if (v1 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8);
      if (v2 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA330);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2231B3184()
{
  sub_2231B2FF0(319, &qword_280FCE658, MEMORY[0x277D5DB08]);
  if (v0 <= 0x3F)
  {
    sub_2231B2FF0(319, &qword_280FCE668, MEMORY[0x277D5DA88]);
    if (v1 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8);
      if (v2 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA330);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2231B3290()
{
  result = type metadata accessor for SiriXUSOParse(319);
  if (v1 <= 0x3F)
  {
    result = sub_2231FFFF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_2231B3314(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231B3400(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B34E0()
{
  result = qword_27D05A270;
  if (!qword_27D05A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A270);
  }

  return result;
}

unint64_t sub_2231B3538()
{
  result = qword_27D05A278;
  if (!qword_27D05A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A278);
  }

  return result;
}

unint64_t sub_2231B3590()
{
  result = qword_27D05A280;
  if (!qword_27D05A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A280);
  }

  return result;
}

unint64_t sub_2231B35E8()
{
  result = qword_27D05A288;
  if (!qword_27D05A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A288);
  }

  return result;
}

unint64_t sub_2231B3640()
{
  result = qword_280FCB338;
  if (!qword_280FCB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB338);
  }

  return result;
}

unint64_t sub_2231B3698()
{
  result = qword_280FCB340;
  if (!qword_280FCB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB340);
  }

  return result;
}

unint64_t sub_2231B36F0()
{
  result = qword_280FCB230;
  if (!qword_280FCB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB230);
  }

  return result;
}

unint64_t sub_2231B3748()
{
  result = qword_280FCB238;
  if (!qword_280FCB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB238);
  }

  return result;
}

unint64_t sub_2231B37A0()
{
  result = qword_280FCB498;
  if (!qword_280FCB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB498);
  }

  return result;
}

unint64_t sub_2231B37F8()
{
  result = qword_280FCB4A0;
  if (!qword_280FCB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB4A0);
  }

  return result;
}

unint64_t sub_2231B384C()
{
  result = qword_280FCB328;
  if (!qword_280FCB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_2231B278C();
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);

  return sub_223200654();
}

uint64_t SiriXActionCandidatesGeneratedMessage.rcId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *SiriXActionCandidatesGeneratedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SiriXActionCandidatesGeneratedMessage.init(build:)(v1);
}

void *SiriXActionCandidatesGeneratedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = v5[9];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v8[v5[11]] = 15;
  a1(v8);
  v12 = *v8;
  if (*v8 && (v13 = *(v8 + 2)) != 0)
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates) = v12;
    v14 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
    *v14 = *(v8 + 1);
    v14[1] = v13;
    MEMORY[0x28223BE20](v12);
    *(&v27 - 2) = v8;

    v15 = RequestMessageBase.init(build:)(sub_2231B4938);
    sub_2231B3CD0(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898();
      v23 = sub_2231A5D38(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s. Builder has missing required fields", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2231B3CD0(v8);
    type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2231B3CD0(uint64_t a1)
{
  v2 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231B3D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  v5 = (a2 + v4[8]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(a1 + 16);

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = type metadata accessor for RequestMessageBase.Builder(0);
  v12 = (a1 + *(v11 + 28));
  v13 = v12[1];

  *v12 = v10;
  v12[1] = v9;
  result = sub_2230DAEC8(a2 + v4[7], a1 + *(v11 + 24));
  *a1 = *(a2 + v4[9]);
  return result;
}

void *SiriXActionCandidatesGeneratedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A290, &qword_223219BB0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B4940();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A298, &qword_223219BB8);
    v20 = 0;
    sub_2231B4994(&qword_27D05A2A0, &qword_27D05A2A8);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates) = v19[0];
    LOBYTE(v19[0]) = 1;
    v13 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
    *v14 = v13;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231B4124(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2B0, &unk_223219BC0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B4940();
  sub_2232007A4();
  v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates);
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A298, &qword_223219BB8);
  sub_2231B4994(&qword_280FCA480, qword_280FCB3F8);
  sub_223200654();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId + 8);
    v16[14] = 1;
    sub_2232005F4();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.actionCandidates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.rcId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.rcId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_34() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.assistantId.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_2231B468C()
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

uint64_t sub_2231B46E0(char a1)
{
  if (a1)
  {
    return 1682531186;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2231B4714(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22310720C();
}

uint64_t sub_2231B4738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2231B468C();
  *a2 = result;
  return result;
}

uint64_t sub_2231B4768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231B46E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231B479C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2231B468C();
  *a1 = result;
  return result;
}

uint64_t sub_2231B47C4(uint64_t a1)
{
  v2 = sub_2231B4940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B4800(uint64_t a1)
{
  v2 = sub_2231B4940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B486C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId + 8);
}

id SiriXActionCandidatesGeneratedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231B4940()
{
  result = qword_280FCAF00;
  if (!qword_280FCAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAF00);
  }

  return result;
}

uint64_t sub_2231B4994(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A298, &qword_223219BB8);
    sub_2231B4A1C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231B4A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriXActionCandidate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231B4B0C()
{
  sub_2231B4BFC();
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
        sub_2230D525C(319, &qword_280FCB0A8);
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

void sub_2231B4BFC()
{
  if (!qword_280FCA478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A298, &qword_223219BB8);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA478);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SiriXActionCandidatesGeneratedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B4D40()
{
  result = qword_27D05A2B8;
  if (!qword_27D05A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2B8);
  }

  return result;
}

unint64_t sub_2231B4D98()
{
  result = qword_280FCAEF0;
  if (!qword_280FCAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAEF0);
  }

  return result;
}

unint64_t sub_2231B4DF0()
{
  result = qword_280FCAEF8;
  if (!qword_280FCAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAEF8);
  }

  return result;
}

uint64_t SiriXRedirectContext.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_22311ACB8(v2, v3, v4);
}

__n128 SiriXRedirectContext.init(reason:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

BOOL static SiriXRedirectContext.RedirectReason.NoMatchingTool.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_2231B4EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7553686372616573 && a2 == 0xEF64656465656363)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231B4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B4EC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231B4F9C(uint64_t a1)
{
  v2 = sub_2231B511C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B4FD8(uint64_t a1)
{
  v2 = sub_2231B511C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2C0, &qword_223219DB0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  v7 = v2[4];
  v8 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231B511C();
  sub_2232007A4();
  sub_2232005D4();
  v9 = OUTLINED_FUNCTION_0_4();
  v10(v9);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B511C()
{
  result = qword_27D05A2C8;
  if (!qword_27D05A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2C8);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2D0, &qword_223219DB8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_12();
  sub_2231B511C();
  OUTLINED_FUNCTION_15_9();
  if (!v0)
  {
    v9 = sub_2232004A4();
    v10 = OUTLINED_FUNCTION_17_10();
    v11(v10);
    *v4 = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static SiriXRedirectContext.RedirectReason.UnableToHandleRequest.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2231B5334(uint64_t a1)
{
  v2 = sub_2231B54C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5370(uint64_t a1)
{
  v2 = sub_2231B54C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2D8, &qword_223219DC0);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231B54C0();
  sub_2232007A4();
  sub_2232005C4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B54C0()
{
  result = qword_27D05A2E0;
  if (!qword_27D05A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2E0);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2E8, &qword_223219DC8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_14_12();
  sub_2231B54C0();
  sub_223200794();
  if (!v0)
  {
    v9 = sub_223200494();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_0_4();
    v13(v12);
    *v4 = v9;
    v4[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static SiriXRedirectContext.RedirectReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 != v5 || v3 != v6)
            {
              OUTLINED_FUNCTION_4_35();
              v9 = sub_2232006B4();
              v10 = 1;
              v11 = OUTLINED_FUNCTION_6_24();
              sub_22311ACB8(v11, v12, v13);
              v14 = OUTLINED_FUNCTION_1_35();
              sub_22311ACB8(v14, v15, v16);
              v17 = OUTLINED_FUNCTION_1_35();
              sub_22311BC94(v17, v18, v19);
              v20 = OUTLINED_FUNCTION_6_24();
              sub_22311BC94(v20, v21, v22);
              if (v9)
              {
                return v10;
              }

              return 0;
            }

            v10 = 1;
            v51 = OUTLINED_FUNCTION_1_35();
            sub_22311ACB8(v51, v52, v53);
            v54 = OUTLINED_FUNCTION_1_35();
            sub_22311ACB8(v54, v55, v56);
            v57 = OUTLINED_FUNCTION_1_35();
            sub_22311BC94(v57, v58, v59);
            v29 = OUTLINED_FUNCTION_4_35();
            goto LABEL_44;
          }
        }

        else if (!v6)
        {
          v10 = 1;
          sub_22311ACB8(*a2, 0, 1);
          sub_22311ACB8(v2, 0, 1);
          sub_22311BC94(v2, 0, 1);
          v29 = v5;
          v30 = 0;
LABEL_44:
          v31 = 1;
          goto LABEL_45;
        }

        v40 = OUTLINED_FUNCTION_6_24();
        sub_22311ACB8(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_1_35();
        sub_22311ACB8(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_1_35();
        sub_22311BC94(v46, v47, v48);
        v36 = OUTLINED_FUNCTION_6_24();
        goto LABEL_32;
      }

      v32 = *(a1 + 8);

      goto LABEL_31;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && v6 == 0)
      {
        v27 = OUTLINED_FUNCTION_4_35();
        sub_22311BC94(v27, v28, 2);
        v10 = 1;
        v29 = 1;
        v30 = 0;
        v31 = 2;
LABEL_45:
        sub_22311BC94(v29, v30, v31);
        return v10;
      }

      goto LABEL_31;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_31:
      sub_22311ACB8(v5, v6, v7);
      v34 = OUTLINED_FUNCTION_4_35();
      sub_22311BC94(v34, v35, v4);
      v36 = v5;
      v37 = v6;
      v38 = v7;
LABEL_32:
      sub_22311BC94(v36, v37, v38);
      return 0;
    }

    v49 = OUTLINED_FUNCTION_4_35();
    sub_22311BC94(v49, v50, 2);
    sub_22311BC94(0, 0, 2);
    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_31;
  }

  v23 = OUTLINED_FUNCTION_4_35();
  sub_22311BC94(v23, v24, 0);
  sub_22311BC94(v5, v6, 0);
  if (v2 != 2)
  {
    return v5 != 2 && ((v5 ^ v2) & 1) == 0;
  }

  return v5 == 2;
}

uint64_t sub_2231B58AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F54656C62616E75 && a2 == 0xEE00656C646E6148;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7245776F6C466669 && a2 == 0xEB00000000726F72;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x8000000223225D70 == a2)
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

unint64_t sub_2231B5A20(char a1)
{
  result = 0x69686374614D6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F54656C62616E75;
      break;
    case 2:
      result = 0x7245776F6C466669;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231B5AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B58AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B5AF8(uint64_t a1)
{
  v2 = sub_2231B61BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5B34(uint64_t a1)
{
  v2 = sub_2231B61BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5B70(uint64_t a1)
{
  v2 = sub_2231B6264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5BAC(uint64_t a1)
{
  v2 = sub_2231B6264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5BE8(uint64_t a1)
{
  v2 = sub_2231B6360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5C24(uint64_t a1)
{
  v2 = sub_2231B6360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5C60(uint64_t a1)
{
  v2 = sub_2231B62B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5C9C(uint64_t a1)
{
  v2 = sub_2231B62B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5CD8(uint64_t a1)
{
  v2 = sub_2231B6210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5D14(uint64_t a1)
{
  v2 = sub_2231B6210();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2F0, &qword_223219DD0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2F8, &qword_223219DD8);
  v12 = OUTLINED_FUNCTION_9(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_3();
  v49 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A300, &qword_223219DE0);
  v19 = OUTLINED_FUNCTION_9(v18);
  v56 = v20;
  v57 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A308, &qword_223219DE8);
  OUTLINED_FUNCTION_9(v26);
  v55 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A310, &qword_223219DF0);
  v32 = OUTLINED_FUNCTION_9(v31);
  v59 = v33;
  v60 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v48 - v37;
  v39 = *v0;
  *&v58 = v0[1];
  *(&v58 + 1) = v39;
  v40 = *(v0 + 16);
  v41 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231B61BC();
  sub_2232007A4();
  if (v40)
  {
    if (v40 == 1)
    {
      LOBYTE(v61) = 1;
      sub_2231B62B8();
      OUTLINED_FUNCTION_8_23();
      v61 = *(&v58 + 1);
      v62 = v58;
      sub_2231B630C();
      v42 = v57;
      sub_223200654();
      (*(v56 + 8))(v25, v42);
      (*(v59 + 8))(v38, v40);
    }

    else
    {
      v44 = (v59 + 8);
      if (v58 == 0)
      {
        LOBYTE(v61) = 2;
        sub_2231B6264();
        v45 = v49;
        OUTLINED_FUNCTION_8_23();
        v47 = v50;
        v46 = v51;
      }

      else
      {
        LOBYTE(v61) = 3;
        sub_2231B6210();
        v45 = v52;
        OUTLINED_FUNCTION_8_23();
        v47 = v53;
        v46 = v54;
      }

      (*(v47 + 8))(v45, v46);
      (*v44)(v38, v40);
    }
  }

  else
  {
    LOBYTE(v61) = 0;
    sub_2231B6360();
    v43 = v60;
    sub_2232005B4();
    LOBYTE(v61) = BYTE8(v58);
    sub_2231B63B4();
    sub_223200654();
    (*(v55 + 8))(v1, v26);
    (*(v59 + 8))(v38, v43);
  }

  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B61BC()
{
  result = qword_27D05A318;
  if (!qword_27D05A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A318);
  }

  return result;
}

unint64_t sub_2231B6210()
{
  result = qword_27D05A320;
  if (!qword_27D05A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A320);
  }

  return result;
}

unint64_t sub_2231B6264()
{
  result = qword_27D05A328;
  if (!qword_27D05A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A328);
  }

  return result;
}

unint64_t sub_2231B62B8()
{
  result = qword_27D05A330;
  if (!qword_27D05A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A330);
  }

  return result;
}

unint64_t sub_2231B630C()
{
  result = qword_27D05A338;
  if (!qword_27D05A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A338);
  }

  return result;
}

unint64_t sub_2231B6360()
{
  result = qword_27D05A340;
  if (!qword_27D05A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A340);
  }

  return result;
}

unint64_t sub_2231B63B4()
{
  result = qword_27D05A348;
  if (!qword_27D05A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A348);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v86 = v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A350, &qword_223219DF8);
  OUTLINED_FUNCTION_9(v79);
  v83 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v85 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A358, &qword_223219E00);
  v11 = OUTLINED_FUNCTION_9(v10);
  v80 = v12;
  v81 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v84 = v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A360, &qword_223219E08);
  OUTLINED_FUNCTION_9(v82);
  v87 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A368, &qword_223219E10);
  OUTLINED_FUNCTION_9(v21);
  v78 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  v27 = v74 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A370, &unk_223219E18);
  OUTLINED_FUNCTION_9(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v33);
  v35 = v74 - v34;
  v36 = v3[3];
  v37 = v3[4];
  v88 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v36);
  sub_2231B61BC();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v76 = v27;
  v77 = v1;
  v74[1] = v21;
  v38 = v35;
  v39 = sub_223200594();
  sub_2230E0B80(v39, 0);
  if (v41 == v42 >> 1)
  {
LABEL_8:
    v50 = sub_2232003A4();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v52 = &type metadata for SiriXRedirectContext.RedirectReason;
    sub_223200484();
    sub_223200394();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v38, v28);
LABEL_9:
    v54 = v88;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v75 = v28;
  v74[0] = 0;
  if (v41 < (v42 >> 1))
  {
    v43 = *(v40 + v41);
    sub_2230E0B40(v41 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = v87;
    if (v45 == v47 >> 1)
    {
      v49 = v86;
      switch(v43)
      {
        case 1:
          LOBYTE(v89) = 1;
          sub_2231B62B8();
          v63 = v77;
          OUTLINED_FUNCTION_5_25();
          sub_2231B6F28();
          v64 = v82;
          sub_223200554();
          swift_unknownObjectRelease();
          (*(v48 + 8))(v63, v64);
          v72 = OUTLINED_FUNCTION_2_41();
          v73(v72, v75);
          v71 = v89;
          v69 = v90;
          v70 = 1;
          v54 = v88;
          v49 = v86;
          goto LABEL_15;
        case 2:
          LOBYTE(v89) = 2;
          sub_2231B6264();
          v55 = v84;
          v56 = v75;
          OUTLINED_FUNCTION_5_25();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v55, v81);
          v57 = OUTLINED_FUNCTION_2_41();
          v58(v57, v56);
          v71 = 0;
          v69 = 0;
          v70 = 2;
          goto LABEL_14;
        case 3:
          LOBYTE(v89) = 3;
          sub_2231B6210();
          v59 = v85;
          v60 = v75;
          OUTLINED_FUNCTION_5_25();
          swift_unknownObjectRelease();
          (*(v83 + 8))(v59, v79);
          v61 = OUTLINED_FUNCTION_2_41();
          v62(v61, v60);
          v69 = 0;
          v70 = 2;
          v71 = 1;
          goto LABEL_14;
        default:
          LOBYTE(v89) = 0;
          sub_2231B6360();
          OUTLINED_FUNCTION_5_25();
          sub_2231B6F7C();
          sub_223200554();
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_16_13();
          v66(v65);
          v67 = OUTLINED_FUNCTION_2_41();
          v68(v67, v75);
          v69 = 0;
          v70 = 0;
          v71 = v89;
LABEL_14:
          v54 = v88;
LABEL_15:
          *v49 = v71;
          *(v49 + 8) = v69;
          *(v49 + 16) = v70;
          break;
      }

      goto LABEL_10;
    }

    v28 = v75;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static SiriXRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v6;
  v10[0] = v4;
  v10[1] = v5;
  v11 = v7;
  sub_22311ACB8(v2, v3, v6);
  sub_22311ACB8(v4, v5, v7);
  v8 = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(v12, v10);
  sub_22311BC94(v4, v5, v7);
  sub_22311BC94(v2, v3, v6);
  return v8 & 1;
}

uint64_t sub_2231B6C04(uint64_t a1)
{
  v2 = sub_2231B6FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B6C40(uint64_t a1)
{
  v2 = sub_2231B6FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A388, &qword_223219E28);
  OUTLINED_FUNCTION_9(v15);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = v2[4];
  v13 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_22311ACB8(v10, v11, v13);
  sub_2231B6FD0();
  sub_2232007A4();
  v16 = v10;
  v17 = v11;
  v18 = v13;
  sub_2231B7024();
  v14 = v15;
  sub_223200654();
  sub_22311BC94(v16, v17, v18);
  (*(v4 + 8))(v9, v14);
  OUTLINED_FUNCTION_9_0();
}

void SiriXRedirectContext.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A3A0, &qword_223219E30);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_12();
  sub_2231B6FD0();
  OUTLINED_FUNCTION_15_9();
  if (!v0)
  {
    sub_2231B7078();
    sub_223200554();
    v9 = OUTLINED_FUNCTION_17_10();
    v10(v9);
    *v4 = v11;
    *(v4 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B6F28()
{
  result = qword_27D05A378;
  if (!qword_27D05A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A378);
  }

  return result;
}

unint64_t sub_2231B6F7C()
{
  result = qword_27D05A380;
  if (!qword_27D05A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A380);
  }

  return result;
}

unint64_t sub_2231B6FD0()
{
  result = qword_27D05A390;
  if (!qword_27D05A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A390);
  }

  return result;
}

unint64_t sub_2231B7024()
{
  result = qword_27D05A398;
  if (!qword_27D05A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A398);
  }

  return result;
}

unint64_t sub_2231B7078()
{
  result = qword_27D05A3A8;
  if (!qword_27D05A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes0A16XRedirectContextV14RedirectReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2231B70F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2231B7134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2231B7178(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231B7460(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231B7510()
{
  result = qword_27D05A3B0;
  if (!qword_27D05A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3B0);
  }

  return result;
}

unint64_t sub_2231B7568()
{
  result = qword_27D05A3B8;
  if (!qword_27D05A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3B8);
  }

  return result;
}

unint64_t sub_2231B75C0()
{
  result = qword_27D05A3C0;
  if (!qword_27D05A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3C0);
  }

  return result;
}

unint64_t sub_2231B7618()
{
  result = qword_27D05A3C8;
  if (!qword_27D05A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3C8);
  }

  return result;
}

unint64_t sub_2231B7670()
{
  result = qword_27D05A3D0;
  if (!qword_27D05A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3D0);
  }

  return result;
}

unint64_t sub_2231B76C8()
{
  result = qword_27D05A3D8;
  if (!qword_27D05A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3D8);
  }

  return result;
}

unint64_t sub_2231B7720()
{
  result = qword_27D05A3E0;
  if (!qword_27D05A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3E0);
  }

  return result;
}

unint64_t sub_2231B7778()
{
  result = qword_27D05A3E8;
  if (!qword_27D05A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3E8);
  }

  return result;
}

unint64_t sub_2231B77D0()
{
  result = qword_27D05A3F0;
  if (!qword_27D05A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3F0);
  }

  return result;
}

unint64_t sub_2231B7828()
{
  result = qword_27D05A3F8;
  if (!qword_27D05A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3F8);
  }

  return result;
}

unint64_t sub_2231B7880()
{
  result = qword_27D05A400;
  if (!qword_27D05A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A400);
  }

  return result;
}

unint64_t sub_2231B78D8()
{
  result = qword_27D05A408;
  if (!qword_27D05A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A408);
  }

  return result;
}

unint64_t sub_2231B7930()
{
  result = qword_27D05A410;
  if (!qword_27D05A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A410);
  }

  return result;
}

unint64_t sub_2231B7988()
{
  result = qword_27D05A418;
  if (!qword_27D05A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A418);
  }

  return result;
}

unint64_t sub_2231B79E0()
{
  result = qword_27D05A420;
  if (!qword_27D05A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A420);
  }

  return result;
}

unint64_t sub_2231B7A38()
{
  result = qword_27D05A428;
  if (!qword_27D05A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A428);
  }

  return result;
}

unint64_t sub_2231B7A90()
{
  result = qword_27D05A430;
  if (!qword_27D05A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A430);
  }

  return result;
}

unint64_t sub_2231B7AE8()
{
  result = qword_27D05A438;
  if (!qword_27D05A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A438);
  }

  return result;
}

unint64_t sub_2231B7B40()
{
  result = qword_27D05A440;
  if (!qword_27D05A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A440);
  }

  return result;
}

unint64_t sub_2231B7B98()
{
  result = qword_27D05A448;
  if (!qword_27D05A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A448);
  }

  return result;
}

unint64_t sub_2231B7BF0()
{
  result = qword_27D05A450;
  if (!qword_27D05A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A450);
  }

  return result;
}

unint64_t sub_2231B7C48()
{
  result = qword_27D05A458;
  if (!qword_27D05A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A458);
  }

  return result;
}

void *SiriXToolInvokedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SiriXToolInvokedMessage.init(build:)(v1);
}

void *SiriXToolInvokedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v14 = &v8[v5[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  a1(v8);
  v15 = *(v12 + 1);
  if (v15 && (v16 = *(v13 + 1)) != 0)
  {
    v17 = *v13;
    v18 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
    *v18 = *v12;
    v18[1] = v15;
    v19 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    *v19 = v17;
    v19[1] = v16;
    v20 = *(v14 + 1);
    v21 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId);
    *v21 = *v14;
    v21[1] = v20;
    MEMORY[0x28223BE20](v20);
    *(&v34 - 2) = v8;

    v22 = RequestMessageBase.init(build:)(sub_2231B8EB4);
    sub_2231B80D4(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v23 = sub_223200014();
    __swift_project_value_buffer(v23, qword_280FCE830);
    v24 = sub_223200004();
    v25 = sub_223200254();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898();
      v30 = sub_2231A5D38(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s. Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_2231B80D4(v8);
    type metadata accessor for SiriXToolInvokedMessage(0);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

uint64_t sub_2231B80D4(uint64_t a1)
{
  v2 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231B8150(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
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

void *SiriXToolInvokedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A460, &unk_22321A9B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B8EBC();
  sub_223200794();
  if (v2)
  {
    v19 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriXToolInvokedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_27();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
    *v14 = v10;
    v14[1] = v15;
    LOBYTE(v22[0]) = 1;
    v16 = OUTLINED_FUNCTION_9_27();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    *v17 = v16;
    v17[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    v23 = 2;
    sub_2231B8F10(&qword_27D05A100);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId) = *v22;
    sub_2230F7158(a1, v22);
    v19 = RequestMessageBase.init(from:)(v22);
    v20 = OUTLINED_FUNCTION_2();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v19;
}

uint64_t sub_2231B8558(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A470, &unk_22321A9C0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B8EBC();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId + 8);
  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_8_7();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance + 8);
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_8_7();
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId);
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231B8F10(&qword_280FCA4D0);
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t SiriXToolInvokedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriXToolInvokedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriXToolInvokedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_26() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SiriXToolInvokedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.invocationId.getter()
{
  v0 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.fallbackToEagerTrpId.getter()
{
  v0 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.fallbackToEagerTrpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231B8B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000223225E10 == a2)
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

uint64_t sub_2231B8C80(char a1)
{
  if (!a1)
  {
    return 0x697461636F766E69;
  }

  if (a1 == 1)
  {
    return 0x636E617265747475;
  }

  return 0xD000000000000014;
}

uint64_t sub_2231B8CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B8B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B8D18(uint64_t a1)
{
  v2 = sub_2231B8EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B8D54(uint64_t a1)
{
  v2 = sub_2231B8EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B8DC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId + 8);
}

id SiriXToolInvokedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriXToolInvokedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231B8EBC()
{
  result = qword_27D05A468;
  if (!qword_27D05A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A468);
  }

  return result;
}

uint64_t sub_2231B8F10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriXToolInvokedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B9108()
{
  result = qword_27D05A488;
  if (!qword_27D05A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A488);
  }

  return result;
}

unint64_t sub_2231B9160()
{
  result = qword_27D05A490;
  if (!qword_27D05A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A490);
  }

  return result;
}

unint64_t sub_2231B91B8()
{
  result = qword_27D05A498;
  if (!qword_27D05A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A498);
  }

  return result;
}

SiriMessageTypes::SpeechDirectednessDecision_optional __swiftcall SpeechDirectednessDecision.init(rawValue:)(Swift::String rawValue)
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

uint64_t SpeechDirectednessDecision.rawValue.getter()
{
  v1 = 0x6465746365726964;
  if (*v0 != 1)
  {
    v1 = 0x756F756769626D61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463657269646E75;
  }
}

unint64_t sub_2231B92EC()
{
  result = qword_27D05A4A0;
  if (!qword_27D05A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4A0);
  }

  return result;
}

uint64_t sub_2231B9364@<X0>(uint64_t *a1@<X8>)
{
  result = SpeechDirectednessDecision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechDirectednessDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B9518()
{
  result = qword_280FCA798;
  if (!qword_280FCA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA798);
  }

  return result;
}

uint64_t sub_2231B957C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E696F70646E65 && a2 == 0xEC000000656D6954)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231B961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B957C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231B9648(uint64_t a1)
{
  v2 = sub_2231BA434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B9684(uint64_t a1)
{
  v2 = sub_2231BA434();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SpeechEndpointDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v46 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  v20[8] = 1;
  a1(v17);
  v21 = *v17;
  if (v21 == 15)
  {
    goto LABEL_8;
  }

  v22 = *(v17 + 2);
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v2);
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
      v48 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898();
      v34 = sub_2231A5D38(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_2231B9B78(v17);
    type metadata accessor for SpeechEndpointDetectedMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v44 = v23;
  v24 = v45;
  v25 = v46;
  v26 = (*(v46 + 32))(v45, v2, v7);
  if (!*(v19 + 1) || (v20[8] & 1) != 0)
  {
    (*(v25 + 8))(v24, v7);
    goto LABEL_8;
  }

  v39 = *v19;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime) = *v20;
  MEMORY[0x28223BE20](v26);
  *(&v43 - 48) = v21;
  *(&v43 - 5) = v44;
  *(&v43 - 4) = v22;
  *(&v43 - 3) = v24;
  *(&v43 - 2) = v40;
  *(&v43 - 1) = v41;
  v37 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v37;
  sub_2231B9B78(v17);
  if (v37)
  {
  }

  (*(v25 + 8))(v24, v7);
  return v37;
}

uint64_t sub_2231B9B78(uint64_t a1)
{
  v2 = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SpeechEndpointDetectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A4A8, &qword_22321ACA8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BA434();
  sub_223200794();
  if (v2)
  {
    v14 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechEndpointDetectedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223200514();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime) = v13;
    sub_2230F7158(a1, v17);
    v14 = RequestMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_2231B9E30(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A4B8, &qword_22321ACB0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BA434();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime);
  sub_223200614();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231B9FDC()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SpeechEndpointDetectedMessage(0);
  v2 = objc_msgSendSuper2(&v8, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223225E30);
  v6 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime];
  sub_223200224();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t SpeechEndpointDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SpeechEndpointDetectedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SpeechEndpointDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechEndpointDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SpeechEndpointDetectedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SpeechEndpointDetectedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpeechEndpointDetectedMessage.Builder.endpointTime.getter()
{
  v1 = (v0 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SpeechEndpointDetectedMessage.Builder.endpointTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

id SpeechEndpointDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechEndpointDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BA434()
{
  result = qword_27D05A4B0;
  if (!qword_27D05A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4B0);
  }

  return result;
}

uint64_t sub_2231BA4E4()
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
        sub_2230D525C(319, &qword_27D05A4E0);
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

_BYTE *storeEnumTagSinglePayload for SpeechEndpointDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BA694()
{
  result = qword_27D05A4E8;
  if (!qword_27D05A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4E8);
  }

  return result;
}

unint64_t sub_2231BA6EC()
{
  result = qword_27D05A4F0;
  if (!qword_27D05A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4F0);
  }

  return result;
}

unint64_t sub_2231BA744()
{
  result = qword_27D05A4F8;
  if (!qword_27D05A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4F8);
  }

  return result;
}

void *SpeechPartialDeliveryStartedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SpeechPartialDeliveryStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechPartialDeliveryStartedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechPartialDeliveryStartedMessage()
{
  result = qword_280FCBE28;
  if (!qword_280FCBE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231BA920(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7544646C756F6873 && a2 == 0xED00005354546B63)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231BA9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231BA920(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231BA9F4(uint64_t a1)
{
  v2 = sub_2231BB59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BAA30(uint64_t a1)
{
  v2 = sub_2231BB59C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SpeechStartDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  v16 = started - 8;
  v17 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 15;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v20 = *(v16 + 32);
  __swift_storeEnumTagSinglePayload(&v19[v20], 1, 1, v7);
  v21 = *(v16 + 36);
  v19[v21] = 2;
  a1(v19);
  v22 = *v19;
  if (v22 == 15)
  {
    goto LABEL_7;
  }

  v23 = *(v19 + 2);
  if (!v23)
  {
    goto LABEL_7;
  }

  v40 = *(v19 + 1);
  sub_2230D1480(&v19[v20], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_7:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898();
      v33 = sub_2231A5D38(v31, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_2231BAF08(v19);
    type metadata accessor for SpeechStartDetectedMessage(0);
    v34 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = (*(v10 + 32))(v14, v2, v7);
  v25 = v19[v21];
  if (v25 == 2)
  {
    (*(v10 + 8))(v14, v7);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes26SpeechStartDetectedMessage_shouldDuckTTS) = v25 & 1;
  MEMORY[0x28223BE20](v24);
  *(&v39 - 32) = v22;
  *(&v39 - 3) = v40;
  *(&v39 - 2) = v23;
  *(&v39 - 1) = v14;
  v36 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v38 = v36;
  sub_2231BAF08(v19);
  if (v36)
  {
  }

  (*(v10 + 8))(v14, v7);
  return v36;
}

uint64_t sub_2231BAF08(uint64_t a1)
{
  started = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BAF84(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A500, &qword_22321AE78);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BB59C();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26SpeechStartDetectedMessage_shouldDuckTTS);
  sub_223200604();
  if (!v2)
  {
    sub_2230D46B0(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

void *sub_2231BB10C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A538, &unk_22321B008);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BB59C();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechStartDetectedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26SpeechStartDetectedMessage_shouldDuckTTS) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = SessionMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t SpeechStartDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SpeechStartDetectedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SpeechStartDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechStartDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechStartDetectedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpeechStartDetectedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t SpeechStartDetectedMessage.Builder.shouldDuckTTS.setter(char a1)
{
  result = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

id SpeechStartDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechStartDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BB59C()
{
  result = qword_27D05A508;
  if (!qword_27D05A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A508);
  }

  return result;
}

void sub_2231BB690()
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
        sub_2230D525C(319, &qword_280FCA440);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SpeechStartDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BB824()
{
  result = qword_27D05A520;
  if (!qword_27D05A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A520);
  }

  return result;
}

unint64_t sub_2231BB87C()
{
  result = qword_27D05A528;
  if (!qword_27D05A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A528);
  }

  return result;
}

unint64_t sub_2231BB8D4()
{
  result = qword_27D05A530;
  if (!qword_27D05A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A530);
  }

  return result;
}

void *SpeechStopDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  a1(v17);
  v21 = *v17;
  if (v21 == 15)
  {
    goto LABEL_12;
  }

  v22 = *(v17 + 2);
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v34 = sub_223200014();
    __swift_project_value_buffer(v34, qword_280FCE830);
    v35 = sub_223200004();
    v36 = sub_223200254();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136446210;
      v39 = sub_2230F7898();
      v41 = sub_2231A5D38(v39, v40, &v50);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2230CE000, v35, v36, "Could not build %{public}s: Builder has missing required fields", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DD6780](v38, -1, -1);
      MEMORY[0x223DD6780](v37, -1, -1);
    }

    sub_2231BBDC0(v17);
    type metadata accessor for SpeechStopDetectedMessage(0);
    v42 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v43 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v46 = v23;
  v25 = v47;
  v24 = v48;
  (*(v47 + 32))(v48, v2, v7);
  if (!*(v19 + 1))
  {
    (*(v25 + 8))(v24, v7);
    goto LABEL_12;
  }

  v26 = *(v20 + 1);
  if (!v26)
  {
    (*(v25 + 8))(v48, v7);
    goto LABEL_12;
  }

  v27 = *v19;
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId);
  *v28 = *v20;
  v28[1] = v26;
  MEMORY[0x28223BE20](v26);
  *(&v45 - 48) = v21;
  *(&v45 - 5) = v46;
  *(&v45 - 4) = v22;
  v29 = v48;
  *(&v45 - 3) = v48;
  *(&v45 - 2) = v30;
  *(&v45 - 1) = v31;

  v32 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v33 = v32;
  sub_2231BBDC0(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_2231BBDC0(uint64_t a1)
{
  v2 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SpeechStopDetectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A540, &qword_22321B018);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BC760();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechStopDetectedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231BC038(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A548, &qword_22321B020);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BC760();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231BC1DC(uint64_t a1)
{
  v2 = sub_2231BC760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BC218(uint64_t a1)
{
  v2 = sub_2231BC760();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SpeechStopDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SpeechStopDetectedMessage.init(build:)(v1);
}

uint64_t sub_2231BC340()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SpeechStopDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t SpeechStopDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SpeechStopDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SpeechStopDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechStopDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_29() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SpeechStopDetectedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SpeechStopDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SpeechStopDetectedMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SpeechStopDetectedMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id SpeechStopDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechStopDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BC760()
{
  result = qword_280FCD0E0;
  if (!qword_280FCD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechStopDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BC904()
{
  result = qword_27D05A550;
  if (!qword_27D05A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A550);
  }

  return result;
}

unint64_t sub_2231BC95C()
{
  result = qword_280FCD0D0;
  if (!qword_280FCD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0D0);
  }

  return result;
}

unint64_t sub_2231BC9B4()
{
  result = qword_280FCD0D8;
  if (!qword_280FCD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0D8);
  }

  return result;
}

uint64_t sub_2231BCA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223226080 == a2)
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

uint64_t sub_2231BCAE8(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449656369766564;
  }
}

uint64_t sub_2231BCB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231BCA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231BCB54(uint64_t a1)
{
  v2 = sub_2231BD91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BCB90(uint64_t a1)
{
  v2 = sub_2231BD91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartAttendingRequestedMessage.deviceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId + 8);

  return v1;
}

void *StartAttendingRequestedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v44 = v1;
  v43[1] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v43 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v43[0] = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  v15 = (started - 8);
  v16 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v7);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v15[10];
  v18[v21] = 2;
  a1(v18);
  v22 = *v18;
  if (v22 == 15)
  {
    goto LABEL_5;
  }

  v23 = *(v18 + 2);
  if (!v23)
  {
    goto LABEL_5;
  }

  v24 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136446210;
      v30 = sub_2230F7898();
      v32 = sub_2231A5D38(v30, v31, &v45);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder has missing required fields", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DD6780](v29, -1, -1);
      MEMORY[0x223DD6780](v28, -1, -1);
    }

    sub_2231BD0B8(v18);
    type metadata accessor for StartAttendingRequestedMessage(0);
    v33 = *((*MEMORY[0x277D85000] & *v44) + 0x30);
    v34 = *((*MEMORY[0x277D85000] & *v44) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v43[0] + 32))(v13, v6, v7);
  v37 = *(v20 + 1);
  v38 = v44;
  v39 = (v44 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
  v40 = v18[v21];
  *v39 = *v20;
  v39[1] = v37;
  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason) = v40 & 1;
  MEMORY[0x28223BE20](v37);
  LOBYTE(v43[-4]) = v22;
  v43[-3] = v41;
  v43[-2] = v23;
  v43[-1] = v13;

  v35 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v42 = v35;
  sub_2231BD0B8(v18);
  if (v35)
  {
  }

  (*(v43[0] + 8))(v13, v7);
  return v35;
}

uint64_t sub_2231BD0B8(uint64_t a1)
{
  started = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BD134(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A558, &qword_22321B1C8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BD91C();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId + 8);
  v19 = 0;
  sub_2232005C4();
  if (!v2)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason);
    v17 = 1;
    sub_2231BD970();
    sub_223200654();
    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

void *sub_2231BD318(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5A0, &qword_22321B370);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BD91C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartAttendingRequestedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v10 = sub_223200494();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
    *v14 = v10;
    v14[1] = v15;
    v20 = 1;
    sub_2231BDD50();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = SessionMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t StartAttendingRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartAttendingRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartAttendingRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_34() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartAttendingRequestedMessage.Builder.deviceId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartAttendingRequestedMessage.Builder.deviceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.attendingStartReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.attendingStartReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id StartAttendingRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartAttendingRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BD91C()
{
  result = qword_27D05A560;
  if (!qword_27D05A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A560);
  }

  return result;
}

unint64_t sub_2231BD970()
{
  result = qword_27D05A568;
  if (!qword_27D05A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A568);
  }

  return result;
}

uint64_t sub_2231BDA6C()
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
        sub_2230D525C(319, &qword_27D05A580);
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

_BYTE *storeEnumTagSinglePayload for StartAttendingRequestedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231BDC4C()
{
  result = qword_27D05A588;
  if (!qword_27D05A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A588);
  }

  return result;
}

unint64_t sub_2231BDCA4()
{
  result = qword_27D05A590;
  if (!qword_27D05A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A590);
  }

  return result;
}

unint64_t sub_2231BDCFC()
{
  result = qword_27D05A598;
  if (!qword_27D05A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A598);
  }

  return result;
}

unint64_t sub_2231BDD50()
{
  result = qword_27D05A5A8;
  if (!qword_27D05A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5A8);
  }

  return result;
}

void *StartCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  started = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  v15 = (started - 8);
  v16 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
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
  v18[v21] = 2;
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

    sub_2231BE270(v18);
    type metadata accessor for StartCandidateRequestMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v44;
  v25 = (*(v44 + 32))(v13, v2, v7);
  if (!*(v20 + 1) || (v26 = v18[v21], v26 == 2))
  {
    (*(v24 + 8))(v13, v7);
    goto LABEL_8;
  }

  v39 = *v20;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt) = v26 & 1;
  MEMORY[0x28223BE20](v25);
  *(&v43 - 48) = v22;
  *(&v43 - 5) = v43;
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v13;
  *(&v43 - 2) = v40;
  *(&v43 - 1) = v41;
  v37 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v37;
  sub_2231BE270(v18);
  if (v37)
  {
  }

  (*(v24 + 8))(v13, v7);
  return v37;
}

uint64_t sub_2231BE270(uint64_t a1)
{
  started = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5B0, &qword_22321B378);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BEC5C();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartCandidateRequestMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_2231BE52C(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5C0, &qword_22321B380);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BEC5C();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt);
  sub_223200604();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

BOOL sub_2231BE69C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F1A84();
  *a2 = result;
  return result;
}

uint64_t sub_2231BE6D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231BE670();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231BE6FC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F1A84();
  *a1 = result;
  return result;
}

uint64_t sub_2231BE728(uint64_t a1)
{
  v2 = sub_2231BEC5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BE764(uint64_t a1)
{
  v2 = sub_2231BEC5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231BE808()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StartCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x80000002232260A0);
  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v5, v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StartCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_35() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id StartCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BEC5C()
{
  result = qword_27D05A5B8;
  if (!qword_27D05A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BEE00()
{
  result = qword_27D05A5D8;
  if (!qword_27D05A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5D8);
  }

  return result;
}

unint64_t sub_2231BEE58()
{
  result = qword_27D05A5E0;
  if (!qword_27D05A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5E0);
  }

  return result;
}

unint64_t sub_2231BEEB0()
{
  result = qword_27D05A5E8;
  if (!qword_27D05A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5E8);
  }

  return result;
}

void *StartChildCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildCandidateRequestMessage.init(build:)(v1);
}

void *StartChildCandidateRequestMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  v5 = (started - 8);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v8[v5[10]] = 2;
  v12 = &v8[v5[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  a1(v8);
  v13 = *(v12 + 1);
  if (v13)
  {
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId);
    *v14 = *v12;
    v14[1] = v13;
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v8;

    v15 = StartCandidateRequestMessage.init(build:)(sub_2231BFC78);
    sub_2231BF280(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898();
      v23 = sub_2231A5D38(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s: Builder has missing rootRequestId field", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2231BF280(v8);
    type metadata accessor for StartChildCandidateRequestMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2231BF280(uint64_t a1)
{
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BF2FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  v8 = started[6];
  v9 = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + v9[6]);
  v10 = (a2 + started[7]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + v9[7]);
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  *(a1 + v9[8]) = *(a2 + started[8]);
  return result;
}

void *StartChildCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5F0, &qword_22321B550);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BFC80();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildCandidateRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = StartCandidateRequestMessage.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231BF60C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A600, &unk_22321B558);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BFC80();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2231BE52C(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t StartChildCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartChildCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_36() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildCandidateRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.rootRequestId.getter()
{
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildCandidateRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

BOOL sub_2231BFACC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F1C20();
  *a2 = result;
  return result;
}

uint64_t sub_2231BFB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230DEE28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231BFB28@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F1C20();
  *a1 = result;
  return result;
}

uint64_t sub_2231BFB54(uint64_t a1)
{
  v2 = sub_2231BFC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BFB90(uint64_t a1)
{
  v2 = sub_2231BFC80();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartChildCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BFC80()
{
  result = qword_27D05A5F8;
  if (!qword_27D05A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5F8);
  }

  return result;
}

uint64_t sub_2231BFD74()
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

      sub_2230D525C(319, &qword_280FCA440);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for StartChildCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BFF20()
{
  result = qword_27D05A618;
  if (!qword_27D05A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A618);
  }

  return result;
}

unint64_t sub_2231BFF78()
{
  result = qword_27D05A620;
  if (!qword_27D05A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A620);
  }

  return result;
}

unint64_t sub_2231BFFD0()
{
  result = qword_27D05A628;
  if (!qword_27D05A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A628);
  }

  return result;
}

void *StartChildLocalRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildLocalRequestMessage.init(build:)(v1);
}

void *StartChildLocalRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A630, &qword_22321B750);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEAE4();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildLocalRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = StartLocalRequestMessage.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t StartChildLocalRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildLocalRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartChildLocalRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildLocalRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void *StartChildLocalRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t StartChildLocalRequestMessage.Builder.rootRequestId.getter()
{
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 40));
  return OUTLINED_FUNCTION_2_1();
}

BOOL sub_2231C0578@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F1DBC();
  *a2 = result;
  return result;
}

BOOL sub_2231C05AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F1DBC();
  *a1 = result;
  return result;
}

uint64_t sub_2231C05D8(uint64_t a1)
{
  v2 = sub_2230DEAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C0614(uint64_t a1)
{
  v2 = sub_2230DEAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartChildLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildLocalRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C0768()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCACC0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2231C08B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StartChildLocalRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231C09B8()
{
  result = qword_27D05A658;
  if (!qword_27D05A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A658);
  }

  return result;
}

unint64_t sub_2231C0A10()
{
  result = qword_27D05A660;
  if (!qword_27D05A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A660);
  }

  return result;
}

unint64_t sub_2231C0A68()
{
  result = qword_27D05A668;
  if (!qword_27D05A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A668);
  }

  return result;
}

uint64_t StartChildSpeechRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t StartChildSpeechRequestMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

void *StartChildSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildSpeechRequestMessage.init(build:)(v1);
}

void *StartChildSpeechRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v50 = a1;
  v49[1] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v49 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  v17 = (started - 8);
  v18 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v21 = v20 - v19;
  *v21 = 15;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v20 - v19 + v17[8], 1, 1, v7);
  v22 = (v21 + v17[9]);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + v17[10]) = 19;
  *(v21 + v17[11]) = 0;
  *(v21 + v17[12]) = 2;
  *(v21 + v17[13]) = 0;
  v23 = (v21 + v17[14]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v17[15];
  __swift_storeEnumTagSinglePayload(v21 + v24, 1, 1, v7);
  v25 = (v21 + v17[16]);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 4) = 0;
  *(v25 + 5) = 0x1FFFFFFFELL;
  *(v25 + 6) = 0;
  *(v25 + 7) = 0;
  *(v25 + 64) = 0;
  v50(v21);
  v26 = v23[1];
  if (v26)
  {
    v27 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_rootRequestId);
    *v27 = *v23;
    v27[1] = v26;
    sub_2230D3100(v21 + v24, v6, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      sub_2231FFD94();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_2230D40E0(v6, &qword_27D0575C0, &qword_2232035E0);
      }
    }

    else
    {
      (*(v10 + 32))(v15, v6, v7);
    }

    (*(v10 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId, v15, v7);
    v40 = memcpy(__dst, v25, 0x41uLL);
    v41 = *(&__dst[2] + 1);
    if ((*(&__dst[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0uLL;
      v41 = 0x4000000000000000;
      v45 = 0uLL;
      v46 = 0uLL;
    }

    else
    {
      v44 = __dst[0];
      v45 = __dst[1];
      v42 = *&__dst[2];
      v46 = __dst[3];
      v43 = __dst[4];
    }

    v47 = v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision;
    *v47 = v44;
    *(v47 + 1) = v45;
    *(v47 + 4) = v42;
    *(v47 + 5) = v41;
    *(v47 + 3) = v46;
    v47[64] = v43;
    MEMORY[0x28223BE20](v40);
    v49[-2] = v21;
    sub_2230D3100(__dst, v51, &qword_27D057DC8, &qword_22320E730);
    v39 = StartSpeechRequestMessage.init(build:)(sub_2231C2090);
    sub_2231C1130(v21);
  }

  else
  {
    v28 = v2;
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
      *&__dst[0] = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898();
      v36 = sub_2231A5D38(v34, v35, __dst);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231C1130(v21);
    type metadata accessor for StartChildSpeechRequestMessage(0);
    v37 = *((*MEMORY[0x277D85000] & *v28) + 0x30);
    v38 = *((*MEMORY[0x277D85000] & *v28) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v39;
}

uint64_t sub_2231C1130(uint64_t a1)
{
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C118C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  v8 = started[6];
  v9 = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + v9[6]);
  v10 = (a2 + started[7]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + v9[7]);
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  *(a1 + v9[8]) = *(a2 + started[8]);
  v15 = *(a2 + started[9]);
  v16 = v9[9];
  v17 = *(a1 + v16);

  *(a1 + v16) = v15;
  *(a1 + v9[10]) = *(a2 + started[10]);
  v18 = *(a2 + started[11]);
  v19 = v9[11];
  v20 = *(a1 + v19);
  v21 = v18;

  *(a1 + v19) = v18;
}

void *StartChildSpeechRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v25 = v5;
  v26 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A670, &qword_22321B950);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E6CDC();
  sub_223200794();
  if (v1)
  {
    v22 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildSpeechRequestMessage(0);
    v17 = *((*MEMORY[0x277D85000] & *v27) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v27) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = sub_2232004F4();
    v20 = (v27 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_rootRequestId);
    *v20 = v16;
    v20[1] = v21;
    __src[0] = 1;
    sub_2230D45E8(&qword_27D057ED0);
    sub_223200554();
    (*(v25 + 32))(v27 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId, v10, v26);
    __src[87] = 2;
    sub_22311D8D0();
    sub_223200554();
    memcpy(v27 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision, __src, 0x41uLL);
    sub_2230F7158(a1, v28);
    v22 = StartSpeechRequestMessage.init(from:)(v28);
    v23 = OUTLINED_FUNCTION_1_9();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v22;
}

uint64_t StartChildSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_36() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildSpeechRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.inputOrigin.getter()
{
  result = OUTLINED_FUNCTION_10_17();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 36));
}

uint64_t StartChildSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartChildSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartChildSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 44);

  *(v1 + v2) = v0;
}

uint64_t StartChildSpeechRequestMessage.Builder.rootRequestId.getter()
{
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 48));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildSpeechRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_36() + 52);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildSpeechRequestMessage.Builder.routingDecision.getter()
{
  v2 = *(OUTLINED_FUNCTION_10_17() + 56);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  memcpy(v0, (v1 + v2), 0x41uLL);
  return sub_2230D3100(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

void *StartChildSpeechRequestMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 56);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D40E0(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t sub_2231C1DE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2231074CC();
}

uint64_t sub_2231C1E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F1F58();
  *a2 = result;
  return result;
}

uint64_t sub_2231C1E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E6D40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231C1E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230F1F58();
  *a1 = result;
  return result;
}

uint64_t sub_2231C1E88(uint64_t a1)
{
  v2 = sub_2230E6CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C1EC4(uint64_t a1)
{
  v2 = sub_2230E6CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231C1F30()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_rootRequestId + 8);

  v2 = OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId;
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0 + v2);
  return OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision);
}

id StartChildSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C20A0()
{
  result = sub_2231FFDA4();
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

uint64_t sub_2231C2198()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_2230D525C(319, &qword_280FCA440);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v11 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2230D525C(319, &qword_280FCD5E8);
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

  return v1;
}

void sub_2231C238C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_2231C23F4()
{
  result = qword_27D05A680;
  if (!qword_27D05A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A680);
  }

  return result;
}

unint64_t sub_2231C244C()
{
  result = qword_280FCC4D0;
  if (!qword_280FCC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC4D0);
  }

  return result;
}

unint64_t sub_2231C24A4()
{
  result = qword_280FCC4D8;
  if (!qword_280FCC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC4D8);
  }

  return result;
}

uint64_t StartChildTextRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t StartChildTextRequestMessage.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

uint64_t StartChildTextRequestMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

void *StartChildTextRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildTextRequestMessage.init(build:)(v1);
}

void *StartChildTextRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &ObjectType - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  v16 = (started - 8);
  v17 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  *v20 = 15;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v19 - v18 + v16[8], 1, 1, v7);
  v21 = (v20 + v16[9]);
  *v21 = 0;
  v21[1] = 0;
  *(v20 + v16[10]) = 19;
  *(v20 + v16[11]) = 0;
  v22 = (v20 + v16[12]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v16[13];
  __swift_storeEnumTagSinglePayload(v20 + v23, 1, 1, v7);
  v24 = (v20 + v16[14]);
  *v24 = xmmword_223203230;
  v25 = (v20 + v16[15]);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 4) = 0;
  *(v25 + 5) = 0x1FFFFFFFELL;
  *(v25 + 6) = 0;
  *(v25 + 7) = 0;
  *(v25 + 64) = 0;
  v57(v20);
  v26 = v22[1];
  if (v26)
  {
    v27 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId);
    *v27 = *v22;
    v27[1] = v26;
    sub_2230D3100(v20 + v23, v6, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      sub_2231FFD94();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
      v29 = v56;
      if (EnumTagSinglePayload != 1)
      {
        sub_2230D40E0(v6, &qword_27D0575C0, &qword_2232035E0);
      }
    }

    else
    {
      v29 = v56;
      (*(v56 + 32))(v14, v6, v7);
    }

    (*(v29 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v14, v7);
    v41 = *v24;
    v42 = v24[1];
    if (v42 == 2)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    if (v42 == 2)
    {
      v44 = 1;
    }

    else
    {
      v44 = v42;
    }

    v45 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
    *v45 = v43;
    v45[1] = v44;
    v46 = memcpy(__dst, v25, 0x41uLL);
    v47 = *(&__dst[2] + 1);
    if ((*(&__dst[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0uLL;
      v47 = 0x4000000000000000;
      v51 = 0uLL;
      v52 = 0uLL;
    }

    else
    {
      v50 = __dst[0];
      v51 = __dst[1];
      v48 = *&__dst[2];
      v52 = __dst[3];
      v49 = __dst[4];
    }

    v53 = v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision;
    *v53 = v50;
    *(v53 + 1) = v51;
    *(v53 + 4) = v48;
    *(v53 + 5) = v47;
    *(v53 + 3) = v52;
    v53[64] = v49;
    MEMORY[0x28223BE20](v46);
    *(&ObjectType - 2) = v20;
    sub_2231C3E44(v41, v42);
    sub_2230D3100(__dst, v58, &qword_27D057DC8, &qword_22320E730);
    v40 = StartRequestMessageBase.init(build:)(sub_2231C3E3C);
    sub_2231C2BE0(v20);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&__dst[0] = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898();
      v37 = sub_2231A5D38(v35, v36, __dst);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_2231C2BE0(v20);
    type metadata accessor for StartChildTextRequestMessage(0);
    v38 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v40;
}

uint64_t sub_2231C2BE0(uint64_t a1)
{
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C2C5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  v8 = started[6];
  v9 = type metadata accessor for StartRequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + v9[6]);
  v10 = (a2 + started[7]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + v9[7]);
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  *(a1 + v9[8]) = *(a2 + started[8]);
  v15 = *(a2 + started[9]);
  v16 = v9[9];
  v17 = *(a1 + v16);
  v18 = v15;

  *(a1 + v16) = v15;
}

void *StartChildTextRequestMessage.init(from:)(uint64_t *a1)
{
  v27 = sub_2231FFDA4();
  v3 = OUTLINED_FUNCTION_9(v27);
  v25 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A688, &qword_22321BB90);
  v11 = v10;
  v12 = OUTLINED_FUNCTION_9(v10);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C3E54();
  sub_223200794();
  if (v1)
  {
    OUTLINED_FUNCTION_6_25();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if ((v9 & 1) == 0)
    {
      if (v11)
      {
        (*(v25 + 8))(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v27);
      }

      if (v16)
      {
        sub_2230D7BB4(*(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType), *(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8));
      }

      type metadata accessor for StartChildTextRequestMessage(0);
      v20 = *((*MEMORY[0x277D85000] & *v26) + 0x30);
      v21 = *((*MEMORY[0x277D85000] & *v26) + 0x34);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    v17 = sub_2232004F4();
    v18 = (v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId);
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(__src[0]) = 1;
    sub_2230D45E8(&qword_27D057ED0);
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    (*(v25 + 32))(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v9, v27);
    LOBYTE(v28[0]) = 2;
    sub_2231C3EA8();
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType) = __src[0];
    v30 = 3;
    sub_22311D8D0();
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    memcpy(v26 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision, __src, 0x41uLL);
    sub_2230F7158(a1, v28);
    v16 = StartTextRequestMessage.init(from:)(v28);
    v23 = OUTLINED_FUNCTION_6_6();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231C31F0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A698, &qword_22321BB98);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C3E54();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId + 8);
  __dst[0] = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    __dst[0] = 1;
    sub_2231FFDA4();
    sub_2230D45E8(&qword_280FCE688);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8);
    v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
    v21 = v15;
    v23 = 2;
    sub_2230D7C34(v20, v15);
    sub_2231C3EFC();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    sub_2230D7BB4(v20, v21);
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), sizeof(__src));
    v22 = 3;
    sub_2230E6EA8(__dst, v17);
    sub_2230E6F8C();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    memcpy(v17, __src, 0x41uLL);
    sub_2230E6410(v17);
    sub_2230DEEE4(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t StartChildTextRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildTextRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_37() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildTextRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildTextRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.inputOrigin.getter()
{
  result = OUTLINED_FUNCTION_10_18();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartChildTextRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartChildTextRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_37() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartChildTextRequestMessage.Builder.rootRequestId.getter()
{
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildTextRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_37() + 44);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildTextRequestMessage.Builder.textRequestType.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_10_18() + 48));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_2231C3E44(v3, v4);
}

uint64_t StartChildTextRequestMessage.Builder.textRequestType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 48));
  result = sub_2231C3F50(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.routingDecision.getter()
{
  v2 = *(OUTLINED_FUNCTION_10_18() + 52);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  memcpy(v0, (v1 + v2), 0x41uLL);
  return sub_2230D3100(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

void *StartChildTextRequestMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_37() + 52);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D40E0(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t sub_2231C3B38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2231076E8();
}

uint64_t sub_2231C3B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F20D0();
  *a2 = result;
  return result;
}

unint64_t sub_2231C3B8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F211C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231C3BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230F20D0();
  *a1 = result;
  return result;
}

uint64_t sub_2231C3BE8(uint64_t a1)
{
  v2 = sub_2231C3E54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C3C24(uint64_t a1)
{
  v2 = sub_2231C3E54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231C3C90()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId + 8);

  v2 = OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId;
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0 + v2);
  sub_2230D7BB4(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8));
  return OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision);
}

id StartChildTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C3E44(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2230D7C34(a1, a2);
  }

  return a1;
}

unint64_t sub_2231C3E54()
{
  result = qword_280FCCAE8;
  if (!qword_280FCCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAE8);
  }

  return result;
}

unint64_t sub_2231C3EA8()
{
  result = qword_27D05A690;
  if (!qword_27D05A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A690);
  }

  return result;
}

unint64_t sub_2231C3EFC()
{
  result = qword_280FCAB60;
  if (!qword_280FCAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB60);
  }

  return result;
}

uint64_t sub_2231C3F50(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2230D7BB4(a1, a2);
  }

  return a1;
}

uint64_t sub_2231C3F68()
{
  result = sub_2231FFDA4();
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

uint64_t sub_2231C406C()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2230D525C(319, &qword_280FCAB58);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCD5E8);
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

_BYTE *storeEnumTagSinglePayload for StartChildTextRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231C4310()
{
  result = qword_27D05A6A0;
  if (!qword_27D05A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6A0);
  }

  return result;
}

unint64_t sub_2231C4368()
{
  result = qword_280FCCAD8;
  if (!qword_280FCCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAD8);
  }

  return result;
}

unint64_t sub_2231C43C0()
{
  result = qword_280FCCAE0;
  if (!qword_280FCCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAE0);
  }

  return result;
}

uint64_t sub_2231C4424(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000223226380 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231C44C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231C4424(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231C44F0(uint64_t a1)
{
  v2 = sub_2231C5514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C452C(uint64_t a1)
{
  v2 = sub_2231C5514();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartCorrectedSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartCorrectedSpeechRequestMessage.init(build:)(v1);
}

void *StartCorrectedSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v51 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  v13 = (started - 8);
  v14 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v13[10];
  v16[v19] = 19;
  v20 = &v16[v13[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v16[v13[12]] = 0;
  a1(v16);
  v21 = *v16;
  if (v21 != 15)
  {
    v22 = *(v16 + 2);
    if (v22)
    {
      v23 = *(v16 + 1);
      sub_2230D1480(&v16[v17], v2);
      if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
      {
        sub_2230D69D4(v2);
      }

      else
      {
        v49 = v23;
        v25 = v50;
        v24 = v51;
        (*(v51 + 32))(v50, v2, v6);
        v26 = *(v18 + 1);
        if (v26 && v16[v19] != 19)
        {
          v39 = *v18;
          v41 = *v20;
          v40 = *(v20 + 1);
          v42 = v25;
          v43 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance);
          *v43 = v41;
          v43[1] = v40;
          MEMORY[0x28223BE20](v40);
          *(&v49 - 64) = v21;
          *(&v49 - 7) = v49;
          *(&v49 - 6) = v22;
          *(&v49 - 5) = v25;
          *(&v49 - 4) = v44;
          *(&v49 - 3) = v26;
          *(&v49 - 16) = v45;
          *(&v49 - 1) = v16;

          v37 = StartTextRequestMessage.init(build:)(sub_2231C54D8, &v49 - 10);
          v46 = v37;

          if (v37)
          {

            v47 = *(v51 + 8);
            v48 = v46;
            v47(v42, v6);
            sub_2231C4AC8(v16);
          }

          else
          {
            (*(v51 + 8))(v42, v6);
            sub_2231C4AC8(v16);
          }

          return v37;
        }

        (*(v24 + 8))(v25, v6);
      }
    }
  }

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
    v54 = v31;
    *v30 = 136446210;
    v32 = sub_2230F7898();
    v34 = sub_2231A5D38(v32, v33, &v54);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DD6780](v31, -1, -1);
    MEMORY[0x223DD6780](v30, -1, -1);
  }

  sub_2231C4AC8(v16);
  type metadata accessor for StartCorrectedSpeechRequestMessage(0);
  v35 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
  v36 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}