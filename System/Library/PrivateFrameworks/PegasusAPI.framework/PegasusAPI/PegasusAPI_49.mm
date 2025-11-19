uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0) + 72);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0) + 72);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 66) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  v4 = v1 + *(v3 + 72);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B917D344()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4938);
  __swift_project_value_buffer(v0, qword_1EBAB4938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REWRITE_TYPE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REWRITE_TYPE_MACHINE_CORRECTION";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REWRITE_TYPE_SIRI_TAP_TO_EDIT";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REWRITE_TYPE_CORRECTION_BY_REPETITION";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REWRITE_TYPE_BY_MENTION_REFERENCE_RESOLUTION";
  *(v16 + 1) = 44;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REWRITE_TYPE_BY_NL_ROUTER";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "REWRITE_TYPE_BY_NL_ROUTER_DISFLUENCY";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B917D674()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5CB8);
  __swift_project_value_buffer(v0, qword_1EBAB5CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "asr_rank";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "asr_score";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "asr_interpretation";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "asr_interpretations";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "false_trigger_mitigator";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 1001;
  *v23 = "rewritten_utterances";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v9();
  v24 = (v5 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 2002;
  *v25 = "profile_slices";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B917DB18();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B917DBCC();
        break;
      default:
        if (result == 1001)
        {
          OUTLINED_FUNCTION_9();
          sub_1B917DC6C();
        }

        else if (result == 2002)
        {
          OUTLINED_FUNCTION_9();
          sub_1B917DD0C();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B917DB18()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);
  return sub_1B964C580();
}

uint64_t sub_1B917DBCC()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);
  return sub_1B964C570();
}

uint64_t sub_1B917DC6C()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0);
  sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);
  return sub_1B964C570();
}

uint64_t sub_1B917DD0C()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0);
  sub_1B917E0F8(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (*(v2 + 40) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
        {
          v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
          sub_1B917C394(v2 + *(v28 + 52), v8);
          if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
          {
            sub_1B8D9207C(v8, &qword_1EBAC6858, &qword_1B969ADB0);
          }

          else
          {
            sub_1B917C404(v8, v14);
            OUTLINED_FUNCTION_13_23();
            sub_1B917E0F8(v22, v23);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            result = sub_1B917C70C(v14);
            if (v1)
            {
              return result;
            }
          }

          if (!*(*(v2 + 48) + 16) || (OUTLINED_FUNCTION_13_23(), sub_1B917E0F8(v24, v25), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
          {
            if (!*(v2 + 56) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              if (!*(*(v2 + 64) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0), sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
              {
                if (!*(*(v2 + 72) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0), sub_1B917E0F8(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
                {
                  v26 = v2 + *(v28 + 48);
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
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

uint64_t sub_1B917E0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v53 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6860, &qword_1B969ADB8);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v20 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v20 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 40) != *(v0 + 40))
  {
    goto LABEL_33;
  }

  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v22 = *(v21 + 52);
  v23 = *(v15 + 48);
  sub_1B917C394(v1 + v22, v2);
  sub_1B917C394(v0 + v22, v2 + v23);
  v24 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v24, v25, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_178(v2 + v23, 1, v3);
    if (v19)
    {
      sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  sub_1B917C394(v2, v14);
  OUTLINED_FUNCTION_178(v2 + v23, 1, v3);
  if (v39)
  {
    sub_1B917C70C(v14);
LABEL_26:
    v40 = &qword_1EBAC6860;
    v41 = &qword_1B969ADB8;
LABEL_32:
    sub_1B8D9207C(v2, v40, v41);
LABEL_33:
    v38 = 0;
    return v38 & 1;
  }

  sub_1B917C404(v2 + v23, v8);
  v42 = *v14;
  v43 = *v8;
  sub_1B8D84EBC();
  if ((v44 & 1) == 0 || (v45 = v14[1], v46 = v8[1], sub_1B8D84EBC(), (v47 & 1) == 0))
  {
    sub_1B917C70C(v8);
    sub_1B917C70C(v14);
    v40 = &qword_1EBAC6858;
    v41 = &qword_1B969ADB0;
    goto LABEL_32;
  }

  v48 = *(v3 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v49, v50);
  v51 = sub_1B964C850();
  sub_1B917C70C(v8);
  sub_1B917C70C(v14);
  sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  v26 = *(v1 + 48);
  v27 = *(v0 + 48);
  sub_1B8D84F10();
  if ((v28 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_33;
  }

  v29 = *(v1 + 64);
  v30 = *(v0 + 64);
  sub_1B8D85654();
  if ((v31 & 1) == 0)
  {
    goto LABEL_33;
  }

  v32 = *(v1 + 72);
  v33 = *(v0 + 72);
  sub_1B8D85888();
  if ((v34 & 1) == 0)
  {
    goto LABEL_33;
  }

  v35 = *(v21 + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v36, v37);
  v38 = sub_1B964C850();
  return v38 & 1;
}

uint64_t sub_1B917E558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917E5D8(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB5CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917E648()
{
  sub_1B917E0F8(&qword_1EBAB5CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B917E6E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB44E8);
  __swift_project_value_buffer(v0, qword_1EBAB44E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pre_itn_token";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "post_itn_token";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B917E9D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B917E930();
    }
  }

  return result;
}

uint64_t sub_1B917E930()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken);
  return sub_1B964C570();
}

uint64_t sub_1B917E9D0()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0), OUTLINED_FUNCTION_14_21(), sub_1B917E0F8(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0), OUTLINED_FUNCTION_14_21(), sub_1B917E0F8(v6, v7), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v8 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ASRInterpretation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1B8D84EBC();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  sub_1B8D84EBC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B917ECBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917ED3C(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917EDAC()
{
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return sub_1B964C5D0();
}

uint64_t sub_1B917EE48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4220);
  __swift_project_value_buffer(v0, qword_1EBAB4220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B9656D00;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "text";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "original_text";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "phone_sequence";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ipa_phone_sequence";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_space_removed_before";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "is_space_removed_after";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_space_added_after";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "start_time";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "end_time";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "silence_start_time";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "recognition_stability";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "confidence_score";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "acoustic_cost";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "graph_cost";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
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
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 12:
      case 13:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = *(v2 + 48);
        v14 = *(v2 + 56);
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 65) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (*(v2 + 66) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                if (!*(v2 + 72) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                {
                  if (!*(v2 + 80) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                  {
                    if (!*(v2 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                    {
                      v16 = *(v2 + 96);
                      v17 = *(v2 + 104);
                      OUTLINED_FUNCTION_1();
                      if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
                      {
                        if (*(v2 + 112) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                        {
                          if (*(v2 + 120) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                          {
                            if (*(v2 + 128) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                            {
                              v19 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0) + 72);
                              OUTLINED_FUNCTION_12();
                              return sub_1B964C290();
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

uint64_t static Apple_Parsec_Siri_V2alpha_InterpretationToken.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 64) != *(v2 + 64) || *(v3 + 65) != *(v2 + 65) || *(v3 + 66) != *(v2 + 66) || *(v3 + 72) != *(v2 + 72) || *(v3 + 80) != *(v2 + 80) || *(v3 + 88) != *(v2 + 88))
  {
    return 0;
  }

  v10 = *(v3 + 96) == *(v2 + 96) && *(v3 + 104) == *(v2 + 104);
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 112) != *(v2 + 112) || *(v3 + 120) != *(v2 + 120) || *(v3 + 128) != *(v2 + 128))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0) + 72);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B917F868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917F8E8(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917F958()
{
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return sub_1B964C5D0();
}

uint64_t sub_1B917F9E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4338);
  __swift_project_value_buffer(v0, qword_1EBAB4338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "rewrite_type";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B917FC98();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      if (!*(v2 + 24) || (v8 = *(v2 + 24), v9 = *(v2 + 32), sub_1B918019C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        v7 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_RewrittenUtterance.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(v3 + 24);
  v8 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    switch(v8)
    {
      case 1:
        if (v7 == 1)
        {
          goto LABEL_12;
        }

        return 0;
      case 2:
        if (v7 == 2)
        {
          goto LABEL_12;
        }

        return 0;
      case 3:
        if (v7 == 3)
        {
          goto LABEL_12;
        }

        return 0;
      case 4:
        if (v7 == 4)
        {
          goto LABEL_12;
        }

        return 0;
      case 5:
        if (v7 == 5)
        {
          goto LABEL_12;
        }

        return 0;
      case 6:
        if (v7 == 6)
        {
          goto LABEL_12;
        }

        return 0;
      default:
        if (v7)
        {
          return 0;
        }

        goto LABEL_12;
    }
  }

  if (v7 != v8)
  {
    return 0;
  }

LABEL_12:
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B917FF48(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B917E0F8(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B918002C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91800AC(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918011C()
{
  sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return sub_1B964C5D0();
}

unint64_t sub_1B918019C()
{
  result = qword_1EBAB4928;
  if (!qword_1EBAB4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4928);
  }

  return result;
}

unint64_t sub_1B91801F4()
{
  result = qword_1EBAB4920;
  if (!qword_1EBAB4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4920);
  }

  return result;
}

unint64_t sub_1B918024C()
{
  result = qword_1EBAB4910;
  if (!qword_1EBAB4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4910);
  }

  return result;
}

unint64_t sub_1B91802A4()
{
  result = qword_1EBAB4918;
  if (!qword_1EBAB4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4918);
  }

  return result;
}

unint64_t sub_1B91802FC()
{
  result = qword_1EBAC6888;
  if (!qword_1EBAC6888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6890, &qword_1B969AEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6888);
  }

  return result;
}

void sub_1B9180818()
{
  sub_1B91809C8(319, &qword_1ED9CF5F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B91809C8(319, &qword_1ED9CF5D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B91809C8(319, &qword_1ED9CF650, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v3 <= 0x3F)
        {
          sub_1B91809C8(319, &qword_1ED9D1450, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B91809C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9180A54()
{
  sub_1B91809C8(319, &qword_1ED9CF5C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9180B30()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9180C10()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.givenName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.givenName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.middleName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.middleName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.familyName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.familyName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.nickname.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.nickname.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.fullName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.fullName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.addresses.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v2) + 44);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_Person.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v0) + 44);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_6_25(a1);
  v1[10] = MEMORY[0x1E69E7CC0];
  v1[11] = 0;
  v1[12] = v2;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(v2) + 40);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(v0) + 40);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_6_25(a1);
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9181450()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4FC8);
  __swift_project_value_buffer(v0, qword_1EBAB4FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "given_name";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "middle_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "family_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "nickname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "full_name";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "addresses";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contact_identifier";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
  while (1)
  {
    result = sub_1B964C3C0();
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
      case 5:
      case 7:
        sub_1B964C530();
        break;
      case 6:
        sub_1B9181854();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9181854()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0);
  sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      v10 = v0[4];
      v11 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
      {
        v13 = v0[6];
        v14 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
        {
          v16 = v0[8];
          v17 = v0[9];
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
          {
            if (!*(v0[10] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0), sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress), v1 = v2, result = sub_1B964C730(), !v2))
            {
              v19 = v0[11];
              v20 = v0[12];
              OUTLINED_FUNCTION_1();
              if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
              {
                v22 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Person.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[10];
  v12 = v2[10];
  sub_1B8D77F8C();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v3[11] == v2[11] && v3[12] == v2[12];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_38();
  sub_1B918262C(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9181C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918262C(&qword_1EBAC6928, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9181CCC(uint64_t a1)
{
  v2 = sub_1B918262C(&qword_1EBAB4FB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9181D3C()
{
  sub_1B918262C(&qword_1EBAB4FB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B9181DD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC68D8);
  __swift_project_value_buffer(v0, qword_1EBAC68D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B964E4A0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "address_label";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "city";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "zip_code";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "country_code";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
  while (1)
  {
    result = sub_1B964C3C0();
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
      case 5:
      case 6:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v12 = v0[6];
        v13 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v15 = v0[8];
          v16 = v0[9];
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v18 = v0[10];
            v19 = v0[11];
            OUTLINED_FUNCTION_1();
            if (!v20 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              v21 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ContactAddress.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_38();
  sub_1B918262C(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91823D8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B918262C(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91824BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918262C(&qword_1EBAC6920, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918253C(uint64_t a1)
{
  v2 = sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91825AC()
{
  sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B918262C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B91828DC()
{
  sub_1B918297C();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918297C()
{
  if (!qword_1ED9CF630)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(255);
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9CF630);
    }
  }
}

uint64_t sub_1B91829FC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_6_25(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
}

uint64_t sub_1B9182B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D16C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182BEC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceLabel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9182C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D1C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182D1C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9182D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D214();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182E30@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_53_11();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v7) + 32);
  sub_1B8D92024();
  v9 = sub_1B964C1C0();
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return (*(*(v9 - 8) + 32))(a1, v1, v9);
  }

  sub_1B964C1B0();
  v13 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v13, v14, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  }

  return result;
}

uint64_t sub_1B918313C(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v0 + 8) = v6;
  v7 = sub_1B964C1C0();
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  *(v0 + 24) = v8;
  v11 = *(v10 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v0 + 40) = v12;
  *(v0 + 48) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0) + 32);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v13)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9183428(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    v10 = *(v7 + 16);
    v11 = OUTLINED_FUNCTION_543();
    v12(v11);
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_53_11();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v5) + 32);
  sub_1B8D92024();
  sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ProfileSliceValue.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0) + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F20, &qword_1B964D720);
  v2 = sub_1B964C1C0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

void Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1B9183704()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B918378C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  v4 = v1 + *(v3 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 32);
  v6 = sub_1B964C1C0();

  return __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.supportedIntents.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.vocabConcepts.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.displayAppName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.displayAppName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameMap.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.displayAppNameMap.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameSynonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameSynonymsMap.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.fallbackSpokenName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.fallbackSpokenName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spokenNameMap.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spotlightName.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spotlightName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spotlightNameMap.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appIntentsProtocolMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0) + 80);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0) + 80);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0) + 80);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.appNameSynonym.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = OUTLINED_FUNCTION_32_16();
  *(a1 + 88) = OUTLINED_FUNCTION_32_16();
  *(a1 + 96) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0);
  OUTLINED_FUNCTION_113_0();
  *(a1 + 104) = sub_1B964C7B0();
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = OUTLINED_FUNCTION_32_16();
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = OUTLINED_FUNCTION_32_16();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  OUTLINED_FUNCTION_113_0();
  *(a1 + 160) = sub_1B964C7B0();
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0) + 80);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B918437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F0AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.init(rawValue:)(unint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 3)
  {
    v2 = 4;
    v3 = 5;
    v4 = 6;
    v5 = 3;
    if (a2 != 4)
    {
      v5 = a2;
    }

    if (a2 != 32)
    {
      v4 = v5;
    }

    if (a2 != 16)
    {
      v3 = v4;
    }

    if (a2 != 8)
    {
      v2 = v3;
    }

    if (a2 == 64)
    {
      a2 = 7;
    }

    else
    {
      a2 = v2;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B969D628[result];
  }

  return result;
}

uint64_t sub_1B9184478@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91844AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F058();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9184554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F004();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9184634@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91846E4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9184794@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9184920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.showInAppStringSearchResultsMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_178(v1, 1, v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_6:
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
    return OUTLINED_FUNCTION_163_2(v12);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9184D18();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_32();
  return sub_1B9184FE4();
}

uint64_t sub_1B9184AF0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void (*Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.showInAppStringSearchResultsMetadata.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v0[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v0[3] = v10;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v0[4] = v11;
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_128();
      sub_1B9184FE4();
      return sub_1B9184CE8;
    }

    sub_1B9184D18();
  }

  *v10 = MEMORY[0x1E69E7CC0];
  v16 = v10 + *(v7 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B9184CE8;
}

uint64_t sub_1B9184D18()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.playVideoMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_178(v1, 1, v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_7_31();
      return sub_1B9184FE4();
    }

    sub_1B9184D18();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  return OUTLINED_FUNCTION_163_2(v13);
}

uint64_t sub_1B9184E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B918530C();
  return a7(v7);
}

uint64_t sub_1B9184F24()
{
  sub_1B8D9207C(v0, &qword_1EBAB99C8, &unk_1B96506F0);
  OUTLINED_FUNCTION_128();
  sub_1B9184FE4();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t sub_1B9184FE4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void (*Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.playVideoMetadata.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v0[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v0[3] = v10;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v0[4] = v11;
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    v16 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B91851B4;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9184D18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_128();
  sub_1B9184FE4();
  return sub_1B91851B4;
}

void sub_1B91851E4()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    v7 = (*v0)[3];
    sub_1B918530C();
    sub_1B8D9207C(v5, &qword_1EBAB99C8, &unk_1B96506F0);
    sub_1B9184FE4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_1B9184D18();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB99C8, &unk_1B96506F0);
    sub_1B9184FE4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t sub_1B918530C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B918537C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9185404()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  v1 = OUTLINED_FUNCTION_59_1(v35);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  v7 = OUTLINED_FUNCTION_59_1(v34);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_53_11();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(v10);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v34 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6A90, &unk_1B969B9D0);
  OUTLINED_FUNCTION_183(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_176();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v34 - v25;
  v27 = *(v24 + 56);
  sub_1B918530C();
  sub_1B918530C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_25();
    sub_1B918530C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_31();
      sub_1B9184FE4();
      if (sub_1B8D62F34(*v17, *v6))
      {
        v28 = *(v35 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_66();
        sub_1B8CD2A80(v29, v30);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_30_22();
      sub_1B9184D18();
LABEL_12:
      sub_1B9184D18();
      OUTLINED_FUNCTION_3_38();
      sub_1B9184D18();
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_25();
    sub_1B918530C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_32();
      sub_1B9184FE4();
      if (sub_1B8D62FDC(*v19, *v0))
      {
        v31 = *(v34 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_66();
        sub_1B8CD2A80(v32, v33);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_29_21();
      sub_1B9184D18();
      goto LABEL_12;
    }
  }

  sub_1B9184D18();
  sub_1B8D9207C(v26, &qword_1EBAC6A90, &unk_1B969B9D0);
LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9185970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D268();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9185A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D2BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  return OUTLINED_FUNCTION_163_2(v3);
}

uint64_t sub_1B9185BA4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9185C54@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9185C7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4478);
  __swift_project_value_buffer(v0, qword_1EBAB4478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B964EE90;
  v4 = v68 + v3 + v1[14];
  *(v68 + v3) = 0;
  *v4 = "SLICE_LABEL_UNKNOWN";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v68 + v3 + v2 + v1[14];
  *(v68 + v3 + v2) = 1;
  *v8 = "SLICE_LABEL_PLAYLIST";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v68 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SLICE_LABEL_FULL_NAME";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v68 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SLICE_LABEL_HOME_AUTOMATION_ACCESSORY_NAME";
  *(v12 + 1) = 42;
  v12[16] = 2;
  v7();
  v13 = (v68 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SLICE_LABEL_HOME_AUTOMATION_ROOM";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v7();
  v15 = (v68 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SLICE_LABEL_APP_NAME";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v68 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SLICE_LABEL_AMP_USERS_STATE";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v68 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SLICE_LABEL_PHONE";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v68 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SLICE_LABEL_EMAIL";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v68 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SLICE_LABEL_ADDRESS";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v68 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SLICE_LABEL_PERSON_PLACE";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v68 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SLICE_LABEL_FIRST_NAME";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v68 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SLICE_LABEL_MIDDLE_NAME";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v68 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SLICE_LABEL_LAST_NAME";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v68 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SLICE_LABEL_NICK_NAME";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  v35 = (v68 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SLICE_LABEL_COMPANY";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v68 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SLICE_LABEL_RELATIONSHIP";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v68 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "SLICE_LABEL_APP_PLAYLIST_TITLE";
  *(v40 + 1) = 30;
  v40[16] = 2;
  v7();
  v41 = (v68 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "SLICE_LABEL_APP_MUSIC_ARTIST";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v68 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "SLICE_LABEL_APP_AUDIO_BOOK_TITLE";
  *(v44 + 1) = 32;
  v44[16] = 2;
  v7();
  v45 = (v68 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "SLICE_LABEL_APP_AUDIO_BOOK_AUTHOR";
  *(v46 + 1) = 33;
  v46[16] = 2;
  v7();
  v47 = (v68 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SLICE_LABEL_APP_SHOW_TITLE";
  *(v48 + 1) = 26;
  v48[16] = 2;
  v7();
  v49 = (v68 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SLICE_LABEL_ME";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v68 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SLICE_LABEL_AUDIO_QUEUE_STATE";
  *(v52 + 1) = 29;
  v52[16] = 2;
  v7();
  v53 = (v68 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "SLICE_LABEL_ROUTE_INFO";
  *(v54 + 1) = 22;
  v54[16] = 2;
  v7();
  v55 = (v68 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SLICE_LABEL_PARKING_LOCATION";
  *(v56 + 1) = 28;
  v56[16] = 2;
  v7();
  v57 = (v68 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "SLICE_LABEL_HOME_AUTOMATION_SERVICE_GROUP";
  *(v58 + 1) = 41;
  v58[16] = 2;
  v7();
  v59 = (v68 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "SLICE_LABEL_HOME_AUTOMATION_SERVICE_NAME";
  *(v60 + 1) = 40;
  v60[16] = 2;
  v7();
  v61 = (v68 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "SLICE_LABEL_HOME_AUTOMATION_ZONE";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v68 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "SLICE_LABEL_FOREGROUND_APP_INFO";
  *(v64 + 1) = 31;
  v64[16] = 2;
  v7();
  v65 = (v68 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SLICE_LABEL_PREFERRED_MAP_APP_BUNDLE_ID";
  *(v66 + 1) = 39;
  v66[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9186540()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F40);
  __swift_project_value_buffer(v0, qword_1EBAB3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B966F8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VALUE_LABEL_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VALUE_LABEL_IS_CURRENTLY_PLAYING";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VALUE_LABEL_LAST_PLAYED_AT";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VALUE_LABEL_IDENTIFIER";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VALUE_LABEL_HASHED_ROUTE_UID";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VALUE_LABEL_HOME";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "VALUE_LABEL_ROOM_NAME";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "VALUE_LABEL_DEVICE_NAME";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "VALUE_LABEL_AMP_USER";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "VALUE_LABEL_APP_INFO";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "VALUE_LABEL_PERSON";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "VALUE_LABEL_AUDIO_QUEUE_STATE";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "VALUE_LABEL_ROUTE_INFO";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "VALUE_LABEL_PARKING_LOCATION";
  *(v34 + 1) = 28;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "VALUE_LABEL_SIRIKIT_APP_INFO";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9186A48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3BC8);
  __swift_project_value_buffer(v0, qword_1EBAB3BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RESOLUTION_STATE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RESOLUTION_STATE_RESOLVED";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RESOLUTION_STATE_FAILED";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9186C8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4798);
  __swift_project_value_buffer(v0, qword_1EBAB4798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_from_companion";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9186FA8();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9186F40();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9186FA8()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D92198(*v0, *(v2 + 8), 0) || (sub_1B918D16C(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0), sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v1))
    {
      if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ProfileSlice.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v0 + 8);
  if (!sub_1B8D92198(*v2, *(v1 + 8), *v0))
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = *(v0 + 16);
  sub_1B8D71E14();
  if ((v6 & 1) == 0 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  sub_1B8CD2A80(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91872D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CD0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9187354(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91873C4()
{
  sub_1B8CD2A80(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return sub_1B964C5D0();
}

uint64_t sub_1B918745C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4438);
  __swift_project_value_buffer(v0, qword_1EBAB4438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "state";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_post_resolution";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B918776C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B91877D4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9187888();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91877D4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0) + 32);
  sub_1B964C1C0();
  sub_1B8CD2A80(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_1B964C1C0();
  v10 = OUTLINED_FUNCTION_30_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  if (!*v0 || (v18 = *(v0 + 8), v25 = *v0, v26 = v18, sub_1B918D1C0(), OUTLINED_FUNCTION_17_15(), result = sub_1B964C680(), (v2 = v1) == 0))
  {
    v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
    v20 = *(v27 + 32);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBAB8F20, &qword_1B964D720);
    }

    else
    {
      (*(v12 + 32))(v17, v8, v9);
      OUTLINED_FUNCTION_28_16();
      sub_1B8CD2A80(v21, v22);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      v2 = v1;
      if (v1)
      {
        return (*(v12 + 8))(v17, v9);
      }

      (*(v12 + 8))(v17, v9);
    }

    if (!v0[2] || (v23 = *(v0 + 24), v25 = v0[2], v26 = v23, sub_1B918D214(), OUTLINED_FUNCTION_17_15(), result = sub_1B964C680(), (v2 = v1) == 0))
    {
      if (*(v0 + 25) != 1 || (result = sub_1B964C670(), !v2))
      {
        v24 = v0 + *(v27 + 28);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_ProfileSliceValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = sub_1B964C1C0();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_79();
  v22 = *(v0 + 8);
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_15;
  }

  v37 = v6;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  v23 = *(v36 + 32);
  v24 = *(v18 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v3);
  if (!v25)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v24, 1, v3);
    if (!v25)
    {
      v26 = v37;
      (*(v37 + 32))(v11, v2 + v24, v3);
      OUTLINED_FUNCTION_28_16();
      sub_1B8CD2A80(v27, v28);
      v29 = sub_1B964C850();
      v30 = *(v26 + 8);
      v31 = OUTLINED_FUNCTION_128();
      v30(v31);
      (v30)(v17, v3);
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    (*(v37 + 8))(v17, v3);
LABEL_10:
    sub_1B8D9207C(v2, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_178(v2 + v24, 1, v3);
  if (!v25)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_12:
  v32 = *(v0 + 24);
  if (sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16)) && *(v1 + 25) == *(v0 + 25))
  {
    v33 = *(v36 + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_66();
    sub_1B8CD2A80(v34, v35);
    sub_1B964C850();
  }

LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9187FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9188030(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91880A0()
{
  sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B9188138()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4EC8);
  __swift_project_value_buffer(v0, qword_1EBAB4EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "app_name";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundle_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "has_siri_integration";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "supported_intents";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "vocab_concepts";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_from_companion";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "display_app_name";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_name_map";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "display_app_name_map";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "app_name_synonyms";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "app_name_synonyms_map";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "fallback_spoken_name";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "spoken_name_map";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "spotlight_name";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "spotlight_name_map";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "app_intents_protocol_metadata";
  *(v37 + 1) = 29;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 7:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B91887C0();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B9188860();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B91888D8();
        break;
      case 11:
        OUTLINED_FUNCTION_9();
        sub_1B9188950();
        break;
      case 13:
        OUTLINED_FUNCTION_9();
        sub_1B9188A48();
        break;
      case 15:
        OUTLINED_FUNCTION_9();
        sub_1B9188AC0();
        break;
      case 16:
        OUTLINED_FUNCTION_9();
        sub_1B9188B38();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91887C0()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0);
  sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);
  return sub_1B964C570();
}

uint64_t sub_1B9188950()
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0);
  sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
  sub_1B8CD2A80(&qword_1EBAC6AB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
  return sub_1B964C3A0();
}

uint64_t sub_1B9188B38()
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
  sub_1B8CD2A80(&qword_1EBAC6AC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
    {
      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
        {
          if (!*(*(v2 + 48) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0), sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v1))
          {
            if (*(v2 + 56) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              v10 = *(v2 + 64);
              v11 = *(v2 + 72);
              OUTLINED_FUNCTION_1();
              if (!v12 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
              {
                if (!*(*(v2 + 80) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(), !v1))
                {
                  if (!*(*(v2 + 88) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(), !v1))
                  {
                    if (!*(*(v2 + 96) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
                    {
                      if (!*(*(v2 + 104) + 16) || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0), sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms), sub_1B8CD2A80(&qword_1EBAC6AB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v1))
                      {
                        v13 = *(v2 + 112);
                        v14 = *(v2 + 120);
                        OUTLINED_FUNCTION_1();
                        if (!v15 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
                        {
                          if (!*(*(v2 + 128) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(), !v1))
                          {
                            v16 = *(v2 + 136);
                            v17 = *(v2 + 144);
                            OUTLINED_FUNCTION_1();
                            if (!v18 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
                            {
                              if (!*(*(v2 + 152) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(), !v1))
                              {
                                if (!*(*(v2 + 160) + 16) || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0), sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata), sub_1B8CD2A80(&qword_1EBAC6AC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v1))
                                {
                                  v19 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0) + 80);
                                  return OUTLINED_FUNCTION_8_1();
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

uint64_t static Apple_Parsec_Siri_V2alpha_AppInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v1 + 40), *(v0 + 40)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 48);
  v8 = *(v0 + 48);
  sub_1B8D76B34();
  if ((v9 & 1) == 0 || *(v1 + 56) != *(v0 + 56))
  {
    return 0;
  }

  v10 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 80), *(v0 + 80));
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 88), *(v0 + 88));
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v1 + 96), *(v0 + 96)) & 1) == 0)
  {
    return 0;
  }

  v13 = *(v1 + 104);
  v14 = *(v0 + 104);
  sub_1B8DB0554();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 128), *(v0 + 128));
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 152), *(v0 + 152));
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = *(v1 + 160);
  v21 = *(v0 + 160);
  sub_1B8DB0914();
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0) + 80);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  sub_1B8CD2A80(v24, v25);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B918930C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918938C(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91893FC()
{
  sub_1B8CD2A80(&qword_1EBAC6C10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B918947C()
{
  result = MEMORY[0x1BFADC850](0xD000000000000017, 0x80000001B970B840);
  qword_1EBAC6970 = 0xD000000000000021;
  *algn_1EBAC6978 = 0x80000001B970B2D0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9189630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  sub_1B8CD2A80(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9189748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91897C8(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9189838()
{
  sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return sub_1B964C5D0();
}

uint64_t sub_1B91898D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5C58);
  __swift_project_value_buffer(v0, qword_1EBAB5C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "supported_intents";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_intent_media_categories";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_context";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_sirikit_video_apps";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  sub_1B8CD2A80(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9189DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9189E60(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9189ED0()
{
  sub_1B8CD2A80(&qword_1EBAC6C30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9189F50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6998);
  __swift_project_value_buffer(v0, qword_1EBAC6998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INTENT_TYPE_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTENT_TYPE_PLAY_MEDIA";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTENT_TYPE_SEARCH_MEDIA";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A17C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69B0);
  __swift_project_value_buffer(v0, qword_1EBAC69B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INTENT_MEDIA_CATEGORY_NONE";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTENT_MEDIA_CATEGORY_MUSIC";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTENT_MEDIA_CATEGORY_PODCASTS";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "INTENT_MEDIA_CATEGORY_AUDIOBOOKS";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "INTENT_MEDIA_CATEGORY_RADIO";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "INTENT_MEDIA_CATEGORY_GENERAL";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "INTENT_MEDIA_CATEGORY_VIDEO";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "INTENT_MEDIA_CATEGORY_SHORT_VIDEO";
  *(v22 + 1) = 33;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A4E8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69C8);
  __swift_project_value_buffer(v0, qword_1EBAC69C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "APP_CONTEXT_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "APP_CONTEXT_SEARCH_PAGE";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "APP_CONTEXT_FOREGROUND";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69E0);
  __swift_project_value_buffer(v0, qword_1EBAC69E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vocab_phrase";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "user_identification_needed";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v1 + 16), *(v0 + 16)) & 1) == 0 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  sub_1B8CD2A80(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B918ABE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918AC68(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918ACD8()
{
  sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return sub_1B964C5D0();
}

uint64_t sub_1B918AD70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69F8);
  __swift_project_value_buffer(v0, qword_1EBAC69F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "show_in_app_string_search_results_metadata";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "play_video_metadata";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B918B4C0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B918AFC8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B918AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6CF0, &qword_1B969D610);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    sub_1B9184FE4();
    sub_1B9184FE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9184D18();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC6CF0, &qword_1B969D610);
      sub_1B9184FE4();
      sub_1B9184FE4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC6CF0, &qword_1B969D610);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC6CF0, &qword_1B969D610);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC6CF0, &qword_1B969D610);
  }

  sub_1B9184FE4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC6CF0, &qword_1B969D610);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB99C8, &unk_1B96506F0);
  sub_1B9184FE4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B918B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6CF8, &unk_1B969D618);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    sub_1B9184FE4();
    sub_1B9184FE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC6CF8, &unk_1B969D618);
      sub_1B9184FE4();
      sub_1B9184FE4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9184D18();
    }
  }

  sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC6CF8, &unk_1B969D618);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC6CF8, &unk_1B969D618);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC6CF8, &unk_1B969D618);
  }

  sub_1B9184FE4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC6CF8, &unk_1B969D618);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB99C8, &unk_1B96506F0);
  sub_1B9184FE4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B918BD10(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B918BAFC(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_3_38();
  result = sub_1B9184D18();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B918BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9184FE4();
      sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);
      sub_1B964C740();
      return sub_1B9184D18();
    }

    result = sub_1B9184D18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B918BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9184FE4();
      sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);
      sub_1B964C740();
      return sub_1B9184D18();
    }

    result = sub_1B9184D18();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_468();
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v26 = OUTLINED_FUNCTION_686();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_79();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99D0, &qword_1B969B9E0);
  OUTLINED_FUNCTION_183(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &a9 - v37;
  v39 = *(v36 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  v40 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v40, v41, v22);
  if (v42)
  {
    OUTLINED_FUNCTION_178(&v38[v39], 1, v22);
    if (v42)
    {
      sub_1B8D9207C(v38, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_12:
      v45 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_66();
      sub_1B8CD2A80(v46, v47);
      OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

LABEL_9:
    sub_1B8D9207C(v38, &qword_1EBAB99D0, &qword_1B969B9E0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v38[v39], 1, v22);
  if (v42)
  {
    OUTLINED_FUNCTION_3_38();
    sub_1B9184D18();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_25();
  sub_1B9184FE4();
  static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata.== infix(_:_:)();
  v44 = v43;
  sub_1B9184D18();
  sub_1B9184D18();
  sub_1B8D9207C(v38, &qword_1EBAB99C8, &unk_1B96506F0);
  if (v44)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B918C218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918C298(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918C308()
{
  sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918C388()
{
  result = MEMORY[0x1BFADC850](0xD00000000000002BLL, 0x80000001B970B520);
  qword_1EBAC6A10 = 0xD000000000000033;
  *algn_1EBAC6A18 = 0x80000001B970B360;
  return result;
}

uint64_t sub_1B918C5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918C63C(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918C6AC()
{
  sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918C72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6A38);
  __swift_project_value_buffer(v0, qword_1EBAC6A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STRING_SEARCH_SCOPE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STRING_SEARCH_SCOPE_GENERAL";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STRING_SEARCH_SCOPE_MOVIES";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STRING_SEARCH_SCOPE_TV";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STRING_SEARCH_SCOPE_FREEFORM_VIDEO";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918C9D4()
{
  result = MEMORY[0x1BFADC850](0xD000000000000018, 0x80000001B970B440);
  qword_1EBAC6A50 = 0xD000000000000033;
  *algn_1EBAC6A58 = 0x80000001B970B360;
  return result;
}

uint64_t sub_1B918CAD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_113_0();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_1B918CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_614();
  if (!*(*v6 + 16) || (v9(), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C600(), !v7))
  {
    v11 = *(a6(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B918CCCC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2A80(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B918CD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6C90, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918CE14(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918CE84()
{
  sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918CF04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6A78);
  __swift_project_value_buffer(v0, qword_1EBAC6A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_CATEGORY_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_CATEGORY_MOVIES";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_CATEGORY_TV";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_CATEGORY_FREEFORM";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B918D16C()
{
  result = qword_1EBAB4468;
  if (!qword_1EBAB4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4468);
  }

  return result;
}

unint64_t sub_1B918D1C0()
{
  result = qword_1EBAB3F30;
  if (!qword_1EBAB3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3F30);
  }

  return result;
}

unint64_t sub_1B918D214()
{
  result = qword_1EBAB3BB8;
  if (!qword_1EBAB3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3BB8);
  }

  return result;
}

unint64_t sub_1B918D268()
{
  result = qword_1EBAC6AE8;
  if (!qword_1EBAC6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6AE8);
  }

  return result;
}

unint64_t sub_1B918D2BC()
{
  result = qword_1EBAC6AF8;
  if (!qword_1EBAC6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6AF8);
  }

  return result;
}

unint64_t sub_1B918D314()
{
  result = qword_1EBAB4460;
  if (!qword_1EBAB4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4460);
  }

  return result;
}

unint64_t sub_1B918D36C()
{
  result = qword_1EBAB4450;
  if (!qword_1EBAB4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4450);
  }

  return result;
}

unint64_t sub_1B918D3C4()
{
  result = qword_1EBAB4458;
  if (!qword_1EBAB4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4458);
  }

  return result;
}

unint64_t sub_1B918D44C()
{
  result = qword_1EBAB3F28;
  if (!qword_1EBAB3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3F28);
  }

  return result;
}

unint64_t sub_1B918D4A4()
{
  result = qword_1EBAB3F18;
  if (!qword_1EBAB3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3F18);
  }

  return result;
}

unint64_t sub_1B918D4FC()
{
  result = qword_1EBAB3F20;
  if (!qword_1EBAB3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3F20);
  }

  return result;
}

unint64_t sub_1B918D584()
{
  result = qword_1EBAB3BB0;
  if (!qword_1EBAB3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3BB0);
  }

  return result;
}

unint64_t sub_1B918D5DC()
{
  result = qword_1EBAB3BA0;
  if (!qword_1EBAB3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3BA0);
  }

  return result;
}

unint64_t sub_1B918D634()
{
  result = qword_1EBAB3BA8;
  if (!qword_1EBAB3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3BA8);
  }

  return result;
}

unint64_t sub_1B918D6BC()
{
  result = qword_1EBAC6B38;
  if (!qword_1EBAC6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B38);
  }

  return result;
}

unint64_t sub_1B918D714()
{
  result = qword_1EBAC6B40;
  if (!qword_1EBAC6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B40);
  }

  return result;
}

unint64_t sub_1B918D76C()
{
  result = qword_1EBAC6B48;
  if (!qword_1EBAC6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B48);
  }

  return result;
}

unint64_t sub_1B918D7C4()
{
  result = qword_1EBAC6B50;
  if (!qword_1EBAC6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B50);
  }

  return result;
}

unint64_t sub_1B918D81C()
{
  result = qword_1EBAC6B58;
  if (!qword_1EBAC6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B58);
  }

  return result;
}

unint64_t sub_1B918D874()
{
  result = qword_1EBAC6B60;
  if (!qword_1EBAC6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B60);
  }

  return result;
}

unint64_t sub_1B918D8CC()
{
  result = qword_1EBAC6B68;
  if (!qword_1EBAC6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B68);
  }

  return result;
}

unint64_t sub_1B918D924()
{
  result = qword_1EBAC6B70;
  if (!qword_1EBAC6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B70);
  }

  return result;
}

unint64_t sub_1B918D97C()
{
  result = qword_1EBAC6B78;
  if (!qword_1EBAC6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6B78);
  }

  return result;
}

unint64_t sub_1B918DA64()
{
  result = qword_1EBAC6BB0;
  if (!qword_1EBAC6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BB0);
  }

  return result;
}

unint64_t sub_1B918DABC()
{
  result = qword_1EBAC6BB8;
  if (!qword_1EBAC6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BB8);
  }

  return result;
}

unint64_t sub_1B918DB14()
{
  result = qword_1EBAC6BC0;
  if (!qword_1EBAC6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BC0);
  }

  return result;
}

unint64_t sub_1B918DB6C()
{
  result = qword_1EBAC6BC8;
  if (!qword_1EBAC6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BC8);
  }

  return result;
}

unint64_t sub_1B918DBC4()
{
  result = qword_1EBAC6BD0;
  if (!qword_1EBAC6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BD0);
  }

  return result;
}

unint64_t sub_1B918DC1C()
{
  result = qword_1EBAC6BD8;
  if (!qword_1EBAC6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6BD8);
  }

  return result;
}

void sub_1B918E748()
{
  sub_1B918E918(319, &qword_1ED9CF5E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918E83C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B918E918(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918E918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B918E9A4()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B918E918(319, &qword_1EBAB3B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, MEMORY[0x1E69E62F8]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1B901FE74();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1B918EB7C(319, &qword_1EBAB3B30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1B918EB7C(319, &qword_1EBAB3B20, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v1 = sub_1B964C2B0();
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

void sub_1B918EB7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C7C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B918EC1C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B918ECEC()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918EDB8()
{
  sub_1B918E918(319, &qword_1EBAB3D10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B918EE6C()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B918EF1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1B8DD7D14(319, a4);
  if (v4 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B918F004()
{
  result = qword_1EBAC6CD8;
  if (!qword_1EBAC6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6CD8);
  }

  return result;
}

unint64_t sub_1B918F058()
{
  result = qword_1EBAC6CE0;
  if (!qword_1EBAC6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6CE0);
  }

  return result;
}

unint64_t sub_1B918F0AC()
{
  result = qword_1EBAC6CE8;
  if (!qword_1EBAC6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6CE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return sub_1B964C7B0();
}

uint64_t OUTLINED_FUNCTION_74_12()
{

  return sub_1B964C5F0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v0) + 20);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.adamID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.adamID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.cardSections.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.marketplaceID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.marketplaceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(v2) + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(v0) + 36);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B918F870()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6D00);
  __swift_project_value_buffer(v0, qword_1EBAC6D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "results";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B918FA50();
    }
  }

  return result;
}

uint64_t sub_1B918FA50()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0);
  sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0), sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult), result = OUTLINED_FUNCTION_11_9(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppsClientComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B8D67E68();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_56();
  sub_1B9190718(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B918FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9190718(&qword_1EBAC6D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918FD50(uint64_t a1)
{
  v2 = sub_1B9190718(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918FDC0()
{
  sub_1B9190718(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B918FE5C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6D18);
  __swift_project_value_buffer(v0, qword_1EBAC6D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "adam_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "card_sections";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "marketplace_id";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91901AC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91901AC()
{
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B9190718(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (!*(v2[6] + 16) || (type metadata accessor for Searchfoundation_CardSection(0), sub_1B9190718(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection), result = OUTLINED_FUNCTION_11_9(), !v1))
        {
          v13 = v2[7];
          v14 = v2[8];
          OUTLINED_FUNCTION_1();
          if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v16 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppResult.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = a2[6];
  sub_1B8D684DC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_56();
  sub_1B9190718(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91904C4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B9190718(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91905A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9190718(&qword_1EBAC6D78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9190628(uint64_t a1)
{
  v2 = sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9190698()
{
  sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9190718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B91909C8()
{
  sub_1B9190B48(319, &qword_1ED9CF680, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9190A90()
{
  sub_1B9190B48(319, &qword_1EBAC6D70, type metadata accessor for Searchfoundation_CardSection);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9190B48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9190BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B527C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190CBC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioVerb.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9190D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC334();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190DE0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9190E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC388();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190EF4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9190F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC3DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191024@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioItemType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5228();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191154@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RequestedMediaType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91911A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B51D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191280@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioNoun.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91912B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5180();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91913AC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioActivity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioMood.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9191418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B512C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91914F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioMood.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B919152C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B50D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919160C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioGenre.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5084();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191720@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioModifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5030();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191850@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioReference.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4FDC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191974@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioDecade.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91919C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4F88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191AA4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioSort.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4F34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191BB8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioAttribute.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 3;
  v3 = 2;
  if (a2 == 10)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if (a2 != 20)
  {
    v3 = v4;
  }

  if (a2 != 30)
  {
    v2 = v3;
  }

  if (!a2)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.rawValue.getter()
{
  if (v0[8])
  {
    return 10 * *v0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9191C5C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4EE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191D8C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4E8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191EB0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioRadioType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageType.rawValue.getter()
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

uint64_t sub_1B9191F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B11E0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191FF0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB77B8 != -1)
    {
      OUTLINED_FUNCTION_141_9();
    }

    *(a1 + v11) = qword_1EBAC70B8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71A0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91A0110(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_200_4();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_53_12();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v11 + 20);
    if (qword_1EBAB77B8 != -1)
    {
      OUTLINED_FUNCTION_141_9();
    }

    *&v15[v19] = qword_1EBAC70B8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71A0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91924A8(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 25) = 0;
    v11 = a1 + *(v9 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71A8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91A0110(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_200_4();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  *(v1 + 25) = 0;
  v4 = v1 + *(v3 + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_53_12();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v15 = 0;
    v15[8] = 1;
    *(v15 + 3) = 0;
    *(v15 + 2) = 0;
    v15[24] = 1;
    *(v15 + 25) = 0;
    v19 = &v15[*(v11 + 44)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71A8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B919295C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91A79BC();
    v2(v3);
    sub_1B91A7A10();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B9192A30(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  OUTLINED_FUNCTION_53_12();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_119_0();
  sub_1B8F1B8B8();
  a4(0);
  v20 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v20, v21, v22);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_1B8D9207C(v16, v6, v4);
  return v24;
}

void sub_1B9192B2C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B91A0110(v17);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9192C44(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  v8 = *(v2 + v7);
}

void sub_1B9192C90(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.setter();
}

void sub_1B9192D04()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_313();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_216_1(v11);
  v13 = *(v1 + v2);
  if ((v12 & 1) == 0)
  {
    v14 = v8(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v16 = v6(v15);
    OUTLINED_FUNCTION_192_2(v16);
  }

  v17 = *v4;
  OUTLINED_FUNCTION_9_3();
  v18 = *(v13 + v17);
  *(v13 + v17) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9192E6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.appBundleID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.appBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9192FC8(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = (*(v2 + *(v5(v4) + 20)) + *a2);
  OUTLINED_FUNCTION_6_2();
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

void sub_1B9193024(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.setter();
}

void sub_1B91930AC()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  OUTLINED_FUNCTION_16();
  v11 = *(v10(0) + 20);
  v12 = *(v1 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = v8(0);
    OUTLINED_FUNCTION_57_0(v15);
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v14 = v6(v16);
    *(v9 + v11) = v14;
  }

  v17 = (v14 + *v4);
  OUTLINED_FUNCTION_18();
  v18 = v17[1];
  *v17 = v2;
  v17[1] = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9193228(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9193384(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91934E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter()
{
  OUTLINED_FUNCTION_53_12();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A0110(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  v10 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  result = OUTLINED_FUNCTION_9_3();
  *(v6 + v10) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9193740(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A0110(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v12) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  OUTLINED_FUNCTION_178(v1, 1, v9);
  if (v10)
  {
    *a1 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = v11;
    v12 = a1 + v9[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = v9[8];
    OUTLINED_FUNCTION_185_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = v9[9];
    type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    result = OUTLINED_FUNCTION_178(v1, 1, v9);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71B0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_9();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91A0110(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_46_9();
  OUTLINED_FUNCTION_200_4();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  v4 = a1 + v3[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[8];
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[9];
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_53_12();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v15 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v15[1] = MEMORY[0x1E69E7CC0];
    v15[2] = v19;
    v20 = v15 + v11[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v21 = v11[8];
    OUTLINED_FUNCTION_185_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v11[9];
    type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71B0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_9();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_172_3(MEMORY[0x1E69E7CC0]);
    v11 = a1 + *(v9 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71B8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91A0110(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_50_11();
  OUTLINED_FUNCTION_200_4();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_172_3(MEMORY[0x1E69E7CC0]);
  v2 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_53_12();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v15 = MEMORY[0x1E69E7CC0];
    v15[8] = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0xE000000000000000;
    v19 = &v15[*(v11 + 40)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71B8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91940A8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackQueueLocation.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackQueueLocation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackRepeatMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackRepeatMode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 0;
    v11 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71C0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_12();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_122_0();
  sub_1B91A7968();
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = MEMORY[0x1E69E7CC0];
    *(v10 + 4) = 0;
    v15 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC71C0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_12();
    OUTLINED_FUNCTION_461();
    sub_1B91A7968();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.hasClientRankingOverrides.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v7) + 32);
  OUTLINED_FUNCTION_188();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClientSignals.clearClientRankingOverrides()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.internalSignals.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v7);
  OUTLINED_FUNCTION_115(*(v8 + 36));
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71C8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_122_0();
  sub_1B91A7968();
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v15 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC71C8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_461();
    sub_1B91A7968();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9194C38()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91A79BC();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B91A7968();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1B91A7A10();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B91A7968();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.hasMusicRankingInfluenceImpactInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v7) + 36);
  OUTLINED_FUNCTION_188();
  v9 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClientSignals.clearMusicRankingInfluenceImpactInfo()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC71C8, "R#\v");
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9194F04()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9194F8C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91951E8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9195270()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.dynamiteClientStateErrors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.searchBoxString.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.searchBoxString.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_66_2(*(v2 + 16));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_71_2(*(v4 + 16));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91957C8()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 40);
  OUTLINED_FUNCTION_66_2(*(v2 + 32));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);
  OUTLINED_FUNCTION_71_2(*(v4 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9195950()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void sub_1B91959EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9195B54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9195C58(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_41_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91A7C90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

void sub_1B9195D04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 96) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9195F28(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_41_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91A7C90(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
  OUTLINED_FUNCTION_66_2(*(v2 + 104));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 104) = v1;
  *(v7 + 112) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_71_2(*(v4 + 104));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91960AC()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 104) = v2;
  *(v7 + 112) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void sub_1B9196148(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.attributes.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.attributes.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91963AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 160);
}

uint64_t sub_1B919650C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 160);
  *(v6 + 160) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196604(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_41_15();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B91A7C90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 160);
    *(v8 + 160) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
}

uint64_t sub_1B91966D0(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 168);
  *(v6 + 168) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91967C8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_41_15();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B91A7C90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 168);
    *(v8 + 168) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919689C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 184);
  *(v6 + 176) = v2;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91969A0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_41_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91A7C90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 184);
    *(v9 + 176) = v4;
    *(v9 + 184) = v3;
  }

  free(v1);
}

void sub_1B9196A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196B88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196CC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.showTitle.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.showTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9196E2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 248);
  *(v6 + 240) = v2;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 248);
  *(v1 + 48) = *(v0 + 240);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196F30(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_41_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91A7C90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 248);
    *(v9 + 240) = v4;
    *(v9 + 248) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9197008(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 264);
  *(v6 + 256) = v2;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 264);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919710C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_41_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91A7C90(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 264);
    *(v9 + 256) = v4;
    *(v9 + 264) = v3;
  }

  free(v1);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 280);
  OUTLINED_FUNCTION_66_2(*(v2 + 272));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 272) = v1;
  *(v7 + 280) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 280);
  OUTLINED_FUNCTION_71_2(*(v4 + 272));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91972A4()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 272) = v2;
  *(v7 + 280) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 288);
}

uint64_t sub_1B9197364(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 288);
  *(v6 + 288) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 288);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919745C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_41_15();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B91A7C90(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 288);
    *(v8 + 288) = v3;
  }

  free(v1);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 304);
  OUTLINED_FUNCTION_66_2(*(v2 + 296));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 296) = v1;
  *(v7 + 304) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 304);
  OUTLINED_FUNCTION_71_2(*(v4 + 296));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91975F0()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 296) = v2;
  *(v7 + 304) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 320);
  OUTLINED_FUNCTION_66_2(*(v2 + 312));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 312) = v1;
  *(v7 + 320) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 320);
  OUTLINED_FUNCTION_71_2(*(v4 + 312));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197778()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 312) = v2;
  *(v7 + 320) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 336);
  OUTLINED_FUNCTION_66_2(*(v2 + 328));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 328) = v1;
  *(v7 + 336) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 336);
  OUTLINED_FUNCTION_71_2(*(v4 + 328));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197900()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 328) = v2;
  *(v7 + 336) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

double Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 344);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91A7C90(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 344) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_29_22();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 344);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 344) = v2;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71D0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_115_6(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91A7C90(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_200_4();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0) + 52);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_29_22();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v15 = MEMORY[0x1E69E7CC0];
    v15[1] = v19;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v15[4] = 0;
    v15[5] = 0xE000000000000000;
    v15[6] = 0;
    v15[7] = 0xE000000000000000;
    v15[8] = 0;
    v15[9] = 0xE000000000000000;
    v15[10] = 0;
    *(v15 + 88) = 1;
    v15[12] = 0;
    *(v15 + 104) = 1;
    v15[14] = 0;
    *(v15 + 120) = 1;
    v20 = v15 + *(v11 + 52);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71D0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.hasHomeAutomationEntity.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_188();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}