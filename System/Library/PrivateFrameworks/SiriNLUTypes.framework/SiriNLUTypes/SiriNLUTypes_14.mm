void sub_1C88D61F0()
{
  sub_1C88D4250(319, &qword_1EDACA2C8, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACA2D0, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
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

void sub_1C88D63D4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
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

void sub_1C88D65A4()
{
  sub_1C88D6748(319, &qword_1EDACD3E0, &type metadata for Siri_Nlu_External_Span.MatcherName, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
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

void sub_1C88D6748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Span.MatcherName(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88D689C()
{
  sub_1C88D4250(319, &qword_1EDACD3D8, type metadata accessor for Siri_Nlu_External_Span, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACD768, type metadata accessor for Siri_Nlu_External_RewriteMessage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C88D69E8()
{
  sub_1C88D4250(319, qword_1EDACA9E8, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C88D4250(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C88D6BB4()
{
  sub_1C88D4250(319, qword_1EDACC490, type metadata accessor for Siri_Nlu_External_UserAccepted, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    sub_1C88D4250(319, qword_1EDACC3E0, type metadata accessor for Siri_Nlu_External_UserRejected, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      sub_1C88D4250(319, qword_1EDACC0F0, type metadata accessor for Siri_Nlu_External_UserCancelled, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        sub_1C88D4250(319, qword_1EDACACC8, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v25 = *(v6 - 8) + 64;
          sub_1C88D4250(319, qword_1EDACB170, type metadata accessor for Siri_Nlu_External_UserAcknowledged, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v26 = *(v8 - 8) + 64;
            sub_1C88D4250(319, qword_1EDACAAF8, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v27 = *(v10 - 8) + 64;
              sub_1C88D4250(319, qword_1EDACAE00, type metadata accessor for Siri_Nlu_External_UserWantedToPause, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v28 = *(v12 - 8) + 64;
                sub_1C88D4250(319, qword_1EDACA668, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v29 = *(v14 - 8) + 64;
                  sub_1C88D4250(319, qword_1EDACBA30, type metadata accessor for Siri_Nlu_External_UserStatedTask, MEMORY[0x1E69E6720]);
                  if (v17 <= 0x3F)
                  {
                    v30 = *(v16 - 8) + 64;
                    sub_1C88D4250(319, qword_1EDACB0D0, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, MEMORY[0x1E69E6720]);
                    if (v19 <= 0x3F)
                    {
                      v31 = *(v18 - 8) + 64;
                      sub_1C88D4250(319, &qword_1EDACAC38, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, MEMORY[0x1E69E6720]);
                      if (v21 <= 0x3F)
                      {
                        v32 = *(v20 - 8) + 64;
                        swift_updateClassMetadata2();
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

void sub_1C88D70B0()
{
  sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_1C88D4250(319, qword_1EDACBAF8, type metadata accessor for Siri_Nlu_External_SystemPrompted, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_1C88D4250(319, qword_1EDACC190, type metadata accessor for Siri_Nlu_External_SystemOffered, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_1C88D4250(319, qword_1EDACAEA0, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_1C88D4250(319, qword_1EDACBB98, type metadata accessor for Siri_Nlu_External_SystemInformed, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_1C88D4250(319, qword_1EDACA718, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_1C88D4250(319, qword_1EDACA7B8, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C88D7468()
{
  sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C88D7598()
{
  sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C88D4250(319, &qword_1EDACD400, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1C88D4250(319, qword_1EDACAFD0, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C88D4250(319, qword_1EDACC6D0, type metadata accessor for Siri_Nlu_External_RRMetadata, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1)
{
  *(v3 - 120) = a1;
  v5 = *(a1 + 20);
  v6 = *(v1 + 56);
  *(v3 - 88) = v2;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 - 104) = v1;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_149_2()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_155_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_200_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_231_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = *(v4 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_240_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_241_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_242_1()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_265_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = *(v4 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_290_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_291_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_306_0()
{
  v2 = *(v0 - 136);

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_307_0()
{
  v2 = *(v0 - 104);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_308_0()
{
  v2 = *(v0 - 120);

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_309_0()
{
  v2 = *(v0 - 128);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_374(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_375(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_388()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_394()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_395()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_397()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_398()
{
  v2 = *(v0 + 56);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_406()
{
  v2 = *v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_412@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = a1;
  v2[2] = a1;
  v2[3] = a1;
  v2[4] = a1;
  v4 = v2 + *(v1 + 36);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_417_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_419()
{
  result = type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_420()
{
  result = type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_421()
{
  result = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_422()
{
  result = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_429(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Siri_Nlu_External_SystemDialogAct(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_463@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v4 = v2 + *(v1 + 20);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_474()
{

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_475()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_479()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_481()
{
  result = **(v1 - 88);
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_503()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_507(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_529()
{

  return sub_1C8BD4C6C();
}

uint64_t OUTLINED_FUNCTION_530()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_531()
{
}

uint64_t OUTLINED_FUNCTION_532_0()
{
  v3 = *(v1 + v0);
}

uint64_t sub_1C88D880C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v487 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6960, &qword_1C8BE8DB8);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v461 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C0, &qword_1C8BF48A0);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v469 = v15;
  OUTLINED_FUNCTION_86();
  v470 = sub_1C8BD43FC();
  v16 = OUTLINED_FUNCTION_13_1(v470);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v462 = v21;
  v22 = OUTLINED_FUNCTION_86();
  v486 = type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo(v22);
  v23 = OUTLINED_FUNCTION_21(v486);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v485 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C8, &qword_1C8BF48A8);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v482 = v31;
  OUTLINED_FUNCTION_86();
  v484 = sub_1C8BD442C();
  v32 = OUTLINED_FUNCTION_13_1(v484);
  v477 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  v476 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6958, &qword_1C8BE8DB0);
  OUTLINED_FUNCTION_80(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v461 - v41;
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  v43 = OUTLINED_FUNCTION_21(matched);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  v481 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D0, &unk_1C8BF48B0);
  OUTLINED_FUNCTION_80(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_81();
  v478 = v51;
  OUTLINED_FUNCTION_86();
  v480 = sub_1C8BD47BC();
  v52 = OUTLINED_FUNCTION_13_1(v480);
  v468 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  v479 = v56;
  v57 = OUTLINED_FUNCTION_86();
  v58 = type metadata accessor for Siri_Nlu_External_AsrAlternative(v57);
  v59 = OUTLINED_FUNCTION_13_1(v58);
  v505 = v60;
  v506 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_10_0();
  v504 = v63;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_96();
  v518 = v65;
  OUTLINED_FUNCTION_86();
  v517 = sub_1C8BD432C();
  v66 = OUTLINED_FUNCTION_13_1(v517);
  v508 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  v516 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v72 = OUTLINED_FUNCTION_80(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_10_0();
  v503 = v75;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_96();
  v489 = v77;
  OUTLINED_FUNCTION_86();
  v522 = sub_1C8BD483C();
  v78 = OUTLINED_FUNCTION_13_1(v522);
  v483 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_10_0();
  v490 = v82;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_96();
  v502 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
  OUTLINED_FUNCTION_80(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_81();
  v501 = v89;
  OUTLINED_FUNCTION_86();
  v511 = sub_1C8BD487C();
  v90 = OUTLINED_FUNCTION_13_1(v511);
  v473 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_0();
  v488 = v94;
  v95 = OUTLINED_FUNCTION_86();
  v96 = type metadata accessor for Siri_Nlu_External_SpanProperty(v95);
  v97 = OUTLINED_FUNCTION_13_1(v96);
  v499 = v98;
  v500 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_9_0();
  v519 = v101;
  OUTLINED_FUNCTION_86();
  v515 = sub_1C8BD40AC();
  v102 = OUTLINED_FUNCTION_13_1(v515);
  v507 = v103;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_9_0();
  v523 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v108 = OUTLINED_FUNCTION_80(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_10_0();
  v467 = v111;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_123();
  v495 = v113;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_96();
  v466 = v115;
  OUTLINED_FUNCTION_86();
  v513 = sub_1C8BD499C();
  v116 = OUTLINED_FUNCTION_13_1(v513);
  v510 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_10_0();
  v492 = v120;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_96();
  v475 = v122;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D8, &qword_1C8BF9FE0);
  OUTLINED_FUNCTION_80(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_81();
  v493 = v127;
  OUTLINED_FUNCTION_86();
  v496 = sub_1C8BD40EC();
  v128 = OUTLINED_FUNCTION_13_1(v496);
  v494 = v129;
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_9_0();
  v474 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v134 = OUTLINED_FUNCTION_80(v133);
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_10_0();
  v498 = v137;
  OUTLINED_FUNCTION_83_0();
  v139 = MEMORY[0x1EEE9AC00](v138);
  v141 = &v461 - v140;
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_123();
  v472 = v142;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_123();
  v512 = v144;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v145);
  v147 = &v461 - v146;
  v509 = sub_1C8BD493C();
  v148 = OUTLINED_FUNCTION_13_1(v509);
  v514 = v149;
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_10_0();
  v491 = v152;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_123();
  v471 = v154;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_123();
  v497 = v156;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_96();
  v159 = v158;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v160 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0) + 20);
  if (qword_1EDACBD08 != -1)
  {
    swift_once();
  }

  result = qword_1EDACBD10;
  v520 = v160;
  *(a3 + v160) = qword_1EDACBD10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_125;
  }

  if (HIDWORD(a2))
  {
LABEL_125:
    __break(1u);
    return result;
  }

  v461 = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v163 = a3;
  v164 = v520;
  v165 = *(a3 + v520);
  v521 = v163;
  v463 = v42;
  v464 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v166 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v166);
    swift_allocObject();
    OUTLINED_FUNCTION_56_4();
    v165 = v167;
    *(v163 + v164) = v167;
  }

  v168 = v519;
  OUTLINED_FUNCTION_37_0();
  *(v165 + 16) = a2;
  *(v165 + 20) = 0;
  sub_1C8BD412C();
  if (v169)
  {
    OUTLINED_FUNCTION_277();
    sub_1C8778810();
    v170 = v509;
    OUTLINED_FUNCTION_76(v147, 1, v509);
    if (v439)
    {
      sub_1C8BD492C();
      OUTLINED_FUNCTION_76(v147, 1, v170);
      v174 = v520;
      v173 = v521;
      if (!v439)
      {
        sub_1C8778ED8(v147, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v172(v159, v147, v170);
      v174 = v520;
      v173 = v521;
    }

    sub_1C8BD491C();
    v175 = *(v173 + v174);
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v173;
    v165 = *(v173 + v174);
    if ((v176 & 1) == 0)
    {
      v178 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v178);
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v165 = v179;
      *(v177 + v174) = v179;
    }

    v171 = v509;
    OUTLINED_FUNCTION_41_7();
    v180 = OUTLINED_FUNCTION_253();
    v181(v180);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v182, v183, v184, v171);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v174 = v520;
    v171 = v509;
  }

  v185 = v493;
  sub_1C8BD414C();
  v186 = v185;
  v187 = v185;
  v188 = v496;
  OUTLINED_FUNCTION_76(v187, 1, v496);
  v189 = v494;
  if (v439)
  {
    v190 = v141;
    sub_1C8778ED8(v186, &qword_1EC2B87D8, &qword_1C8BF9FE0);
  }

  else
  {
    v191 = v186;
    v192 = v474;
    v494[4](v474, v191, v188);
    v193 = sub_1C8BD40DC();
    Siri_Nlu_External_UsoEntitySpan.SpanSource.init(rawValue:)(v193);
    v194 = v524;
    if (v524 == 7)
    {
      v195 = v189;
      v190 = v141;
      (v195[1])(v192, v188);
    }

    else
    {
      v196 = v521;
      v197 = *(v521 + v174);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (v189[1])(v474, v188);
        v165 = *(v196 + v174);
      }

      else
      {
        v198 = *(v196 + v174);
        v199 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2(v199);
        swift_allocObject();

        sub_1C8817220();
        v200 = v196;
        v165 = v201;
        (v189[1])(v474, v496);

        *(v200 + v174) = v165;
      }

      v190 = v141;
      v202 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
      OUTLINED_FUNCTION_37_0();
      *(v165 + v202) = v194;
    }
  }

  sub_1C8BD416C();
  if (v203)
  {
    OUTLINED_FUNCTION_277();
    v204 = v472;
    sub_1C8778810();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_76(v205, v206, v207);
    if (v439)
    {
      sub_1C8BD492C();
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_76(v208, v209, v210);
      v213 = v521;
      if (!v439)
      {
        sub_1C8778ED8(v204, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v212(v497, v204, v171);
      v213 = v521;
    }

    sub_1C8BD491C();
    v214 = *(v213 + v174);
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v216 = v213;
    v165 = *(v213 + v174);
    if ((v215 & 1) == 0)
    {
      v217 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v217);
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v165 = v218;
      *(v216 + v174) = v218;
    }

    v211 = v190;
    OUTLINED_FUNCTION_41_7();
    v219(v512, v497, v171);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v171);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v211 = v190;
  }

  if ((sub_1C8BD410C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_277();
    v223 = v466;
    sub_1C8778810();
    v224 = OUTLINED_FUNCTION_213();
    v225 = v513;
    OUTLINED_FUNCTION_76(v224, v226, v513);
    if (v439)
    {
      sub_1C8BD486C();
      v227 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_76(v227, v228, v225);
      v229 = v521;
      if (!v439)
      {
        sub_1C8778ED8(v223, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      (*(v510 + 32))(v475, v223, v225);
      v229 = v521;
    }

    sub_1C8BD485C();
    v230 = *(v229 + v174);
    v231 = swift_isUniquelyReferenced_nonNull_native();
    v165 = *(v229 + v174);
    if ((v231 & 1) == 0)
    {
      v232 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v232);
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v165 = v233;
      *(v229 + v174) = v233;
    }

    v234 = v513;
    (*(v510 + 32))(v495, v475, v513);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v234);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  if ((sub_1C8BD417C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_277();
    v238 = v467;
    sub_1C8778810();
    v239 = OUTLINED_FUNCTION_213();
    v240 = v513;
    OUTLINED_FUNCTION_76(v239, v241, v513);
    if (v439)
    {
      sub_1C8BD486C();
      v242 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_76(v242, v243, v240);
      v244 = v521;
      if (!v439)
      {
        sub_1C8778ED8(v238, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      (*(v510 + 32))(v492, v238, v240);
      v244 = v521;
    }

    sub_1C8BD485C();
    v245 = *(v244 + v174);
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v165 = *(v244 + v174);
    if ((v246 & 1) == 0)
    {
      v247 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v247);
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v165 = v248;
      *(v244 + v174) = v248;
    }

    v249 = v513;
    (*(v510 + 32))(v495, v492, v513);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v250, v251, v252, v249);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  sub_1C8BD40BC();
  if (v253)
  {
    OUTLINED_FUNCTION_277();
    sub_1C8778810();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_76(v254, v255, v256);
    if (v439)
    {
      v261 = v471;
      sub_1C8BD492C();
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_76(v257, v258, v259);
      v263 = v521;
      if (!v439)
      {
        sub_1C8778ED8(v211, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v261 = v471;
      v262(v471, v211, v171);
      v263 = v521;
    }

    sub_1C8BD491C();
    v264 = *(v263 + v174);
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v266 = v263;
    v165 = *(v263 + v174);
    if ((v265 & 1) == 0)
    {
      v267 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v267);
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v165 = v268;
      *(v266 + v174) = v268;
    }

    v260 = v511;
    v269 = v512;
    OUTLINED_FUNCTION_41_7();
    v270(v269, v261, v171);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v271, v272, v273, v171);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v260 = v511;
  }

  if (*(sub_1C8BD40FC() + 16))
  {
    v497 = *(v507 + 16);
    v274 = *(v507 + 80);
    OUTLINED_FUNCTION_32();
    v475 = v276;
    v278 = v276 + v277;
    v493 = (v473 + 32);
    v494 = (v514 + 32);
    v280 = *(v279 + 56);
    v492 = (v483 + 32);
    v507 = v279;
    v495 = (v279 - 8);
    v496 = v280;
    do
    {
      v513 = v275;
      v514 = v165;
      v512 = v278;
      v497(v523);
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v281 = v500;
      v282 = (v168 + v500[5]);
      *v282 = 0;
      v282[1] = 0;
      v283 = v281[6];
      OUTLINED_FUNCTION_5();
      v284 = v168;
      v285 = v509;
      __swift_storeEnumTagSinglePayload(v286, v287, v288, v509);
      v289 = v281[7];
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v290, v291, v292, v260);
      v293 = v281[8];
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v294, v295, v296, v522);
      *v282 = sub_1C8BD408C();
      v282[1] = v297;
      v298 = v498;
      sub_1C8BD406C();
      if (v299)
      {
        v510 = v293;
        sub_1C8778810();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_76(v300, v301, v302);
        if (v439)
        {
          v305 = v491;
          sub_1C8BD492C();
          v303 = OUTLINED_FUNCTION_213();
          OUTLINED_FUNCTION_76(v303, v304, v285);
          if (!v439)
          {
            sub_1C8778ED8(v298, &qword_1EC2B6110, &qword_1C8BF5070);
          }
        }

        else
        {
          v305 = v491;
          (*v494)(v491, v298, v285);
        }

        sub_1C8BD491C();
        sub_1C8778ED8(v284 + v283, &qword_1EC2B6110, &qword_1C8BF5070);
        (*v494)(v284 + v283, v305, v285);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v306, v307, v308, v285);
        v293 = v510;
      }

      v309 = sub_1C8BD409C();
      v310 = v501;
      v311 = v502;
      v312 = v514;
      if ((v309 & 0x100000000) == 0)
      {
        v313 = v488;
        sub_1C8778810();
        v314 = OUTLINED_FUNCTION_109();
        v315 = v511;
        OUTLINED_FUNCTION_76(v314, v316, v511);
        if (v439)
        {
          sub_1C8BD486C();
          v317 = OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_76(v317, v318, v315);
          if (!v439)
          {
            sub_1C8778ED8(v310, &qword_1EC2B6968, &unk_1C8BE8DC0);
          }
        }

        else
        {
          (*v493)(v313, v310, v315);
        }

        sub_1C8BD485C();
        v319 = v519;
        sub_1C8778ED8(v519 + v289, &qword_1EC2B6968, &unk_1C8BE8DC0);
        (*v493)(v319 + v289, v313, v315);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v320, v321, v322, v315);
      }

      v323 = sub_1C8BD405C();
      v168 = v519;
      if ((v323 & 0x100000000) == 0)
      {
        v324 = v489;
        sub_1C8778810();
        v325 = v522;
        OUTLINED_FUNCTION_76(v324, 1, v522);
        if (v439)
        {
          sub_1C8BD482C();
          OUTLINED_FUNCTION_76(v324, 1, v325);
          if (!v439)
          {
            sub_1C8778ED8(v324, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          (*v492)(v311, v324, v325);
        }

        sub_1C8BD481C();
        sub_1C8778ED8(v168 + v293, &qword_1EC2B6198, &unk_1C8BE6E30);
        (*v492)(v168 + v293, v311, v325);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v326, v327, v328, v325);
      }

      (*v495)(v523, v515);
      v329 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_277();
      v330 = *(v312 + v329);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v344 = *(v330 + 16);
        v345 = OUTLINED_FUNCTION_13_0();
        v330 = sub_1C878F458(v345, v346, v347, v330, &qword_1EC2B9098, &qword_1C8BF9FF8, v348, v349);
      }

      v332 = v520;
      v331 = v521;
      v260 = v511;
      v334 = *(v330 + 16);
      v333 = *(v330 + 24);
      if (v334 >= v333 >> 1)
      {
        OUTLINED_FUNCTION_38_7(v333);
        OUTLINED_FUNCTION_40_5();
        v330 = sub_1C878F458(v350, v351, v352, v330, &qword_1EC2B9098, &qword_1C8BF9FF8, v353, v354);
      }

      *(v330 + 16) = v334 + 1;
      OUTLINED_FUNCTION_17_3();
      v336 = *(v335 + 72);
      sub_1C8790158();
      v337 = *(v331 + v332);
      v338 = swift_isUniquelyReferenced_nonNull_native();
      v339 = v331;
      v165 = *(v331 + v332);
      if ((v338 & 1) == 0)
      {
        v340 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2(v340);
        swift_allocObject();
        OUTLINED_FUNCTION_56_4();
        v165 = v341;
        *(v339 + v332) = v341;
      }

      v342 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_37_0();
      v343 = *(v165 + v342);
      *(v165 + v342) = v330;

      v278 = v512 + v496;
      v275 = v513 - 1;
    }

    while (v513 != 1);
  }

  v355 = *(sub_1C8BD413C() + 16);
  if (v355)
  {
    v356 = *(v508 + 16);
    v357 = *(v508 + 80);
    OUTLINED_FUNCTION_32();
    v360 = v358 + v359;
    v519 = (v483 + 32);
    v362 = *(v361 + 56);
    v508 = v361;
    v523 = (v361 - 8);
    v515 = v356;
    v513 = v358;
    v514 = v362;
    do
    {
      v356(v516, v360, v517);
      v363 = v504;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v364 = v506;
      v365 = (v363 + *(v506 + 20));
      *v365 = 0;
      v365[1] = 0;
      v366 = *(v364 + 24);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v367, v368, v369, v522);
      *v365 = sub_1C8BD431C();
      v365[1] = v370;
      v371 = v363;
      v372 = sub_1C8BD42FC();
      v373 = v503;
      if ((v372 & 0x100000000) == 0)
      {
        sub_1C8778810();
        v374 = v522;
        OUTLINED_FUNCTION_76(v373, 1, v522);
        if (v439)
        {
          v378 = v490;
          sub_1C8BD482C();
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_76(v375, v376, v377);
          if (!v439)
          {
            sub_1C8778ED8(v373, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          v378 = v490;
          (*v519)(v490, v373, v374);
        }

        sub_1C8BD481C();
        sub_1C8778ED8(v371 + v366, &qword_1EC2B6198, &unk_1C8BE6E30);
        (*v519)(v371 + v366, v378, v374);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v379, v380, v381, v374);
        v362 = v514;
        v356 = v515;
      }

      OUTLINED_FUNCTION_31_6();
      sub_1C8790158();
      v382 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
      OUTLINED_FUNCTION_277();
      v383 = *(v165 + v382);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v397 = *(v383 + 16);
        v398 = OUTLINED_FUNCTION_13_0();
        v383 = sub_1C878F458(v398, v399, v400, v383, &qword_1EC2B9090, &qword_1C8BF9FF0, v401, v402);
      }

      v385 = v520;
      v384 = v521;
      v387 = *(v383 + 16);
      v386 = *(v383 + 24);
      if (v387 >= v386 >> 1)
      {
        OUTLINED_FUNCTION_38_7(v386);
        OUTLINED_FUNCTION_40_5();
        v383 = sub_1C878F458(v403, v404, v405, v383, &qword_1EC2B9090, &qword_1C8BF9FF0, v406, v407);
      }

      *(v383 + 16) = v387 + 1;
      OUTLINED_FUNCTION_17_3();
      v389 = *(v388 + 72);
      OUTLINED_FUNCTION_31_6();
      sub_1C8790158();
      v390 = *(v384 + v385);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*v523)(v516, v517);
        v165 = *(v384 + v385);
      }

      else
      {
        v391 = *(v384 + v385);
        v392 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2(v392);
        swift_allocObject();

        sub_1C8817220();
        v393 = v384;
        v165 = v394;
        (*v523)(v516, v517);

        *(v393 + v385) = v165;
      }

      v395 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
      OUTLINED_FUNCTION_37_0();
      v396 = *(v165 + v395);
      *(v165 + v395) = v383;

      v360 += v362;
      --v355;
    }

    while (v355);
  }

  v408 = v478;
  sub_1C8BD418C();
  v409 = v408;
  v410 = v480;
  OUTLINED_FUNCTION_76(v408, 1, v480);
  v411 = v521;
  v412 = v485;
  v413 = v486;
  v414 = v484;
  v415 = v482;
  v416 = v479;
  if (v439)
  {
    sub_1C8778ED8(v409, &qword_1EC2B87D0, &unk_1C8BF48B0);
  }

  else
  {
    v417 = v409;
    v418 = v468;
    (*(v468 + 32))(v479, v417, v410);
    sub_1C88DA6F0(v481);
    v419 = v520;
    v420 = *(v411 + v520);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v418 + 8))(v416, v410);
      v422 = *(v411 + v419);
    }

    else
    {
      v423 = v411;
      v424 = *(v411 + v419);
      v425 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v425);
      swift_allocObject();
      v426 = v416;
      v427 = v418;

      sub_1C8817220();
      v429 = v428;
      v412 = v485;
      (*(v427 + 8))(v426, v410);

      *(v423 + v419) = v429;
      v414 = v484;
    }

    v430 = matched;
    sub_1C8790158();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v431, v432, v433, v430);
    OUTLINED_FUNCTION_64_6();
    sub_1C8786514();
    swift_endAccess();
    v413 = v486;
  }

  sub_1C8BD415C();
  OUTLINED_FUNCTION_76(v415, 1, v414);
  if (v439)
  {
    return sub_1C8778ED8(v415, &qword_1EC2B87C8, &qword_1C8BF48A8);
  }

  (*(v477 + 32))(v476, v415, v414);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v434 = *(v413 + 20);
  *(v412 + v434) = 2;
  v435 = v469;
  sub_1C8BD441C();
  v436 = OUTLINED_FUNCTION_109();
  v437 = v470;
  OUTLINED_FUNCTION_76(v436, v438, v470);
  if (v439)
  {
    sub_1C8778ED8(v435, &qword_1EC2B87C0, &qword_1C8BF48A0);
    v440 = v520;
  }

  else
  {
    v441 = v412;
    v442 = v461;
    v443 = v462;
    (*(v461 + 32))(v462, v435, v437);
    v444 = v437;
    v445 = sub_1C8BD43EC();
    (*(v442 + 8))(v443, v444);
    if (!v445)
    {
      v447 = 0;
      v440 = v520;
      v446 = v441;
      goto LABEL_119;
    }

    v440 = v520;
    v446 = v441;
    if (v445 == 1)
    {
      v447 = 1;
LABEL_119:
      *(v446 + v434) = v447;
    }
  }

  v448 = v521;
  v449 = *(v521 + v440);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    (*(v477 + 8))(v476, v414);
    v450 = *(v448 + v440);
  }

  else
  {
    v451 = v414;
    v452 = v448;
    v453 = *(v448 + v440);
    v454 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v454);
    swift_allocObject();

    sub_1C8817220();
    v456 = v455;
    (*(v477 + 8))(v476, v451);

    *(v452 + v440) = v456;
  }

  sub_1C8790158();
  OUTLINED_FUNCTION_13_15();
  __swift_storeEnumTagSinglePayload(v457, v458, v459, v460);
  OUTLINED_FUNCTION_64_6();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C88DA6F0@<X0>(char **a1@<X8>)
{
  v103 = sub_1C8BD47AC();
  v2 = OUTLINED_FUNCTION_13_1(v103);
  v101 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v8 = v7 - v6;
  v9 = sub_1C8BD499C();
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v100 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v16 = v15 - v14;
  v17 = sub_1C8BD483C();
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v92 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v24 = v23 - v22;
  *a1 = MEMORY[0x1E69E7CC0];
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  v26 = a1 + matched[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v27 = (a1 + matched[6]);
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = matched[7];
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v17);
  v93 = matched[8];
  OUTLINED_FUNCTION_17_11(v93);
  v94 = matched[9];
  OUTLINED_FUNCTION_17_11(v94);
  v95 = matched[10];
  OUTLINED_FUNCTION_17_11(v95);
  v96 = matched[11];
  OUTLINED_FUNCTION_17_11(v96);
  v97 = matched[12];
  OUTLINED_FUNCTION_17_11(v97);
  v98 = matched[13];
  OUTLINED_FUNCTION_17_11(v98);
  v102 = a1;
  v99 = matched[14];
  OUTLINED_FUNCTION_17_11(v99);
  *v27 = sub_1C8BD473C();
  *(v27 + 4) = 0;
  if ((sub_1C8BD46DC() & 0x100000000) == 0)
  {
    v27 = a1;
    Siri_Nlu_External_MatchInfo.matchScore.getter();
    sub_1C8BD481C();
    sub_1C8778ED8(a1 + v28, &qword_1EC2B6198, &unk_1C8BE6E30);
    (*(v92 + 32))(a1 + v28, v24, v17);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v17);
  }

  if ((sub_1C8BD470C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxTokenCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v93, &qword_1EC2B6948, &unk_1C8BF9F90);
    v35 = OUTLINED_FUNCTION_6_14();
    v36(v35);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }

  if ((sub_1C8BD476C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedTokenCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v94, &qword_1EC2B6948, &unk_1C8BF9F90);
    v41 = OUTLINED_FUNCTION_6_14();
    v42(v41);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  }

  if ((sub_1C8BD471C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxStopWordCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v95, &qword_1EC2B6948, &unk_1C8BF9F90);
    v47 = OUTLINED_FUNCTION_6_14();
    v48(v47);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  }

  if ((sub_1C8BD477C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v96, &qword_1EC2B6948, &unk_1C8BF9F90);
    v53 = OUTLINED_FUNCTION_6_14();
    v54(v53);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  }

  if ((sub_1C8BD46EC() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.editDistance.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v97, &qword_1EC2B6948, &unk_1C8BF9F90);
    v59 = OUTLINED_FUNCTION_6_14();
    v60(v59);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }

  if ((sub_1C8BD46FC() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxAliasCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v98, &qword_1EC2B6948, &unk_1C8BF9F90);
    v65 = OUTLINED_FUNCTION_6_14();
    v66(v65);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  }

  if ((sub_1C8BD474C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedAliasCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v27 + v99, &qword_1EC2B6948, &unk_1C8BF9F90);
    (*(v100 + 32))(v27 + v99, v16, v9);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  }

  v75 = *(sub_1C8BD475C() + 16);
  if (v75)
  {
    v76 = *(v101 + 16);
    v77 = *(v101 + 80);
    OUTLINED_FUNCTION_32();
    v80 = v78 + v79;
    v81 = *(v101 + 72);
    v82 = MEMORY[0x1E69E7CC0];
    do
    {
      v76(v8, v80, v103);
      v83 = sub_1C8BD40DC();
      (*(v101 + 8))(v8, v103);
      if (v83 <= 0xB)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = *(v82 + 2);
          v87 = OUTLINED_FUNCTION_13_0();
          v82 = sub_1C88DB244(v87, v88, v89, v82);
        }

        v85 = *(v82 + 2);
        v84 = *(v82 + 3);
        if (v85 >= v84 >> 1)
        {
          v90 = OUTLINED_FUNCTION_38_7(v84);
          v82 = sub_1C88DB244(v90, v85 + 1, 1, v82);
        }

        *(v82 + 2) = v85 + 1;
        v82[v85 + 32] = v83;
        *v102 = v82;
      }

      v80 += v81;
      --v75;
    }

    while (v75);
  }
}

id static UsoGraphProtoWriter.toObjCProtobuf(graph:vocabManager:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)(a1, a2, v10 - v9);
  if (v2)
  {
    return v11;
  }

  sub_1C888D5F4();
  sub_1C8BD4CCC();
  OUTLINED_FUNCTION_11_14();
  sub_1C878F564(v11, v12);
  v14 = objc_allocWithZone(SIRINLUEXTERNALUsoGraph);
  v15 = OUTLINED_FUNCTION_253();
  sub_1C87A8FBC(v15, v16);
  v17 = OUTLINED_FUNCTION_253();
  result = sub_1C88DADDC(v17, v18);
  if (result)
  {
    v11 = result;
    v19 = OUTLINED_FUNCTION_253();
    sub_1C87A997C(v19, v20);
    return v11;
  }

  __break(1u);
  return result;
}

id sub_1C88DADDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C8BD3FEC();
    sub_1C87A9A24(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1C88DAE50(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_1C88DAFBC(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1C88DAFBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1C8BD3F9C();
  v8 = result;
  if (result)
  {
    result = sub_1C8BD3FBC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1C8BD3FAC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

unint64_t sub_1C88DB0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C8BD529C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_1C88DB244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9088, &qword_1C8BF9FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C88DB338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9068, &qword_1C8BF9FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE *storeEnumTagSinglePayload for UsoGraphProtoWriter(_BYTE *result, int a2, int a3)
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

void OUTLINED_FUNCTION_56_4()
{

  sub_1C8817220();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_65(v7);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    v10 = v8[6];
    v11 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(a1 + v10, v12, v13, v11);
    OUTLINED_FUNCTION_18_2(v8[7]);
    OUTLINED_FUNCTION_18_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    OUTLINED_FUNCTION_18_2(v8[10]);
    *(a1 + v8[11]) = 6;
    result = OUTLINED_FUNCTION_65(v7);
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_15();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88DCC98(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_38_9();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(&v11[v13], v15, v16, v14);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v11[v7[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_65(v7);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[6]);
    OUTLINED_FUNCTION_18_2(v8[7]);
    result = OUTLINED_FUNCTION_65(v7);
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t sub_1C88DBA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C88DD0CC();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_15();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88DCC98(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_38_9();
  v11 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v13 = v11 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[6]);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C88DBD38(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_6_15();
  v15 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v15, v14, a1, a2);
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_1C8778ED8(v14, a1, a2);
  return v17;
}

uint64_t sub_1C88DBE48(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v20 = OUTLINED_FUNCTION_2();
    v19 = sub_1C88DCC98(v20);
    *(v9 + v16) = v19;
  }

  v21 = a3(0);
  OUTLINED_FUNCTION_43(v15, v22, v23, v21);
  v24 = *a4;
  swift_beginAccess();
  sub_1C878656C(v15, v19 + v24, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  OUTLINED_FUNCTION_6_15();
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v9, v8, &qword_1EC2B6000, &qword_1C8BF5050);
  v10 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_65(v8);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v12;
    a1[2] = v12;
    a1[3] = v12;
    v13 = a1 + *(v10 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v10 + 36);
    v15 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_43(a1 + v14, v16, v17, v15);
    result = OUTLINED_FUNCTION_65(v8);
    if (!v11)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_15();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88DCC98(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_38_9();
  v11 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6000, &qword_1C8BF5050);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NLContext(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v14;
    v12[2] = v14;
    v12[3] = v14;
    v15 = v12 + *(v8 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 36);
    v17 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_43(v12 + v16, v18, v19, v17);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65(v7);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v8[5]);
    OUTLINED_FUNCTION_313(a1 + v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_65(v7);
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_13();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_15();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88DCC98(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_38_9();
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v11[v7[5]]);
    OUTLINED_FUNCTION_313(&v11[v7[6]]);
    v11[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C88DC638(uint64_t a1, char a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  if (a2)
  {
    v11 = *(*a1 + 48);
    sub_1C88DD0CC();
    a3(v6);
    sub_1C88DD120(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v9);

  free(v5);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  if (qword_1EC2B5200 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B90F8;
}

uint64_t sub_1C88DC8BC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B90E0);
  __swift_project_value_buffer(v0, qword_1EC2B90E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nl_context";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nlu_request_id";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B51F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B90E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C88DCBA8()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C88DCBE8();
  qword_1EC2B90F8 = result;
  return result;
}

uint64_t sub_1C88DCBE8()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  v6 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1C88DCC98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  v18 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v20 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  v22 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  v24 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v25, v16, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_beginAccess();
  sub_1C878656C(v16, v1 + v17, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  sub_1C87867A0(a1 + v26, v12, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_beginAccess();
  sub_1C878656C(v12, v1 + v19, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  v28 = v33;
  sub_1C87867A0(a1 + v27, v33, &qword_1EC2B6000, &qword_1C8BF5050);
  swift_beginAccess();
  sub_1C878656C(v28, v1 + v21, &qword_1EC2B6000, &qword_1C8BF5050);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  v30 = v34;
  sub_1C87867A0(a1 + v29, v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);

  swift_beginAccess();
  sub_1C878656C(v30, v1 + v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C88DD078()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C88DD0CC()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C88DD120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C88DD178()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext, &qword_1EC2B6000, &qword_1C8BF5050);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v0;
}

uint64_t sub_1C88DD210()
{
  v0 = sub_1C88DD178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C88DCC98(v9);
  }

  return sub_1C88DD304();
}

uint64_t sub_1C88DD304()
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
        sub_1C88DD3E4();
        break;
      case 2:
        sub_1C88DD4C0();
        break;
      case 3:
        sub_1C88DD59C();
        break;
      case 4:
        sub_1C88DD678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88DD3E4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C87767D0(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD4C0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C87767D0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD59C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C87767D0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD678()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87767D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
  result = sub_1C88DD7C0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C88DD7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v46 - v7;
  v50 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v46 - v12;
  v54 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v46 - v17;
  v51 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v19 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v46 - v23;
  v25 = type metadata accessor for Siri_Nlu_External_RequestID();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  v53 = a1;
  sub_1C87867A0(a1 + v29, v24, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_1C8778ED8(v24, &qword_1EC2B64B0, &unk_1C8BF3F40);
    v30 = v55;
  }

  else
  {
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
    v31 = v55;
    sub_1C8BD4E2C();
    v30 = v31;
    result = sub_1C88DD120(v28, type metadata accessor for Siri_Nlu_External_RequestID);
    if (v31)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v34 = v53;
  swift_beginAccess();
  sub_1C87867A0(v34 + v33, v18, &qword_1EC2B6048, &unk_1C8BE6F80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v51);
  v36 = v54;
  v37 = v52;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v18, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    v38 = v48;
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    result = sub_1C88DD120(v38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v30)
    {
      return result;
    }

    v36 = v54;
  }

  v39 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  sub_1C87867A0(v34 + v39, v37, &qword_1EC2B6000, &qword_1C8BF5050);
  v40 = __swift_getEnumTagSinglePayload(v37, 1, v36);
  v42 = v49;
  v41 = v50;
  if (v40 == 1)
  {
    sub_1C8778ED8(v37, &qword_1EC2B6000, &qword_1C8BF5050);
  }

  else
  {
    v43 = v47;
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8BD4E2C();
    result = sub_1C88DD120(v43, type metadata accessor for Siri_Nlu_External_NLContext);
    if (v30)
    {
      return result;
    }
  }

  v44 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v34 + v44, v42, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v41) == 1)
  {
    return sub_1C8778ED8(v42, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  v45 = v46;
  sub_1C88DD078();
  sub_1C87767D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4E2C();
  return sub_1C88DD120(v45, type metadata accessor for Siri_Nlu_External_UUID);
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {
    v6 = *(v1 + v3);

    v7 = sub_1C88DDF98(v4, v5);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C87767D0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C88DDF98(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for Siri_Nlu_External_UUID();
  v4 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v6 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v91 - v12;
  v101 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v13 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v94 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  v15 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v98 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v91 - v21;
  v108 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v22 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v99 = (&v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  v24 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v91 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v104 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v91 - v30;
  v31 = type metadata accessor for Siri_Nlu_External_RequestID();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v105 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v91 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v111 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v91 - v43;
  v45 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v45, v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  v47 = *(v35 + 56);
  sub_1C87867A0(v44, v38, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v48 = a2 + v46;
  v49 = a2;
  sub_1C87867A0(v48, &v38[v47], &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v38, 1, v31) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(&v38[v47], 1, v31) == 1)
    {
      sub_1C8778ED8(v38, &qword_1EC2B64B0, &unk_1C8BF3F40);
      goto LABEL_8;
    }

LABEL_6:
    v51 = &qword_1EC2B64D8;
    v52 = &unk_1C8BEAC20;
    v53 = v38;
LABEL_22:
    sub_1C8778ED8(v53, v51, v52);
    goto LABEL_23;
  }

  v50 = v111;
  sub_1C87867A0(v38, v111, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(&v38[v47], 1, v31) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C88DD120(v50, type metadata accessor for Siri_Nlu_External_RequestID);
    goto LABEL_6;
  }

  v54 = v105;
  sub_1C88DD078();

  v55 = v50;
  v56 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v50, v54);
  sub_1C88DD120(v54, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8778ED8(v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C88DD120(v55, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8778ED8(v38, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if ((v56 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  v58 = v107;
  sub_1C87867A0(a1 + v57, v107, &qword_1EC2B6048, &unk_1C8BE6F80);
  v59 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  v60 = *(v106 + 48);
  v61 = v109;
  sub_1C87867A0(v58, v109, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87867A0(v49 + v59, v61 + v60, &qword_1EC2B6048, &unk_1C8BE6F80);
  v62 = v108;
  if (__swift_getEnumTagSinglePayload(v61, 1, v108) == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61 + v60, 1, v62);
    v64 = v110;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v61, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_15;
    }

LABEL_13:
    v51 = &qword_1EC2B6050;
    v52 = &qword_1C8BE6D00;
LABEL_21:
    v53 = v61;
    goto LABEL_22;
  }

  v65 = v104;
  sub_1C87867A0(v61, v104, &qword_1EC2B6048, &unk_1C8BE6F80);
  v66 = __swift_getEnumTagSinglePayload(v61 + v60, 1, v62);
  v64 = v110;
  if (v66 == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C88DD120(v65, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    goto LABEL_13;
  }

  v67 = v99;
  sub_1C88DD078();
  v68 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v65, v67);
  sub_1C88DD120(v67, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C88DD120(v65, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8778ED8(v61, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v68 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v69 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  sub_1C87867A0(a1 + v69, v64, &qword_1EC2B6000, &qword_1C8BF5050);
  v70 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  v71 = *(v100 + 48);
  v61 = v102;
  sub_1C87867A0(v64, v102, &qword_1EC2B6000, &qword_1C8BF5050);
  sub_1C87867A0(v49 + v70, v61 + v71, &qword_1EC2B6000, &qword_1C8BF5050);
  v72 = v101;
  if (__swift_getEnumTagSinglePayload(v61, 1, v101) != 1)
  {
    v75 = v98;
    sub_1C87867A0(v61, v98, &qword_1EC2B6000, &qword_1C8BF5050);
    v76 = __swift_getEnumTagSinglePayload(v61 + v71, 1, v72);
    v74 = v103;
    if (v76 == 1)
    {
      sub_1C8778ED8(v64, &qword_1EC2B6000, &qword_1C8BF5050);
      sub_1C88DD120(v75, type metadata accessor for Siri_Nlu_External_NLContext);
      goto LABEL_20;
    }

    v78 = v94;
    sub_1C88DD078();
    static Siri_Nlu_External_NLContext.== infix(_:_:)();
    v80 = v79;
    sub_1C88DD120(v78, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8778ED8(v64, &qword_1EC2B6000, &qword_1C8BF5050);
    sub_1C88DD120(v75, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8778ED8(v61, &qword_1EC2B6000, &qword_1C8BF5050);
    if (v80)
    {
      goto LABEL_27;
    }

LABEL_23:

    return 0;
  }

  sub_1C8778ED8(v64, &qword_1EC2B6000, &qword_1C8BF5050);
  v73 = __swift_getEnumTagSinglePayload(v61 + v71, 1, v72);
  v74 = v103;
  if (v73 != 1)
  {
LABEL_20:
    v51 = &qword_1EC2B6008;
    v52 = &unk_1C8BE6CC0;
    goto LABEL_21;
  }

  sub_1C8778ED8(v61, &qword_1EC2B6000, &qword_1C8BF5050);
LABEL_27:
  v81 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v81, v74, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v82 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  v83 = *(v95 + 48);
  v84 = v74;
  v85 = v74;
  v86 = v97;
  sub_1C87867A0(v84, v97, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v49 + v82, v86 + v83, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v87 = v96;
  if (__swift_getEnumTagSinglePayload(v86, 1, v96) == 1)
  {

    sub_1C8778ED8(v85, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v86 + v83, 1, v87) == 1)
    {
      sub_1C8778ED8(v86, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      return 1;
    }

    goto LABEL_32;
  }

  v88 = v93;
  sub_1C87867A0(v86, v93, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v86 + v83, 1, v87) == 1)
  {

    sub_1C8778ED8(v103, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88DD120(v88, type metadata accessor for Siri_Nlu_External_UUID);
LABEL_32:
    sub_1C8778ED8(v86, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    return 0;
  }

  v89 = v92;
  sub_1C88DD078();
  v90 = static Siri_Nlu_External_UUID.== infix(_:_:)(v88, v89);

  sub_1C88DD120(v89, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8778ED8(v103, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C88DD120(v88, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8778ED8(v86, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return (v90 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
  sub_1C87767D0(&qword_1EC2B9120, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88DEE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87767D0(&qword_1EC2B9160, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88DEEE4(uint64_t a1)
{
  v2 = sub_1C87767D0(&qword_1EC2B9130, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88DEF54()
{
  sub_1C87767D0(&qword_1EC2B9130, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88DF11C()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C88DF1A8()
{
  sub_1C88DF358(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1C88DF358(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1C88DF358(319, qword_1EDACCC28, type metadata accessor for Siri_Nlu_External_NLContext);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1C88DF358(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C88DF358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.parses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse()
{
  result = qword_1EC2B91A0;
  if (!qword_1EC2B91A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse() + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C88DF5E8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9168);
  __swift_project_value_buffer(v0, qword_1EC2B9168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "parses";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5208 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B9168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C88DF864();
    }
  }

  return result;
}

uint64_t sub_1C88DF864()
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C88DFF14(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C88DFF14(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse() + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C87D2A98();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse() + 20);
  sub_1C8BD49FC();
  sub_1C88DFF14(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse();
  sub_1C88DFF14(&qword_1EC2B9180, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88DFB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88DFF14(&qword_1EC2B91B0, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88DFC00(uint64_t a1)
{
  v2 = sub_1C88DFF14(&qword_1EC2B9190, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88DFC70()
{
  sub_1C88DFF14(&qword_1EC2B9190, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return sub_1C8BD4CFC();
}

void sub_1C88DFE38()
{
  sub_1C88DFEBC();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88DFEBC()
{
  if (!qword_1EC2B4238)
  {
    type metadata accessor for Siri_Nlu_External_UserParse(255);
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B4238);
    }
  }
}

uint64_t sub_1C88DFF14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C88DFF94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.jsonTranscript.setter();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.jsonTranscript.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  sub_1C88E02E4(v1 + *(v9 + 24), v8);
  v10 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v11 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v11, v12, v10);
  if (!v13)
  {
    return sub_1C88E0374(v8, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v10[5]);
  OUTLINED_FUNCTION_18_2(v10[6]);
  OUTLINED_FUNCTION_18_2(v10[7]);
  v14 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v14, v15, v10);
  if (!v13)
  {
    return sub_1C8778ED8(v8, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  }

  return result;
}

uint64_t sub_1C88E0198(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C88E0624(a1, v5);
  return Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.setter(v5);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  sub_1C88E0374(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  OUTLINED_FUNCTION_18_2(*(v0 + 20));
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
  OUTLINED_FUNCTION_18_2(*(v2 + 28));
}

uint64_t sub_1C88E02E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E0374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  *(v3 + 10) = v11;
  sub_1C88E02E4(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = &v10[v7[5]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = &v10[v7[6]];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v10[v7[7]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    }
  }

  else
  {
    sub_1C88E0374(v6, v10);
  }

  return sub_1C88E0544;
}

void sub_1C88E0544(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1C88E0624((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    sub_1C88E0374(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C88E0688(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    sub_1C88E0374(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C88E0624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E0688(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.hasCdmPlannerRequestIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  sub_1C88E02E4(v0 + *(v9 + 24), v8);
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_1C8778ED8(v8, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  return v14;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.clearCdmPlannerRequestIdentifier()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  OUTLINED_FUNCTION_18_2(*(v2 + 20));
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C88E0898(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88E08F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.sessionID.setter();
}

uint64_t sub_1C88E0948()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = (v1 + *(v4(v3) + 20));
  v6 = v5[1];

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.sessionID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C88E0A3C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88E0ACC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.setter();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v3) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clearClientSessionID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88E0C6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.setter();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v3) + 28));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clearClientRequestID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1C88E0DC4(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1C88E0E60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B91B8);
  __swift_project_value_buffer(v0, qword_1EC2B91B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "json_transcript";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdm_planner_request_identifier";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88E10C8();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88E1AE4(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C88E10C8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  OUTLINED_FUNCTION_16_2(*(v15 + 20));
  if (!v17 || (v18 = *v16, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
  {
    sub_1C88E02E4(v0 + *(v15 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    }

    else
    {
      sub_1C88E0374(v8, v14);
      sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);
      sub_1C8BD4E2C();
      result = sub_1C88E0688(v14);
      if (v2)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91F8, &qword_1C8BFA3D8);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  v24 = *(v23 + 20);
  OUTLINED_FUNCTION_1();
  if (v27)
  {
    if (!v25)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v26);
    v30 = v30 && v28 == v29;
    if (!v30 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v25)
  {
    goto LABEL_19;
  }

  v31 = *(v23 + 24);
  v32 = *(v17 + 48);
  sub_1C88E02E4(v2 + v31, v22);
  sub_1C88E02E4(a2 + v31, &v22[v32]);
  OUTLINED_FUNCTION_76(v22, 1, v5);
  if (v30)
  {
    OUTLINED_FUNCTION_76(&v22[v32], 1, v5);
    if (v30)
    {
      sub_1C8778ED8(v22, &qword_1EC2B91E8, &qword_1C8BFA3D0);
LABEL_22:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_5_14();
      sub_1C88E15B8(v37, v38);
      v34 = OUTLINED_FUNCTION_159();
      return v34 & 1;
    }

    goto LABEL_18;
  }

  sub_1C88E02E4(v22, v16);
  OUTLINED_FUNCTION_76(&v22[v32], 1, v5);
  if (v33)
  {
    sub_1C88E0688(v16);
LABEL_18:
    sub_1C8778ED8(v22, &qword_1EC2B91F8, &qword_1C8BFA3D8);
    goto LABEL_19;
  }

  sub_1C88E0374(&v22[v32], v10);
  v36 = static Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.== infix(_:_:)();
  sub_1C88E0688(v10);
  sub_1C88E0688(v16);
  sub_1C8778ED8(v22, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  if (v36)
  {
    goto LABEL_22;
  }

LABEL_19:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1C88E15B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C88E169C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88E15B8(&qword_1EC2B9268, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E171C(uint64_t a1)
{
  v2 = sub_1C88E15B8(&qword_1EC2B9218, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E178C()
{
  sub_1C88E15B8(&qword_1EC2B9218, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88E1828()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B91D0);
  __swift_project_value_buffer(v0, qword_1EC2B91D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_session_id";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_request_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
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
        OUTLINED_FUNCTION_8();
        sub_1C88E1BB0();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C88E1B4C();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88E1AE4(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_17();
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v1);
  OUTLINED_FUNCTION_16_2(v2[5]);
  if (!v4 || (v5 = *v3, result = OUTLINED_FUNCTION_9_5(), !v0))
  {
    OUTLINED_FUNCTION_16_2(v2[6]);
    if (!v8 || (v9 = *v7, result = OUTLINED_FUNCTION_9_5(), !v0))
    {
      OUTLINED_FUNCTION_16_2(v2[7]);
      if (!v11)
      {
        return OUTLINED_FUNCTION_15();
      }

      v12 = *v10;
      result = OUTLINED_FUNCTION_9_5();
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  v1 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v0);
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
    if (v17)
    {
      OUTLINED_FUNCTION_35(v18);
      v22 = v8 && v20 == v21;
      if (v22 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v17)
  {
LABEL_26:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_5_14();
    sub_1C88E15B8(v23, v24);
    return OUTLINED_FUNCTION_159() & 1;
  }

  return 0;
}

uint64_t sub_1C88E1E10(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C88E15B8(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88E1EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88E15B8(&qword_1EC2B9260, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E1F6C(uint64_t a1)
{
  v2 = sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E1FDC()
{
  sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return sub_1C8BD4CFC();
}

void sub_1C88E22C4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      sub_1C88E2360();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88E2360()
{
  if (!qword_1EC2B9248)
  {
    type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(255);
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B9248);
    }
  }
}

void sub_1C88E23E0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Siri_Nlu_Internal_TokenChain.stringValue.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C88E24CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_TokenChain.stringValue.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_TokenChain.stringValue.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_5_15(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_TokenChain.clearStringValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1C88E2638(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_TokenChain.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_TokenChain.locale.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_5_15(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_TokenChain.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_TokenChain.tokens.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_TokenChain.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_TokenChain.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_TokenChain() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C88E2930()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4B48);
  __swift_project_value_buffer(v0, qword_1EC2B4B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "string_value";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "tokens";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_TokenChain._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4B48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v5 = (v0 + v4[6]);
  if (!v5[1] || (v6 = *v5, result = OUTLINED_FUNCTION_19_5(), (v2 = v1) == 0))
  {
    v8 = (v0 + v4[7]);
    if (!v8[1] || (v9 = *v8, result = OUTLINED_FUNCTION_19_5(), (v2 = v1) == 0))
    {
      v10 = *v0;
      if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_Token(), sub_1C879B1F0(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token), result = sub_1C8BD4E0C(), !v2))
      {
        v11 = v3 + v4[5];
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v5 = v4[6];
  OUTLINED_FUNCTION_1();
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *v8 == *v9 && v6 == v7;
    if (!v10 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v4[7];
  OUTLINED_FUNCTION_1();
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v16 = *v14 == *v15 && v12 == v13;
    if (!v16 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = *a1;
  v18 = *a2;
  sub_1C87D85EC();
  if (v19)
  {
    v20 = v4[5];
    sub_1C8BD49FC();
    sub_1C879B1F0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_TokenChain.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C879B1F0(&qword_1EC2B9270, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88E2F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C879B1F0(&qword_1EC2B9280, type metadata accessor for Siri_Nlu_Internal_TokenChain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E2F88(uint64_t a1)
{
  v2 = sub_1C879B1F0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E2FF8()
{
  sub_1C879B1F0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);

  return sub_1C8BD4CFC();
}

void sub_1C88E3198()
{
  sub_1C88E3234();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88E3234()
{
  if (!qword_1EC2B2F68)
  {
    type metadata accessor for Siri_Nlu_Internal_Token();
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B2F68);
    }
  }
}

BOOL sub_1C88E328C(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C88E32B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = a3;
  v36 = a2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C87AB9AC(a1 + *(v16 + 28), v11, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = &v15[v12[5]];
    *v17 = 0;
    v17[4] = 1;
    v18 = &v15[v12[6]];
    *v18 = 0;
    v18[4] = 1;
    v19 = v12[7];
    v20 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v15[v19], 1, 1, v20);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_1C8778ED8(v11, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C88E3658(v11, v15, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v21 = &v15[v12[5]];
  v22 = *v21;
  v23 = v21[4];
  sub_1C87A8B84(v15, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_1C88E328C(v24, v36);
  result = 0;
  if (v25)
  {
    v27 = *v35;
    v28 = (a1 + *(v16 + 20));
    if (*(v28 + 4))
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28;
    }

    if (v29 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88E35F4(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v7);
      v30 = &v7[*(v4 + 24)];
      v31 = *v30;
      v32 = v30[4];
      sub_1C87A8B84(v7, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v31 == 1303) & ~v32;
    }
  }

  return result;
}

uint64_t sub_1C88E35F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E3658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_21(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

BOOL sub_1C88E36B8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C88E3754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_6:
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
    v11 = OUTLINED_FUNCTION_369_0(v10);
    v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v11);
    return OUTLINED_FUNCTION_260_1(v12);
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_8;
    }

    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  v17 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_262_2(v17, v18, v19, v20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E3B64(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_352_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C88E3C58()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(0);
  return OUTLINED_FUNCTION_979(v11);
}

uint64_t sub_1C88E3D98()
{
  OUTLINED_FUNCTION_1152();
  v2 = OUTLINED_FUNCTION_1085();
  v4 = v3(v2);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C88E4144();
  return v0(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_193_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C88E3EC4()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_795();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_193_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E4044(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C88E4144()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_810();
  v31 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v3);
  v4 = OUTLINED_FUNCTION_21(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v8 = OUTLINED_FUNCTION_80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OUTLINED_FUNCTION_36_4();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(v11);
  v13 = OUTLINED_FUNCTION_229_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_206_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6168, &qword_1C8BE6E08);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_112_0();
  v22 = *(v21 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_44_9();
      sub_1C88E3EC4();
      v30 = OUTLINED_FUNCTION_258();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.== infix(_:_:)(v30);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_100();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_248_3();
      sub_1C88E3C58();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_352_0();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_446();
  sub_1C88E4144();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_16:
    sub_1C88E3C58();
    sub_1C8778ED8(v0, &qword_1EC2B6168, &qword_1C8BE6E08);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_193_3();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_647();
  v25 = v25 && v23 == v24;
  if (v25 || (sub_1C8BD529C() & 1) != 0)
  {
    v26 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
    if (v26 || (sub_1C8BD529C() & 1) != 0)
    {
      v27 = *(v31 + 24);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v28, v29);
      OUTLINED_FUNCTION_1006();
    }
  }

  OUTLINED_FUNCTION_866();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_248_3();
  sub_1C88E3C58();
LABEL_19:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.noneP.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = OUTLINED_FUNCTION_128_3();
      v22(v21);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = *MEMORY[0x1E69AA8D8];
  v19 = OUTLINED_FUNCTION_290_1();
  v20(v19);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88E4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_333();
  v10 = v9(v8);
  OUTLINED_FUNCTION_13_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60_1();
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_184();
  v17(v16);
  return a6(v6);
}

uint64_t sub_1C88E4AD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_1C8778ED8(v4, a2, a3);
  v6 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_307();
  v10(v9);
  v11 = a4(0);
  OUTLINED_FUNCTION_92_0();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_297_0();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.BOOL.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C88E4CF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  v28 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    v9 = *(v6 + 16);
    v10 = OUTLINED_FUNCTION_92_0();
    v11(v10);
    OUTLINED_FUNCTION_730();
    sub_1C8778ED8(v12, v13, v14);
    v15 = *(v6 + 32);
    v16 = OUTLINED_FUNCTION_262_0();
    v17(v16);
    OUTLINED_FUNCTION_1029();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
    (*(v6 + 8))(v3, v7);
  }

  else
  {
    v21 = *v2;
    OUTLINED_FUNCTION_730();
    sub_1C8778ED8(v22, v23, v24);
    (*(v6 + 32))(v8, v3, v7);
    OUTLINED_FUNCTION_1029();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v4);
  }

  free(v3);
  free(v5);
  free(v28);

  free(v2);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.int.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.number.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.decimal.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.string.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.date.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.dateComponents.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.url.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.dictionary.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.attributedString.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.measurement.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_800();
LABEL_8:
  OUTLINED_FUNCTION_1079(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.measurement.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.currencyAmount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.paymentMethod.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.placemark.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.person.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.file.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.app.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.searchableItem.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88E6EF8()
{
  v0 = OUTLINED_FUNCTION_782();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_130_1();

  return v7(v6);
}

uint64_t sub_1C88E6F7C()
{
  v0 = OUTLINED_FUNCTION_241();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_167_1();

  return v7(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v27;
  a20 = v28;
  v234 = v29;
  v235 = v30;
  v31 = sub_1C8BD47CC();
  v232 = OUTLINED_FUNCTION_13_1(v31);
  v233 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_10_0();
  v218 = v35;
  OUTLINED_FUNCTION_83_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_452_0(v37, v38, v39, v40, v41, v42, v43, v44, v208);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_96();
  v62 = OUTLINED_FUNCTION_63_0(v61);
  v63 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(v62);
  v64 = OUTLINED_FUNCTION_74_1(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_10_0();
  v231 = v67;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_432();
  v70 = MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_451_0(v70, v71, v72, v73, v74, v75, v76, v77, v209);
  v79 = MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_454(v79, v80, v81, v82, v83, v84, v85, v86, v210);
  v88 = MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_397_0(v88, v89, v90, v91, v92, v93, v94, v95, v211);
  v97 = MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_396(v97, v98, v99, v100, v101, v102, v103, v104, v212);
  v106 = MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_395_0(v106, v107, v108, v109, v110, v111, v112, v113, v213);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_561();
  v116 = MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_394_0(v116, v117, v118, v119, v120, v121, v122, v123, v214);
  v125 = MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_393_0(v125, v126, v127, v128, v129, v130, v131, v132, v215);
  v134 = MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_398_0(v134, v135, v136, v137, v138, v139, v140, v141, v216);
  v143 = MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_453_0(v143, v144, v145, v146, v147, v148, v149, v150, v217);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_123();
  v220 = v152;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_734();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_234_0();
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA78, &unk_1C8BFA980);
  OUTLINED_FUNCTION_80(v159);
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_525();
  v164 = v26 + *(v163 + 56);
  sub_1C88E4144();
  v235 = v164;
  sub_1C88E4144();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_756();
        v180 = OUTLINED_FUNCTION_221();
        v181(v180);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v182, v183);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        v184 = *(v233 + 8);
        v185 = OUTLINED_FUNCTION_260_0();
        v184(v185);
        OUTLINED_FUNCTION_720();
        (v184)(v23, v232);
        goto LABEL_43;
      }

      v24 = v23;
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_756();
        OUTLINED_FUNCTION_889();
        OUTLINED_FUNCTION_626();
        v167();
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v168, v169);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v170 = *(v233 + 8);
        v171 = OUTLINED_FUNCTION_258();
        v170(v171);
        OUTLINED_FUNCTION_720();
        v172 = OUTLINED_FUNCTION_253();
        (v170)(v172, v173);
        goto LABEL_43;
      }

      v24 = v22;
      goto LABEL_48;
    case 3u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_756();
        v174 = OUTLINED_FUNCTION_118();
        v175(v174);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v176, v177);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        v178 = *(v233 + 8);
        v179 = OUTLINED_FUNCTION_97();
        v178(v179);
        OUTLINED_FUNCTION_720();
        (v178)(v25, v232);
        goto LABEL_43;
      }

      v24 = v25;
      goto LABEL_48;
    case 4u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &v236;
      goto LABEL_40;
    case 5u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_611();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v186 = *(v233 + 32);
        v187 = OUTLINED_FUNCTION_259();
        v188(v187);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v189, v190);
        OUTLINED_FUNCTION_168_0();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_168_0();
        sub_1C8BD51EC();
        v191 = *(v233 + 8);
        v192 = OUTLINED_FUNCTION_258();
        v191(v192);
        OUTLINED_FUNCTION_720();
        (v191)(v20, v232);
        goto LABEL_43;
      }

      v24 = v20;
      goto LABEL_48;
    case 6u:
      OUTLINED_FUNCTION_15_9();
      v24 = v220;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a9;
      goto LABEL_40;
    case 7u:
      OUTLINED_FUNCTION_15_9();
      v24 = v221;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a10;
      goto LABEL_40;
    case 8u:
      OUTLINED_FUNCTION_15_9();
      v24 = v222;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a11;
      goto LABEL_40;
    case 9u:
      OUTLINED_FUNCTION_15_9();
      v24 = v223;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a12;
      goto LABEL_40;
    case 0xAu:
      OUTLINED_FUNCTION_15_9();
      v24 = v224;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a13;
      goto LABEL_40;
    case 0xBu:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_49;
      }

      v166 = *(v20 + 8);
      sub_1C87E4678(*v219, *(v219 + 8), *v20);
      goto LABEL_43;
    case 0xCu:
      OUTLINED_FUNCTION_15_9();
      v24 = v225;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a14;
      goto LABEL_40;
    case 0xDu:
      OUTLINED_FUNCTION_15_9();
      v24 = v226;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a15;
      goto LABEL_40;
    case 0xEu:
      OUTLINED_FUNCTION_15_9();
      v24 = v227;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a16;
      goto LABEL_40;
    case 0xFu:
      OUTLINED_FUNCTION_15_9();
      v24 = v228;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a17;
      goto LABEL_40;
    case 0x10u:
      OUTLINED_FUNCTION_15_9();
      v24 = v229;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_444_0();
      v165 = &a18;
LABEL_40:
      v193 = *(v165 - 32);
      goto LABEL_41;
    case 0x11u:
      OUTLINED_FUNCTION_15_9();
      v24 = v230;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    case 0x12u:
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_1145();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_48;
      }

LABEL_27:
      OUTLINED_FUNCTION_444_0();
LABEL_41:
      v194 = OUTLINED_FUNCTION_118();
      v195 = v232;
      v196(v194);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v197, v198);
      OUTLINED_FUNCTION_752();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      v199 = *(v21 + 8);
      v200 = OUTLINED_FUNCTION_97();
      v199(v200);
      OUTLINED_FUNCTION_720();
      (v199)(v24, v195);
      goto LABEL_43;
    default:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload())
      {
        v24 = v21;
LABEL_48:
        (*(v233 + 8))(v24, v232);
LABEL_49:
        sub_1C8778ED8(v26, &qword_1EC2BAA78, &unk_1C8BFA980);
      }

      else
      {
        v201 = *(v233 + 32);
        OUTLINED_FUNCTION_889();
        OUTLINED_FUNCTION_626();
        v202();
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v203, v204);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v205 = *(v233 + 8);
        v206 = OUTLINED_FUNCTION_258();
        v205(v206);
        OUTLINED_FUNCTION_720();
        v207 = OUTLINED_FUNCTION_220();
        v205(v207);
LABEL_43:
        OUTLINED_FUNCTION_350_0();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t sub_1C88E7C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CBFBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88E7D34()
{
  OUTLINED_FUNCTION_785();
  v2(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = v1 + *(v0(0) + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.unknown.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = OUTLINED_FUNCTION_128_3();
      v22(v21);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = *MEMORY[0x1E69AA8D8];
  v19 = OUTLINED_FUNCTION_290_1();
  v20(v19);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailAccount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailAddressee.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailMessage.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C88E85F0()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_222_2();
  v7 = v0(0);
  OUTLINED_FUNCTION_85_4(v7);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v9, v10, v11);
LABEL_7:
    v18 = *MEMORY[0x1E69AA8D8];
    v19 = sub_1C8BD47CC();
    OUTLINED_FUNCTION_121_0(v19);
    v21 = *(v20 + 104);
    v22 = OUTLINED_FUNCTION_218();
    v23(v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_611();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_92_0();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v13 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v13);
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_218();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailbox.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentMessage.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.messageGroup.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.messageParticipants.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.uniqueEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_182_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v11 = OUTLINED_FUNCTION_402_0();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v11);
  return OUTLINED_FUNCTION_260_1(v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    OUTLINED_FUNCTION_569();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E92EC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.urlRepresentable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.visualSearch.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.visualSearchOcr.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_181_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(0) + 20);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_232_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v15);
  if (v16)
  {
    sub_1C8778ED8(v1, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
    v19 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E9CA8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.updatableEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_180_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v11 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v11);
  return OUTLINED_FUNCTION_260_1(v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EA254(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v258 = v29;
  v259 = v28;
  v30 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(0);
  v31 = OUTLINED_FUNCTION_265_2(v30, v260);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v246 = v34;
  v35 = OUTLINED_FUNCTION_86();
  v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v35);
  v37 = OUTLINED_FUNCTION_80(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  v244 = v40;
  v41 = OUTLINED_FUNCTION_86();
  v42 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v41);
  v43 = OUTLINED_FUNCTION_265_2(v42, &v261);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  v245 = v46;
  OUTLINED_FUNCTION_86();
  v47 = sub_1C8BD47CC();
  v256 = OUTLINED_FUNCTION_13_1(v47);
  v257 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v256);
  OUTLINED_FUNCTION_10_0();
  v243 = v51;
  OUTLINED_FUNCTION_83_0();
  v53 = MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_452_0(v53, v54, v55, v56, v57, v58, v59, v60, v242[0]);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_96();
  v73 = OUTLINED_FUNCTION_63_0(v72);
  v74 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(v73);
  v75 = OUTLINED_FUNCTION_229_2(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_10_0();
  v255 = v78;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_432();
  v81 = MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_395_0(v81, v82, v83, v84, v85, v86, v87, v88, v242[0]);
  v90 = MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_454(v90, v91, v92, v93, v94, v95, v96, v97, v242[0]);
  v99 = MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_397_0(v99, v100, v101, v102, v103, v104, v105, v106, v242[0]);
  v108 = MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_396(v108, v109, v110, v111, v112, v113, v114, v115, v242[0]);
  v117 = MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_451_0(v117, v118, v119, v120, v121, v122, v123, v124, v242[0]);
  v126 = MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_394_0(v126, v127, v128, v129, v130, v131, v132, v133, v242[0]);
  v135 = MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_393_0(v135, v136, v137, v138, v139, v140, v141, v142, v242[0]);
  v144 = MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_398_0(v144, v145, v146, v147, v148, v149, v150, v151, v242[0]);
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_538();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v157);
  v159 = v242 - v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA80, &qword_1C8BFA990);
  OUTLINED_FUNCTION_80(v160);
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_278_1();
  v165 = *(v164 + 56);
  sub_1C88E4144();
  v259 = v165;
  sub_1C88E4144();
  OUTLINED_FUNCTION_216();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 1)
      {
        v214 = v256;
        v213 = v257;
        OUTLINED_FUNCTION_542();
        v215 = OUTLINED_FUNCTION_1024();
        v216(v215);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v217, v218);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v219 = *(v213 + 8);
        v220 = OUTLINED_FUNCTION_666();
        v219(v220);
        OUTLINED_FUNCTION_560();
        (v219)(v24, v214);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_988();
      v167 = v24;
      goto LABEL_47;
    case 2u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 2)
      {
        v185 = v257;
        OUTLINED_FUNCTION_154_1();
        v186 = OUTLINED_FUNCTION_1024();
        v187(v186);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v188, v189);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        v190 = *(v185 + 8);
        v191 = OUTLINED_FUNCTION_516();
        v190(v191);
        OUTLINED_FUNCTION_560();
        v192 = OUTLINED_FUNCTION_268();
        v190(v192);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_988();
      v167 = v23;
      goto LABEL_47;
    case 3u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 3)
      {
        v197 = v257;
        OUTLINED_FUNCTION_154_1();
        v198 = OUTLINED_FUNCTION_1024();
        v199(v198);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v200, v201);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        v202 = *(v197 + 8);
        v203 = OUTLINED_FUNCTION_516();
        v202(v203);
        OUTLINED_FUNCTION_560();
        v204 = OUTLINED_FUNCTION_156_1();
        v202(v204);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_988();
      v167 = v22;
      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v173 = v256;
        v172 = v257;
        OUTLINED_FUNCTION_154_1();
        v174 = OUTLINED_FUNCTION_1024();
        v175(v174);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v176, v177);
        OUTLINED_FUNCTION_100();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_100();
        sub_1C8BD51EC();
        v178 = *(v172 + 8);
        v179 = OUTLINED_FUNCTION_516();
        v178(v179);
        OUTLINED_FUNCTION_560();
        (v178)(v20, v173);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_988();
      v167 = v20;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 5)
      {
        v222 = v256;
        v221 = v257;
        OUTLINED_FUNCTION_542();
        v223 = OUTLINED_FUNCTION_889();
        v224(v223);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v225, v226);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v227 = *(v221 + 8);
        v228 = OUTLINED_FUNCTION_258();
        v227(v228);
        OUTLINED_FUNCTION_560();
        (v227)(v25, v222);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_988();
      v167 = v25;
      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_20_8();
      v168 = v247;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 6)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v171 = &a14;
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_20_8();
      v168 = v248;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 7)
      {
        goto LABEL_46;
      }

      v205 = v257;
      OUTLINED_FUNCTION_542();
      v206(v242[10]);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v207, v208);
      OUTLINED_FUNCTION_524_0();
      OUTLINED_FUNCTION_221();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_221();
      sub_1C8BD51EC();
      v209 = *(v205 + 8);
      v210 = OUTLINED_FUNCTION_299_0();
      v209(v210);
      OUTLINED_FUNCTION_560();
      v211 = OUTLINED_FUNCTION_80_1();
      (v209)(v211, v212);
      goto LABEL_44;
    case 8u:
      OUTLINED_FUNCTION_20_8();
      v168 = v249;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 8)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v171 = &a16;
      goto LABEL_41;
    case 9u:
      OUTLINED_FUNCTION_20_8();
      v180 = v253;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 9)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_182_1();
      v181 = v245;
      sub_1C88E3EC4();
      v182 = *v180 == *v181 && v180[1] == v181[1];
      if (v182 || (sub_1C8BD529C() & 1) != 0)
      {
        OUTLINED_FUNCTION_119_1(&v261);
        OUTLINED_FUNCTION_953();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v183, v184);
        OUTLINED_FUNCTION_701();
      }

      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_20_8();
      v168 = v250;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 10)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v171 = &a17;
      goto LABEL_41;
    case 0xBu:
      OUTLINED_FUNCTION_20_8();
      v168 = v251;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 11)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v171 = &a18;
LABEL_41:
      v170 = *(v171 - 32);
      goto LABEL_42;
    case 0xCu:
      OUTLINED_FUNCTION_20_8();
      v168 = v252;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 12)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v170 = v242[14];
      goto LABEL_42;
    case 0xDu:
      OUTLINED_FUNCTION_20_8();
      OUTLINED_FUNCTION_1074();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 13)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_181_1();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_184();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema.== infix(_:_:)();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_121();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_73_6();
      goto LABEL_45;
    case 0xEu:
      OUTLINED_FUNCTION_20_8();
      v168 = v254;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 14)
      {
LABEL_46:
        OUTLINED_FUNCTION_988();
        v167 = v168;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_530_0();
      v170 = v243;
LABEL_42:
      v229 = v256;
      v169(v170);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v230, v231);
      OUTLINED_FUNCTION_524_0();
      OUTLINED_FUNCTION_118();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_912();
      OUTLINED_FUNCTION_118();
      sub_1C8BD51EC();
      v232 = *(v23 + 1);
      v233 = OUTLINED_FUNCTION_258();
      v232(v233);
      OUTLINED_FUNCTION_560();
      (v232)(v168, v229);
      goto LABEL_44;
    case 0xFu:
      OUTLINED_FUNCTION_20_8();
      OUTLINED_FUNCTION_1140();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 15)
      {
LABEL_57:
        sub_1C88E3C58();
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_180_2();
      sub_1C88E3EC4();
      v193 = OUTLINED_FUNCTION_1023();
      if (sub_1C87D2814(v193, v194))
      {
        OUTLINED_FUNCTION_119_1(v260);
        OUTLINED_FUNCTION_953();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v195, v196);
        OUTLINED_FUNCTION_701();
      }

LABEL_24:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_73_6();
      sub_1C88E3C58();
      break;
    default:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745())
      {
        OUTLINED_FUNCTION_988();
        v167 = v159;
LABEL_47:
        v166(v167, v256);
LABEL_48:
        sub_1C8778ED8(v21, &qword_1EC2BAA80, &qword_1C8BFA990);
      }

      else
      {
        v235 = v256;
        v234 = v257;
        OUTLINED_FUNCTION_542();
        v236 = OUTLINED_FUNCTION_889();
        v237(v236);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v238, v239);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v240 = *(v234 + 8);
        v241 = OUTLINED_FUNCTION_258();
        v240(v241);
        OUTLINED_FUNCTION_560();
        (v240)(v159, v235);
LABEL_44:
        OUTLINED_FUNCTION_73_6();
LABEL_45:
        sub_1C88E3C58();
      }

      break;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v15);
  OUTLINED_FUNCTION_368(*(v16 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020();
    v18 = *(v0 + 24);
    v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v19);
    if (!v17)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_6:
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
    v11 = OUTLINED_FUNCTION_369_0(v10);
    v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v11);
    return OUTLINED_FUNCTION_260_1(v12);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  v17 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_262_2(v17, v18, v19, v20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EB838(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_352_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_179_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_1110(MEMORY[0x1E69E7CC0]);
  v11 = *(v0 + 44);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = *(v0 + 48);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v17 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.init()()
{
  OUTLINED_FUNCTION_1110(MEMORY[0x1E69E7CC0]);
  v1 = *(v0 + 44);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 48);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v7 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_232_2(v15);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v19;
    v12[2] = v19;
    v12[3] = v19;
    v12[4] = v19;
    v12[5] = v19;
    v20 = v12 + v0[10];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v21 = v0[11];
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v0[12];
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    v27 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EBC7C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_179_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_179_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v12 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v12;
  OUTLINED_FUNCTION_908();
  v0[4] = v13;
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  OUTLINED_FUNCTION_1116(v14);
  v15 = *(v1 + 36);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *(v1 + 40);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v21 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_175_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  OUTLINED_FUNCTION_908();
  a1[4] = v4;
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  OUTLINED_FUNCTION_1116(v5);
  v6 = *(v1 + 36);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = *(v1 + 40);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v12 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_232_2(v15);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 8) = v19;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(v12 + 32) = v19;
    v20 = v12 + v0[8];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v21 = v0[9];
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v0[10];
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    v27 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_175_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EC0FC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_174_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0) + 20);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v16);
  v17 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_232_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v15);
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v23);
    v24 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EC4F8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_174_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_174_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_987(v3, v4);
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v5);
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v11 = OUTLINED_FUNCTION_507_0(v10);
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v17 = OUTLINED_FUNCTION_546(v16);
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v17);
  v19 = OUTLINED_FUNCTION_80(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = OUTLINED_FUNCTION_36_4();
  v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v22);
  v24 = OUTLINED_FUNCTION_80(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_1();
  v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  v28 = OUTLINED_FUNCTION_21(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_920();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAA98, &qword_1C8BFA9B0);
  OUTLINED_FUNCTION_80(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_112_0();
  v39 = *(v38 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_193();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_179_1();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_251_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.== infix(_:_:)();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_92_0();
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() == 2)
      {
        OUTLINED_FUNCTION_175_2();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_1075();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.== infix(_:_:)();
        sub_1C88E3C58();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_993();
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() == 3)
      {
        OUTLINED_FUNCTION_174_2();
        sub_1C88E3EC4();
        (static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.== infix(_:_:))(v2);
        sub_1C88E3C58();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_764();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162())
      {
        OUTLINED_FUNCTION_352_0();
LABEL_12:
        sub_1C88E3C58();
        sub_1C8778ED8(v0, &unk_1EC2BAA98, &qword_1C8BFA9B0);
      }

      else
      {
        OUTLINED_FUNCTION_44_9();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.== infix(_:_:)(v1);
        sub_1C88E3C58();
LABEL_14:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_506();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1149();
  v66 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v5);
  v6 = OUTLINED_FUNCTION_21(v66);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_7(v9, v61);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81_3(v14, v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAA8, &qword_1C8BFA9C0);
  OUTLINED_FUNCTION_21(v64);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_47_5(v18, v63);
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v19);
  v21 = OUTLINED_FUNCTION_74_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_211_3();
  v24 = OUTLINED_FUNCTION_220();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_112_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  OUTLINED_FUNCTION_181_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_210();
  v65 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v34);
  v35 = v65[11];
  OUTLINED_FUNCTION_1139();
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_19(v2);
  if (v36)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v36)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_12;
    }

LABEL_9:
    v37 = &unk_1EC2BAAB8;
    v38 = &qword_1C8BFA9D0;
    v39 = v2;
LABEL_10:
    sub_1C8778ED8(v39, v37, v38);
LABEL_29:
    v60 = 0;
    goto LABEL_30;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v36)
  {
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_1161();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_809();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_12();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v0 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  OUTLINED_FUNCTION_1023();
  sub_1C87D9274();
  if ((v40 & 1) == 0)
  {
    goto LABEL_29;
  }

  v41 = v68[1];
  v42 = v4[1];
  sub_1C87D964C();
  if ((v43 & 1) == 0)
  {
    goto LABEL_29;
  }

  v44 = v65[12];
  v45 = *(v64 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v46 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v46, v47);
  if (v36)
  {
    OUTLINED_FUNCTION_24(v67 + v45);
    if (v36)
    {
      sub_1C8778ED8(v67, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v67 + v45);
  if (v48)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
LABEL_22:
    v37 = &qword_1EC2BAAA8;
    v38 = &qword_1C8BFA9C0;
    v39 = v67;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1051();
  v49 = OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(v49, v50);
  OUTLINED_FUNCTION_462();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v67, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  v51 = v68[2];
  v52 = v4[2];
  sub_1C87D9370();
  if ((v53 & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_1C87D99C8(v68[3], v4[3]) & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_1C87D9D44(v68[4], v4[4]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v54 = v68[5];
  v55 = v4[5];
  sub_1C87D9DD0();
  if ((v56 & 1) == 0)
  {
    goto LABEL_29;
  }

  v57 = v65[10];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v58, v59);
  v60 = OUTLINED_FUNCTION_701();
LABEL_30:
  OUTLINED_FUNCTION_157(v60);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_1149();
  v60 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v4);
  v5 = OUTLINED_FUNCTION_21(v60);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_7(v8, v55);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81_3(v13, v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAA8, &qword_1C8BFA9C0);
  OUTLINED_FUNCTION_21(v58);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v18 = OUTLINED_FUNCTION_47_5(v17, v57);
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v18);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_211_3();
  v23 = OUTLINED_FUNCTION_251_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_80(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_552();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  OUTLINED_FUNCTION_181_0(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_210();
  v59 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v33);
  v34 = v59[9];
  OUTLINED_FUNCTION_1139();
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v1);
  if (v35)
  {
    OUTLINED_FUNCTION_24(v1 + v0);
    if (v35)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_12;
    }

LABEL_9:
    v36 = &unk_1EC2BAAB8;
    v37 = &qword_1C8BFA9D0;
    v38 = v1;
LABEL_10:
    sub_1C8778ED8(v38, v36, v37);
LABEL_27:
    v54 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1075();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v1 + v0);
  if (v35)
  {
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_895();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_461();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_82_3();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  OUTLINED_FUNCTION_1023();
  sub_1C87D8E4C();
  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

  v40 = *(v62 + 8);
  v41 = *(v3 + 8);
  sub_1C87D964C();
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  v43 = v59[10];
  v44 = *(v58 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v45 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v45, v46);
  if (v35)
  {
    OUTLINED_FUNCTION_24(v61 + v44);
    if (v35)
    {
      sub_1C8778ED8(v61, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v61 + v44);
  if (v47)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
LABEL_22:
    v36 = &qword_1EC2BAAA8;
    v37 = &qword_1C8BFA9C0;
    v38 = v61;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1051();
  v48 = OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(v48, v49);
  OUTLINED_FUNCTION_462();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v61, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  if ((v60 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = *(v3 + 24);
  if (!sub_1C87E4678(*(v62 + 16), *(v62 + 24), *(v3 + 16)) || (sub_1C87D99C8(*(v62 + 32), *(v3 + 32)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v51 = v59[8];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v52, v53);
  v54 = OUTLINED_FUNCTION_701();
LABEL_28:
  OUTLINED_FUNCTION_157(v54);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.identifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v7) + 44);
  OUTLINED_FUNCTION_439();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v11);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}