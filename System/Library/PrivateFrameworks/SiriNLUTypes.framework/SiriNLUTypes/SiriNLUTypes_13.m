uint64_t sub_1C88BADB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F40, type metadata accessor for Siri_Nlu_External_UserWantedToPause);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BAE30(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BAEA0()
{
  sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BAF2C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B88F0);
  __swift_project_value_buffer(v0, qword_1EC2B88F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrite_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RewriteMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CDFC4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88B32FC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_RewriteMessage.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_72_4();
  v4 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v3);
  OUTLINED_FUNCTION_459(v4);
  if (*(v1 + v5) == 4 || (sub_1C88D0968(), OUTLINED_FUNCTION_213_0(), result = sub_1C8BD4D4C(), !v0))
  {
    OUTLINED_FUNCTION_16_2(*(v2 + 24));
    if (!v8)
    {
      return OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_512(v7);
    result = OUTLINED_FUNCTION_9_5();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_RewriteMessage.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v0);
  OUTLINED_FUNCTION_58_1(*(v1 + 20));
  if (v4 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v3)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  OUTLINED_FUNCTION_1();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_12:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    sub_1C8776788(v12, v13);
    return OUTLINED_FUNCTION_159() & 1;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1C88BB3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F38, type metadata accessor for Siri_Nlu_External_RewriteMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BB440(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BB4B0()
{
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BB530()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8908);
  __swift_project_value_buffer(v0, qword_1EC2B8908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REWRITE_TYPE_NONE";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REWRITE_TYPE_AER";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REWRITE_TYPE_CBR";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REWRITE_TYPE_MRR";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BB79C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8920);
  __swift_project_value_buffer(v0, qword_1EC2B8920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contextual_reference";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "disambiguation_needed";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_ReferenceContext.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v2);
  OUTLINED_FUNCTION_459(v3);
  OUTLINED_FUNCTION_451(v4);
  if (v5 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
  {
    OUTLINED_FUNCTION_451(*(v1 + 24));
    if (v5)
    {
      return OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_48_0();
    result = sub_1C8BD4D3C();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_ReferenceContext.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v0);
  OUTLINED_FUNCTION_47(*(v1 + 20));
  if (v5)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v4 ^ v3) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(*(v2 + 24));
  if (v5)
  {
    if (v6 == 2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v6 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

LABEL_14:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v9, v10);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C88BBC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F30, type metadata accessor for Siri_Nlu_External_ReferenceContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BBCF0(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BBD60()
{
  sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BBDF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4750);
  __swift_project_value_buffer(v0, qword_1EC2B4750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "external_parser_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "matching_spans";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rewrite";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "reference_context";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_DelegatedUserDialogAct.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88C4F70(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C88BC220();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C878C33C();
        break;
      case 4:
        OUTLINED_FUNCTION_363();
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C88BC2D4();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C88BC388();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88BC220()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0) + 28);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BC2D4()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0) + 36);
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BC388()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0) + 40);
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_DelegatedUserDialogAct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v64 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v62 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v8);
  v9 = OUTLINED_FUNCTION_21(v62);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_7(v12, v60);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v18 = OUTLINED_FUNCTION_47_5(v17, v61);
  v19 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v18);
  v20 = OUTLINED_FUNCTION_52_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_4();
  v27 = sub_1C8BD493C();
  v28 = OUTLINED_FUNCTION_13_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_33();
  v66 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v33 = (v0 + v66[6]);
  if ((v33[1] & 1) != 0 || (v34 = *v33, OUTLINED_FUNCTION_302_0(), OUTLINED_FUNCTION_382(), sub_1C8BD4DEC(), !v1))
  {
    v35 = v66[7];
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v2);
    if (v36)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
    }

    else
    {
      OUTLINED_FUNCTION_469();
      v37 = OUTLINED_FUNCTION_455();
      v38(v37);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v39, v40);
      OUTLINED_FUNCTION_302_0();
      sub_1C8BD4E2C();
      if (v1)
      {
        v41 = *(v30 + 8);
        v42 = OUTLINED_FUNCTION_215();
        v43(v42);
        goto LABEL_23;
      }

      v44 = *(v30 + 8);
      v45 = OUTLINED_FUNCTION_215();
      v46(v45);
    }

    v47 = (v0 + v66[8]);
    v48 = v65;
    if (!v47[1] || (v49 = *v47, OUTLINED_FUNCTION_302_0(), sub_1C8BD4DDC(), !v1))
    {
      if (*(*v0 + 16))
      {
        type metadata accessor for Siri_Nlu_External_Span(0);
        OUTLINED_FUNCTION_362();
        sub_1C8776788(v50, v51);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_405();
        sub_1C8BD4E0C();
        if (v1)
        {
          goto LABEL_23;
        }

        v48 = v65;
      }

      v52 = v66[9];
      sub_1C8778810();
      v53 = OUTLINED_FUNCTION_400();
      OUTLINED_FUNCTION_76(v53, v54, v63);
      if (v36)
      {
        sub_1C8778ED8(v48, &unk_1EC2B8A70, &qword_1C8BF5078);
      }

      else
      {
        OUTLINED_FUNCTION_16_8();
        sub_1C879A720();
        OUTLINED_FUNCTION_361();
        sub_1C8776788(v55, v56);
        OUTLINED_FUNCTION_298_0();
        OUTLINED_FUNCTION_405();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_100_3();
        sub_1C87A0410();
        if (v1)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_202_0(v66[10]);
      sub_1C8778810();
      v57 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_188_0(v57, v58);
      if (v36)
      {
        sub_1C8778ED8(v64, &dword_1EC2B8A78, &unk_1C8BF5080);
LABEL_22:
        v59 = v0 + v66[5];
        OUTLINED_FUNCTION_97();
        sub_1C8BD49DC();
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_57_4();
      sub_1C879A720();
      sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      OUTLINED_FUNCTION_405();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_360();
      sub_1C87A0410();
      if (!v1)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_DelegatedUserDialogAct.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v6 = v5;
  v93 = type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v7 = OUTLINED_FUNCTION_21(v93);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B50, &qword_1C8BF50E8);
  OUTLINED_FUNCTION_21(v92);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_17_4();
  v95 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v17);
  v18 = OUTLINED_FUNCTION_21(v95);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7(v21, v88);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B58, &qword_1C8BF50F0);
  OUTLINED_FUNCTION_21(v94);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_81();
  v96 = v29;
  OUTLINED_FUNCTION_86();
  v30 = sub_1C8BD493C();
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_180();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_170();
  v45 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v44);
  v46 = *(v45 + 24);
  v47 = *(v6 + v46 + 4);
  v48 = *(v4 + v46 + 4);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_15;
    }

LABEL_5:
    v89 = v2;
    v50 = *(v45 + 28);
    v51 = v6;
    v52 = *(v40 + 48);
    v90 = v51;
    v91 = v45;
    sub_1C8778810();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v0);
    if (v53)
    {
      OUTLINED_FUNCTION_19(v0 + v52);
      if (v53)
      {
        sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_18:
        v66 = v91[8];
        v67 = *(v4 + v66 + 8);
        if (*(v90 + v66 + 8))
        {
          if (!v67)
          {
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_35((v90 + v66));
          v70 = v53 && v68 == v69;
          if (!v70 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else if (v67)
        {
          goto LABEL_15;
        }

        v71 = *v90;
        v72 = *v4;
        sub_1C87DCE24();
        if ((v73 & 1) == 0)
        {
          goto LABEL_15;
        }

        v74 = v91[9];
        v75 = *(v94 + 48);
        OUTLINED_FUNCTION_291_0();
        OUTLINED_FUNCTION_290_0();
        v76 = OUTLINED_FUNCTION_213();
        OUTLINED_FUNCTION_124_1(v76, v77);
        if (v53)
        {
          OUTLINED_FUNCTION_24(v96 + v75);
          if (v53)
          {
            sub_1C8778ED8(v96, &unk_1EC2B8A70, &qword_1C8BF5078);
LABEL_38:
            v79 = v91[10];
            v80 = *(v92 + 48);
            OUTLINED_FUNCTION_291_0();
            OUTLINED_FUNCTION_290_0();
            v81 = OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_124_1(v81, v82);
            if (v53)
            {
              OUTLINED_FUNCTION_38_8();
              if (v53)
              {
                sub_1C8778ED8(v89, &dword_1EC2B8A78, &unk_1C8BF5080);
                goto LABEL_48;
              }
            }

            else
            {
              sub_1C8778810();
              OUTLINED_FUNCTION_38_8();
              if (!v83)
              {
                OUTLINED_FUNCTION_57_4();
                sub_1C879A720();
                OUTLINED_FUNCTION_184();
                v84 = static Siri_Nlu_External_ReferenceContext.== infix(_:_:)();
                sub_1C87A0410();
                OUTLINED_FUNCTION_254_0();
                sub_1C87A0410();
                sub_1C8778ED8(v89, &dword_1EC2B8A78, &unk_1C8BF5080);
                if ((v84 & 1) == 0)
                {
                  goto LABEL_15;
                }

LABEL_48:
                v85 = v91[5];
                sub_1C8BD49FC();
                OUTLINED_FUNCTION_2_18();
                sub_1C8776788(v86, v87);
                v60 = sub_1C8BD517C();
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_360();
              sub_1C87A0410();
            }

            v57 = &qword_1EC2B8B50;
            v58 = &qword_1C8BF50E8;
            v59 = v89;
            goto LABEL_14;
          }
        }

        else
        {
          sub_1C8778810();
          OUTLINED_FUNCTION_24(v96 + v75);
          if (!v78)
          {
            OUTLINED_FUNCTION_16_8();
            sub_1C879A720();
            OUTLINED_FUNCTION_100();
            static Siri_Nlu_External_RewriteMessage.== infix(_:_:)();
            OUTLINED_FUNCTION_337();
            sub_1C87A0410();
            OUTLINED_FUNCTION_259();
            sub_1C87A0410();
            sub_1C8778ED8(v96, &unk_1EC2B8A70, &qword_1C8BF5078);
            if ((v95 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_38;
          }

          OUTLINED_FUNCTION_100_3();
          sub_1C87A0410();
        }

        v57 = &qword_1EC2B8B58;
        v58 = &qword_1C8BF50F0;
        v59 = v96;
LABEL_14:
        sub_1C8778ED8(v59, v57, v58);
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12();
      sub_1C8778810();
      OUTLINED_FUNCTION_19(v0 + v52);
      if (!v53)
      {
        (*(v33 + 32))(v1, v0 + v52, v30);
        OUTLINED_FUNCTION_11_13();
        sub_1C8776788(v61, v62);
        v63 = sub_1C8BD517C();
        v64 = *(v33 + 8);
        v64(v1, v30);
        v65 = OUTLINED_FUNCTION_82_3();
        (v64)(v65);
        sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
        if ((v63 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v54 = *(v33 + 8);
      v55 = OUTLINED_FUNCTION_82_3();
      v56(v55);
    }

    v57 = &qword_1EC2B6118;
    v58 = &qword_1C8BE6DC0;
    v59 = v0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_1();
  if ((v49 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v60 = 0;
LABEL_16:
  OUTLINED_FUNCTION_157(v60);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BD110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F28, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BD190(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BD200()
{
  sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);

  return sub_1C8BD4CFC();
}

void static Siri_Nlu_External_UserStatedTask.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v7 = OUTLINED_FUNCTION_104_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_128_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_74();
  v18 = *(type metadata accessor for Siri_Nlu_External_UserStatedTask(v17) + 20);
  v19 = *(v1 + 56);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  v20 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v20, v21, v3);
  if (v28)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v22, v23, v24);
    if (v28)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v32, v33);
      v29 = OUTLINED_FUNCTION_159();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v25, v26, v27);
  if (v28)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  v31 = v30;
  sub_1C87A0410();
  OUTLINED_FUNCTION_178_2();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v29 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v29);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BD534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F20, type metadata accessor for Siri_Nlu_External_UserStatedTask);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BD5B0(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BD620()
{
  sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BD6AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8938);
  __swift_project_value_buffer(v0, qword_1EC2B8938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BD8E0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BD994()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0) + 24);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserWantedToUndo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(v11);
  v13 = OUTLINED_FUNCTION_52_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v16);
  v17 = OUTLINED_FUNCTION_315();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_87_2();
  v23 = type metadata accessor for Siri_Nlu_External_UUID();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_36_4();
  v28 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v27);
  OUTLINED_FUNCTION_78_2(v28);
  OUTLINED_FUNCTION_102_2();
  if (v29)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v30, v31);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v33, v34);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserWantedToUndo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  v47 = type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  v4 = OUTLINED_FUNCTION_21(v47);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v7, v44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81_3(v12, v45);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_5(v17, v46);
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = OUTLINED_FUNCTION_74_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_1();
  v22 = OUTLINED_FUNCTION_220();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_112_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_17_4();
  v33 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v32);
  OUTLINED_FUNCTION_66_5(v33);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v34)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v34)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_1EC2B5EE8;
    v36 = &unk_1C8BE6F90;
    v37 = v2;
LABEL_20:
    sub_1C8778ED8(v37, v35, v36);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v34)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v38 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v38, v39);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v34)
  {
    OUTLINED_FUNCTION_38_8();
    if (v34)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v42, v43);
      v41 = OUTLINED_FUNCTION_201_1();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v40)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v35 = &qword_1EC2B5FD8;
    v36 = &unk_1C8BE6C90;
    v37 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BE054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F18, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BE0D4(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BE144()
{
  sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BE1DC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8950);
  __swift_project_value_buffer(v0, qword_1EC2B8950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "child_acts";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_SystemDialogActGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88BE47C();
    }
  }
}

uint64_t sub_1C88BE47C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0) + 24);
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776788(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemDialogActGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_253();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_210();
  v13 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v12);
  v14 = OUTLINED_FUNCTION_21(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = OUTLINED_FUNCTION_65_6();
  v18 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v17);
  v19 = *(v18 + 24);
  OUTLINED_FUNCTION_388();
  OUTLINED_FUNCTION_17_6(v2);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5FE0, &unk_1C8C102D0);
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_351();
    sub_1C8776788(v21, v22);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_358();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_353(), sub_1C8776788(v23, v24), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    v25 = v0 + *(v18 + 20);
    OUTLINED_FUNCTION_299_0();
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemDialogActGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  v10 = OUTLINED_FUNCTION_74_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_6();
  v13 = OUTLINED_FUNCTION_233();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_212();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE8, &qword_1C8BE6CA0);
  OUTLINED_FUNCTION_223_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_74();
  v43 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v23);
  v24 = *(v43 + 24);
  v25 = *(v4 + 56);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_19(v1 + v25);
    if (v26)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_315();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1 + v25);
  if (v26)
  {
    OUTLINED_FUNCTION_358();
    sub_1C87A0410();
LABEL_9:
    v27 = &qword_1EC2B5FE8;
    v28 = &qword_1C8BE6CA0;
LABEL_10:
    sub_1C8778ED8(v1, v27, v28);
LABEL_16:
    v42 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_56_3();
  sub_1C879A720();
  v29 = *(v0 + 20);
  if (*(v3 + v29) != *(v2 + v29))
  {
    v30 = *(v3 + v29);

    sub_1C88BF490();
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      sub_1C87A0410();
      sub_1C87A0410();
      v27 = &qword_1EC2B5FE0;
      v28 = &unk_1C8C102D0;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v33, v34);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_498();
  v35 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_104_0();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v36 = *v8;
  v37 = *v6;
  sub_1C87DF17C();
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

  v39 = *(v43 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v40, v41);
  v42 = sub_1C8BD517C();
LABEL_17:
  OUTLINED_FUNCTION_157(v42);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BEAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F10, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BEB34(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BEBA4()
{
  sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BEC3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B48A0);
  __swift_project_value_buffer(v0, qword_1EC2B48A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C8BE8D40;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prompted";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "offered";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gave_options";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "informed";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reported_success";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "reported_failure";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 101;
  *v22 = "rendered_text";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BEFB4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  v4 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  v6 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  v8 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v10 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v12 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v14 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v16 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  return v0;
}

uint64_t sub_1C88BF0F4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF1D0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF2AC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF388()
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

void sub_1C88BF490()
{
  OUTLINED_FUNCTION_124();
  v298 = v1;
  OUTLINED_FUNCTION_333();
  v259 = sub_1C8BD493C();
  v2 = OUTLINED_FUNCTION_13_1(v259);
  v255 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v253 = v6;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21(v257);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v258 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  v254 = v15;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_96();
  v272 = v17;
  v18 = OUTLINED_FUNCTION_86();
  v263 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v18);
  v19 = OUTLINED_FUNCTION_21(v263);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v256 = v22;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FD0, &qword_1C8BF9EF0);
  OUTLINED_FUNCTION_21(v262);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v264 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  v28 = OUTLINED_FUNCTION_80(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_0();
  v261 = v31;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_96();
  v271 = v33;
  v34 = OUTLINED_FUNCTION_86();
  v268 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v34);
  v35 = OUTLINED_FUNCTION_21(v268);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v260 = v38;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FD8, &qword_1C8BF9EF8);
  OUTLINED_FUNCTION_21(v267);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_81();
  v269 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  v44 = OUTLINED_FUNCTION_80(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_10_0();
  v265 = v47;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_96();
  v277 = v49;
  v50 = OUTLINED_FUNCTION_86();
  v275 = type metadata accessor for Siri_Nlu_External_SystemInformed(v50);
  v51 = OUTLINED_FUNCTION_21(v275);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  v266 = v54;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FE0, &qword_1C8BF9F00);
  OUTLINED_FUNCTION_21(v274);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_81();
  v276 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  v60 = OUTLINED_FUNCTION_80(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_10_0();
  v270 = v63;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_96();
  v278 = v65;
  v66 = OUTLINED_FUNCTION_86();
  v282 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(v66);
  v67 = OUTLINED_FUNCTION_21(v282);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_0();
  v273 = v70;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FE8, &qword_1C8BF9F08);
  OUTLINED_FUNCTION_21(v281);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_81();
  v283 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  v76 = OUTLINED_FUNCTION_80(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_10_0();
  v279 = v79;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_96();
  v285 = v81;
  v82 = OUTLINED_FUNCTION_86();
  v288 = type metadata accessor for Siri_Nlu_External_SystemOffered(v82);
  v83 = OUTLINED_FUNCTION_21(v288);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_9_0();
  v280 = v86;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FF0, &qword_1C8BF9F10);
  OUTLINED_FUNCTION_21(v287);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_81();
  v289 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v92 = OUTLINED_FUNCTION_80(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_10_0();
  v284 = v95;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_96();
  v296 = v97;
  v98 = OUTLINED_FUNCTION_86();
  v294 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v98);
  v99 = OUTLINED_FUNCTION_21(v294);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_9_0();
  v286 = v102;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FF8, &qword_1C8BF9F18);
  OUTLINED_FUNCTION_21(v292);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_81();
  v295 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v108 = OUTLINED_FUNCTION_80(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_10_0();
  v290 = v111;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_96();
  v293 = v113;
  OUTLINED_FUNCTION_86();
  v114 = type metadata accessor for Siri_Nlu_External_UUID();
  v115 = OUTLINED_FUNCTION_21(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_9_0();
  v291 = v118;
  v119 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v120 = *(*v119 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_252();
  v122 = OUTLINED_FUNCTION_119_0();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
  v125 = OUTLINED_FUNCTION_80(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_10_0();
  v297 = v128;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v252 - v130;
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  v132 = v119[14];
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v0);
  if (v133)
  {

    sub_1C8778ED8(v131, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_193_2(v0 + v132);
    if (v133)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v134 = &qword_1EC2B5EE8;
    v135 = &unk_1C8BE6F90;
    v136 = v0;
LABEL_48:
    sub_1C8778ED8(v136, v134, v135);
    goto LABEL_49;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v0 + v132);
  if (v133)
  {

    sub_1C8778ED8(v131, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();

  v137 = OUTLINED_FUNCTION_92_0();
  v139 = static Siri_Nlu_External_UUID.== infix(_:_:)(v137, v138);
  sub_1C87A0410();
  v140 = OUTLINED_FUNCTION_299_0();
  sub_1C8778ED8(v140, v141, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_307();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v139 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_11:
  OUTLINED_FUNCTION_277();
  v142 = v293;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v292);
  v143 = v295;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v144 = v143;
  sub_1C8778810();
  v145 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v145, v146);
  if (v133)
  {
    sub_1C8778ED8(v142, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v143);
    v147 = v296;
    if (v133)
    {
      sub_1C8778ED8(v143, &dword_1EC2B86E8, &unk_1C8BF4630);
      goto LABEL_22;
    }

LABEL_19:
    v134 = &qword_1EC2B8FF8;
    v135 = &qword_1C8BF9F18;
LABEL_20:
    v136 = v144;
    goto LABEL_48;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v143);
  v147 = v296;
  if (v148)
  {
    sub_1C8778ED8(v142, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_103_3();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemPrompted.== infix(_:_:)();
  v150 = v149;
  sub_1C87A0410();
  sub_1C8778ED8(v142, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  v151 = OUTLINED_FUNCTION_307();
  sub_1C8778ED8(v151, v152, &unk_1C8BF4630);
  if ((v150 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_450_0(v287);
  v153 = v289;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v154 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v154, v155);
  if (v133)
  {
    sub_1C8778ED8(v147, &qword_1EC2B86F0, &unk_1C8BF5030);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v153);
    if (v133)
    {
      sub_1C8778ED8(v153, &qword_1EC2B86F0, &unk_1C8BF5030);
      goto LABEL_33;
    }

LABEL_30:
    v134 = &qword_1EC2B8FF0;
    v135 = &qword_1C8BF9F10;
LABEL_31:
    v136 = v153;
    goto LABEL_48;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v153);
  if (v156)
  {
    sub_1C8778ED8(v147, &qword_1EC2B86F0, &unk_1C8BF5030);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_94_3();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemOffered.== infix(_:_:)();
  v158 = v157;
  sub_1C87A0410();
  sub_1C8778ED8(v147, &qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  sub_1C8778ED8(v153, &qword_1EC2B86F0, &unk_1C8BF5030);
  if ((v158 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_33:
  OUTLINED_FUNCTION_277();
  v159 = v285;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277();
  v160 = *(v281 + 48);
  v161 = v283;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v162 = v161;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v163 = OUTLINED_FUNCTION_193_0();
  v164 = v282;
  OUTLINED_FUNCTION_41_2(v163, v165);
  if (v133)
  {
    sub_1C8778ED8(v159, &dword_1EC2B8A80, &unk_1C8BF5090);
    OUTLINED_FUNCTION_19(v161 + v160);
    if (v133)
    {
      sub_1C8778ED8(v161, &dword_1EC2B8A80, &unk_1C8BF5090);
      goto LABEL_38;
    }

LABEL_46:
    v134 = &qword_1EC2B8FE8;
    v135 = &qword_1C8BF9F08;
LABEL_47:
    v136 = v162;
    goto LABEL_48;
  }

  v171 = v279;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v162 + v160);
  if (v172)
  {
    sub_1C8778ED8(v285, &dword_1EC2B8A80, &unk_1C8BF5090);
    sub_1C87A0410();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_93_3();
  v173 = v273;
  sub_1C879A720();
  v174 = *v171;
  v175 = *v173;
  sub_1C87DD670();
  if ((v176 & 1) == 0)
  {
    sub_1C87A0410();
    v187 = &unk_1C8BF5090;
    OUTLINED_FUNCTION_393();
    sub_1C8778ED8(v188, v189, v190);
LABEL_59:
    sub_1C87A0410();
    v136 = OUTLINED_FUNCTION_168_0();
    v135 = v187;
    goto LABEL_48;
  }

  v177 = *(v164 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v178, v179);
  v180 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v181, v182, v183);
  sub_1C87A0410();
  v184 = OUTLINED_FUNCTION_97();
  sub_1C8778ED8(v184, v185, &unk_1C8BF5090);
  if ((v180 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_38:
  OUTLINED_FUNCTION_277();
  v166 = v278;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v274);
  v144 = v276;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_479();
  v167 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_82_1(v167, v168);
  if (v133)
  {
    sub_1C8778ED8(v166, &qword_1EC2B8A88, &unk_1C8C10560);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v144);
    v169 = v272;
    if (v133)
    {
      sub_1C8778ED8(v144, &qword_1EC2B8A88, &unk_1C8C10560);
      v170 = v271;
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v144);
  v170 = v271;
  if (v186)
  {
    sub_1C8778ED8(v278, &qword_1EC2B8A88, &unk_1C8C10560);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_57:
    v134 = &qword_1EC2B8FE0;
    v135 = &qword_1C8BF9F00;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_92_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemInformed.== infix(_:_:)();
  v192 = v191;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v193, v194, v195);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v196, v197, v198);
  v169 = v272;
  if ((v192 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_61:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277();
  v199 = *(v267 + 48);
  v153 = v269;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v200 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v200, v201);
  if (v133)
  {
    sub_1C8778ED8(v277, &qword_1EC2B8A90, &unk_1C8BF50A0);
    OUTLINED_FUNCTION_65(v153 + v199);
    if (v133)
    {
      sub_1C8778ED8(v153, &qword_1EC2B8A90, &unk_1C8BF50A0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v153 + v199);
  if (v202)
  {
    sub_1C8778ED8(v277, &qword_1EC2B8A90, &unk_1C8BF50A0);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_69:
    v134 = &qword_1EC2B8FD8;
    v135 = &qword_1C8BF9EF8;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_91_1();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemReportedSuccess.== infix(_:_:)();
  v204 = v203;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v205, v206, v207);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v208, v209, v210);
  if ((v204 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_71:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v262);
  v211 = v264;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v162 = v211;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v212 = OUTLINED_FUNCTION_400();
  v213 = v263;
  OUTLINED_FUNCTION_82_1(v212, v214);
  if (v133)
  {
    sub_1C8778ED8(v170, &qword_1EC2B8A98, &unk_1C8C10550);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v211);
    if (v133)
    {
      sub_1C8778ED8(v211, &qword_1EC2B8A98, &unk_1C8C10550);
      goto LABEL_83;
    }

    goto LABEL_79;
  }

  v215 = v261;
  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v211);
  if (v216)
  {
    sub_1C8778ED8(v170, &qword_1EC2B8A98, &unk_1C8C10550);
    sub_1C87A0410();
LABEL_79:
    v134 = &qword_1EC2B8FD0;
    v135 = &qword_1C8BF9EF0;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_90_2();
  v217 = v256;
  sub_1C879A720();
  if (*(v215 + *(v213 + 20)) != *(v217 + *(v213 + 20)))
  {

    v218 = OUTLINED_FUNCTION_92_0();
    v220 = sub_1C88C4038(v218, v219);

    if (!v220)
    {
      sub_1C87A0410();
      v187 = &unk_1C8C10550;
      OUTLINED_FUNCTION_393();
      sub_1C8778ED8(v249, v250, v251);
      goto LABEL_59;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v221, v222);
  OUTLINED_FUNCTION_234();
  v223 = sub_1C8BD517C();
  sub_1C87A0410();
  v224 = OUTLINED_FUNCTION_254_0();
  sub_1C8778ED8(v224, v225, &unk_1C8C10550);
  sub_1C87A0410();
  v226 = OUTLINED_FUNCTION_119_0();
  sub_1C8778ED8(v226, v227, &unk_1C8C10550);
  if (v223)
  {
LABEL_83:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_277();
    v228 = v258;
    OUTLINED_FUNCTION_450_0(v257);
    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_78_1();
    v229 = v228;
    sub_1C8778810();
    v230 = OUTLINED_FUNCTION_400();
    v231 = v259;
    OUTLINED_FUNCTION_76(v230, v232, v259);
    if (v133)
    {

      sub_1C8778ED8(v169, &qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_17_6(&dword_1EDACB000 + v229);
      if (v133)
      {
        sub_1C8778ED8(v229, &qword_1EC2B6110, &qword_1C8BF5070);
        goto LABEL_50;
      }
    }

    else
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(&dword_1EDACB000 + v229);
      if (!v233)
      {
        v237 = v255;
        (*(v255 + 32))(v253, &dword_1EDACB000 + v229, v231);
        OUTLINED_FUNCTION_11_13();
        sub_1C8776788(v238, v239);
        OUTLINED_FUNCTION_118_0();
        sub_1C8BD517C();

        v240 = *(v237 + 8);
        v241 = OUTLINED_FUNCTION_315();
        v240(v241);
        OUTLINED_FUNCTION_393();
        sub_1C8778ED8(v242, v243, v244);
        v245 = OUTLINED_FUNCTION_127_0();
        v240(v245);
        OUTLINED_FUNCTION_393();
        sub_1C8778ED8(v246, v247, v248);
        goto LABEL_50;
      }

      sub_1C8778ED8(v169, &qword_1EC2B6110, &qword_1C8BF5070);
      v234 = *(v255 + 8);
      v235 = OUTLINED_FUNCTION_127_0();
      v236(v235);
    }

    sub_1C8778ED8(v229, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_50;
  }

LABEL_49:

LABEL_50:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C0BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F08, type metadata accessor for Siri_Nlu_External_SystemDialogAct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C0C58()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8968);
  __swift_project_value_buffer(v0, qword_1EC2B8968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C0E28()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemPrompted(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void static Siri_Nlu_External_SystemPrompted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  v47 = type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  v4 = OUTLINED_FUNCTION_21(v47);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v7, v44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81_3(v12, v45);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_5(v17, v46);
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = OUTLINED_FUNCTION_74_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_1();
  v22 = OUTLINED_FUNCTION_220();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_112_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_17_4();
  v33 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v32);
  OUTLINED_FUNCTION_66_5(v33);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v34)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v34)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_1EC2B5EE8;
    v36 = &unk_1C8BE6F90;
    v37 = v2;
LABEL_20:
    sub_1C8778ED8(v37, v35, v36);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v34)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v38 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v38, v39);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v34)
  {
    OUTLINED_FUNCTION_38_8();
    if (v34)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v42, v43);
      v41 = OUTLINED_FUNCTION_201_1();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v40)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v35 = &qword_1EC2B5FD8;
    v36 = &unk_1C8BE6C90;
    v37 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C129C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F00, type metadata accessor for Siri_Nlu_External_SystemPrompted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C1318(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1388()
{
  sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted);

  return sub_1C8BD4CFC();
}

void static Siri_Nlu_External_SystemOffered.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_68();
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v5);
  v7 = OUTLINED_FUNCTION_74_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41_6();
  v10 = OUTLINED_FUNCTION_104_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_211();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B88, &qword_1C8BF50F8);
  OUTLINED_FUNCTION_128_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_74();
  v21 = *(type metadata accessor for Siri_Nlu_External_SystemOffered(v20) + 20);
  v22 = *(v4 + 56);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_19(v1 + v22);
    if (v23)
    {
      sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
LABEL_15:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v34, v35);
      OUTLINED_FUNCTION_196_0();
      v26 = sub_1C8BD517C();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1 + v22);
  if (v23)
  {
    OUTLINED_FUNCTION_356();
    sub_1C87A0410();
LABEL_9:
    v24 = &qword_1EC2B8B88;
    v25 = &qword_1C8BF50F8;
LABEL_10:
    sub_1C8778ED8(v1, v24, v25);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_55_5();
  sub_1C879A720();
  v27 = *(v0 + 20);
  if (*(v3 + v27) != *(v2 + v27))
  {
    v28 = *(v3 + v27);

    OUTLINED_FUNCTION_522();
    sub_1C88B45E0();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      sub_1C87A0410();
      sub_1C87A0410();
      v24 = &unk_1EC2B61F0;
      v25 = &qword_1C8BF50B0;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v31, v32);
  OUTLINED_FUNCTION_498();
  v33 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_230();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
  if (v33)
  {
    goto LABEL_15;
  }

LABEL_11:
  v26 = 0;
LABEL_16:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C1774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EF8, type metadata accessor for Siri_Nlu_External_SystemOffered);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C17F0(uint64_t a1)
{
  v2 = sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1860()
{
  sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered);

  return sub_1C8BD4CFC();
}

uint64_t static Siri_Nlu_External_SystemGaveOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  v3 = *v2;
  sub_1C87DD670();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v6, v7);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C88C1A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EF0, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C1A7C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1AEC()
{
  sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C1B78()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8998);
  __swift_project_value_buffer(v0, qword_1EC2B8998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_SystemInformed.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88C1E20();
    }
  }
}

uint64_t sub_1C88C1E20()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemInformed(0) + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemInformed.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_65_6();
  v22 = type metadata accessor for Siri_Nlu_External_SystemInformed(v13);
  OUTLINED_FUNCTION_329_0(v22);
  sub_1C8778810();
  v14 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v17, v18);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UsoGraph(0), OUTLINED_FUNCTION_13_14(), sub_1C8776788(v19, v20), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    v21 = v0 + *(v22 + 20);
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemInformed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_223_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_45();
  v27 = type metadata accessor for Siri_Nlu_External_SystemInformed(v16);
  v17 = *(v27 + 24);
  v18 = *(v1 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_17_6(v0 + v18);
    if (v19)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_299_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v0 + v18);
  if (v19)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();
  v20 = OUTLINED_FUNCTION_100();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v20, v21);
  OUTLINED_FUNCTION_336();
  sub_1C87A0410();
  OUTLINED_FUNCTION_229();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_481();
  sub_1C87DD718();
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v24, v25);
  v26 = OUTLINED_FUNCTION_299();
LABEL_14:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C2380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EE8, type metadata accessor for Siri_Nlu_External_SystemInformed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C2400(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C2470()
{
  sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C2508()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89B0);
  __swift_project_value_buffer(v0, qword_1EC2B89B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C273C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C27F0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0) + 24);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemReportedSuccess.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(v11);
  v13 = OUTLINED_FUNCTION_52_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v16);
  v17 = OUTLINED_FUNCTION_315();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_87_2();
  v23 = type metadata accessor for Siri_Nlu_External_UUID();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_36_4();
  v28 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v27);
  OUTLINED_FUNCTION_78_2(v28);
  OUTLINED_FUNCTION_102_2();
  if (v29)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v30, v31);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v33, v34);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemReportedSuccess.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  v47 = type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  v4 = OUTLINED_FUNCTION_21(v47);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v7, v44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81_3(v12, v45);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_5(v17, v46);
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = OUTLINED_FUNCTION_74_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_1();
  v22 = OUTLINED_FUNCTION_220();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_112_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_17_4();
  v33 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v32);
  OUTLINED_FUNCTION_66_5(v33);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v34)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v34)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_1EC2B5EE8;
    v36 = &unk_1C8BE6F90;
    v37 = v2;
LABEL_20:
    sub_1C8778ED8(v37, v35, v36);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v34)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v38 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v38, v39);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v34)
  {
    OUTLINED_FUNCTION_38_8();
    if (v34)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v42, v43);
      v41 = OUTLINED_FUNCTION_201_1();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v40)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v35 = &qword_1EC2B5FD8;
    v36 = &unk_1C8BE6C90;
    v37 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C2EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EE0, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C2F30(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C2FA0()
{
  sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C3038()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89C8);
  __swift_project_value_buffer(v0, qword_1EC2B89C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "task";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C32C4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, 1, 1, v4);
  return v0;
}

uint64_t sub_1C88C3354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  v6 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, 1, 1, v8);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v0;
}

uint64_t sub_1C88C36A0()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  return v0;
}

uint64_t sub_1C88C3798()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C88C3A00();
        break;
      case 2:
        sub_1C88C3924();
        break;
      case 1:
        sub_1C88C3848();
        break;
    }
  }

  return result;
}

uint64_t sub_1C88C3848()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3924()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3A00()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v27 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v10 = *(*(v27 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v27);
  v25[1] = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v25[2] = v25 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v25 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C8778ED8(v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v20 = v28;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v21 = v28;
    sub_1C8BD4E2C();
    v20 = v21;
    result = sub_1C87A0410();
    if (v21)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  v23 = v27;
  if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v20)
    {
      return result;
    }
  }

  swift_beginAccess();
  v24 = v26;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v23) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4E2C();
  return sub_1C87A0410();
}

BOOL sub_1C88C4038(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v59 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v53 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v52[0] = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = v52 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v54 = v52 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v60 = v52 - v16;
  v17 = type metadata accessor for Siri_Nlu_External_UUID();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v55 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v52 - v30;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v32 = *(v21 + 56);
  sub_1C8778810();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v17) == 1)
  {

    sub_1C8778ED8(v31, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(&v24[v32], 1, v17) == 1)
    {
      sub_1C8778ED8(v24, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v33 = &qword_1EC2B5EE8;
    v34 = &unk_1C8BE6F90;
    v35 = v24;
LABEL_14:
    sub_1C8778ED8(v35, v33, v34);
    goto LABEL_15;
  }

  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v24[v32], 1, v17) == 1)
  {

    sub_1C8778ED8(v31, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87A0410();
    goto LABEL_6;
  }

  v36 = v55;
  sub_1C879A720();

  v37 = static Siri_Nlu_External_UUID.== infix(_:_:)(v29, v36);
  sub_1C87A0410();
  sub_1C8778ED8(v31, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87A0410();
  sub_1C8778ED8(v24, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v38 = v60;
  sub_1C8778810();
  swift_beginAccess();
  v39 = v57;
  v40 = *(v57 + 48);
  v41 = v56;
  sub_1C8778810();
  sub_1C8778810();
  v42 = v59;
  if (__swift_getEnumTagSinglePayload(v41, 1, v59) != 1)
  {
    sub_1C8778810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41 + v40, 1, v42);
    v44 = v58;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v60, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      sub_1C87A0410();
      goto LABEL_13;
    }

    sub_1C879A720();
    static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
    LODWORD(v55) = v47;
    sub_1C87A0410();
    sub_1C8778ED8(v60, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A0410();
    sub_1C8778ED8(v41, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    if (v55)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C8778ED8(v38, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v43 = __swift_getEnumTagSinglePayload(v41 + v40, 1, v42);
  v44 = v58;
  if (v43 != 1)
  {
LABEL_13:
    v33 = &qword_1EC2B5FD8;
    v34 = &unk_1C8BE6C90;
    v35 = v41;
    goto LABEL_14;
  }

  sub_1C8778ED8(v41, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_19:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v48 = *(v39 + 48);
  v49 = v53;
  sub_1C8778810();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v49, 1, v42) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v42) == 1)
    {
      sub_1C8778ED8(v49, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v42) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A0410();
LABEL_24:
    sub_1C8778ED8(v49, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    return 0;
  }

  sub_1C879A720();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  v51 = v50;

  sub_1C87A0410();
  sub_1C8778ED8(v44, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C87A0410();
  sub_1C8778ED8(v49, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  return (v51 & 1) != 0;
}

uint64_t sub_1C88C4AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8ED8, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C4B40(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C4BB0()
{
  sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C4C3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB030);
  __swift_project_value_buffer(v0, qword_1EDACB030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seq";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRGroupIdentifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88C4F70(v3, v4, v5, v6, v7, v8);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88C4EBC();
    }
  }

  return result;
}

uint64_t sub_1C88C4EBC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0) + 20);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C4F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = a5(0);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_55();
  return a6();
}

void Siri_Nlu_External_RRGroupIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_299_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_210();
  v12 = sub_1C8BD493C();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = OUTLINED_FUNCTION_65_6();
  v19 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v18);
  v20 = *(v19 + 20);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v2);
  if (v21)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v22(v1, v2, v12);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v23, v24);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    OUTLINED_FUNCTION_504();
    if (v0)
    {
      v25 = *(v15 + 8);
      v26 = OUTLINED_FUNCTION_127_0();
      v27(v26);
      goto LABEL_10;
    }

    v28 = *(v15 + 8);
    v29 = OUTLINED_FUNCTION_127_0();
    v30(v29);
  }

  OUTLINED_FUNCTION_467(*(v19 + 24));
  if ((v32 & 1) != 0 || (v33 = *v31, OUTLINED_FUNCTION_48_0(), sub_1C8BD4D8C(), !v0))
  {
    OUTLINED_FUNCTION_15();
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRGroupIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_241();
  v5 = sub_1C8BD493C();
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v10 = OUTLINED_FUNCTION_233();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_212();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_223_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_45();
  v42 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v20);
  v21 = *(v42 + 20);
  v22 = *(v2 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (!v23)
  {
    OUTLINED_FUNCTION_178_2();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v1 + v22);
    if (!v23)
    {
      v28 = OUTLINED_FUNCTION_453();
      v29(v28);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v30, v31);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_321_0();
      v32 = sub_1C8BD517C();
      v33 = *(v0 + 8);
      v34 = OUTLINED_FUNCTION_254_0();
      v33(v34);
      v35 = OUTLINED_FUNCTION_119_0();
      v33(v35);
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v24 = *(v43 + 8);
    v25 = OUTLINED_FUNCTION_119_0();
    v26(v25);
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19(v1 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_13:
  v36 = *(v42 + 24);
  v37 = *(v0 + v36 + 4);
  v38 = *(v4 + v36 + 4);
  if (v37)
  {
    if (v38)
    {
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if ((v39 & 1) == 0)
    {
LABEL_17:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v40, v41);
      OUTLINED_FUNCTION_196_0();
      v27 = sub_1C8BD517C();
      goto LABEL_11;
    }
  }

LABEL_10:
  v27 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C550C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8ED0, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C558C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C55FC()
{
  sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C5694()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89E8);
  __swift_project_value_buffer(v0, qword_1EC2B89E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C58C0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRAnnotation(0) + 20);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C5974()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRAnnotation(0) + 24);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_RRAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v43 = v4;
  v44 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_206_0();
  v12 = sub_1C8BD493C();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  v22 = *(v21 + 20);
  v42 = v0;
  OUTLINED_FUNCTION_202_0(v22);
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v2);
  if (v23)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v24(v20, v2, v12);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v25, v26);
    sub_1C8BD4E2C();
    if (v1)
    {
      goto LABEL_10;
    }

    v27 = *(v15 + 8);
    v28 = OUTLINED_FUNCTION_215();
    v29(v28);
  }

  v30 = *(v21 + 24);
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v11);
  if (v23)
  {
    sub_1C8778ED8(v11, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_12:
    sub_1C8BD49DC();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_469();
  v31 = OUTLINED_FUNCTION_233();
  v32(v31);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v33, v34);
  sub_1C8BD4E2C();
  if (!v1)
  {
    v38 = *(v15 + 8);
    v39 = OUTLINED_FUNCTION_234();
    v40(v39);
    goto LABEL_12;
  }

LABEL_10:
  v35 = *(v15 + 8);
  v36 = OUTLINED_FUNCTION_215();
  v37(v36);
LABEL_13:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C8BD493C();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v57 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v52 = v9;
  v10 = OUTLINED_FUNCTION_12();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_0();
  v51 = v16;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10_0();
  v54 = v24;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  v53 = type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  v28 = *(v53 + 20);
  v29 = *(v20 + 48);
  v55 = v3;
  OUTLINED_FUNCTION_262();
  v56 = v1;
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_19(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_19(&v27[v29]);
    if (!v30)
    {
      goto LABEL_16;
    }

    sub_1C8778ED8(v27, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_233();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(&v27[v29]);
    if (v30)
    {
LABEL_15:
      (*(v57 + 8))(v19, v4);
LABEL_16:
      sub_1C8778ED8(v27, &qword_1EC2B6118, &qword_1C8BE6DC0);
      goto LABEL_17;
    }

    v31 = v57;
    (*(v57 + 32))(v52, &v27[v29], v4);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v32, v33);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_498();
    v34 = sub_1C8BD517C();
    v35 = *(v31 + 8);
    v36 = OUTLINED_FUNCTION_300();
    v35(v36);
    (v35)(v19, v4);
    sub_1C8778ED8(v27, &qword_1EC2B6110, &qword_1C8BF5070);
    if ((v34 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = v54;
  v37 = *(v53 + 24);
  v38 = *(v20 + 48);
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_19(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_19(&v27[v38]);
    if (v30)
    {
      sub_1C8778ED8(v27, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_20:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v48, v49);
      OUTLINED_FUNCTION_299_0();
      v40 = sub_1C8BD517C();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v19 = v51;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(&v27[v38]);
  if (v39)
  {
    goto LABEL_15;
  }

  v41 = v57;
  OUTLINED_FUNCTION_469();
  v42(v52, &v27[v38], v4);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v43, v44);
  OUTLINED_FUNCTION_118_0();
  v45 = sub_1C8BD517C();
  v46 = *(v41 + 8);
  v47 = OUTLINED_FUNCTION_119_0();
  v46(v47);
  (v46)(v19, v4);
  sub_1C8778ED8(v27, &qword_1EC2B6110, &qword_1C8BF5070);
  if (v45)
  {
    goto LABEL_20;
  }

LABEL_17:
  v40 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v40);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C6228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EC8, type metadata accessor for Siri_Nlu_External_RRAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C62A8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C6318()
{
  sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C63A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A00);
  __swift_project_value_buffer(v0, qword_1EC2B8A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "height";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRBoundingBox.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88C66D8();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CC91C();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C88C673C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C88C6780();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88C673C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 28));
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_External_RRBoundingBox.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v2);
  OUTLINED_FUNCTION_459(v3);
  OUTLINED_FUNCTION_468(v4);
  if ((v6 & 1) != 0 || (v7 = *v5, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_468(v1[6]);
    if ((v10 & 1) != 0 || (v11 = *v9, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_468(v1[7]);
      if ((v13 & 1) != 0 || (v14 = *v12, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
      {
        OUTLINED_FUNCTION_468(v1[8]);
        if (v16)
        {
          return OUTLINED_FUNCTION_15();
        }

        v17 = *v15;
        OUTLINED_FUNCTION_55();
        result = sub_1C8BD4DCC();
        if (!v0)
        {
          return OUTLINED_FUNCTION_15();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_4_0(*(v1 + 20));
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v5)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(*(v2 + 24));
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(*(v6 + 28));
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_36();
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_4_0(*(v10 + 32));
  if (v15)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v17)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v18, v19);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C88C6A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EC0, type metadata accessor for Siri_Nlu_External_RRBoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C6AB8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C6B28()
{
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C6BB4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A18);
  __swift_project_value_buffer(v0, qword_1EC2B8A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRSurroundingText.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88C6E1C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CDF80();
    }
  }

  return result;
}

uint64_t sub_1C88C6E1C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRSurroundingText(0) + 24);
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_RRSurroundingText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_137_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_17_4();
  v7 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v6);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_402();
  v12 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v11);
  OUTLINED_FUNCTION_16_2(*(v12 + 20));
  if (!v14 || (v15 = *v13, OUTLINED_FUNCTION_9_5(), !v0))
  {
    v16 = *(v12 + 24);
    sub_1C8778810();
    v17 = OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_188_0(v17, v18);
    if (v19)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_7:
      OUTLINED_FUNCTION_15();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_127_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_350();
    sub_1C8776788(v20, v21);
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRSurroundingText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_103();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_74();
  v15 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v14);
  v16 = *(v15 + 20);
  OUTLINED_FUNCTION_1();
  if (v19)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v18);
    v22 = v22 && v20 == v21;
    if (!v22 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  v23 = *(v15 + 24);
  v24 = *(v10 + 48);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  v25 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v25, v26, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v27, v28, v29);
    if (v22)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_22:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v36, v37);
      v34 = OUTLINED_FUNCTION_159();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v30, v31, v32);
  if (v33)
  {
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
LABEL_18:
    sub_1C8778ED8(v0, &qword_1EC2B6130, &unk_1C8BE6DD0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_20_7();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  v35 = static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_178_2();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B6128, &qword_1C8BE6DC8);
  if (v35)
  {
    goto LABEL_22;
  }

LABEL_19:
  v34 = 0;
LABEL_20:
  OUTLINED_FUNCTION_157(v34);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C7338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EB8, type metadata accessor for Siri_Nlu_External_RRSurroundingText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C73B8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C7428()
{
  sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C74C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC730);
  __swift_project_value_buffer(v0, qword_1EDACC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "surrounding_texts";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "data_source";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_RRMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88C786C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88C77B8();
        break;
    }
  }
}

uint64_t sub_1C88C77B8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRMetadata(0) + 24);
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C786C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RRMetadata(0) + 28);
  sub_1C88D09BC();
  return sub_1C8BD4B4C();
}

void Siri_Nlu_External_RRMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_65_6();
  v21 = type metadata accessor for Siri_Nlu_External_RRMetadata(v14);
  OUTLINED_FUNCTION_329_0(v21);
  sub_1C8778810();
  v15 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v15, v16);
  if (v17)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6128, &qword_1C8BE6DC8);
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_350();
    sub_1C8776788(v18, v19);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_RRSurroundingText(0), sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    if (*(v0 + *(v21 + 28)) == 6 || (sub_1C88D09BC(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4D4C(), !v1))
    {
      v20 = v0 + *(v21 + 20);
      OUTLINED_FUNCTION_516();
      sub_1C8BD49DC();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  v6 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v10 = OUTLINED_FUNCTION_233();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_211();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_223_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_45();
  v32 = type metadata accessor for Siri_Nlu_External_RRMetadata(v20);
  v21 = v32[6];
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v1);
  if (v22)
  {
    OUTLINED_FUNCTION_17_6(v1 + v2);
    if (v22)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6130, &unk_1C8BE6DD0);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_299_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v1 + v2);
  if (v22)
  {
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_7();
  sub_1C879A720();
  OUTLINED_FUNCTION_260_0();
  v23 = static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_229();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_481();
  sub_1C87DEC44();
  if (v24)
  {
    v25 = v32[7];
    v26 = *(v0 + v25);
    v27 = *(v4 + v25);
    if (v26 == 6)
    {
      if (v27 != 6)
      {
        goto LABEL_14;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_14;
    }

    v29 = v32[5];
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    sub_1C8776788(v30, v31);
    v28 = OUTLINED_FUNCTION_299();
    goto LABEL_15;
  }

LABEL_14:
  v28 = 0;
LABEL_15:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C7E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EB0, type metadata accessor for Siri_Nlu_External_RRMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C7E88(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C7EF8()
{
  sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C7F78()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC778);
  __swift_project_value_buffer(v0, qword_1EDACC778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONVERSATIONAL";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ON_SCREEN";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOTIFICATION";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ANNOUNCEMENT";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VISUAL";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C8274()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB7E8);
  __swift_project_value_buffer(v0, qword_1EDACB7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C8BE7150;
  v4 = v22 + v3;
  v5 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v5 = "entity";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "score";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "app_bundle_id";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "group_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "annotations";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "metadata";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C85CC()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score;
  v4 = sub_1C8BD48FC();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID;
  v6 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v8 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v10 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  return v0;
}

uint64_t sub_1C88C86DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31[5] = v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31[4] = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v31[0] = v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity;
  v17 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score;
  v19 = sub_1C8BD48FC();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID;
  v21 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v31[1] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v31[2] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v23 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations) = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v31[3] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v26 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  swift_beginAccess();
  v28 = *(a1 + v27);
  swift_beginAccess();
  v29 = *(v1 + v24);
  *(v1 + v24) = v28;

  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C88C8D50()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID, &qword_1EC2B6110, &qword_1C8BF5070);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, &qword_1EC2B6110, &qword_1C8BF5070);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID, &qword_1EC2B8AA0, &qword_1C8BF50B8);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata, &qword_1EC2B8AA8, &unk_1C8BF50C0);
  return v0;
}

uint64_t sub_1C88C8EB8()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C88C8FEC();
        break;
      case 2:
        sub_1C88C90C8();
        break;
      case 3:
        sub_1C88C91A4();
        break;
      case 4:
        sub_1C88C9280();
        break;
      case 5:
        sub_1C88C935C();
        break;
      case 6:
        sub_1C88C9438();
        break;
      case 7:
        sub_1C88C9514();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88C8FEC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C90C8()
{
  swift_beginAccess();
  sub_1C8BD48FC();
  sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C91A4()
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9280()
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C935C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9438()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C88C9514()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v69 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v53 - v7;
  v54 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53[1] = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v53 - v12;
  v58 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v60 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = v53 - v19;
  v66 = sub_1C8BD493C();
  v63 = *(v66 - 8);
  v20 = *(v63 + 64);
  v21 = MEMORY[0x1EEE9AC00](v66);
  v56 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v59 = v53 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v53 - v26;
  v65 = sub_1C8BD48FC();
  v62 = *(v65 - 8);
  v28 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v53 - v32;
  v34 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1C8778ED8(v33, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    v36 = v68;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
    v37 = v68;
    sub_1C8BD4E2C();
    v36 = v37;
    result = sub_1C87A0410();
    if (v37)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  v39 = v65;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v65);
  v41 = v67;
  v42 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v27, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  }

  else
  {
    v43 = v62;
    v44 = v61;
    (*(v62 + 32))();
    sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960]);
    sub_1C8BD4E2C();
    if (v36)
    {
      return (*(v43 + 8))(v44, v39);
    }

    (*(v43 + 8))(v44, v39);
    v41 = v67;
  }

  swift_beginAccess();
  v45 = v64;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v45, 1, v42) == 1)
  {
    sub_1C8778ED8(v45, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    v46 = v45;
    v47 = v63;
    v48 = v59;
    (*(v63 + 32))(v59, v46, v42);
    sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
    sub_1C8BD4E2C();
    if (v36)
    {
      return (*(v47 + 8))(v48, v42);
    }

    (*(v47 + 8))(v48, v42);
  }

  swift_beginAccess();
  v49 = v60;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v49, 1, v42) == 1)
  {
    sub_1C8778ED8(v49, &qword_1EC2B6110, &qword_1C8BF5070);
    goto LABEL_18;
  }

  v50 = v49;
  v47 = v63;
  v48 = v56;
  (*(v63 + 32))(v56, v50, v42);
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  sub_1C8BD4E2C();
  if (v36)
  {
    return (*(v47 + 8))(v48, v42);
  }

  (*(v47 + 8))(v48, v42);
LABEL_18:
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v41, 1, v58) == 1)
  {
    sub_1C8778ED8(v41, &qword_1EC2B8AA0, &qword_1C8BF50B8);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v36)
    {
      return result;
    }
  }

  v51 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  swift_beginAccess();
  if (!*(*(a1 + v51) + 16) || (type metadata accessor for Siri_Nlu_External_RRAnnotation(0), sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation), , sub_1C8BD4E0C(), result = , !v36))
  {
    swift_beginAccess();
    v52 = v57;
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v52, 1, v54) == 1)
    {
      return sub_1C8778ED8(v57, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    }

    else
    {
      sub_1C879A720();
      sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata);
      sub_1C8BD4E2C();
      return sub_1C87A0410();
    }
  }

  return result;
}

uint64_t sub_1C88CA250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_84();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_253();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v13, v14);
  return OUTLINED_FUNCTION_159() & 1;
}

void sub_1C88CA314()
{
  OUTLINED_FUNCTION_124();
  v216 = v2;
  v4 = v3;
  v189 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  v5 = OUTLINED_FUNCTION_21(v189);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v186[1] = v8;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FC0, &qword_1C8BF9EE0);
  OUTLINED_FUNCTION_21(v187);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81();
  v190 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  v14 = OUTLINED_FUNCTION_80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_0();
  v186[2] = v17;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_96();
  v188 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v194 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v20);
  v21 = OUTLINED_FUNCTION_21(v194);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v191 = v24;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FC8, &qword_1C8BF9EE8);
  OUTLINED_FUNCTION_21(v193);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_81();
  v195 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  v30 = OUTLINED_FUNCTION_80(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_0();
  v192 = v33;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_96();
  v197 = v35;
  OUTLINED_FUNCTION_86();
  v205 = sub_1C8BD493C();
  v36 = OUTLINED_FUNCTION_13_1(v205);
  v203 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  v198 = v40;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  v41 = OUTLINED_FUNCTION_21(v208);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_10_0();
  v199 = v44;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_96();
  v204 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v48 = OUTLINED_FUNCTION_80(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_10_0();
  v196 = v51;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v52);
  v201 = v186 - v53;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v54);
  v200 = v186 - v55;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_96();
  v210 = v57;
  OUTLINED_FUNCTION_86();
  v213 = sub_1C8BD48FC();
  v58 = OUTLINED_FUNCTION_13_1(v213);
  v207 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_0();
  v202 = v62;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21(v211);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_81();
  v212 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v68 = OUTLINED_FUNCTION_80(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_10_0();
  v206 = v71;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_96();
  v214 = v73;
  v74 = OUTLINED_FUNCTION_86();
  v75 = type metadata accessor for Siri_Nlu_External_UsoGraph(v74);
  v76 = OUTLINED_FUNCTION_48_5(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_9_0();
  v209 = v79;
  v80 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90) - 8);
  v81 = *(*v80 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_252();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v84 = OUTLINED_FUNCTION_80(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_10_0();
  v215 = v87;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_55();
  sub_1C8778810();
  v89 = v216;
  OUTLINED_FUNCTION_277();
  v90 = v80[14];
  OUTLINED_FUNCTION_229();
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v1);
  if (v91)
  {

    sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_72(v1 + v90);
    if (v91)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      goto LABEL_12;
    }

LABEL_9:
    v92 = &qword_1EC2B5FD8;
    v93 = &unk_1C8BE6C90;
LABEL_10:
    v94 = v1;
LABEL_32:
    sub_1C8778ED8(v94, v92, v93);
LABEL_33:

    goto LABEL_34;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_72(v1 + v90);
  if (v91)
  {

    sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();

  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_357();
  sub_1C87A0410();
  OUTLINED_FUNCTION_392();
  sub_1C8778ED8(v95, v96, v97);
  sub_1C87A0410();
  OUTLINED_FUNCTION_392();
  sub_1C8778ED8(v98, v99, v100);
  if ((v90 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  OUTLINED_FUNCTION_277();
  v101 = v214;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  v102 = v212;
  OUTLINED_FUNCTION_424(v211);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v103 = OUTLINED_FUNCTION_323_0();
  v104 = v213;
  OUTLINED_FUNCTION_41_2(v103, v105);
  if (v91)
  {
    sub_1C8778ED8(v101, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v102);
    v106 = v210;
    if (v91)
    {
      v215 = v4;
      sub_1C8778ED8(v102, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
      goto LABEL_22;
    }

LABEL_20:
    v92 = &qword_1EC2B5FD0;
    v93 = &unk_1C8BE6C80;
LABEL_31:
    v94 = v102;
    goto LABEL_32;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v102);
  if (v107)
  {
    sub_1C8778ED8(v101, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    v108 = *(v207 + 8);
    v109 = OUTLINED_FUNCTION_300();
    v110(v109);
    goto LABEL_20;
  }

  v215 = v4;
  v111 = v207;
  (*(v207 + 32))(v202, &dword_1EDACB000 + v102, v104);
  OUTLINED_FUNCTION_175_1();
  sub_1C8776788(v112, v113);
  OUTLINED_FUNCTION_168_0();
  LODWORD(v211) = sub_1C8BD517C();
  v114 = *(v111 + 8);
  v115 = OUTLINED_FUNCTION_82_3();
  v114(v115);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v116, v117, v118);
  v119 = OUTLINED_FUNCTION_119_0();
  v114(v119);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v120, v121, v122);
  v106 = v210;
  if ((v211 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v123 = v215;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v208);
  v102 = v204;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v124 = OUTLINED_FUNCTION_323_0();
  v125 = v205;
  OUTLINED_FUNCTION_41_2(v124, v126);
  if (v91)
  {
    sub_1C8778ED8(v106, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v102);
    if (v91)
    {
      sub_1C8778ED8(v102, &qword_1EC2B6110, &qword_1C8BF5070);
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v102);
  if (v127)
  {
    sub_1C8778ED8(v106, &qword_1EC2B6110, &qword_1C8BF5070);
    v128 = *(v203 + 8);
    v129 = OUTLINED_FUNCTION_259();
    v130(v129);
LABEL_30:
    v92 = &qword_1EC2B6118;
    v93 = &qword_1C8BE6DC0;
    goto LABEL_31;
  }

  v131 = v203;
  v132 = OUTLINED_FUNCTION_488(v203);
  v133(v132);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v134, v135);
  OUTLINED_FUNCTION_100();
  LODWORD(v214) = sub_1C8BD517C();
  v136 = *(v131 + 8);
  v137 = OUTLINED_FUNCTION_82_3();
  v136(v137);
  sub_1C8778ED8(v106, &qword_1EC2B6110, &qword_1C8BF5070);
  v138 = OUTLINED_FUNCTION_254_0();
  v136(v138);
  sub_1C8778ED8(v102, &qword_1EC2B6110, &qword_1C8BF5070);
  if ((v214 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  OUTLINED_FUNCTION_277();
  v139 = v201;
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_450_0(v208);
  v1 = v199;
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1);
  if (v91)
  {
    sub_1C8778ED8(v139, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v1);
    if (v91)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v140 = v196;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v1);
  if (v141)
  {
    sub_1C8778ED8(v201, &qword_1EC2B6110, &qword_1C8BF5070);
    v142 = *(v203 + 8);
    v143 = OUTLINED_FUNCTION_300();
    v144(v143);
LABEL_45:
    v92 = &qword_1EC2B6118;
    v93 = &qword_1C8BE6DC0;
    goto LABEL_10;
  }

  v145 = v203;
  v146 = OUTLINED_FUNCTION_488(v203);
  v147(v146);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v148, v149);
  OUTLINED_FUNCTION_168_0();
  LODWORD(v214) = sub_1C8BD517C();
  v150 = *(v145 + 8);
  v150(&qword_1C8BF5070, v125);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v151, v152, v153);
  v150(v140, v125);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v154, v155, v156);
  if ((v214 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_47:
  v157 = &dword_1EDACB000;
  OUTLINED_FUNCTION_277();
  v158 = v197;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v193);
  v159 = v195;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v160 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_82_1(v160, v161);
  if (v91)
  {
    sub_1C8778ED8(v158, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v159);
    if (v91)
    {
      sub_1C8778ED8(v159, &qword_1EC2B8AA0, &qword_1C8BF50B8);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v159);
  if (v162)
  {
    sub_1C8778ED8(v197, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    sub_1C87A0410();
LABEL_55:
    v92 = &qword_1EC2B8FC8;
    v93 = &qword_1C8BF9EE8;
    v94 = v159;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_114_1();
  sub_1C879A720();
  static Siri_Nlu_External_RRGroupIdentifier.== infix(_:_:)();
  v164 = v163;
  sub_1C87A0410();
  v157 = &qword_1EC2B8AA0;
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v165, v166, v167);
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v168, v169, v170);
  if ((v164 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_57:
  v171 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  OUTLINED_FUNCTION_277();
  v172 = *(v123 + v171);
  v173 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  OUTLINED_FUNCTION_277();
  v174 = *(v89 + v173);

  OUTLINED_FUNCTION_92_0();
  sub_1C87E222C();
  OUTLINED_FUNCTION_511();

  if ((v157 & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_277();
  v175 = v188;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_424(v187);
  v176 = v190;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v177 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_82_1(v177, v178);
  if (!v91)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v176);
    if (!v179)
    {
      OUTLINED_FUNCTION_112_3();
      sub_1C879A720();
      OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_RRMetadata.== infix(_:_:)();

      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v180, v181, v182);
      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v183, v184, v185);
      goto LABEL_34;
    }

    sub_1C8778ED8(v175, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_66:
    sub_1C8778ED8(v176, &qword_1EC2B8FC0, &qword_1C8BF9EE0);
    goto LABEL_34;
  }

  sub_1C8778ED8(v175, &qword_1EC2B8AA8, &unk_1C8BF50C0);
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v176);
  if (!v91)
  {
    goto LABEL_66;
  }

  sub_1C8778ED8(v176, &qword_1EC2B8AA8, &unk_1C8BF50C0);
LABEL_34:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CB484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EA8, type metadata accessor for Siri_Nlu_External_EntityCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CB504(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CB574()
{
  sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CB60C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A30);
  __swift_project_value_buffer(v0, qword_1EC2B8A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "score";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CB844()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_Task(0) + 28);
  sub_1C8BD48FC();
  sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960]);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_Task.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v56 = v8;
  OUTLINED_FUNCTION_86();
  v54 = sub_1C8BD48FC();
  v9 = OUTLINED_FUNCTION_13_1(v54);
  v53 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v52 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_211();
  v55 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v18 = OUTLINED_FUNCTION_21(v55);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7(v21, v51);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_212();
  v26 = type metadata accessor for Siri_Nlu_External_UUID();
  v27 = OUTLINED_FUNCTION_74_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v30 = type metadata accessor for Siri_Nlu_External_Task(0);
  v31 = v30[5];
  sub_1C8778810();
  v32 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_76(v32, v33, v0);
  if (v34)
  {
    sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v37 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v35, v36);
    sub_1C8BD4E2C();
    v37 = v1;
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  v38 = v30[6];
  sub_1C8778810();
  v39 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v39, v40, v55);
  if (v34)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v41, v42);
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v37)
  {
LABEL_9:
    v43 = v30[7];
    sub_1C8778810();
    v44 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_76(v44, v45, v54);
    if (v34)
    {
      sub_1C8778ED8(v56, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }

    else
    {
      v46 = *(v53 + 32);
      v47 = OUTLINED_FUNCTION_491();
      v48(v47);
      OUTLINED_FUNCTION_175_1();
      sub_1C8776788(v49, v50);
      sub_1C8BD4E2C();
      if (v37)
      {
        (*(v53 + 8))(v52, v54);
        goto LABEL_16;
      }

      (*(v53 + 8))(v52, v54);
    }

    sub_1C8BD49DC();
  }

LABEL_16:
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_Task.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_333();
  v77 = sub_1C8BD48FC();
  v2 = OUTLINED_FUNCTION_13_1(v77);
  v74 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v73 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21(v75);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v76 = v14;
  v15 = OUTLINED_FUNCTION_86();
  v80 = type metadata accessor for Siri_Nlu_External_UsoGraph(v15);
  v16 = OUTLINED_FUNCTION_21(v80);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_81_3(v23, v72);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21(v78);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_4();
  v27 = type metadata accessor for Siri_Nlu_External_UUID();
  v28 = OUTLINED_FUNCTION_21(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_33();
  v31 = OUTLINED_FUNCTION_491();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_80(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_212();
  v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v38 = *(*v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_87_2();
  v79 = type metadata accessor for Siri_Nlu_External_Task(v40);
  v41 = v79[5];
  v42 = v37[14];
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0);
  if (v43)
  {
    OUTLINED_FUNCTION_73(v0 + v42);
    if (v43)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v44 = &qword_1EC2B5EE8;
    v45 = &unk_1C8BE6F90;
    v46 = v0;
LABEL_30:
    sub_1C8778ED8(v46, v44, v45);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_522();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v42);
  if (v43)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();
  v47 = OUTLINED_FUNCTION_516();
  v49 = static Siri_Nlu_External_UUID.== infix(_:_:)(v47, v48);
  OUTLINED_FUNCTION_347();
  sub_1C87A0410();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v50 = v79[6];
  v51 = *(v78 + 48);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v52 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_124_1(v52, v53);
  if (v43)
  {
    OUTLINED_FUNCTION_24(v1 + v51);
    if (v43)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_24(v1 + v51);
  if (v54)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v44 = &qword_1EC2B5FD8;
    v45 = &unk_1C8BE6C90;
    v46 = v1;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_357();
  sub_1C87A0410();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if ((&qword_1EC2B61D0 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v55 = v79[7];
  v56 = *(v75 + 48);
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v57 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_76(v57, v58, v77);
  if (v43)
  {
    OUTLINED_FUNCTION_72(v76 + v56);
    if (v43)
    {
      sub_1C8778ED8(v76, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
LABEL_34:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v70, v71);
      OUTLINED_FUNCTION_498();
      v63 = sub_1C8BD517C();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_72(v76 + v56);
  if (v59)
  {
    v60 = *(v74 + 8);
    v61 = OUTLINED_FUNCTION_136();
    v62(v61);
LABEL_29:
    v44 = &qword_1EC2B5FD0;
    v45 = &unk_1C8BE6C80;
    v46 = v76;
    goto LABEL_30;
  }

  (*(v74 + 32))(v73, v76 + v56, v77);
  OUTLINED_FUNCTION_175_1();
  sub_1C8776788(v64, v65);
  OUTLINED_FUNCTION_118_0();
  v66 = sub_1C8BD517C();
  v67 = *(v74 + 8);
  v68 = OUTLINED_FUNCTION_271();
  v67(v68);
  v69 = OUTLINED_FUNCTION_136();
  v67(v69);
  sub_1C8778ED8(v76, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  if (v66)
  {
    goto LABEL_34;
  }

LABEL_31:
  v63 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v63);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CC478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EA0, type metadata accessor for Siri_Nlu_External_Task);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CC4F8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CC568()
{
  sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CC600()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A48);
  __swift_project_value_buffer(v0, qword_1EC2B8A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RewrittenUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CC91C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88CC868();
    }
  }

  return result;
}

uint64_t sub_1C88CC868()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RewrittenUtterance(0) + 20);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88CC91C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 24));
  return sub_1C8BD4BFC();
}

void Siri_Nlu_External_RewrittenUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_299_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_210();
  v13 = sub_1C8BD493C();
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = OUTLINED_FUNCTION_65_6();
  v20 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v19);
  v21 = *(v20 + 20);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v3);
  if (v22)
  {
    sub_1C8778ED8(v3, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v23(v2, v3, v13);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v24, v25);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    OUTLINED_FUNCTION_504();
    v0 = v1;
    if (v1)
    {
      v26 = *(v16 + 8);
      v27 = OUTLINED_FUNCTION_127_0();
      v28(v27);
      goto LABEL_10;
    }

    v29 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_127_0();
    v31(v30);
  }

  OUTLINED_FUNCTION_468(*(v20 + 24));
  if ((v33 & 1) != 0 || (v34 = *v32, OUTLINED_FUNCTION_55(), sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_15();
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RewrittenUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_241();
  v5 = sub_1C8BD493C();
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v10 = OUTLINED_FUNCTION_233();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_212();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_223_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_45();
  v42 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v20);
  v21 = *(v42 + 20);
  v22 = *(v2 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (!v23)
  {
    OUTLINED_FUNCTION_178_2();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v1 + v22);
    if (!v23)
    {
      v28 = OUTLINED_FUNCTION_453();
      v29(v28);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v30, v31);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_321_0();
      v32 = sub_1C8BD517C();
      v33 = *(v0 + 8);
      v34 = OUTLINED_FUNCTION_254_0();
      v33(v34);
      v35 = OUTLINED_FUNCTION_119_0();
      v33(v35);
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v24 = *(v43 + 8);
    v25 = OUTLINED_FUNCTION_119_0();
    v26(v25);
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19(v1 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_13:
  v36 = *(v42 + 24);
  v37 = *(v0 + v36 + 8);
  v38 = *(v4 + v36 + 8);
  if (v37)
  {
    if (v38)
    {
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if ((v39 & 1) == 0)
    {
LABEL_17:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v40, v41);
      OUTLINED_FUNCTION_196_0();
      v27 = sub_1C8BD517C();
      goto LABEL_11;
    }
  }

LABEL_10:
  v27 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CCE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E98, type metadata accessor for Siri_Nlu_External_RewrittenUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CCF18(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CCF88()
{
  sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CD014()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC340);
  __swift_project_value_buffer(v0, qword_1EDACC340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "probability";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_tokens";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "rewritten_utterances";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_AsrHypothesis.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_253();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_210();
  v12 = type metadata accessor for Siri_Nlu_External_UUID();
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_65_6();
  v29 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v16);
  v17 = v29[7];
  OUTLINED_FUNCTION_388();
  v18 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v18, v19);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v21, v22);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_513(v29[8]);
  if (!v24 || (OUTLINED_FUNCTION_512(v23), OUTLINED_FUNCTION_302_0(), sub_1C8BD4DDC(), !v1))
  {
    v25 = (v0 + v29[9]);
    if ((v25[1] & 1) != 0 || (v26 = *v25, OUTLINED_FUNCTION_302_0(), sub_1C8BD4DCC(), !v1))
    {
      OUTLINED_FUNCTION_514();
      if (!v27 || (type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0), sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_302_0(), sub_1C8BD4E0C(), !v1))
      {
        if (!*(*(v0 + 8) + 16) || (type metadata accessor for Siri_Nlu_External_RewrittenUtterance(0), sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_302_0(), sub_1C8BD4E0C(), !v1))
        {
          v28 = v0 + v29[6];
          OUTLINED_FUNCTION_234();
          sub_1C8BD49DC();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_AsrHypothesis.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_333();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v9 = OUTLINED_FUNCTION_233();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_223_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_45();
  v43 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v19);
  v20 = v43[7];
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v1 + v2);
    if (!v21)
    {
      OUTLINED_FUNCTION_0_16();
      sub_1C879A720();
      v23 = OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_UUID.== infix(_:_:)(v23, v24);
      OUTLINED_FUNCTION_336();
      sub_1C87A0410();
      OUTLINED_FUNCTION_229();
      sub_1C87A0410();
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v2);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v25 = v43[8];
  v26 = *(v4 + v25 + 8);
  if (*(v0 + v25 + 8))
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35((v0 + v25));
    v29 = v21 && v27 == v28;
    if (!v29 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v26)
  {
    goto LABEL_10;
  }

  v30 = v43[9];
  v31 = *(v0 + v30 + 8);
  v32 = *(v4 + v30 + 8);
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v33)
    {
      goto LABEL_10;
    }
  }

  v34 = *v0;
  v35 = *v4;
  sub_1C87DE53C();
  if (v36)
  {
    v37 = v0[1];
    v38 = v4[1];
    sub_1C87DE590();
    if (v39)
    {
      v40 = v43[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v41, v42);
      v22 = OUTLINED_FUNCTION_299();
      goto LABEL_11;
    }
  }

LABEL_10:
  v22 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v22);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CD878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E90, type metadata accessor for Siri_Nlu_External_AsrHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CD8F8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CD968()
{
  sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CDA00()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACAC20);
  __swift_project_value_buffer(v0, qword_1EDACAC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C8BE8D70;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "post_itn_text";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "phone_sequence";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ipa_phone_sequence";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "add_space_after";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remove_space_after";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "remove_space_before";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "confidence_score";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "begin_index";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "end_index";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "start_milli_seconds";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "end_milli_seconds";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_AsrTokenInformation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDF80();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDFC4();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CEC94();
        break;
      case 4:
        OUTLINED_FUNCTION_27_5();
        sub_1C87A4C50();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C88CE008();
        break;
      case 6:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE06C();
        break;
      case 7:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE0B0();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C88CE0F4();
        break;
      case 9:
        OUTLINED_FUNCTION_8();
        sub_1C88CE158();
        break;
      case 10:
        OUTLINED_FUNCTION_8();
        sub_1C88CE1BC();
        break;
      case 11:
        OUTLINED_FUNCTION_8();
        sub_1C88CE220();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88CDF80()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 20));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CDFC4()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 24));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CE06C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 40));
  return sub_1C8BD4B2C();
}

uint64_t sub_1C88CE0B0()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 44));
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_External_AsrTokenInformation.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_72_4();
  v4 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v3);
  OUTLINED_FUNCTION_459(v4);
  OUTLINED_FUNCTION_16_2(v5);
  if (!v7 || (v8 = *v6, result = OUTLINED_FUNCTION_9_5(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_16_2(v2[6]);
    if (!v11 || (OUTLINED_FUNCTION_512(v10), result = OUTLINED_FUNCTION_9_5(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_16_2(v2[7]);
      if (!v13 || (v14 = *v12, result = OUTLINED_FUNCTION_9_5(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_451(v2[8]);
        if (v15 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_451(v2[9]);
          if (v15 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_451(v2[10]);
            if (v15 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
            {
              OUTLINED_FUNCTION_468(v2[11]);
              if ((v17 & 1) != 0 || (v18 = *v16, v1 = v0, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
              {
                OUTLINED_FUNCTION_467(v2[12]);
                if ((v20 & 1) != 0 || (v21 = *v19, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v1))
                {
                  OUTLINED_FUNCTION_467(v2[13]);
                  if ((v23 & 1) != 0 || (v24 = *v22, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v1))
                  {
                    OUTLINED_FUNCTION_467(v2[14]);
                    if ((v26 & 1) != 0 || (v27 = *v25, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v1))
                    {
                      OUTLINED_FUNCTION_467(v2[15]);
                      if (v29)
                      {
                        return OUTLINED_FUNCTION_15();
                      }

                      v30 = *v28;
                      OUTLINED_FUNCTION_48_0();
                      result = sub_1C8BD4D8C();
                      if (!v1)
                      {
                        return OUTLINED_FUNCTION_15();
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

uint64_t static Siri_Nlu_External_AsrTokenInformation.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  v2 = v1[5];
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = v1[6];
  OUTLINED_FUNCTION_1();
  if (v12)
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v11);
    v15 = v8 && v13 == v14;
    if (!v15 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = v1[7];
  OUTLINED_FUNCTION_1();
  if (v19)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v18);
    v22 = v8 && v20 == v21;
    if (!v22 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v1[8]);
  if (v8)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v24 ^ v23) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v1[9]);
  if (v8)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v26 ^ v25) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v1[10]);
  if (v8)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v28 ^ v27) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_0(v1[11]);
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v31)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(v1[12]);
  if (v33)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v34)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(v1[13]);
  if (v36)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v37)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(v1[14]);
  if ((v39 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v40 & 1) == 0)
    {
      goto LABEL_62;
    }

    return 0;
  }

  if (!v38)
  {
    return 0;
  }

LABEL_62:
  OUTLINED_FUNCTION_11(v1[15]);
  if (v42)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v44)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v45, v46);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C88CE6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E88, type metadata accessor for Siri_Nlu_External_AsrTokenInformation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CE760(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CE7D0()
{
  sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CE868()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C20);
  __swift_project_value_buffer(v0, qword_1EC2B4C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C8BE7150;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "start_token_index";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "end_token_index";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uso_graph";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "score";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "matcher_names";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_Span.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDFC4();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CEC94();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88CECD8();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C88CED3C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C88CEDA0();
        break;
      case 6:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE0B0();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C88CEE54();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88CEC94()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 28));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CEDA0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_Span(0) + 40);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_Span.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_65_6();
  v13 = type metadata accessor for Siri_Nlu_External_Span(v12);
  OUTLINED_FUNCTION_513(v13[6]);
  if (!v15 || (v16 = *v14, sub_1C8BD4DDC(), !v1))
  {
    OUTLINED_FUNCTION_513(v13[7]);
    if (!v18 || (OUTLINED_FUNCTION_512(v17), sub_1C8BD4DDC(), !v1))
    {
      v19 = (v0 + v13[8]);
      if ((v19[1] & 1) != 0 || (v20 = *v19, sub_1C8BD4DEC(), !v1))
      {
        v21 = (v0 + v13[9]);
        if ((v21[1] & 1) != 0 || (v22 = *v21, sub_1C8BD4DEC(), !v1))
        {
          v23 = v13[10];
          sub_1C8778810();
          v24 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_76(v24, v25, v8);
          if (v26)
          {
            sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          }

          else
          {
            OUTLINED_FUNCTION_1_13();
            sub_1C879A720();
            OUTLINED_FUNCTION_13_14();
            sub_1C8776788(v27, v28);
            OUTLINED_FUNCTION_118_0();
            sub_1C8BD4E2C();
            OUTLINED_FUNCTION_4_17();
            sub_1C87A0410();
            if (v1)
            {
              goto LABEL_18;
            }
          }

          v29 = (v0 + v13[11]);
          if ((v29[1] & 1) != 0 || (v30 = *v29, sub_1C8BD4DCC(), !v1))
          {
            OUTLINED_FUNCTION_514();
            if (!v31 || (sub_1C88D0A10(), sub_1C8BD4D2C(), !v1))
            {
              v32 = v0 + v13[5];
              OUTLINED_FUNCTION_178_2();
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_Span.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for Siri_Nlu_External_Span(v16);
  v18 = v17[6];
  OUTLINED_FUNCTION_1();
  if (v21)
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_35(v20);
    v24 = v24 && v22 == v23;
    if (!v24 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v19)
  {
    goto LABEL_36;
  }

  v25 = v17[7];
  OUTLINED_FUNCTION_1();
  if (v28)
  {
    if (!v26)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_35(v27);
    v31 = v24 && v29 == v30;
    if (!v31 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v26)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_11(v17[8]);
  if (v33)
  {
    if (!v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v34)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_11(v17[9]);
  if (v36)
  {
    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v37)
    {
      goto LABEL_36;
    }
  }

  v38 = v17[10];
  v39 = *(v12 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v2);
  if (!v24)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v2 + v39);
    if (!v40)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1C879A720();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
      v43 = v42;
      sub_1C87A0410();
      OUTLINED_FUNCTION_229();
      sub_1C87A0410();
      sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_35:
    sub_1C8778ED8(v2, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_17_6(v2 + v39);
  if (!v24)
  {
    goto LABEL_35;
  }

  sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_39:
  OUTLINED_FUNCTION_4_0(v17[11]);
  if (v45)
  {
    if (!v44)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v46)
    {
      goto LABEL_36;
    }
  }

  if (sub_1C87E4684(*v1, *v0))
  {
    v47 = v17[5];
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    sub_1C8776788(v48, v49);
    v41 = OUTLINED_FUNCTION_64_0();
    goto LABEL_37;
  }

LABEL_36:
  v41 = 0;
LABEL_37:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CF51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E80, type metadata accessor for Siri_Nlu_External_Span);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CF59C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4C10, type metadata accessor for Siri_Nlu_External_Span);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CF60C()
{
  sub_1C8776788(&qword_1EC2B4C10, type metadata accessor for Siri_Nlu_External_Span);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CF68C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C60);
  __swift_project_value_buffer(v0, qword_1EC2B4C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY_MATCHER";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MRR_DETECTOR";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MRR_MATCHER";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_MATCHER";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CF94C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4720);
  __swift_project_value_buffer(v0, qword_1EC2B4720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "matching_spans";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrite";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "correction_outcome";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CFB80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C8BD512C();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_211_2(v5);
  v7 = *(v6 + 16);

  return v7(a3);
}

void Siri_Nlu_External_NLUSupplementaryOutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88CFD84();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C88CFCD0();
        break;
      case 1:
        OUTLINED_FUNCTION_363();
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
    }
  }
}

uint64_t sub_1C88CFCD0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0) + 24);
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88CFD84()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0) + 28);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NLUSupplementaryOutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_47_5(v7, v31);
  v33 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v8);
  v9 = OUTLINED_FUNCTION_21(v33);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_252();
  v16 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v17 = OUTLINED_FUNCTION_21(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_41_6();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_Span(0), OUTLINED_FUNCTION_362(), sub_1C8776788(v20, v21), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    v22 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
    v23 = v22[6];
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v2);
    if (v24)
    {
      sub_1C8778ED8(v2, &unk_1EC2B8A70, &qword_1C8BF5078);
    }

    else
    {
      OUTLINED_FUNCTION_16_8();
      sub_1C879A720();
      OUTLINED_FUNCTION_361();
      sub_1C8776788(v25, v26);
      OUTLINED_FUNCTION_248_2();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_100_3();
      sub_1C87A0410();
      if (v1)
      {
        goto LABEL_12;
      }
    }

    v27 = v22[7];
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v32, 1, v33);
    if (v24)
    {
      sub_1C8778ED8(v32, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_11:
      v30 = v0 + v22[5];
      sub_1C8BD49DC();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_12_13();
    sub_1C879A720();
    OUTLINED_FUNCTION_345();
    sub_1C8776788(v28, v29);
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_62_4();
    sub_1C87A0410();
    if (!v1)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NLUSupplementaryOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v58 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v6 = OUTLINED_FUNCTION_21(v58);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v59 = v17;
  v18 = OUTLINED_FUNCTION_86();
  v19 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v18);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_212();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B58, &qword_1C8BF50F0);
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v55 - v31;
  v33 = *v5;
  v34 = *v3;
  sub_1C87DCE24();
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

  v55[0] = v0;
  v55[1] = v1;
  v36 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  v37 = *(v36 + 24);
  v38 = *(v27 + 48);
  v56 = v36;
  v57 = v5;
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_65(v32);
  if (v39)
  {
    OUTLINED_FUNCTION_65(&v32[v38]);
    if (v39)
    {
      sub_1C8778ED8(v32, &unk_1EC2B8A70, &qword_1C8BF5078);
      goto LABEL_12;
    }

LABEL_10:
    v40 = &qword_1EC2B8B58;
    v41 = &qword_1C8BF50F0;
    v42 = v32;
LABEL_21:
    sub_1C8778ED8(v42, v40, v41);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_215();
  sub_1C8778810();
  OUTLINED_FUNCTION_65(&v32[v38]);
  if (v39)
  {
    OUTLINED_FUNCTION_100_3();
    sub_1C87A0410();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_8();
  sub_1C879A720();
  static Siri_Nlu_External_RewriteMessage.== infix(_:_:)();
  OUTLINED_FUNCTION_337();
  sub_1C87A0410();
  OUTLINED_FUNCTION_119_0();
  sub_1C87A0410();
  sub_1C8778ED8(v32, &unk_1EC2B8A70, &qword_1C8BF5078);
  if ((&unk_1EC2B8A70 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v43 = v56;
  v44 = *(v56 + 28);
  v45 = *(v13 + 48);
  v46 = v59;
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v47 = OUTLINED_FUNCTION_400();
  v48 = v58;
  OUTLINED_FUNCTION_124_1(v47, v49);
  if (v39)
  {
    OUTLINED_FUNCTION_24(v46 + v45);
    if (v39)
    {
      sub_1C8778ED8(v46, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_25:
      v52 = *(v43 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v53, v54);
      v51 = sub_1C8BD517C();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_24(v46 + v45);
  if (v50)
  {
    OUTLINED_FUNCTION_62_4();
    sub_1C87A0410();
LABEL_20:
    v40 = &qword_1EC2B6F10;
    v41 = &unk_1C8BF50D0;
    v42 = v46;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_12_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
  OUTLINED_FUNCTION_338();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v46, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  if (v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
LABEL_23:
  OUTLINED_FUNCTION_157(v51);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88D0654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E78, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88D06D4(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4710, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88D0744()
{
  sub_1C8776788(&qword_1EC2B4710, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C88D07C4()
{
  result = qword_1EDACB718;
  if (!qword_1EDACB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB718);
  }

  return result;
}

unint64_t sub_1C88D0818()
{
  result = qword_1EDACB2A8;
  if (!qword_1EDACB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB2A8);
  }

  return result;
}

unint64_t sub_1C88D086C()
{
  result = qword_1EDACCE20;
  if (!qword_1EDACCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE20);
  }

  return result;
}

unint64_t sub_1C88D08C0()
{
  result = qword_1EDACCDE0;
  if (!qword_1EDACCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDE0);
  }

  return result;
}

unint64_t sub_1C88D0914()
{
  result = qword_1EDACB070[0];
  if (!qword_1EDACB070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDACB070);
  }

  return result;
}

unint64_t sub_1C88D0968()
{
  result = qword_1EC2B4118;
  if (!qword_1EC2B4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4118);
  }

  return result;
}

unint64_t sub_1C88D09BC()
{
  result = qword_1EDACC768;
  if (!qword_1EDACC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC768);
  }

  return result;
}

unint64_t sub_1C88D0A10()
{
  result = qword_1EC2B4C50;
  if (!qword_1EC2B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C50);
  }

  return result;
}

unint64_t sub_1C88D0A68()
{
  result = qword_1EDACB708;
  if (!qword_1EDACB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB708);
  }

  return result;
}

unint64_t sub_1C88D0AC0()
{
  result = qword_1EDACB710;
  if (!qword_1EDACB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB710);
  }

  return result;
}

unint64_t sub_1C88D0B18()
{
  result = qword_1EDACB700;
  if (!qword_1EDACB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB700);
  }

  return result;
}

unint64_t sub_1C88D0BA0()
{
  result = qword_1EDACB298;
  if (!qword_1EDACB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB298);
  }

  return result;
}

unint64_t sub_1C88D0BF8()
{
  result = qword_1EDACB2A0;
  if (!qword_1EDACB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB2A0);
  }

  return result;
}

unint64_t sub_1C88D0C50()
{
  result = qword_1EDACB290;
  if (!qword_1EDACB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB290);
  }

  return result;
}

unint64_t sub_1C88D0CD8()
{
  result = qword_1EDACCDD0;
  if (!qword_1EDACCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDD0);
  }

  return result;
}

unint64_t sub_1C88D0D30()
{
  result = qword_1EDACCDD8;
  if (!qword_1EDACCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDD8);
  }

  return result;
}

unint64_t sub_1C88D0D88()
{
  result = qword_1EDACCDC8;
  if (!qword_1EDACCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDC8);
  }

  return result;
}

unint64_t sub_1C88D0DE0()
{
  result = qword_1EDACCE10;
  if (!qword_1EDACCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE10);
  }

  return result;
}

unint64_t sub_1C88D0E38()
{
  result = qword_1EDACCE18;
  if (!qword_1EDACCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE18);
  }

  return result;
}

unint64_t sub_1C88D0E90()
{
  result = qword_1EDACCE08;
  if (!qword_1EDACCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE08);
  }

  return result;
}

unint64_t sub_1C88D0F48()
{
  result = qword_1EDACB060;
  if (!qword_1EDACB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB060);
  }

  return result;
}

unint64_t sub_1C88D0FA0()
{
  result = qword_1EDACB068;
  if (!qword_1EDACB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB068);
  }

  return result;
}

unint64_t sub_1C88D0FF8()
{
  result = qword_1EDACB058;
  if (!qword_1EDACB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB058);
  }

  return result;
}

unint64_t sub_1C88D1080()
{
  result = qword_1EC2B4108;
  if (!qword_1EC2B4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4108);
  }

  return result;
}

unint64_t sub_1C88D10D8()
{
  result = qword_1EC2B4110;
  if (!qword_1EC2B4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4110);
  }

  return result;
}

unint64_t sub_1C88D1130()
{
  result = qword_1EC2B4100;
  if (!qword_1EC2B4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4100);
  }

  return result;
}

unint64_t sub_1C88D11B8()
{
  result = qword_1EDACC758;
  if (!qword_1EDACC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC758);
  }

  return result;
}

unint64_t sub_1C88D1210()
{
  result = qword_1EDACC760;
  if (!qword_1EDACC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC760);
  }

  return result;
}

unint64_t sub_1C88D1268()
{
  result = qword_1EDACC750;
  if (!qword_1EDACC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC750);
  }

  return result;
}

unint64_t sub_1C88D12F0()
{
  result = qword_1EC2B4C40;
  if (!qword_1EC2B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C40);
  }

  return result;
}

unint64_t sub_1C88D1348()
{
  result = qword_1EC2B4C48;
  if (!qword_1EC2B4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C48);
  }

  return result;
}

unint64_t sub_1C88D13A0()
{
  result = qword_1EC2B4C38;
  if (!qword_1EC2B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C38);
  }

  return result;
}

void sub_1C88D4250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C88D42B4()
{
  sub_1C88D4250(319, &qword_1EDACA308, type metadata accessor for Siri_Nlu_External_Task, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACA2E8, type metadata accessor for Siri_Nlu_External_EntityCandidate, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C88D4250(319, &qword_1EDACA2E0, type metadata accessor for Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8BD49FC();
        if (v3 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACA9E8, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C88D4440()
{
  sub_1C88D4250(319, &qword_1EDACA2C0, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_1C8BD49FC();
      if (v5 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_1C88D6748(319, &qword_1EDACB6F8, &type metadata for Siri_Nlu_External_LegacyNLContext.LegacyContextSource, MEMORY[0x1E69E6720]);
            v1 = v10;
            if (v11 <= 0x3F)
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

void sub_1C88D4664()
{
  OUTLINED_FUNCTION_533();
  OUTLINED_FUNCTION_242_1();
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_519();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_119();
    sub_1C88D6748(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      v8 = OUTLINED_FUNCTION_341();
      sub_1C88D6748(v8, v1, v0, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_243_2();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }

  OUTLINED_FUNCTION_534();
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Parser.AlgorithmType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_Parser.ParserIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Parser.ParserIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C88D498C()
{
  sub_1C88D4250(319, &qword_1EDACA2F0, type metadata accessor for Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C8BD49FC();
    if (v3 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_1C88D4250(319, qword_1EDACB210, type metadata accessor for Siri_Nlu_External_RepetitionResult, MEMORY[0x1E69E6720]);
          if (v10 > 0x3F)
          {
            return v8;
          }

          sub_1C88D4250(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
          if (v11 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_CorrectionOutcome.CorrectionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C88D4D78(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88D4EB8()
{
  sub_1C88D4250(319, &qword_1EDACD3D8, type metadata accessor for Siri_Nlu_External_Span, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C88D4250(319, qword_1EDACD768, type metadata accessor for Siri_Nlu_External_RewriteMessage, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C88D4250(319, qword_1EDACB328, type metadata accessor for Siri_Nlu_External_ReferenceContext, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
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

void sub_1C88D51B4()
{
  OUTLINED_FUNCTION_533();
  OUTLINED_FUNCTION_242_1();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_119();
    v0();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }

  OUTLINED_FUNCTION_534();
}

void sub_1C88D5220()
{
  sub_1C88D4250(319, &qword_1EDACA2F0, type metadata accessor for Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88D5310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C88D4250(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_519();
    sub_1C8BD49FC();
    if (v10 <= 0x3F)
    {
      v11 = OUTLINED_FUNCTION_171_1();
      sub_1C88D4250(v11, a6, a7, v12);
      if (v13 <= 0x3F)
      {
        OUTLINED_FUNCTION_243_2();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_298Tm()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_516();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_18_0(v5);
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_227();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_266();
    }
  }

  OUTLINED_FUNCTION_260();

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t __swift_store_extra_inhabitant_index_299Tm()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  OUTLINED_FUNCTION_17();
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_234();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      OUTLINED_FUNCTION_264_0();
    }
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_260();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_1C88D5580()
{
  OUTLINED_FUNCTION_533();
  OUTLINED_FUNCTION_242_1();
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_519();
    OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_119();
    sub_1C88D4250(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      v8 = OUTLINED_FUNCTION_171_1();
      sub_1C88D4250(v8, v1, v0, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_243_2();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }

  OUTLINED_FUNCTION_534();
}

void sub_1C88D5648()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88D57A8()
{
  OUTLINED_FUNCTION_533();
  OUTLINED_FUNCTION_242_1();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_519();
    OUTLINED_FUNCTION_119();
    v0();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_243_2();
      OUTLINED_FUNCTION_169_2();
    }
  }

  OUTLINED_FUNCTION_534();
}

void sub_1C88D5840()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88D5914()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC238, type metadata accessor for Siri_Nlu_External_RRBoundingBox, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_512Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_513Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_510();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_264_0();
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1C88D5B84()
{
  sub_1C88D4250(319, &qword_1EDACA2D8, type metadata accessor for Siri_Nlu_External_RRSurroundingText, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC238, type metadata accessor for Siri_Nlu_External_RRBoundingBox, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACC748, &type metadata for Siri_Nlu_External_RRMetadata.RRDataSource, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_RRMetadata.RRDataSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C88D5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C8BD49FC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C88D5E40()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D4250(319, &qword_1EDACD400, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_494Tm()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_227();
    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_495Tm()
{
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_17();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_226_2();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1C88D60D8()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}