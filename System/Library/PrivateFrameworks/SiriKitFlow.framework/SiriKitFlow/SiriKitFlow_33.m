uint64_t sub_1DCE27674()
{
  result = type metadata accessor for Parse(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1DCE27710(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    sub_1DD0DEC1C();

    v5 = 0xD000000000000020;
  }

  else
  {
    sub_1DD0DEC1C();

    v5 = 0xD00000000000001ALL;
  }

  v7 = v5;
  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v7;
}

uint64_t sub_1DCE27844(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DCE2786C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DCE27884(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCE27844(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ParameterError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCE27844(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCE2786C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ParameterError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCE2786C(v4, v5, v6);
  return a1;
}

uint64_t ParameterHints.__allocating_init()()
{
  OUTLINED_FUNCTION_0_76();
  v0 = swift_allocObject();
  type metadata accessor for ParameterClause();
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t ParameterHints.init()()
{
  type metadata accessor for ParameterClause();
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t ParameterHints.__allocating_init(hints:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_76();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ParameterHints.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ParameterNeedsConfirmationConcept.parameterName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ParameterNeedsConfirmationConcept.conceptType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void *ParameterNeedsConfirmationConcept.__allocating_init(app:parameterName:intentResolutionResult:intent:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = 0xD000000000000021;
  result[8] = 0x80000001DD0FA720;
  result[9] = a6;
  return result;
}

void *ParameterNeedsConfirmationConcept.init(app:parameterName:intentResolutionResult:intent:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = 0xD000000000000021;
  v6[8] = 0x80000001DD0FA720;
  v6[9] = a6;
  return v6;
}

uint64_t ParameterNeedsConfirmationConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t ParameterNeedsConfirmationConcept.__deallocating_deinit()
{
  ParameterNeedsConfirmationConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ParameterNeedsDisambiguationConcept.parameterName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ParameterNeedsDisambiguationConcept.conceptType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ParameterNeedsDisambiguationConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t ParameterNeedsDisambiguationConcept.__deallocating_deinit()
{
  ParameterNeedsDisambiguationConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ParameterNeedsValueConcept.parameterName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ParameterNeedsValueConcept.conceptType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *ParameterNeedsValueConcept.__allocating_init(app:parameterName:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD00000000000001ALL;
  result[7] = 0x80000001DD0FA850;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ParameterNeedsValueConcept.init(app:parameterName:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD00000000000001ALL;
  v4[7] = 0x80000001DD0FA850;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ParameterNeedsValueConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t ParameterNeedsValueConcept.__deallocating_deinit()
{
  ParameterNeedsValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE280DC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NeedsDisambiguationFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE281F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NeedsDisambiguationFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)();
}

uint64_t ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

void ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0FA8F8;
  v12[5] = 0;
  v12[6] = a5;
  v12[7] = a6;
  sub_1DD0DCF8C();
}

void ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD0FA908;
  v13[5] = 0;
  v13[6] = a6;
  v13[7] = a7;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE284D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE285F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t sub_1DCE28710()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE287A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return sub_1DCCDC444();
}

uint64_t sub_1DCE28840()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);

  return sub_1DCC100AC();
}

uint64_t dispatch thunk of ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7) + 32);
  OUTLINED_FUNCTION_24_0();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_13_22(v12);

  return v15(v14);
}

uint64_t dispatch thunk of ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a8 + 40);
  OUTLINED_FUNCTION_24_0();
  v24 = (v17 + *v17);
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_11_0(v20);
  *v21 = v22;
  v21[1] = sub_1DCE1B7E8;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  OUTLINED_FUNCTION_24_0();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_11_0(v16);
  *v17 = v18;
  v17[1] = sub_1DCE1B7E8;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCE28CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t dispatch thunk of ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7) + 24);
  OUTLINED_FUNCTION_24_0();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_13_22(v12);

  return v15(v14);
}

uint64_t sub_1DCE28E60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)();
}

uint64_t sub_1DCE28EF8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE28F88()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t sub_1DCE2901C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE290AC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t sub_1DCE29140()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE291D0()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t ParameterResolutionRecord.parameter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 ParameterResolutionRecord.init(app:intent:parameter:result:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a3;
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u8[8];
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  a5[1] = result;
  a5[2].n128_u64[0] = v6;
  a5[2].n128_u8[8] = v7;
  a5[3].n128_u64[0] = a4;
  return result;
}

uint64_t ParameterResolutionRecord.init(app:intent:parameterName:result:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = a5;
  return result;
}

SiriKitFlow::ParameterIdentifier __swiftcall ParameterIdentifier.init(_:)(Swift::String a1)
{
  *v1 = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  result.name = a1;
  return result;
}

SiriKitFlow::ParameterIdentifier __swiftcall ParameterIdentifier.init(name:multicardinalIndex:)(Swift::String name, Swift::Int_optional multicardinalIndex)
{
  *v2 = name;
  *(v2 + 16) = multicardinalIndex.value;
  *(v2 + 24) = multicardinalIndex.is_nil;
  result.name = name;
  result.multicardinalIndex = multicardinalIndex;
  return result;
}

uint64_t ParameterIdentifier.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ParameterIdentifier.multicardinalIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_1DCE2933C(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[3];

  v4 = a1[6];
}

void sub_1DCE29388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_1DD0DCF8C();
}

void sub_1DCE293F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *sub_1DCE29490(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = *(a2 + 24);
  v7 = a1[3];
  a1[2] = *(a2 + 16);
  a1[3] = v6;

  a1[4] = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = a1[6];
  a1[6] = *(a2 + 48);

  return a1;
}

uint64_t sub_1DCE29500(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DCE29540(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t initializeWithCopy for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithTake for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParameterIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ParameterIdentifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ParameterUnsupportedConcept.conceptType.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ParameterUnsupportedConcept.__allocating_init(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 72) = 0xD00000000000001BLL;
  *(result + 80) = 0x80000001DD0FAA80;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 88) = a8;
  return result;
}

uint64_t ParameterUnsupportedConcept.init(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = 0xD00000000000001BLL;
  *(v8 + 80) = 0x80000001DD0FAA80;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7 & 1;
  *(v8 + 88) = a8;
  return v8;
}

uint64_t ParameterUnsupportedConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return v0;
}

uint64_t ParameterUnsupportedConcept.__deallocating_deinit()
{
  ParameterUnsupportedConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActionParaphrase.VerbEntityParaphrase.dialog.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ActionParaphrase.VerbEntityParaphrase.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ActionParaphrase.VerbEntityParaphrase.userStatedTask.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_8_58();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.init(dialog:label:userStatedTask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v9 = OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 32);

  return v11(&a6[v6], a5);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BB8, &qword_1DD0FAB20);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_4_1();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE29C84();
  sub_1DD0DF24C();
  v14 = *v4;
  v15 = v4[1];
  OUTLINED_FUNCTION_12_48();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v16 = v4[2];
  v17 = v4[3];
  OUTLINED_FUNCTION_12_48();
  v18 = *(type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0) + 24);
  sub_1DD0DB66C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v19, v20);
  v21 = sub_1DD0DD6CC();
  v23 = v22;
  sub_1DCB51540();
  sub_1DD0DEFFC();
  (*(v8 + 8))(v3, v6);
  return sub_1DCB21A14(v21, v23);
}

unint64_t sub_1DCE29C84()
{
  result = qword_1ECCA7BC0;
  if (!qword_1ECCA7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7BC0);
  }

  return result;
}

uint64_t ActionParaphrase.VerbEntityParaphrase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD6AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  OUTLINED_FUNCTION_16();
  v38 = sub_1DD0DB66C();
  v7 = OUTLINED_FUNCTION_9(v38);
  v35 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BD0, &unk_1DD0FAB28);
  OUTLINED_FUNCTION_9(v15);
  v37 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_4_1();
  v21 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v22 = OUTLINED_FUNCTION_2(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_16();
  v28 = (v27 - v26);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE29C84();
  sub_1DD0DF23C();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  *v28 = sub_1DD0DEF0C();
  v28[1] = v30;
  v28[2] = sub_1DD0DEF0C();
  v28[3] = v31;
  sub_1DCB5414C();
  sub_1DD0DEF4C();
  sub_1DD0DD69C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v32, v33);
  sub_1DD0DD6BC();
  (*(v37 + 8))(v2, v15);
  (*(v35 + 32))(v28 + *(v21 + 24), v14, v38);
  sub_1DCE2B140(v28, a2, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCE2B19C(v28, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
}

uint64_t sub_1DCE2A0F4()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCE2A140(char a1)
{
  if (!a1)
  {
    return 0x676F6C616964;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0xD000000000000019;
}

uint64_t sub_1DCE2A1B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCE2A0F4();
  *a2 = result;
  return result;
}

uint64_t sub_1DCE2A1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCE2A140(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCE2A21C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2A0F4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2A250(uint64_t a1)
{
  v2 = sub_1DCE29C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2A28C(uint64_t a1)
{
  v2 = sub_1DCE29C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t ActionParaphrase.VerbEntityParaphrase.description.getter()
{
  v1 = v0;
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](*v1, v1[1]);
  MEMORY[0x1E12A6780](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x1E12A6780](v1[2], v1[3]);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t static ActionParaphrase.VerbEntityParaphrase.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0) + 24);

  return MEMORY[0x1EEE3B9C8](a1 + v6, a2 + v6);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DDF2C();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD0DDF2C();
  v5 = *(type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0) + 24);
  sub_1DD0DB66C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v6, v7);
  return sub_1DD0DDF1C();
}

uint64_t sub_1DCE2A49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActionParaphrase.VerbEntityParaphrase.hashValue.getter()
{
  sub_1DD0DF1DC();
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DDF2C();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD0DDF2C();
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v5, v6);
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCE2A5B8(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  v4 = *v2;
  v5 = v2[1];
  sub_1DD0DDF2C();
  v6 = v2[2];
  v7 = v2[3];
  sub_1DD0DDF2C();
  v8 = *(a2 + 24);
  sub_1DD0DB66C();
  sub_1DCE2A49C(&qword_1ECCA7BD8, MEMORY[0x1E69D0AE0]);
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

uint64_t ActionParaphrase.appBundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ActionParaphrase.verbEntityParaphrase.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_13_50();

  return sub_1DCE2A6F4(v1 + v3, a1);
}

uint64_t sub_1DCE2A6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ActionParaphrase.isEmpty.getter()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10 - v4;
  OUTLINED_FUNCTION_13_50();
  sub_1DCE2A6F4(v0 + v6, v5);
  v7 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  sub_1DCE2A824(v5);
  return EnumTagSinglePayload == 1 && *(v0 + 8) == 0;
}

uint64_t sub_1DCE2A824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionParaphrase.init(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = OUTLINED_FUNCTION_7_49();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t ActionParaphrase.init(appBundleId:verbEntityParaphrase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  OUTLINED_FUNCTION_13_50();

  return sub_1DCE2A908(a3, a4 + v6);
}

uint64_t sub_1DCE2A908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ActionParaphrase.noParaphrase()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_49();
  result = __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t ActionParaphrase.description.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ELL, 0x80000001DD11F480);
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1E12A6780](v7, v8);

  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD11F4A0);
  OUTLINED_FUNCTION_13_50();
  sub_1DCE2A6F4(v0 + v9, v1);
  v10 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v10);

  return 0;
}

uint64_t sub_1DCE2AADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DD11F4C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE2ABB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1DCE2ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2AADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2AC24(uint64_t a1)
{
  v2 = sub_1DCE2AE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2AC60(uint64_t a1)
{
  v2 = sub_1DCE2AE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionParaphrase.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BE0, &qword_1DD0FAB38);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE2AE34();
  sub_1DD0DF24C();
  v15 = *v3;
  v16 = v3[1];
  v21[15] = 0;
  sub_1DD0DEF8C();
  if (!v2)
  {
    v17 = *(type metadata accessor for ActionParaphrase(0) + 20);
    v21[14] = 1;
    type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    OUTLINED_FUNCTION_3_85();
    sub_1DCE2A49C(v18, v19);
    sub_1DD0DEFAC();
  }

  return (*(v7 + 8))(v13, v5);
}

unint64_t sub_1DCE2AE34()
{
  result = qword_1ECCA7BE8;
  if (!qword_1ECCA7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7BE8);
  }

  return result;
}

uint64_t ActionParaphrase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BF8, &qword_1DD0FAB40);
  v10 = OUTLINED_FUNCTION_9(v9);
  v35 = v11;
  v36 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for ActionParaphrase(0);
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_16();
  v25 = (v24 - v23);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE2AE34();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v33 = v18;
  v27 = v35;
  v28 = v36;
  v38 = 0;
  *v25 = sub_1DD0DEEDC();
  v25[1] = v29;
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v37 = 1;
  OUTLINED_FUNCTION_3_85();
  sub_1DCE2A49C(v30, v31);
  sub_1DD0DEEFC();
  (*(v27 + 8))(v17, v28);
  sub_1DCE2A908(v8, v25 + *(v33 + 20));
  sub_1DCE2B140(v25, v34, type metadata accessor for ActionParaphrase);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCE2B19C(v25, type metadata accessor for ActionParaphrase);
}

uint64_t sub_1DCE2B140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCE2B19C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of ParaphrasableFlow.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3);
}

void *initializeBufferWithCopyOfBuffer for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = v7[1];
    *v6 = *v7;
    v6[1] = v10;
    v11 = v7[3];
    v6[2] = v7[2];
    v6[3] = v11;
    v12 = *(v8 + 24);
    v13 = sub_1DD0DB66C();
    v14 = *(*(v13 - 8) + 16);

    v14(v6 + v12, v7 + v12, v13);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

uint64_t destroy for ActionParaphrase(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = a1 + *(a2 + 20);
  v6 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (!result)
  {
    v8 = *(v5 + 8);

    v9 = *(v5 + 24);

    v10 = *(v6 + 24);
    v11 = sub_1DD0DB66C();
    v12 = *(*(v11 - 8) + 8);

    return v12(v5 + v10, v11);
  }

  return result;
}

void *initializeWithCopy for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = v7[1];
    *v6 = *v7;
    v6[1] = v10;
    v11 = v7[3];
    v6[2] = v7[2];
    v6[3] = v11;
    v12 = *(v8 + 24);
    v13 = sub_1DD0DB66C();
    v14 = *(*(v13 - 8) + 16);

    v14(v6 + v12, v7 + v12, v13);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

void *assignWithCopy for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    if (!v12)
    {
      *v8 = *v9;
      v18 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 1);

      *(v8 + 2) = *(v9 + 2);
      v19 = *(v8 + 3);
      *(v8 + 3) = *(v9 + 3);

      v20 = *(v10 + 24);
      v21 = sub_1DD0DB66C();
      (*(*(v21 - 8) + 24))(&v8[v20], &v9[v20], v21);
      return a1;
    }

    sub_1DCE2B19C(v8, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v8, v9, *(*(v16 - 8) + 64));
    return a1;
  }

  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = *(v9 + 3);
  v13 = *(v10 + 24);
  v14 = sub_1DD0DB66C();
  v15 = *(*(v14 - 8) + 16);

  v15(&v8[v13], &v9[v13], v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  return a1;
}

_OWORD *initializeWithTake for ActionParaphrase(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = v6[1];
    *v5 = *v6;
    v5[1] = v9;
    v10 = *(v7 + 24);
    v11 = sub_1DD0DB66C();
    (*(*(v11 - 8) + 32))(v5 + v10, v6 + v10, v11);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  v13 = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (!EnumTagSinglePayload)
  {
    if (!v13)
    {
      v19 = *(v10 + 1);
      v20 = *(v9 + 1);
      *v9 = *v10;
      *(v9 + 1) = v19;

      v21 = *(v10 + 3);
      v22 = *(v9 + 3);
      *(v9 + 2) = *(v10 + 2);
      *(v9 + 3) = v21;

      v23 = *(v11 + 24);
      v24 = sub_1DD0DB66C();
      (*(*(v24 - 8) + 40))(&v9[v23], &v10[v23], v24);
      return a1;
    }

    sub_1DCE2B19C(v9, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v9, v10, *(*(v17 - 8) + 64));
    return a1;
  }

  v14 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v14;
  v15 = *(v11 + 24);
  v16 = sub_1DD0DB66C();
  (*(*(v16 - 8) + 32))(&v9[v15], &v10[v15], v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  return a1;
}

void sub_1DCE2BBE0()
{
  sub_1DCE2BC78();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCE2BC78()
{
  if (!qword_1EDE4E790)
  {
    type metadata accessor for ActionParaphrase.VerbEntityParaphrase(255);
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE4E790);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1DD0DB66C();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t destroy for ActionParaphrase.VerbEntityParaphrase(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 24);

  v6 = *(a2 + 24);
  v7 = sub_1DD0DB66C();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1DD0DB66C();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *assignWithCopy for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);

  v8 = *(a3 + 24);
  v9 = sub_1DD0DB66C();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *initializeWithTake for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = sub_1DD0DB66C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithTake for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = *(a3 + 24);
  v11 = sub_1DD0DB66C();
  (*(*(v11 - 8) + 40))(&a1[v10], &a2[v10], v11);
  return a1;
}

uint64_t sub_1DCE2C0C8()
{
  result = sub_1DD0DB66C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionParaphrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ActionParaphrase.VerbEntityParaphrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCE2C31C()
{
  result = qword_1ECCA7C10;
  if (!qword_1ECCA7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C10);
  }

  return result;
}

unint64_t sub_1DCE2C374()
{
  result = qword_1ECCA7C18;
  if (!qword_1ECCA7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C18);
  }

  return result;
}

unint64_t sub_1DCE2C3CC()
{
  result = qword_1ECCA7C20;
  if (!qword_1ECCA7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C20);
  }

  return result;
}

unint64_t sub_1DCE2C424()
{
  result = qword_1ECCA7C28;
  if (!qword_1ECCA7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C28);
  }

  return result;
}

unint64_t sub_1DCE2C47C()
{
  result = qword_1ECCA7C30;
  if (!qword_1ECCA7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C30);
  }

  return result;
}

unint64_t sub_1DCE2C4D4()
{
  result = qword_1ECCA7C38;
  if (!qword_1ECCA7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C38);
  }

  return result;
}

uint64_t sub_1DCE2C528@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C40, &qword_1DD0FAF98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C48, &unk_1DD0FAFA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v29 - v14;
  v32 = 0;
  sub_1DCB17CA0(a1, v29);
  type metadata accessor for Parse.ServerConversion();
  v16 = swift_allocObject();
  v17 = v30;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_1DCE34810(a2, &v32, MEMORY[0x1E69E7CC0], v21, v16, v17);
  v24 = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48);
  v30 = sub_1DD0DBC5C();
  v31 = MEMORY[0x1E69D1AD8];
  __swift_allocate_boxed_opaque_existential_1Tm(v29);
  sub_1DD0DBC4C();
  v26 = sub_1DD0DC6DC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v26);
  v27 = sub_1DD0DBD2C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
  sub_1DD0DC75C();
  *(a3 + v25) = v23;
  type metadata accessor for Parse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCE2C810()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x746E65746E496C6ELL && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_76_10();
    if (v1 == v5 && 0x80000001DD11F6D0 == v0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1DCE2C8B8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E65746E496C6ELL;
  }
}

uint64_t sub_1DCE2C8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2C810();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2C924(uint64_t a1)
{
  v2 = sub_1DCE2FD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2C960(uint64_t a1)
{
  v2 = sub_1DCE2FD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DCE2C99C()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v31 = v3;
  v32 = sub_1DD0DC76C();
  v4 = OUTLINED_FUNCTION_9(v32);
  v33 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E08, &qword_1DD0FB820);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = type metadata accessor for NLv3ServerParse();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v25 = v2[4];
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCE2FD54();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1DCB5414C();
    OUTLINED_FUNCTION_56_17();
    OUTLINED_FUNCTION_55_14();
    sub_1DD0DEF4C();
    sub_1DCC91E80(v34, v35);
    sub_1DD0DC74C();
    (*(v33 + 32))(v24, v11, v32);
    type metadata accessor for Parse.ServerConversion();
    OUTLINED_FUNCTION_27_26();
    sub_1DCE2FDA8(v26, v27);
    OUTLINED_FUNCTION_56_17();
    sub_1DD0DEF4C();
    v28 = OUTLINED_FUNCTION_51_20();
    v29(v28);
    sub_1DCB21A14(v34, v35);
    *(v24 + *(v17 + 20)) = v34;
    sub_1DCB247FC(v24, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_23_21();
    sub_1DCE2D030(v24, v30);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2CD14(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7DF0, &qword_1DD0FB818);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_4_1();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v12, v13);
  sub_1DCE2FD54();
  OUTLINED_FUNCTION_58_10();
  v20 = sub_1DD0DC73C();
  v22 = v14;
  sub_1DCB51540();
  sub_1DD0DEFFC();
  sub_1DCB21A14(v20, v22);
  if (!v2)
  {
    v21 = *(v3 + *(type metadata accessor for NLv3ServerParse() + 20));
    type metadata accessor for Parse.ServerConversion();
    OUTLINED_FUNCTION_27_26();
    sub_1DCE2FDA8(v15, v16);
    sub_1DD0DEFFC();
  }

  v17 = OUTLINED_FUNCTION_10_54();
  return v18(v17);
}

uint64_t sub_1DCE2CEB4()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x65756C6156776172 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x746169636F737361 && v0 == 0xEF65756C61566465)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCE2CF90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2CEB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2CFB8(uint64_t a1)
{
  v2 = sub_1DCB34864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2CFF4(uint64_t a1)
{
  v2 = sub_1DCB34864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCE2D030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCE2D088()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == OUTLINED_FUNCTION_57_10() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000011 && 0x80000001DD11F650 == v0;
    if (v5 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0xD000000000000011 && 0x80000001DD11F670 == v0;
      if (v6 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0xD000000000000018 && 0x80000001DD11F690 == v0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_7_22();
        if (v1)
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

uint64_t sub_1DCE2D19C()
{
  result = OUTLINED_FUNCTION_57_10();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE2D230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2D088();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2D258(uint64_t a1)
{
  v2 = sub_1DCE2D98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2D294(uint64_t a1)
{
  v2 = sub_1DCE2D98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Parse.ServerConversion.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_26_6();
  v3 = sub_1DD0DD28C();
  v4 = OUTLINED_FUNCTION_9(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CE0, &qword_1DD0FAFE0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = v1[4];
  v48 = v1;
  OUTLINED_FUNCTION_57_1(v1, v1[3]);
  v15 = sub_1DCE2D98C();
  sub_1DD0DF23C();
  if (!v2)
  {
    v46 = v15;
    sub_1DCB5414C();
    OUTLINED_FUNCTION_56_17();
    OUTLINED_FUNCTION_55_14();
    sub_1DD0DEF4C();
    sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
    sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
    v45 = sub_1DD0DE71C();
    v43 = v49;
    if (v45)
    {
      LOBYTE(v49) = 1;
      OUTLINED_FUNCTION_55_14();
      sub_1DD0DEF0C();
      v19 = sub_1DD0DEE9C();

      if (v19 >= 4)
      {
        OUTLINED_FUNCTION_80_7();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_34_28(v20, 0xD00000000000001DLL);
        OUTLINED_FUNCTION_60_9();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
        sub_1DCE2EF48(&qword_1ECCA7D00, &qword_1ECCA7D08);
        OUTLINED_FUNCTION_56_17();
        OUTLINED_FUNCTION_55_14();
        sub_1DD0DEF4C();
        OUTLINED_FUNCTION_56_17();
        OUTLINED_FUNCTION_55_14();
        sub_1DD0DEEFC();
        v44 = v19;
        if (v50 >> 60 == 15)
        {
          v21 = 0;
          v22 = v3;
          v23 = v0;
          v24 = v49;
LABEL_14:
          sub_1DD0DD27C();
          OUTLINED_FUNCTION_60_9();

          v25 = OUTLINED_FUNCTION_55_0();
          v26(v25);
          v27 = swift_allocObject();
          v28 = MEMORY[0x1E69CE220];
          *(v27 + 64) = v22;
          *(v27 + 72) = v28;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v27 + 40));
          (*(v47 + 16))(boxed_opaque_existential_1Tm, v23, v22);
          *(v27 + 16) = v45;
          *(v27 + 24) = v44;
          *(v27 + 32) = v24;
          (*(v47 + 8))(v23, v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          goto LABEL_7;
        }

        objc_allocWithZone(MEMORY[0x1E696ACD0]);
        v30 = OUTLINED_FUNCTION_68_2();
        sub_1DCC91E80(v30, v31);
        v32 = OUTLINED_FUNCTION_68_2();
        sub_1DCE2EE68(v32, v33);
        v22 = v3;
        v23 = v0;
        v34 = OUTLINED_FUNCTION_26_6();
        sub_1DCB10E5C(v34, v35, v36);
        v37 = *MEMORY[0x1E696A508];
        sub_1DD0DDFBC();
        v21 = sub_1DD0DE88C();

        v24 = v49;
        if (v21)
        {
          sub_1DCB2C520(v49, v50);

          v38 = v21;
          goto LABEL_14;
        }

        v39 = sub_1DD0DECAC();
        OUTLINED_FUNCTION_34();
        v41 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D18, &qword_1DD0FAFF0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1DD0E07C0;
        *(v42 + 56) = &_s10CodingKeysON_2;
        *(v42 + 64) = v46;
        *(v42 + 32) = 3;
        sub_1DD0DEC8C();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6B00], v39);
        swift_willThrow();
        sub_1DCB21A14(v43, v50);

        sub_1DCB2C520(v49, v50);
      }
    }

    else
    {
      OUTLINED_FUNCTION_80_7();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_34_28(v18, 0xD00000000000001DLL);
      OUTLINED_FUNCTION_60_9();
    }

    v16 = OUTLINED_FUNCTION_55_0();
    v17(v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
LABEL_7:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCE2D98C()
{
  result = qword_1ECCA7CE8;
  if (!qword_1ECCA7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7CE8);
  }

  return result;
}

void Parse.ServerConversion.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v0;
  v4 = v3;
  v35 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D20, &qword_1DD0FAFF8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_4_1();
  v10 = v4[4];
  OUTLINED_FUNCTION_57_1(v4, v4[3]);
  sub_1DCE2D98C();
  sub_1DD0DF24C();
  v11 = objc_opt_self();
  v12 = *(v2 + 16);
  v33 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v33];
  v14 = v33;
  if (!v13)
  {
    v20 = v14;
    sub_1DD0DAE0C();

    swift_willThrow();
LABEL_5:
    v21 = OUTLINED_FUNCTION_10_54();
    v22(v21);
    goto LABEL_7;
  }

  v15 = sub_1DD0DAF2C();
  v17 = v16;

  v33 = v15;
  v34 = v17;
  sub_1DCB51540();
  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFFC();
  if (!v1)
  {
    *(v2 + 24);
    LOBYTE(v33) = 1;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFBC();

    v33 = *(v2 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
    sub_1DCE2EF48(&qword_1ECCA7D28, &qword_1ECCA7D30);
    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    v31 = *(v2 + 72);
    OUTLINED_FUNCTION_57_1((v2 + 40), *(v2 + 64));
    v24 = sub_1DD0DD2BC();
    if (v24)
    {
      v25 = v24;
      v32 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      [v32 encodeObject:v25 forKey:*MEMORY[0x1E696A508]];
      v30 = v25;
      v26 = [v32 encodedData];
      v27 = sub_1DD0DAF2C();
      v29 = v28;

      v33 = v27;
      v34 = v29;
      OUTLINED_FUNCTION_48_17();
      OUTLINED_FUNCTION_56_2();
      sub_1DD0DEFFC();
      sub_1DCB21A14(v15, v17);

      sub_1DCB21A14(v33, v34);
      goto LABEL_5;
    }
  }

  v18 = OUTLINED_FUNCTION_10_54();
  v19(v18);
  sub_1DCB21A14(v15, v17);
LABEL_7:
  v23 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2DE0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD11F6B0 == a2;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552646C756F6873 && a2 == 0xED000065766C6F73;
    if (v6 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_7_22();
      if (a1)
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

uint64_t sub_1DCE2DF08(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x6552646C756F6873;
  }

  return 0x6574656D61726170;
}

void sub_1DCE2DF7C(void *a1@<X8>)
{
  Parse.ServerConversion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DCE2DFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2DE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2DFFC(uint64_t a1)
{
  v2 = sub_1DCE2EFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E038(uint64_t a1)
{
  v2 = sub_1DCE2EFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitParameterMetadata.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D38, &unk_1DD0FB000);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_28_10();
  v10 = v2[4];
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCE2EFE4();
  OUTLINED_FUNCTION_61_2();
  if (v0)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_52_19();
    v11 = sub_1DD0DEF0C();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCD4F0A8(&qword_1ECCA7D50);
    OUTLINED_FUNCTION_52_19();
    sub_1DD0DEF4C();
    v33 = v11;
    v35 = v13;
    v34 = v5;
    v14 = 0;
    v15 = *(v37 + 16);
    v16 = v37 + 40;
    v36 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v17 = (v16 + 16 * v14);
    while (v15 != v14)
    {
      if (v14 >= *(v37 + 16))
      {
        __break(1u);
        return;
      }

      ++v14;
      v18 = v17 + 2;
      v0 = *(v17 - 1);
      v19 = *v17;

      v20 = sub_1DD0DEE9C();

      v17 = v18;
      if (v20 < 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DCE19B64(0, *(v36 + 16) + 1, 1, v36);
          v36 = v23;
        }

        v22 = *(v36 + 16);
        v21 = *(v36 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1DCE19B64(v21 > 1, v22 + 1, 1, v36);
          v36 = v24;
        }

        *(v36 + 16) = v22 + 1;
        *(v36 + v22 + 32) = v20;
        v16 = v37 + 40;
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_52_19();
    v25 = sub_1DD0DEF1C();
    if (v0)
    {
      v26 = *(v34 + 8);
      v27 = OUTLINED_FUNCTION_71_9();
      v28(v27);

      goto LABEL_14;
    }

    v29 = v25;
    v30 = *(v34 + 8);
    v31 = OUTLINED_FUNCTION_71_9();
    v32(v31);
    swift_allocObject();
    SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v33, v35, v29 & 1, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_19_19();
}

void SiriKitParameterMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7D58, &qword_1DD0FB010);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v17, v18);
  sub_1DCE2EFE4();
  OUTLINED_FUNCTION_58_10();
  v19 = *(v3 + 16);
  v20 = *(v19 + 16);
  if (v20)
  {
    v33 = v1;
    v34 = v3;
    v35 = v14;
    v36 = v8;
    v37 = v6;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v21 = (v19 + 32);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_66_8();
    do
    {
      v25 = *v21++;
      v26 = 0xE500000000000000;
      v27 = 0x5445534E55;
      switch(v25)
      {
        case 1:
          v27 = v22;
          goto LABEL_6;
        case 2:
          v27 = v23;
LABEL_6:
          v26 = 0xE900000000000044;
          break;
        case 3:
          v26 = 0xE800000000000000;
          v27 = v24;
          break;
        default:
          break;
      }

      v28 = *(v39 + 16);
      if (v28 >= *(v39 + 24) >> 1)
      {
        sub_1DCB38954();
        OUTLINED_FUNCTION_66_8();
        OUTLINED_FUNCTION_69_3();
      }

      *(v39 + 16) = v28 + 1;
      v29 = v39 + 16 * v28;
      *(v29 + 32) = v27;
      *(v29 + 40) = v26;
      --v20;
    }

    while (v20);
    v8 = v36;
    v6 = v37;
    v3 = v34;
    v14 = v35;
    v2 = v33;
  }

  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCD4F0A8(&qword_1EDE46290);
  sub_1DD0DEFFC();
  if (v2)
  {
    (*(v8 + 8))(v14, v6);
  }

  else
  {

    v30 = *(v3 + 24);
    OUTLINED_FUNCTION_54_15();
    sub_1DD0DEFCC();
    v31 = *(v3 + 32);
    v32 = *(v3 + 40);
    sub_1DD0DEFBC();
    (*(v8 + 8))(v14, v6);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2E6B4()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6174614472657375 && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1DCE2E760(void *a1@<X8>)
{
  SiriKitParameterMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DCE2E7B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2E6B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2E7D8(uint64_t a1)
{
  v2 = sub_1DCB34FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E814(uint64_t a1)
{
  v2 = sub_1DCB34FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1DCE2E850()
{
  v0 = sub_1DD0DEE9C();

  return v0 != 0;
}

BOOL sub_1DCE2E8A4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCE2E850();
  *a2 = result;
  return result;
}

BOOL sub_1DCE2E90C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2E850();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2E944(uint64_t a1)
{
  v2 = sub_1DCE2F038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E980(uint64_t a1)
{
  v2 = sub_1DCE2F038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Parse.PegasusResult.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D78, &qword_1DD0FB030);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_1();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v10, v11);
  sub_1DCE2F038();
  OUTLINED_FUNCTION_58_10();
  sub_1DD0DB1EC();
  OUTLINED_FUNCTION_22_29();
  sub_1DCE2FDA8(v12, v13);
  v14 = sub_1DD0DD6CC();
  if (v1)
  {
    v16 = OUTLINED_FUNCTION_10_54();
    return v17(v16);
  }

  else
  {
    v19 = v14;
    v20 = v15;
    sub_1DCB51540();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();
    v21 = OUTLINED_FUNCTION_10_54();
    v22(v21);
    return sub_1DCB21A14(v19, v20);
  }
}

void Parse.PegasusResult.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v40 = v4;
  v5 = sub_1DD0DD6AC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  OUTLINED_FUNCTION_16();
  v8 = sub_1DD0DB1EC();
  v9 = OUTLINED_FUNCTION_9(v8);
  v39 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D90, &qword_1DD0FB038);
  v18 = OUTLINED_FUNCTION_9(v17);
  v41 = v19;
  v42 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v37 - v24;
  v26 = type metadata accessor for Parse.PegasusResult(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  v29 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCE2F038();
  sub_1DD0DF23C();
  if (!v1)
  {
    v38 = v0;
    v30 = v41;
    sub_1DCB5414C();
    v31 = v42;
    sub_1DD0DEF4C();
    v37 = *(&v43 + 1);
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_1DD0DD69C();
    OUTLINED_FUNCTION_22_29();
    sub_1DCE2FDA8(v32, v33);
    v34 = v31;
    v35 = v16;
    sub_1DD0DD6BC();
    (*(v30 + 8))(v25, v34);
    v36 = v38;
    (*(v39 + 32))(v38, v35, v8);
    OUTLINED_FUNCTION_5_74();
    sub_1DCB541A0(v36, v40);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_19_19();
}

id sub_1DCE2EE68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD0DAEFC();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1DD0DAE0C();

    swift_willThrow();
  }

  sub_1DCB21A14(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1DCE2EF48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
    sub_1DCE2FDA8(a2, type metadata accessor for SiriKitParameterMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DCE2EFE4()
{
  result = qword_1ECCA7D40;
  if (!qword_1ECCA7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D40);
  }

  return result;
}

unint64_t sub_1DCE2F038()
{
  result = qword_1ECCA7D80;
  if (!qword_1ECCA7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D80);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10CodingKeysOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DCE2F310(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
  }

  else
  {
    v6 = sub_1DD0DC76C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCE2F3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DC76C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

void sub_1DCE2F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_1DD0DCF8C();
}

void sub_1DCE2F4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE2F558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1DCE2F5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1DCE2F680()
{
  result = sub_1DD0DC76C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for ParseCodingErrors(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  return sub_1DCE2F728();
}

uint64_t sub_1DCE2F730(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_3_86();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t *assignWithCopy for ParseCodingErrors(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_3_86();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = v3;
  a1[1] = v4;
  *(a1 + 16) = v5;
  sub_1DCE2F728();
  return a1;
}

uint64_t *assignWithTake for ParseCodingErrors(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1DCE2F728();
  return a1;
}

unint64_t sub_1DCE2F830()
{
  result = qword_1ECCA7D98;
  if (!qword_1ECCA7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D98);
  }

  return result;
}

unint64_t sub_1DCE2F888()
{
  result = qword_1ECCA7DA0;
  if (!qword_1ECCA7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DA0);
  }

  return result;
}

unint64_t sub_1DCE2F8E0()
{
  result = qword_1ECCA7DA8;
  if (!qword_1ECCA7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DA8);
  }

  return result;
}

unint64_t sub_1DCE2F938()
{
  result = qword_1ECCA7DB0;
  if (!qword_1ECCA7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DB0);
  }

  return result;
}

unint64_t sub_1DCE2F990()
{
  result = qword_1ECCA7DB8;
  if (!qword_1ECCA7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DB8);
  }

  return result;
}

unint64_t sub_1DCE2F9E8()
{
  result = qword_1ECCA7DC0;
  if (!qword_1ECCA7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DC0);
  }

  return result;
}

unint64_t sub_1DCE2FA40()
{
  result = qword_1ECCA7DC8;
  if (!qword_1ECCA7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DC8);
  }

  return result;
}

unint64_t sub_1DCE2FA98()
{
  result = qword_1EDE4D8D0;
  if (!qword_1EDE4D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8D0);
  }

  return result;
}

unint64_t sub_1DCE2FAF0()
{
  result = qword_1EDE4D8D8;
  if (!qword_1EDE4D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8D8);
  }

  return result;
}

unint64_t sub_1DCE2FB48()
{
  result = qword_1ECCA7DD0;
  if (!qword_1ECCA7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DD0);
  }

  return result;
}

unint64_t sub_1DCE2FBA0()
{
  result = qword_1ECCA7DD8;
  if (!qword_1ECCA7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DD8);
  }

  return result;
}

unint64_t sub_1DCE2FBF8()
{
  result = qword_1ECCA7DE0;
  if (!qword_1ECCA7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DE0);
  }

  return result;
}

unint64_t sub_1DCE2FC50()
{
  result = qword_1ECCA7DE8;
  if (!qword_1ECCA7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DE8);
  }

  return result;
}

unint64_t sub_1DCE2FCA8()
{
  result = qword_1EDE4D960;
  if (!qword_1EDE4D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D960);
  }

  return result;
}

unint64_t sub_1DCE2FD00()
{
  result = qword_1EDE4D968;
  if (!qword_1EDE4D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D968);
  }

  return result;
}

unint64_t sub_1DCE2FD54()
{
  result = qword_1ECCA7DF8;
  if (!qword_1ECCA7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DF8);
  }

  return result;
}

uint64_t sub_1DCE2FDA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DCE2FE04()
{
  result = qword_1ECCA7E18;
  if (!qword_1ECCA7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E18);
  }

  return result;
}

unint64_t sub_1DCE2FE5C()
{
  result = qword_1ECCA7E20;
  if (!qword_1ECCA7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E20);
  }

  return result;
}

unint64_t sub_1DCE2FEB4()
{
  result = qword_1ECCA7E28;
  if (!qword_1ECCA7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E28);
  }

  return result;
}

void sub_1DCE2FF24()
{
  OUTLINED_FUNCTION_50();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v109 - v4;
  v6 = sub_1DD0DB5BC();
  v7 = OUTLINED_FUNCTION_9(v6);
  v113 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_12();
  v115 = type metadata accessor for USOParse();
  v13 = OUTLINED_FUNCTION_2(v115);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_10_2();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_33_2();
  v114 = v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v109 - v27;
  v29 = type metadata accessor for Parse(0);
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  OUTLINED_FUNCTION_10_2();
  v36 = v34 - v35;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v109 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = (&v109 - v43);
  v45 = OUTLINED_FUNCTION_1_87();
  sub_1DCB24628(v45, v44, v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v62 = *v44;
    v61 = v44[1];
    v63 = v44[2];
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v64 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v64, qword_1EDE57E00);

    v65 = sub_1DD0DD8EC();
    v66 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_151();
      v68 = OUTLINED_FUNCTION_83();
      v116 = v68;
      *v67 = 136315138;

      v69 = sub_1DCB10E9C(v62, v61, &v116);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_1DCAFC000, v65, v66, "[Parse.isUserCancelled] Received DirectInvocation: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    if (qword_1ECCA12E0 != -1)
    {
      swift_once();
    }

    v70 = [qword_1ECCA5FD8 identifier];
    v71 = sub_1DD0DDFBC();
    v73 = v72;

    if (v62 != v71 || v61 != v73)
    {
      sub_1DD0DF0AC();
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v75 = sub_1DD0DD8FC();
      v76 = __swift_project_value_buffer(v75, qword_1EDE57E00);
      v77 = OUTLINED_FUNCTION_1_87();
      sub_1DCB24628(v77, v41, v78);
      v79 = v76;
      v80 = sub_1DD0DD8EC();
      v81 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v81))
      {
        v82 = OUTLINED_FUNCTION_151();
        v83 = OUTLINED_FUNCTION_83();
        v116 = v83;
        *v82 = 136315138;
        sub_1DCB24628(v41, v36, type metadata accessor for Parse);
        v84 = sub_1DD0DE02C();
        v86 = v85;
        sub_1DCB283D8(v41, type metadata accessor for Parse);
        v87 = sub_1DCB10E9C(v84, v86, &v116);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_1DCAFC000, v80, v79, "[Parse.isUserCancelled] Unsupported parse: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      else
      {

        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v41, v108);
      }

      OUTLINED_FUNCTION_4_42();
      v103 = v44;
      goto LABEL_32;
    }

    sub_1DCC6D300(v44, v28);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v48 = sub_1DD0DD8FC();
    v49 = __swift_project_value_buffer(v48, qword_1EDE57E00);
    OUTLINED_FUNCTION_3_88();
    sub_1DCB24628(v28, v0, v50);
    v51 = sub_1DD0DD8EC();
    v52 = sub_1DD0DE6CC();
    if (OUTLINED_FUNCTION_51_1(v52))
    {
      OUTLINED_FUNCTION_151();
      v109 = v49;
      v116 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_5_75(4.8149e-34);
      v54 = v53;
      v110 = v6;
      sub_1DCB24628(v0, v114, v53);
      v55 = sub_1DD0DE02C();
      v111 = v19;
      v57 = v56;
      sub_1DCB283D8(v0, v54);
      v58 = sub_1DCB10E9C(v55, v57, &v116);
      v19 = v111;

      *(v49 + 4) = v58;
      v6 = v110;
      OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v59, v60, "[Parse.isUserCancelled] Checking if parse contains cancellation: %s");
      OUTLINED_FUNCTION_10_1();
      v49 = v109;
      OUTLINED_FUNCTION_80();
    }

    else
    {

      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v0, v88);
    }

    Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1DCB0E9D8(v5, &qword_1ECCA29B8, &qword_1DD0E96C0);
      OUTLINED_FUNCTION_3_88();
      sub_1DCB24628(v28, v19, v89);
      v90 = sub_1DD0DD8EC();
      v91 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_51_1(v91))
      {
        OUTLINED_FUNCTION_151();
        v92 = OUTLINED_FUNCTION_10_0();
        v116 = v92;
        OUTLINED_FUNCTION_5_75(4.8149e-34);
        v94 = v93;
        sub_1DCB24628(v19, v114, v93);
        v95 = sub_1DD0DE02C();
        v96 = v19;
        v97 = v95;
        v99 = v98;
        sub_1DCB283D8(v96, v94);
        v100 = sub_1DCB10E9C(v97, v99, &v116);

        *(v49 + 4) = v100;
        OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v101, v102, "[Parse.isUserCancelled] Cannot extract task: parse has no UDAs: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();

        v103 = v28;
        v104 = v94;
      }

      else
      {

        sub_1DCB283D8(v19, type metadata accessor for USOParse);
        v103 = v28;
        v104 = type metadata accessor for USOParse;
      }

LABEL_32:
      sub_1DCB283D8(v103, v104);
      goto LABEL_33;
    }

    v106 = v112;
    v105 = v113;
    (*(v113 + 32))(v112, v5, v6);
    sub_1DD0DB54C();
    (*(v105 + 8))(v106, v6);
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v28, v107);
  }

LABEL_33:
  OUTLINED_FUNCTION_49();
}

void Siri_Nlu_External_UserParse.preferredUserDialogAct.getter()
{
  OUTLINED_FUNCTION_50();
  v49 = v1;
  v2 = sub_1DD0DB5BC();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_33_2();
  v45 = v14;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  v44 = v17;
  OUTLINED_FUNCTION_29_0();
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  OUTLINED_FUNCTION_33_2();
  v47 = v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_71_0();
  v46 = v27;
  v48 = v0;
  v28 = sub_1DD0DB46C();
  v29 = 0;
  v30 = *(v28 + 16);
  v31 = (v5 + 8);
  while (v30 != v29)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_20_24();
    (*(v5 + 16))(v22, v32 + v33 * v29, v2);
    if (sub_1DD0DB52C())
    {

      v39 = *(v5 + 32);
      v40 = v47;
      v39(v47, v22, v2);
      v41 = v46;
      goto LABEL_14;
    }

    ++v29;
    (*v31)(v22, v2);
  }

  v34 = sub_1DD0DB46C();
  v35 = 0;
  v36 = *(v34 + 16);
  while (1)
  {
    if (v36 == v35)
    {

      v42 = sub_1DD0DB46C();
      sub_1DCC621EC(v42);

      goto LABEL_15;
    }

    if (v35 >= *(v34 + 16))
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_20_24();
    (*(v5 + 16))(v11, v37 + v38 * v35, v2);
    if (sub_1DD0DB51C())
    {
      break;
    }

    ++v35;
    (*v31)(v11, v2);
  }

  v39 = *(v5 + 32);
  v40 = v45;
  v39(v45, v11, v2);
  v41 = v44;
LABEL_14:
  v39(v41, v40, v2);
  v43 = v49;
  v39(v49, v41, v2);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v2);
LABEL_15:
  OUTLINED_FUNCTION_49();
}

void sub_1DCE30A18()
{
  OUTLINED_FUNCTION_50();
  v1 = sub_1DD0DB44C();
  v2 = OUTLINED_FUNCTION_9(v1);
  v192 = v3;
  v193 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_71_0();
  v189[1] = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DD0DB66C();
  v14 = OUTLINED_FUNCTION_9(v13);
  v190 = v15;
  v191 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  OUTLINED_FUNCTION_10_2();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_71_0();
  v189[0] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  OUTLINED_FUNCTION_10_2();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_71_0();
  v197 = v33;
  OUTLINED_FUNCTION_12();
  v201 = sub_1DD0DB5BC();
  v34 = OUTLINED_FUNCTION_9(v201);
  v199 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34, v38);
  OUTLINED_FUNCTION_10_2();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_71_0();
  v198 = v44;
  OUTLINED_FUNCTION_12();
  v196 = type metadata accessor for USOParse();
  v45 = OUTLINED_FUNCTION_2(v196);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45, v48);
  OUTLINED_FUNCTION_10_2();
  v194 = v49 - v50;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_33_2();
  v195 = v53;
  OUTLINED_FUNCTION_29_0();
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v58 = v189 - v57;
  MEMORY[0x1EEE9AC00](v56, v59);
  OUTLINED_FUNCTION_71_0();
  v200 = v60;
  v61 = OUTLINED_FUNCTION_12();
  v62 = type metadata accessor for Parse(v61);
  v63 = OUTLINED_FUNCTION_2(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63, v66);
  OUTLINED_FUNCTION_10_2();
  v69 = v67 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = (v189 - v74);
  v76 = OUTLINED_FUNCTION_1_87();
  sub_1DCB24628(v76, v75, v77);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v200 = v30;
    v108 = v21;
    v197 = v9;
    v198 = v41;
    v110 = *v75;
    v109 = v75[1];
    v111 = v75[2];
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v112 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v112, qword_1EDE57E00);

    v113 = sub_1DD0DD8EC();
    v114 = sub_1DD0DE6CC();

    v115 = v108;
    if (os_log_type_enabled(v113, v114))
    {
      v116 = OUTLINED_FUNCTION_151();
      v196 = v108;
      v117 = v116;
      v118 = OUTLINED_FUNCTION_83();
      v202 = v118;
      *v117 = 136315138;
      *&v203 = v110;
      *(&v203 + 1) = v109;
      *&v204 = v111;

      v119 = sub_1DD0DE02C();
      v121 = sub_1DCB10E9C(v119, v120, &v202);

      *(v117 + 4) = v121;
      _os_log_impl(&dword_1DCAFC000, v113, v114, "[Parse.ontologyGraph] Processing .directInvocation: %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      OUTLINED_FUNCTION_80();
      v115 = v196;
      OUTLINED_FUNCTION_80();
    }

    v122 = v200;
    if (v110 != 0xD000000000000028 || 0x80000001DD11D600 != v109)
    {
      OUTLINED_FUNCTION_54_3();
      if ((sub_1DD0DF0AC() & 1) == 0)
      {

        v167 = sub_1DD0DD8EC();
        v174 = sub_1DD0DE6EC();

        if (!os_log_type_enabled(v167, v174))
        {

          goto LABEL_56;
        }

        OUTLINED_FUNCTION_151();
        v175 = OUTLINED_FUNCTION_10_0();
        *&v203 = v175;
        *v115 = 136315138;

        v176 = OUTLINED_FUNCTION_54_3();
        v179 = sub_1DCB10E9C(v176, v177, v178);

        *(v115 + 4) = v179;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v180, v181, v182, v183, v184, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v175);
        OUTLINED_FUNCTION_80();
        goto LABEL_53;
      }
    }

    if (v111)
    {
      sub_1DCB90D40(0x6F697463656C6573, 0xE90000000000006ELL, v111);

      v124 = v201;
      if (*(&v204 + 1))
      {
        v125 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v122, v125 ^ 1u, 1, v124);
        if (__swift_getEnumTagSinglePayload(v122, 1, v124) != 1)
        {
          v127 = v198;
          v126 = v199;
          (*(v199 + 32))(v198, v122, v124);
          if (sub_1DD0DB51C())
          {
            sub_1DD0DB56C();
            sub_1DD0DB63C();
            (*(v190 + 8))(v115, v191);
            sub_1DD0DB7EC();
            v187 = OUTLINED_FUNCTION_10_55();
            v188(v187);
            sub_1DD0DCF8C();
          }

          (*(v126 + 8))(v127, v124);
          goto LABEL_49;
        }

LABEL_48:
        sub_1DCB0E9D8(v122, &qword_1ECCA29B8, &qword_1DD0E96C0);
LABEL_49:
        v167 = sub_1DD0DD8EC();
        v168 = sub_1DD0DE6EC();
        if (!OUTLINED_FUNCTION_22(v168))
        {
LABEL_56:

          goto LABEL_57;
        }

        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v169, v170, v171, v172, v173, 2u);
LABEL_53:
        OUTLINED_FUNCTION_80();
        goto LABEL_56;
      }
    }

    else
    {

      v203 = 0u;
      v204 = 0u;
      v124 = v201;
    }

    sub_1DCB0E9D8(&v203, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_storeEnumTagSinglePayload(v122, 1, 1, v124);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v97 = *v75;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v98 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v98, qword_1EDE57E00);
    swift_unknownObjectRetain();
    v99 = sub_1DD0DD8EC();
    v100 = sub_1DD0DE6CC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = OUTLINED_FUNCTION_151();
      v102 = OUTLINED_FUNCTION_83();
      *&v203 = v102;
      *v101 = 136315138;
      v202 = v97;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
      v103 = sub_1DD0DE02C();
      v105 = sub_1DCB10E9C(v103, v104, &v203);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_1DCAFC000, v99, v100, "[Parse.ontologyGraph] Processing .NLv4IntentOnly(act): %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_80();
    }

    objc_opt_self();
    v106 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (v106)
    {
      v107 = [v106 task];
      sub_1DD0DE7CC();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v160 = sub_1DD0DD8EC();
      v161 = sub_1DD0DE6EC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = OUTLINED_FUNCTION_151();
        v163 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_21_28(v163);
        *v162 = 136315138;
        v202 = v97;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
        v164 = sub_1DD0DE02C();
        v166 = sub_1DCB10E9C(v164, v165, &v203);

        *(v162 + 4) = v166;
        _os_log_impl(&dword_1DCAFC000, v160, v161, "[Parse.ontologyGraph] Cannot parse NLv4IntentOnly: %s", v162, 0xCu);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v79 = v200;
      sub_1DCC6D300(v75, v200);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v80 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v80, qword_1EDE57E00);
      OUTLINED_FUNCTION_3_88();
      sub_1DCB24628(v79, v58, v81);
      v82 = sub_1DD0DD8EC();
      v83 = sub_1DD0DE6CC();
      if (OUTLINED_FUNCTION_51_1(v83))
      {
        OUTLINED_FUNCTION_151();
        v84 = OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_21_28(v84);
        OUTLINED_FUNCTION_5_75(4.8149e-34);
        v86 = v85;
        sub_1DCB24628(v58, v195, v85);
        v87 = sub_1DD0DE02C();
        v89 = v88;
        sub_1DCB283D8(v58, v86);
        v90 = v87;
        v79 = v200;
        v91 = sub_1DCB10E9C(v90, v89, &v203);
        v92 = v201;

        *(v41 + 4) = v91;
        OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v93, v94, "[Parse.ontologyGraph] Processing .uso(usoParse): %s");
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();

        v96 = v198;
        v95 = v199;
      }

      else
      {

        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v58, v143);
        v96 = v198;
        v95 = v199;
        v92 = v201;
      }

      v144 = v197;
      Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
      if (__swift_getEnumTagSinglePayload(v144, 1, v92) != 1)
      {
        (*(v95 + 32))(v96, v144, v92);
        v148 = v189[0];
        sub_1DD0DB56C();
        sub_1DD0DB63C();
        (*(v190 + 8))(v148, v191);
        sub_1DD0DB7EC();
        v185 = OUTLINED_FUNCTION_10_55();
        v186(v185);
        sub_1DD0DCF8C();
      }

      sub_1DCB0E9D8(v144, &qword_1ECCA29B8, &qword_1DD0E96C0);
      OUTLINED_FUNCTION_3_88();
      v149 = v194;
      sub_1DCB24628(v79, v194, v150);
      v151 = sub_1DD0DD8EC();
      v152 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v151, v152))
      {
        v154 = OUTLINED_FUNCTION_151();
        v155 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_21_28(v155);
        *v154 = 136315138;
        sub_1DCB24628(v149, v195, type metadata accessor for USOParse);
        v156 = sub_1DD0DE02C();
        v158 = v157;
        sub_1DCB283D8(v149, type metadata accessor for USOParse);
        v159 = sub_1DCB10E9C(v156, v158, &v203);

        *(v154 + 4) = v159;
        _os_log_impl(&dword_1DCAFC000, v151, v152, "[Parse.ontologyGraph] Cannot extract task: parse has no UDAs: %s", v154, 0xCu);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCB283D8(v149, type metadata accessor for USOParse);
      }

      v147 = v79;
      v146 = type metadata accessor for USOParse;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v128 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v128, qword_1EDE57E00);
      v129 = OUTLINED_FUNCTION_1_87();
      sub_1DCB24628(v129, v0, v130);
      v131 = sub_1DD0DD8EC();
      v132 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v132))
      {
        OUTLINED_FUNCTION_151();
        v133 = OUTLINED_FUNCTION_10_0();
        *&v203 = v133;
        *v41 = 136315138;
        sub_1DCB24628(v0, v69, type metadata accessor for Parse);
        v134 = sub_1DD0DE02C();
        v136 = v135;
        sub_1DCB283D8(v0, type metadata accessor for Parse);
        v137 = sub_1DCB10E9C(v134, v136, &v203);

        *(v41 + 4) = v137;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v138, v139, v140, v141, v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v0, v145);
      }

      OUTLINED_FUNCTION_4_42();
      v147 = v75;
    }

    sub_1DCB283D8(v147, v146);
  }

LABEL_57:
  OUTLINED_FUNCTION_49();
}

void SIRINLUUserParse.preferredUserDialogAct.getter()
{
  OUTLINED_FUNCTION_50();
  v5 = [v0 userDialogActs];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
  v7 = sub_1DD0DE2EC();

  sub_1DCB08B14(v7);
  OUTLINED_FUNCTION_26_26();
  while (v1 != v2)
  {
    if (v3)
    {
      v9 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x1E12A72C0](v9);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_25;
      }

      v8 = *(v7 + 8 * v2 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      MEMORY[0x1E12A72C0](0, v6);
      goto LABEL_19;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v2;
  }

  v10 = [v0 userDialogActs];
  v11 = sub_1DD0DE2EC();

  sub_1DCB08B14(v11);
  OUTLINED_FUNCTION_26_26();
  while (v1 != v2)
  {
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x1E12A72C0](v13);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_27;
      }

      v12 = *(v11 + 8 * v2 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v2;
  }

  v14 = [v0 userDialogActs];
  v6 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v6))
  {
    sub_1DCB35460(0, (v6 & 0xC000000000000001) == 0, v6);
    if ((v6 & 0xC000000000000001) == 0)
    {
      v15 = *(v6 + 32);
      swift_unknownObjectRetain();
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_19:

  OUTLINED_FUNCTION_49();
}

unint64_t sub_1DCE31CBC()
{
  result = qword_1ECCA7E38;
  if (!qword_1ECCA7E38)
  {
    sub_1DD0DC5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E38);
  }

  return result;
}

uint64_t sub_1DCE31D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E48, &qword_1DD0FB940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCE31D90()
{
  result = qword_1ECCA7E50;
  if (!qword_1ECCA7E50)
  {
    sub_1DD0DC08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E50);
  }

  return result;
}

void sub_1DCE31DF4()
{
  OUTLINED_FUNCTION_50();
  v0 = sub_1DD0DC08C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E40, &qword_1DD0FB938);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E48, &qword_1DD0FB940);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_10_2();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1DD0DBDEC();
  if (v19[3])
  {
    sub_1DD0DC38C();
    if (swift_dynamicCast())
    {
      sub_1DD0DCF8C();
    }
  }

  else
  {
    sub_1DCB0E9D8(v19, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE32220(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_1DCB08B14(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 != v7;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v6, a1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    v9 = a2();

    v6 = v7 + 1;
    if (v9)
    {
      return v5 != v7;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 8 * v6 + 32);
    sub_1DD0DCF8C();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DCE32318(uint64_t (*a1)(void))
{
  sub_1DD0DB7DC();
  LOBYTE(a1) = a1();

  return a1 & 1;
}

void Array<A>.hasWantedToPause.getter()
{
  sub_1DCE32578();
}

{
  sub_1DCE3281C();
}

void Array<A>.hasCancelled.getter()
{
  sub_1DCE32578();
}

{
  sub_1DCE3281C();
}

void Array<A>.hasRejected.getter()
{
  sub_1DCE32578();
}

{
  sub_1DCE3281C();
}

void Array<A>.hasDirectDismissal.getter()
{
  sub_1DCE323FC();
}

{
  sub_1DCE32C18();
}

void Array<A>.hasThankYou.getter()
{
  sub_1DCE323FC();
}

{
  sub_1DCE32C18();
}

void sub_1DCE323FC()
{
  OUTLINED_FUNCTION_50();
  v19 = v1;
  v3 = v2;
  v4 = sub_1DD0DB5BC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v11 = *(v3 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v20 = v13;
    v14 = *(v12 + 64);
    OUTLINED_FUNCTION_19_32();
    v16 = v3 + v15;
    v17 = *(v12 + 56);
    do
    {
      v20(v0, v16, v4);
      sub_1DD0DB7DC();
      v18 = v19();

      (*(v12 - 8))(v0, v4);
      if (v18)
      {
        break;
      }

      v16 += v17;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCE32578()
{
  OUTLINED_FUNCTION_50();
  v19 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(v2 + 16);
  do
  {
    if (v14 == v13)
    {
      break;
    }

    v15 = *(v6 + 80);
    OUTLINED_FUNCTION_19_32();
    v17 = (*(v6 + 16))(v12, v2 + v16 + *(v6 + 72) * v13++, v3);
    v18 = v19(v17);
    (*(v6 + 8))(v12, v3);
  }

  while ((v18 & 1) == 0);
  OUTLINED_FUNCTION_49();
}

uint64_t Parse.interpretableAsUniversalAction.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Parse(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = type metadata accessor for USOParse();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1DCB29E58(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1DCC6D300(v9, v17);
    v18 = sub_1DD0DB49C();
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v17, v19);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1DCB283D8(v9, type metadata accessor for Parse);
  }

  return 0;
}

void sub_1DCE3281C()
{
  OUTLINED_FUNCTION_50();
  v68 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = type metadata accessor for USOParse();
  v14 = OUTLINED_FUNCTION_20_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_10_2();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v59 - v23;
  v25 = type metadata accessor for Parse(0);
  v26 = OUTLINED_FUNCTION_4_16(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_8_60();
  v62 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v59 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v59 - v39;
  v63 = *(v2 + 16);
  if (v63)
  {
    v41 = 0;
    OUTLINED_FUNCTION_10_56(v38);
    v64 = *(v42 + 72);
    v65 = v2 + v43;
    v66 = v6 + 8;
    v67 = v6 + 16;
    v44 = v62;
    v60 = v20;
    v61 = v24;
    v59 = v25;
    while (1)
    {
      sub_1DCB29E58(v65 + v64 * v41, v40);
      sub_1DCB29E58(v40, v36);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        break;
      }

      sub_1DCB283D8(v40, type metadata accessor for Parse);
LABEL_14:
      ++v41;
      OUTLINED_FUNCTION_4_42();
      sub_1DCB283D8(v54, v55);
      if (v41 == v63)
      {
        goto LABEL_17;
      }
    }

    sub_1DCC6D300(v36, v24);
    sub_1DCB29E58(v40, v44);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DCC6D300(v44, v20);
      v45 = sub_1DD0DB49C();
      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v20, v46);
      if (v45)
      {
        v47 = sub_1DD0DB46C();
        v48 = 0;
        v49 = *(v47 + 16);
        while (v49 != v48)
        {
          v50 = *(v6 + 80);
          OUTLINED_FUNCTION_19_32();
          v52 = (*(v6 + 16))(v12, v47 + v51 + *(v6 + 72) * v48++, v3);
          v53 = v68(v52);
          (*(v6 + 8))(v12, v3);
          if (v53)
          {

            OUTLINED_FUNCTION_0_22();
            sub_1DCB283D8(v61, v57);
            OUTLINED_FUNCTION_4_42();
            sub_1DCB283D8(v40, v58);
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_0_22();
        v24 = v61;
        sub_1DCB283D8(v61, v56);
        v20 = v60;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DCB283D8(v44, type metadata accessor for Parse);
    }

    sub_1DCB283D8(v24, type metadata accessor for USOParse);
LABEL_13:
    v44 = v62;
    goto LABEL_14;
  }

LABEL_17:
  OUTLINED_FUNCTION_49();
}

void sub_1DCE32C18()
{
  OUTLINED_FUNCTION_50();
  v65 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = type metadata accessor for USOParse();
  v14 = OUTLINED_FUNCTION_20_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_10_2();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v60 - v23;
  v25 = type metadata accessor for Parse(0);
  v26 = OUTLINED_FUNCTION_4_16(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_8_60();
  v63 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = v60 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v64 = v60 - v39;
  v68 = *(v2 + 16);
  if (!v68)
  {
LABEL_18:
    OUTLINED_FUNCTION_49();
    return;
  }

  v40 = 0;
  OUTLINED_FUNCTION_10_56(v38);
  v66 = *(v41 + 72);
  v67 = v2 + v42;
  v70 = v6 + 8;
  v71 = v6 + 16;
  v69 = v12;
  v43 = v64;
  v61 = v20;
  v62 = v24;
  v60[1] = v25;
  while (1)
  {
    sub_1DCB29E58(v67 + v66 * v40, v43);
    sub_1DCB29E58(v43, v36);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1DCB283D8(v43, type metadata accessor for Parse);
      goto LABEL_15;
    }

    sub_1DCC6D300(v36, v24);
    v44 = v43;
    v45 = v63;
    sub_1DCB29E58(v44, v63);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1DCB283D8(v45, type metadata accessor for Parse);
LABEL_14:
      sub_1DCB283D8(v24, type metadata accessor for USOParse);
      v43 = v64;
      goto LABEL_15;
    }

    sub_1DCC6D300(v45, v20);
    v46 = sub_1DD0DB49C();
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v20, v47);
    if ((v46 & 1) == 0)
    {
      goto LABEL_14;
    }

    v48 = sub_1DD0DB46C();
    v73 = *(v48 + 16);
    if (v73)
    {
      break;
    }

LABEL_11:

    OUTLINED_FUNCTION_0_22();
    v24 = v62;
    sub_1DCB283D8(v62, v55);
    v43 = v64;
    v20 = v61;
LABEL_15:
    ++v40;
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v56, v57);
    if (v40 == v68)
    {
      goto LABEL_18;
    }
  }

  v49 = 0;
  v50 = *(v6 + 80);
  OUTLINED_FUNCTION_19_32();
  v72 = v48 + v51;
  while (v49 < *(v48 + 16))
  {
    (*(v6 + 16))(v12, v72 + *(v6 + 72) * v49, v3);
    sub_1DD0DB7DC();
    v52 = v65();

    v53 = OUTLINED_FUNCTION_14_50();
    v54(v53);
    if (v52)
    {

      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v62, v58);
      OUTLINED_FUNCTION_4_42();
      sub_1DCB283D8(v64, v59);
      goto LABEL_18;
    }

    ++v49;
    v12 = v69;
    if (v73 == v49)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DCE33108(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Parse(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7_50();
  v10 = type metadata accessor for USOParse();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = type metadata accessor for Input(0);
  sub_1DCB29E58(v2 + *(v18 + 20), v2);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v22 = type metadata accessor for Parse;
    v23 = v2;
LABEL_7:
    sub_1DCB283D8(v23, v22);
    goto LABEL_8;
  }

  sub_1DCC6D300(v2, v17);
  if ((Parse.interpretableAsUniversalAction.getter() & 1) == 0)
  {
    v22 = type metadata accessor for USOParse;
    v23 = v17;
    goto LABEL_7;
  }

  sub_1DD0DB46C();
  v19 = a1();

  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v17, v20);
  if ((v19 & 1) == 0)
  {
LABEL_8:
    v21 = a2(*(v2 + *(v18 + 24)));
    return v21 & 1;
  }

  v21 = 1;
  return v21 & 1;
}

size_t sub_1DCE33284(size_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E58, &unk_1DD0FB958);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v28 - v5;
  v31 = sub_1DD0DB3AC();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31, v9);
  v28[3] = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DCB08B14(a1);
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1 & 0xC000000000000001;
  v28[1] = v7;
  v28[2] = v7 + 32;
  v28[4] = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    if (v30)
    {
      MEMORY[0x1E12A72C0](0, a1);
      v13 = sub_1DD0DC6FC();
      v15 = v14;
      v16 = sub_1DD0DC6EC();
      v18 = v17;
      v19 = sub_1DD0DBB6C();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      MEMORY[0x1E12A41B0](v13, v15, v16, v18);
      sub_1DCE33648(v6);
    }

    if (*(v29 + 16))
    {
      v12 = *(a1 + 32);
      sub_1DD0DCF8C();
    }

    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  sub_1DCDA5740();
  a1 = sub_1DCC5173C(v22);
  if (*(a1 + 16))
  {
    return a1;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "No tasks found in NLv4 intent", v26, 2u);
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  return a1;
}

void sub_1DCE33648(uint64_t a1@<X8>)
{
  v27[2] = a1;
  v2 = sub_1DD0DD66C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v27[1] = v8 - v7;
  v9 = sub_1DD0DB44C();
  v10 = OUTLINED_FUNCTION_10_57(v9);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v19 = OUTLINED_FUNCTION_20_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v27 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD0E15D0;
  *(v25 + 32) = v1;
  v26 = sub_1DD0DBC3C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1DD0DCF8C();
}

size_t sub_1DCE33A70()
{
  v0 = sub_1DD0DBC6C();
  v1 = sub_1DCE33284(v0);

  return v1;
}

size_t sub_1DCE33C20()
{
  v0 = sub_1DD0DB7DC();
  v1 = sub_1DCE33284(v0);

  return v1;
}

void sub_1DCE33DD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E58, &unk_1DD0FB958);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  sub_1DCE33648(&v13 - v12);
}

uint64_t Parse.DirectInvocation.init(identifier:userData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Parse.PegasusResult.clientComponent.getter()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_1DD0DB24C();
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DD0DB1CC();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  sub_1DD0DB1DC();
  sub_1DD0DB1AC();
  (*(v12 + 8))(v19, v10);
  v20 = sub_1DD0DB23C();
  (*(v2 + 8))(v9, v0);
  sub_1DCC62204(v20);
}

uint64_t Parse.ServerConversion.__allocating_init(siriKitIntent:confirmationState:appResolutionStateProviding:)(uint64_t a1, char *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  Parse.ServerConversion.init(siriKitIntent:confirmationState:appResolutionStateProviding:)(a1, a2, a3);
  return v6;
}

uint64_t Parse.ServerConversion.init(siriKitIntent:confirmationState:appResolutionStateProviding:)(uint64_t a1, char *a2, __int128 *a3)
{
  v4 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  sub_1DCAFF9E8(a3, v3 + 40);
  return v3;
}

uint64_t sub_1DCE343EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_4_82();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_0_1();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = a5(v9, v8, v7, v20, v5, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v22;
}

uint64_t Parse.ServerConversion.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t Parse.ServerConversion.__deallocating_deinit()
{
  Parse.ServerConversion.deinit();

  return swift_deallocClassInstance();
}

uint64_t Parse.PegasusResult.serverDrivenExperience.getter()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_1DD0DB1CC();
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DD0DB1DC();
  sub_1DD0DB1BC();
  return (*(v2 + 8))(v9, v0);
}

uint64_t Parse.PegasusResult.response.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = sub_1DD0DB1EC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t Parse.PegasusResult.init(pegasusResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DB1EC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_1DCE346D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a4, a6);
  v16 = sub_1DCE34810(a1, a2, a3, v14, v15, a6);
  (*(v11 + 8))(a4, a6);
  return v16;
}

uint64_t sub_1DCE34810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_4_82();
  v12[8] = v13;
  v12[9] = v14;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12 + 5);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, v6, a6);
  v16 = *v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v16;
  *(a5 + 32) = v7;
  return a5;
}

char *assignWithCopy for Parse(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DC76C();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_28;
      case 1u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v15 + 48)] = *&a2[*(v15 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);

        goto LABEL_28;
      case 3u:
        *a1 = *a2;
        swift_unknownObjectRetain();
        goto LABEL_28;
      case 4u:
        v7 = sub_1DD0DB1EC();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_28;
      case 5u:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        goto LABEL_28;
      case 6u:
        v18 = sub_1DD0DB4BC();
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        v19 = type metadata accessor for USOParse();
        v20 = v19[5];
        v21 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v20], 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v20], &a2[v20], *(*(v22 - 8) + 64));
        }

        else
        {
          (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
          __swift_storeEnumTagSinglePayload(&a1[v20], 0, 1, v21);
        }

        v52 = v19[6];
        v53 = &a1[v52];
        v54 = &a2[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);
        v55 = v19[7];
        v56 = &a1[v55];
        v57 = &a2[v55];
        v58 = *v57;
        v56[4] = v57[4];
        *v56 = v58;

        goto LABEL_28;
      case 7u:
        v9 = sub_1DD0DB4BC();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        v10 = type metadata accessor for USOParse();
        v11 = v10[5];
        v12 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v11], 1, v12))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v11], &a2[v11], *(*(v13 - 8) + 64));
        }

        else
        {
          (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
          __swift_storeEnumTagSinglePayload(&a1[v11], 0, 1, v12);
        }

        v35 = v10[6];
        v36 = &a1[v35];
        v37 = &a2[v35];
        *v36 = *v37;
        *(v36 + 1) = *(v37 + 1);
        v38 = v10[7];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v41 = *v40;
        v39[4] = v40[4];
        *v39 = v41;
        v42 = type metadata accessor for LinkParse();
        v43 = v42[5];
        v44 = &a1[v43];
        v45 = &a2[v43];
        *v44 = *v45;
        *(v44 + 1) = *(v45 + 1);
        v46 = v42[6];
        v47 = &a1[v46];
        v48 = &a2[v46];
        *v47 = *v48;
        *(v47 + 1) = *(v48 + 1);
        v49 = v42[7];
        v50 = &a1[v49];
        v51 = &a2[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);

        goto LABEL_28;
      case 8u:
        v25 = sub_1DD0DD12C();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = type metadata accessor for NLRouterParse();
        v27 = v26[5];
        v28 = &a1[v27];
        v29 = &a2[v27];
        *v28 = *v29;
        *(v28 + 1) = *(v29 + 1);
        v30 = v26[6];
        v31 = &a1[v30];
        v32 = &a2[v30];
        v33 = type metadata accessor for USOParse();

        if (__swift_getEnumTagSinglePayload(v32, 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v31, v32, *(*(v34 - 8) + 64));
        }

        else
        {
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v31, v32, v59);
          v60 = v33[5];
          v61 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v60], 1, v61))
          {
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v60], &v32[v60], *(*(v62 - 8) + 64));
          }

          else
          {
            (*(*(v61 - 8) + 16))(&v31[v60], &v32[v60], v61);
            __swift_storeEnumTagSinglePayload(&v31[v60], 0, 1, v61);
          }

          v63 = v33[6];
          v64 = &v31[v63];
          v65 = &v32[v63];
          *v64 = *v65;
          *(v64 + 1) = *(v65 + 1);
          v66 = v33[7];
          v67 = &v31[v66];
          v68 = &v32[v66];
          v69 = *v68;
          v67[4] = v68[4];
          *v67 = v69;

          __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
        }

        v70 = v26[7];
        v71 = *&a2[v70];
        *&a1[v70] = v71;
        v72 = v71;
        goto LABEL_28;
      case 9u:
        v8 = sub_1DD0DD08C();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v23 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v23);
    }
  }

  return a1;
}

void *initializeWithTake for Parse(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      goto LABEL_24;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 32))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      goto LABEL_24;
    case 4u:
      v19 = sub_1DD0DB1EC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      goto LABEL_24;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 32))(a1, a2, v20);
      v21 = type metadata accessor for USOParse();
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      *&a1[v21[6]] = *&a2[v21[6]];
      v34 = v21[7];
      v35 = &a1[v34];
      v36 = &a2[v34];
      v35[4] = v36[4];
      *v35 = *v36;
      goto LABEL_24;
    case 7u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 32))(a1, a2, v25);
      v26 = type metadata accessor for USOParse();
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v27], &a2[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 32))(&a1[v27], &a2[v27], v28);
        __swift_storeEnumTagSinglePayload(&a1[v27], 0, 1, v28);
      }

      *&a1[v26[6]] = *&a2[v26[6]];
      v37 = v26[7];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v38[4] = v39[4];
      *v38 = *v39;
      v40 = type metadata accessor for LinkParse();
      *&a1[v40[5]] = *&a2[v40[5]];
      *&a1[v40[6]] = *&a2[v40[6]];
      *&a1[v40[7]] = *&a2[v40[7]];
      goto LABEL_24;
    case 8u:
      v9 = sub_1DD0DD12C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for NLRouterParse();
      *&a1[v10[5]] = *&a2[v10[5]];
      v11 = v10[6];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for USOParse();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v12, v13, *(*(v15 - 8) + 64));
      }

      else
      {
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v12, v13, v30);
        v31 = v14[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
          __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
        }

        *&v12[v14[6]] = *&v13[v14[6]];
        v41 = v14[7];
        v42 = &v12[v41];
        v43 = &v13[v41];
        v42[4] = v43[4];
        *v42 = *v43;
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
      }

      *&a1[v10[7]] = *&a2[v10[7]];
      goto LABEL_24;
    case 9u:
      v18 = sub_1DD0DD08C();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
LABEL_24:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v7 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v7);
      break;
  }

  return result;
}

char *assignWithTake for Parse(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DC76C();
        (*(*(v6 - 8) + 32))(a1, a2, v6);
        goto LABEL_25;
      case 1u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
        goto LABEL_25;
      case 4u:
        v19 = sub_1DD0DB1EC();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
        goto LABEL_25;
      case 6u:
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        v21 = type metadata accessor for USOParse();
        v22 = v21[5];
        v23 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
        }

        else
        {
          (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
          __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
        }

        *&a1[v21[6]] = *&a2[v21[6]];
        v34 = v21[7];
        v35 = &a1[v34];
        v36 = &a2[v34];
        v35[4] = v36[4];
        *v35 = *v36;
        goto LABEL_25;
      case 7u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(a1, a2, v25);
        v26 = type metadata accessor for USOParse();
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v27], &a2[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&a1[v27], &a2[v27], v28);
          __swift_storeEnumTagSinglePayload(&a1[v27], 0, 1, v28);
        }

        *&a1[v26[6]] = *&a2[v26[6]];
        v37 = v26[7];
        v38 = &a1[v37];
        v39 = &a2[v37];
        v38[4] = v39[4];
        *v38 = *v39;
        v40 = type metadata accessor for LinkParse();
        *&a1[v40[5]] = *&a2[v40[5]];
        *&a1[v40[6]] = *&a2[v40[6]];
        *&a1[v40[7]] = *&a2[v40[7]];
        goto LABEL_25;
      case 8u:
        v9 = sub_1DD0DD12C();
        (*(*(v9 - 8) + 32))(a1, a2, v9);
        v10 = type metadata accessor for NLRouterParse();
        *&a1[v10[5]] = *&a2[v10[5]];
        v11 = v10[6];
        v12 = &a1[v11];
        v13 = &a2[v11];
        v14 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v13, 1, v14))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v12, v13, *(*(v15 - 8) + 64));
        }

        else
        {
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 32))(v12, v13, v30);
          v31 = v14[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
            __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
          }

          *&v12[v14[6]] = *&v13[v14[6]];
          v41 = v14[7];
          v42 = &v12[v41];
          v43 = &v13[v41];
          v42[4] = v43[4];
          *v42 = *v43;
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
        }

        *&a1[v10[7]] = *&a2[v10[7]];
        goto LABEL_25;
      case 9u:
        v18 = sub_1DD0DD08C();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v7 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v7);
    }
  }

  return a1;
}

uint64_t sub_1DCE35D4C()
{
  result = sub_1DD0DC76C();
  if (v1 <= 0x3F)
  {
    v7[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v7[5] = v7;
    v7[6] = &unk_1DD0FB9A8;
    v7[7] = &unk_1DD0FB9C0;
    result = sub_1DD0DB1EC();
    if (v2 <= 0x3F)
    {
      v7[8] = *(result - 8) + 64;
      v7[9] = MEMORY[0x1E69E5CE0] + 64;
      result = type metadata accessor for USOParse();
      if (v3 <= 0x3F)
      {
        v7[10] = *(result - 8) + 64;
        result = type metadata accessor for LinkParse();
        if (v4 <= 0x3F)
        {
          v7[11] = *(result - 8) + 64;
          result = type metadata accessor for NLRouterParse();
          if (v5 <= 0x3F)
          {
            v7[12] = *(result - 8) + 64;
            result = sub_1DD0DD08C();
            if (v6 <= 0x3F)
            {
              v7[13] = *(result - 8) + 64;
              swift_initEnumMetadataMultiPayload();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void *assignWithCopy for Parse.DirectInvocation(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Parse.PegasusResult(uint64_t a1)
{
  v2 = sub_1DD0DB1EC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1DCE36290()
{
  result = sub_1DD0DB1EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCE3631C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *a1;
  v10 = OUTLINED_FUNCTION_1_88();
  v11 = sub_1DD0DDFBC();
  v13 = v12;

  sub_1DCC17D84(v11, v13, *a2);

  if (*(&v61 + 1))
  {
    v63 = v60;
    v64 = v61;
    v65 = v62;
    v14 = [v9 parameters];
    v15 = sub_1DD0DDE6C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = *(&v62 + 1);
    sub_1DCC60634(v15, a4, a5, isUniquelyReferenced_nonNull_native);
    v17 = OUTLINED_FUNCTION_1_88();
    sub_1DD0DDFBC();

    v18 = sub_1DCC17FA8(&v63, &v60);
    OUTLINED_FUNCTION_0_80(v18, v19, v20, v21, v22, v23, v24, v25, v52, v53, v55, v56, v57, v58);
    sub_1DCE36784(&v63);
  }

  else
  {
    sub_1DCB16D50(&v60, &qword_1ECCA7E68, &unk_1DD0FBA80);
    v26 = OUTLINED_FUNCTION_1_88();
    v27 = sub_1DD0DDFBC();
    v29 = v28;

    sub_1DCC18004(&v63, v27, v29, a3);

    if (*(&v64 + 1))
    {
      sub_1DCB18FF0(&v63, v59);
      sub_1DCB17CA0(v59, &v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA2CA8, &qword_1DD0FBA90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD0E07C0;
      *(inited + 32) = a4;
      *(inited + 40) = a5;

      v31 = [v9 parameters];
      v32 = sub_1DD0DDE6C();

      *(inited + 48) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      *(&v65 + 1) = sub_1DD0DDE9C();
      v33 = OUTLINED_FUNCTION_1_88();
      sub_1DD0DDFBC();

      v34 = sub_1DCC17FA8(&v63, &v60);
      OUTLINED_FUNCTION_0_80(v34, v35, v36, v37, v38, v39, v40, v41, v52, v53, v55, v56, v57, v58);
      sub_1DCE36784(&v63);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    else
    {
      sub_1DCB16D50(&v63, &qword_1ECCA27B8, qword_1DD10DE10);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v42 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v42, qword_1EDE57E00);

      v43 = v9;
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v63 = v54;
        *v46 = 136315394;
        v47 = [v43 name];
        v48 = sub_1DD0DDFBC();
        v50 = v49;

        v51 = sub_1DCB10E9C(v48, v50, &v63);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_1DCB10E9C(a4, a5, &v63);
        _os_log_impl(&dword_1DCAFC000, v44, v45, "Cannot find parser matching name '%s' for eventId '%s'. Skipping.", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v54, -1, -1);
        MEMORY[0x1E12A8390](v46, -1, -1);
      }
    }
  }
}

uint64_t PatternFlowProvider.__allocating_init(outputPublisher:responseGenerator:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v10 = OUTLINED_FUNCTION_76_11(v9);
  v11(v10);
  OUTLINED_FUNCTION_84_8();
  v12 = OUTLINED_FUNCTION_33_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v3;
}

void PatternFlowProviding.makeResponseFlowWithListPrompt<A>(items:paginationParameters:strategy:)()
{
  OUTLINED_FUNCTION_50();
  v27 = v0;
  v25 = v1;
  v26 = v2;
  v4 = v3;
  v24 = v5;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 9);
  v19 = *(v15 + 16);
  v20 = *(v15 + 24);
  v21 = *(v15 + 25);
  v23 = *(v15 + 26);
  type metadata accessor for ListPromptFlow();
  (*(v7 + 16))(v14, v24, v4);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v23;
  v22 = *(v26 + 8);

  v22(v28, v27, v26);
  *&v28[0] = sub_1DCDB830C(v14, v25, &v29, v28);
  swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_49();
}

uint64_t PromptType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DCE36A6C()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E70 = result;
  *algn_1ECCA7E78 = v1;
  return result;
}

uint64_t sub_1DCE36AC0()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E80 = result;
  *algn_1ECCA7E88 = v1;
  return result;
}

uint64_t sub_1DCE36B20()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E90 = result;
  *algn_1ECCA7E98 = v1;
  return result;
}

uint64_t sub_1DCE36B70()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7EA0 = result;
  *algn_1ECCA7EA8 = v1;
  return result;
}

uint64_t sub_1DCE36BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA7ED8, &unk_1DD0FBCD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4000;
  if (qword_1ECCA1328 != -1)
  {
    swift_once();
  }

  v1 = *algn_1ECCA7E78;
  *(inited + 32) = qword_1ECCA7E70;
  *(inited + 40) = v1;
  v2 = qword_1ECCA1330;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1ECCA7E88;
  *(inited + 48) = qword_1ECCA7E80;
  *(inited + 56) = v3;
  v4 = qword_1ECCA1338;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1ECCA7E98;
  *(inited + 64) = qword_1ECCA7E90;
  *(inited + 72) = v5;
  v6 = qword_1ECCA1340;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_1ECCA7EA8;
  *(inited + 80) = qword_1ECCA7EA0;
  *(inited + 88) = v7;
  v33 = MEMORY[0x1E69E7CC0];

  sub_1DCB38954();
  v8 = v33;
  v10 = *(inited + 32);
  v9 = *(inited + 40);
  v11 = *(v33 + 16);
  v12 = *(v33 + 24);
  v13 = v11 + 1;

  if (v11 >= v12 >> 1)
  {
    sub_1DCB38954();
    v8 = v33;
  }

  *(v8 + 16) = v13;
  v14 = v8 + 16 * v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  v16 = *(inited + 48);
  v15 = *(inited + 56);
  v17 = *(v8 + 24);
  v18 = v11 + 2;

  if (v13 >= v17 >> 1)
  {
    sub_1DCB38954();
    v8 = v33;
  }

  *(v8 + 16) = v18;
  v19 = v8 + 16 * v13;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  v21 = *(inited + 64);
  v20 = *(inited + 72);
  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = v23 + 1;

  if (v23 >= v22 >> 1)
  {
    sub_1DCB38954();
  }

  v25 = v33;
  *(v33 + 16) = v24;
  v26 = v33 + 16 * v23;
  *(v26 + 32) = v21;
  *(v26 + 40) = v20;
  v28 = *(inited + 80);
  v27 = *(inited + 88);
  v29 = *(v33 + 24);
  v30 = v23 + 2;

  if (v24 >= v29 >> 1)
  {
    sub_1DCB38954();
    v25 = v33;
  }

  *(v25 + 16) = v30;
  v31 = v25 + 16 * v24;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  swift_setDeallocating();
  sub_1DCC65860();
  result = sub_1DCDA58AC(v25);
  qword_1ECCA7EB0 = result;
  return result;
}

SiriKitFlow::PromptType_optional __swiftcall PromptType.init(settingValue:)(Swift::String_optional settingValue)
{
  object = settingValue.value._object;
  countAndFlagsBits = settingValue.value._countAndFlagsBits;
  v4 = v1;
  if (settingValue.value._object)
  {
    v5 = sub_1DD0DE04C();
    v7 = v6;
    if (qword_1ECCA1348 != -1)
    {
      swift_once();
    }

    if (sub_1DCCE6C7C(v5, v7, qword_1ECCA7EB0))
    {

      *v4 = v5;
      v4[1] = v7;
      goto LABEL_18;
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_151();
    v14 = OUTLINED_FUNCTION_83();
    v18 = v14;
    *v13 = 136315138;
    if (object)
    {
      v15 = countAndFlagsBits;
    }

    else
    {
      v15 = 0x3E4C494E3CLL;
    }

    if (!object)
    {
      object = 0xE500000000000000;
    }

    v16 = sub_1DCB10E9C(v15, object, &v18);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "Provided value '%s' is not recognized. Unable to create PromptType", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  *v4 = 0;
  v4[1] = 0;
LABEL_18:
  result.value.rawValue._object = v9;
  result.value.rawValue._countAndFlagsBits = v8;
  return result;
}

uint64_t static PromptType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t PromptType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DD0DDF2C();
}

uint64_t PromptType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

void sub_1DCE37108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OutputGenerationManifest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  swift_beginAccess();
  sub_1DCB17D04(v3 + 16, v13);
  sub_1DCB68600(a2, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  sub_1DCE40EF4(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v13, &unk_1DD0FBCC0, v11);
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

void PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v7 = *(type metadata accessor for OutputGenerationManifest() - 8);
  OUTLINED_FUNCTION_24_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 8))(v30, v3, v1);
  v21 = *(v15 + 16);
  OUTLINED_FUNCTION_92_7();
  v22();
  sub_1DCB68600(v5, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v9 + 80) + v24 + 8) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v3;
  *(v26 + 24) = v1;
  (*(v15 + 32))(v26 + v23, v20, v3);
  v27 = v29;
  *(v26 + v24) = v29;
  sub_1DCE40EF4(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v30, &unk_1DD0FBAD8, v26);
  type metadata accessor for AnyFlow();
  swift_allocObject();
  v28 = v27;
  sub_1DCBD22F0();
  OUTLINED_FUNCTION_49();
}

__int128 *PatternFlowProviding.makeResponseFlowWithOpenEndedPrompt<A>(strategy:)()
{
  OUTLINED_FUNCTION_75_9();
  swift_getAssociatedTypeWitness();
  type metadata accessor for PromptForValueFlowAsync();
  OUTLINED_FUNCTION_104_4();
  v4 = OUTLINED_FUNCTION_21_3();
  v3(v4);
  *&v6[0] = PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(v2, v6, v1, v0);
  swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  return v6;
}

void PatternFlowProviding.makeResponseFlowWithYesNoPrompt<A>(strategy:)()
{
  OUTLINED_FUNCTION_75_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E50, &qword_1DD0FBAE0);
  OUTLINED_FUNCTION_104_4();
  v2 = OUTLINED_FUNCTION_21_3();
  v1(v2);
  v3 = *(v0 + 8);
  PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EB8, &unk_1DD0FBAE8);
  swift_allocObject();
  OUTLINED_FUNCTION_33_4();
  sub_1DCC4A99C();
}

void PatternFlowProviding.makeResponseFlowWithConfirmationPrompt<A>(strategy:itemToConfirm:)()
{
  OUTLINED_FUNCTION_50();
  v17 = v1;
  v18 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_4();
  type metadata accessor for PromptForConfirmationFlowAsync();
  (*(v8 + 16))(v14, v5, AssociatedTypeWitness);
  v15 = *(v3 + 8);
  swift_unknownObjectRetain();
  v15(&v19, v17, v3);
  v19 = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
  swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_49();
}

__int128 *PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = type metadata accessor for ContinuationPromptFlow();
  OUTLINED_FUNCTION_106_3(v5, v6, v7, v8, v9, v10, v11, v12, v25, *(&v25 + 1), v26, v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_112(a3);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_92_7();
  v16 = v15();
  *&v25 = OUTLINED_FUNCTION_108_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32);
  swift_unknownObjectRetain();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  return &v25;
}

void sub_1DCE379F4(int a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v28 = a2;
  v29 = a1;
  v27 = sub_1DD0DB04C();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v4);
  v5 = type metadata accessor for OutputGenerationManifest();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE4EC10 != -1)
  {
    swift_once();
  }

  *(v9 + v5[6]) = 0;
  *(v9 + v5[7]) = 0;
  v10 = v5[8];
  *(v9 + v5[9]) = 256;
  v11 = unk_1EDE4EC20;
  v26[0] = qword_1EDE4EC18;
  v12 = v5[11];
  v26[2] = v5[10];
  *(v9 + v12) = 0;
  v13 = v5[12];
  v14 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v9 + v13, 1, 1, v14);
  v15 = v5[14];
  v26[1] = v5[13];
  v16 = (v9 + v15);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v9 + v5[15]);
  *v17 = 0;
  v17[1] = 0;
  *(v9 + v5[16]) = 0;
  *(v9 + v5[18]) = 0;
  v18 = v9 + v5[19];
  *v18 = 0;
  *(v18 + 4) = 512;
  *(v9 + v5[20]) = 0;
  *(v9 + v5[21]) = 0;
  *(v9 + v5[22]) = 0;
  *(v9 + v5[23]) = 0;
  *(v9 + v5[24]) = 0;
  *(v9 + v5[25]) = 0;
  v19 = (v9 + v5[26]);
  *v19 = 0;
  v19[1] = 0;
  *(v9 + v5[27]) = 0;
  *(v9 + v5[28]) = MEMORY[0x1E69E7CC0];
  v20 = v5[29];
  v21 = *MEMORY[0x1E69D0678];
  v22 = sub_1DD0DD15C();
  (*(*(v22 - 8) + 104))(v9 + v20, v21, v22);
  v23 = v5[30];
  v24 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v9 + v23, 1, 1, v24);
  *(v9 + v5[31]) = 2;
  *v9 = v26[0];
  v9[1] = v11;
  v25 = v5[5];

  sub_1DCB67914();
}

void PatternFlowProviding.makeResponseFlowWithContinuationPrompt(shouldContinueForResponse:_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v10 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_112(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = (v16 - v15);
  v35 = *v1;
  if (qword_1EDE4EC10 != -1)
  {
    swift_once();
  }

  *(v17 + v10[6]) = 0;
  *(v17 + v10[7]) = 0;
  v18 = v10[8];
  *(v17 + v10[9]) = 256;
  v19 = unk_1EDE4EC20;
  v32 = qword_1EDE4EC18;
  v34 = v10[10];
  *(v17 + v10[11]) = 0;
  v20 = v10[12];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_103_5();
  v33 = v10[13];
  v21 = (v17 + v10[14]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + v10[15]);
  *v22 = 0;
  v22[1] = 0;
  *(v17 + v10[16]) = 0;
  *(v17 + v10[18]) = 0;
  v23 = v17 + v10[19];
  *v23 = 0;
  *(v23 + 4) = 512;
  *(v17 + v10[20]) = 0;
  *(v17 + v10[21]) = 0;
  *(v17 + v10[22]) = 0;
  *(v17 + v10[23]) = 0;
  *(v17 + v10[24]) = 0;
  *(v17 + v10[25]) = 0;
  v24 = (v17 + v10[26]);
  *v24 = 0;
  v24[1] = 0;
  *(v17 + v10[27]) = 0;
  *(v17 + v10[28]) = MEMORY[0x1E69E7CC0];
  v25 = v10[29];
  v26 = *MEMORY[0x1E69D0678];
  v27 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_112(v27);
  (*(v28 + 104))(v17 + v25, v26);
  v29 = v10[30];
  v30 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v17 + v29, 1, 1, v30);
  *(v17 + v10[31]) = 2;
  *v17 = v32;
  v17[1] = v19;
  v31 = v10[5];

  sub_1DCB67914();
}

__int128 *PatternFlowProviding.makeResponseFlowWithSimpleDisambiguationPrompt<A>(items:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SimpleDisambiguationPromptFlow();
  v8 = *(a5 + 8);

  swift_unknownObjectRetain();
  v9 = OUTLINED_FUNCTION_86();
  v8(v9);
  *&v11[0] = sub_1DCF81618(a1, a2, v11);
  swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  return v11;
}

void sub_1DCE38480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)();
}

void PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)()
{
  OUTLINED_FUNCTION_42();
  v0[38] = v1;
  v0[39] = v2;
  v0[36] = v3;
  v0[37] = v4;
  v0[35] = v5;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCE385F8()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_21();
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  v5 = *(v2 + 24);
  v6 = OUTLINED_FUNCTION_138();
  v0[43] = v7(v6);
  v8 = *(v2 + 40);
  v9 = OUTLINED_FUNCTION_138();
  v10(v9);
  v11 = OUTLINED_FUNCTION_66_9();
  v0[44] = v12(v11);
  objc_opt_self();
  OUTLINED_FUNCTION_191();
  v0[45] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v13;
  v0[7] = v0 + 30;
  OUTLINED_FUNCTION_67_13();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v14);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_105_6(v15, sel_load_patternId_completion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DCE3875C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 368) = v4;
  if (v4)
  {
    v5 = *(v1 + 344);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE38864()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[36];
  v0[47] = v0[30];

  sub_1DCE40424();
}

uint64_t sub_1DCE38B10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 392) = v0;

  if (v0)
  {
    v9 = *(v3 + 344);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE38C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 168);
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v90 = *(v28 + 144);
    v58 = *(v28 + 152);
    v59 = *(v28 + 160);
    v60 = [*(v28 + 376) settings];
    sub_1DD0DDE6C();

    v61 = OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9(v61 & 0xFFFFFFFFFFFFLL | 0x6953000000000000);

    if (*(v28 + 200))
    {
      v62 = swift_dynamicCast();
      v63 = *(v28 + 272);
      if (!v62)
      {
        v63 = 0;
      }
    }

    else
    {
      sub_1DCB16DB0(v28 + 176, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v63 = 0;
      LOBYTE(v62) = 0;
    }

    if (v59)
    {
      if ((v62 & 1) == 0)
      {
        v64 = *(v28 + 344);
        v65 = *(v28 + 312);
        v66 = *(v28 + 296);
        swift_getAssociatedTypeWitness();
        v63 = sub_1DD0DE3BC();
      }
    }

    else
    {
      v63 = v58;
    }

    v85 = v63;
    v86 = v59;
    v67 = [*(v28 + 376) settings];
    v68 = sub_1DD0DDE6C();

    v69 = OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40(v69, v70, v68);

    if (*(v28 + 232))
    {
      v71 = swift_dynamicCast();
      if (v71)
      {
        v72 = *(v28 + 264);
      }

      else
      {
        v72 = 0;
      }

      v73 = v71 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 208, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v72 = 0;
      v73 = 1;
    }

    v74 = *(v28 + 344);
    v81 = *(v28 + 376);
    v82 = *(v28 + 352);
    v75 = *(v28 + 328);
    v76 = *(v28 + 312);
    v83 = *(v28 + 320);
    v84 = *(v28 + 336);
    v77 = *(v28 + 296);
    OUTLINED_FUNCTION_113_1();
    type metadata accessor for ListWindowedContentSource();
    v78 = sub_1DD0C35E8(v74, v85, v72, v73, 1);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_18_39();
    OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow();
    a17 = v31;
    *(v28 + 248) = v78;
    *(v28 + 256) = sub_1DD0C7E80(&a17);
    v79 = OUTLINED_FUNCTION_191();
    sub_1DCBA0D4C(v79, v80, v86, v31);
    sub_1DD0DCF8C();
  }

  v32 = *(v28 + 344);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
  v34 = sub_1DD0DD8EC();
  v35 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v35))
  {
    v36 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v36);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_62();
  }

  v88 = *(v28 + 312);

  v42 = *(v88 + 48);
  v89 = v88 + 48;
  OUTLINED_FUNCTION_24_0();
  v87 = v43 + *v43;
  v45 = *(v44 + 4);
  v46 = swift_task_alloc();
  *(v28 + 400) = v46;
  *v46 = v28;
  v46[1] = sub_1DCE390C8;
  v47 = *(v28 + 312);
  v48 = *(v28 + 280);
  OUTLINED_FUNCTION_55_2(*(v28 + 296));
  OUTLINED_FUNCTION_141();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, v87, v89, a17, a18, a19, a20);
}

uint64_t sub_1DCE390C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 400);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE391CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 416);
  v5 = *(v1 + 336);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE39248()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 424);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 432) = v0;

  if (!v0)
  {
    *(v4 + 440) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3934C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 440);
  v5 = *(v1 + 336);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE393C8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  swift_willThrow();

  v4 = v0[46];
  v5 = v0[42];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE39440()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 432);
  v5 = *(v1 + 336);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE394BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 408);
  v5 = *(v1 + 336);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE39538()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 392);
  v5 = *(v1 + 336);

  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCE395B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeResultSetFlow<A>(provider:)();
}

uint64_t sub_1DCE3971C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_21();
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[48];
  v5 = *(v2 + 24);
  v6 = OUTLINED_FUNCTION_138();
  v0[56] = v7(v6);
  v8 = *(v2 + 40);
  v9 = OUTLINED_FUNCTION_138();
  v10(v9);
  v11 = OUTLINED_FUNCTION_66_9();
  v0[57] = v12(v11);
  objc_opt_self();
  OUTLINED_FUNCTION_191();
  v0[58] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v13;
  v0[7] = v0 + 42;
  OUTLINED_FUNCTION_67_13();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v14);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_105_6(v15, sel_load_patternId_completion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DCE39880()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 472) = v4;
  if (v4)
  {
    v5 = *(v1 + 448);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE39988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100();
  v17 = v16[58];
  v18 = v16[56];
  v19 = v16[52];
  v20 = v16[50];
  v16[60] = v16[42];

  v16[43] = v18;
  v16[61] = swift_getAssociatedTypeWitness();
  sub_1DD0DE40C();
  OUTLINED_FUNCTION_47_17();
  swift_getWitnessTable();
  v21 = sub_1DD0DE65C();
  v22 = v16[56];
  if ((v21 & 1) == 0)
  {
    v47 = v16[55];
    v48 = v16[51];
    v49 = v16[49];
    sub_1DCE40424();
  }

  v23 = v16[56];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v26))
  {
    v27 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v27);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_46_15();

  v33 = *(a11 + 56);
  OUTLINED_FUNCTION_12_50();
  v50 = v34 + *v34;
  v36 = *(v35 + 4);
  v37 = swift_task_alloc();
  v16[87] = v37;
  *v37 = v16;
  v37[1] = sub_1DCE3BF44;
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_73();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v50, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCE3A760()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 504);
  *v4 = *v1;
  v3[64] = v7;
  v3[65] = v0;

  if (v0)
  {
    v8 = v3[56];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE3A86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100();
  if (*(v16 + 512))
  {
    v17 = *(v16 + 448);

    OUTLINED_FUNCTION_74_10();
    if (!v18)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v20, v21))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_120(&dword_1DCAFC000, v22, v23, "Pattern settings include a narrowing prompt and the provider returned one. Will issue Narrowing Prompt.");
      OUTLINED_FUNCTION_92_0();
    }

    v24 = *(v16 + 480);
    v25 = *(v16 + 456);
    v27 = *(v16 + 432);
    v26 = *(v16 + 440);
    v28 = *(v16 + 424);

    type metadata accessor for AnyFlow();
    swift_allocObject();
    OUTLINED_FUNCTION_33_4();
    sub_1DCBD24D8();

    (*(v27 + 8))(v26, v28);
    v29 = *(v16 + 440);

    OUTLINED_FUNCTION_19_3();
    OUTLINED_FUNCTION_73();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_74_10();
  if (!v18)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v39 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v40, v41))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_120(&dword_1DCAFC000, v42, v43, "Pattern settings include a narrowing prompt but the provider elected to not provide one. Assuming we are not in the narrowing case and continuing.");
    OUTLINED_FUNCTION_92_0();
  }

  v44 = [*(v16 + 480) settings];
  v45 = sub_1DD0DDE6C();

  v46 = OUTLINED_FUNCTION_19_35();
  sub_1DCB90D40(v46, v47, v45);

  if (!*(v16 + 168))
  {
    v70 = *(v16 + 448);

    sub_1DCB16DB0(v16 + 144, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_24;
  }

  if (!OUTLINED_FUNCTION_78_12() || (*(v16 + 720) & 1) == 0)
  {
    v69 = *(v16 + 448);

LABEL_24:
    OUTLINED_FUNCTION_74_10();
    if (!v18)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
    v71 = sub_1DD0DD8EC();
    v72 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v72))
    {
      v73 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v73);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_46_15();

    v79 = *(a11 + 9);
    OUTLINED_FUNCTION_12_50();
    a10 = v80 + *v80;
    v82 = *(v81 + 4);
    v83 = swift_task_alloc();
    *(v16 + 624) = v83;
    *v83 = v16;
    v83[1] = sub_1DCE3BAC4;
    OUTLINED_FUNCTION_1_89();
    goto LABEL_29;
  }

  v48 = [*(v16 + 480) settings];
  v49 = sub_1DD0DDE6C();

  v50 = OUTLINED_FUNCTION_24_27();
  sub_1DCB90D40(v50, v51, v49);

  if (!*(v16 + 200))
  {
    v84 = *(v16 + 448);

    sub_1DCB16DB0(v16 + 176, &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_34:
    OUTLINED_FUNCTION_74_10();
    if (!v18)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v86 = *(v16 + 480);
    OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
    v87 = v86;
    v88 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_245())
    {
      v89 = *(v16 + 480);
      v90 = OUTLINED_FUNCTION_151();
      a12 = OUTLINED_FUNCTION_83();
      *v90 = 136315138;
      v91 = [v89 patternId];
      sub_1DD0DDFBC();

      v92 = OUTLINED_FUNCTION_191();
      v95 = sub_1DCB10E9C(v92, v93, v94);

      *(v90 + 4) = v95;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(a12);
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_8();
    a11 = v101 + *v101;
    v103 = *(v102 + 4);
    v104 = swift_task_alloc();
    *(v16 + 600) = v104;
    *v104 = v16;
    OUTLINED_FUNCTION_45_14();
    goto LABEL_39;
  }

  if ((OUTLINED_FUNCTION_63_11() & 1) == 0)
  {
    v85 = *(v16 + 448);

    goto LABEL_34;
  }

  v53 = *(v16 + 304);
  v52 = *(v16 + 312);

  v54.value._countAndFlagsBits = OUTLINED_FUNCTION_21_3();
  PromptType.init(settingValue:)(v54);
  *(v16 + 528) = a13;
  if (!a13)
  {
    v107 = *(v16 + 448);

    OUTLINED_FUNCTION_74_10();
    if (!v18)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v108 = *(v16 + 480);
    OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);

    v109 = v108;
    v110 = sub_1DD0DD8EC();
    v111 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_245())
    {
      v112 = *(v16 + 480);
      swift_slowAlloc();
      a12 = OUTLINED_FUNCTION_19_30();
      *v109 = 136315394;
      v113 = [v112 patternId];
      sub_1DD0DDFBC();

      OUTLINED_FUNCTION_83_8(v114, v115, v116);

      OUTLINED_FUNCTION_52_20();
      v117 = OUTLINED_FUNCTION_21_3();
      v120 = sub_1DCB10E9C(v117, v118, v119);

      *(v109 + 14) = v120;
      OUTLINED_FUNCTION_82_4(&dword_1DCAFC000, v121, v111, "Pattern %s specifies an unknown prompt type of %s. Will show all results.");
      OUTLINED_FUNCTION_64_12();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_8();
    a11 = v122 + *v122;
    v124 = *(v123 + 4);
    v125 = swift_task_alloc();
    *(v16 + 576) = v125;
    *v125 = v16;
    OUTLINED_FUNCTION_44_18();
LABEL_39:
    *(v105 + 8) = v106;
    OUTLINED_FUNCTION_1_89();
LABEL_29:
    OUTLINED_FUNCTION_73();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_46_15();

  *(v16 + 320) = a12;
  *(v16 + 328) = a13;
  v55 = *(a11 + 10);
  OUTLINED_FUNCTION_12_50();
  v126 = v56 + *v56;
  v58 = *(v57 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v16 + 536) = v59;
  *v59 = v60;
  OUTLINED_FUNCTION_25_21(v59);
  OUTLINED_FUNCTION_73();

  return v65(v61, v62, v63, v64, v65, v66, v67, v68, a9, v126, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCE3B0C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[68] = v0;

  if (v0)
  {
    v9 = v3[56];
  }

  else
  {
    v10 = v3[66];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE3B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  if ((~*(v28 + 232) & 0xF000000000000007) != 0)
  {
    v83 = *(v28 + 232);
    v86 = *(v28 + 208);
    v55 = *(v28 + 216);
    v56 = *(v28 + 224);
    v57 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    v58 = OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9(v58 & 0xFFFFFFFFFFFFLL | 0x6953000000000000);

    if (*(v28 + 264))
    {
      v59 = *(v28 + 496);
      v60 = swift_dynamicCast();
      v61 = *(v28 + 376);
      if (v60)
      {
        v62 = *(v28 + 376);
      }

      else
      {
        v62 = v59;
      }
    }

    else
    {
      sub_1DCB16DB0(v28 + 240, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v62 = *(v28 + 496);
    }

    v63 = [*(v28 + 480) settings];
    v64 = sub_1DD0DDE6C();

    v65 = OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40(v65, v66, v64);

    if (*(v28 + 296))
    {
      v67 = swift_dynamicCast();
      if (v67)
      {
        v68 = *(v28 + 368);
      }

      else
      {
        v68 = 0;
      }

      v69 = v67 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 272, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v68 = 0;
      v69 = 1;
    }

    v77 = v56;
    if (v56)
    {
      v70 = v62;
    }

    else
    {
      v70 = v55;
    }

    v71 = *(v28 + 488);
    v72 = *(v28 + 448);
    v78 = *(v28 + 456);
    v79 = *(v28 + 480);
    v73 = *(v28 + 432);
    v74 = *(v28 + 416);
    v80 = *(v28 + 424);
    v81 = *(v28 + 440);
    v75 = *(v28 + 400);
    type metadata accessor for ListWindowedContentSource();
    v76 = sub_1DD0C35E8(v72, v70, v68, v69, v86);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_39();
    OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow();
    a17 = v83;
    *(v28 + 352) = v76;
    *(v28 + 360) = sub_1DD0C7E80(&a17);
    sub_1DCBA0D4C(v86, v55, v77, v83);
    sub_1DD0DCF8C();
  }

  v31 = *(v28 + 448);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  v34 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v34))
  {
    v35 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v35);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_62();
  }

  v84 = *(v28 + 416);

  v41 = *(v84 + 72);
  v85 = v84 + 72;
  OUTLINED_FUNCTION_24_0();
  v82 = v42 + *v42;
  v44 = *(v43 + 4);
  v45 = swift_task_alloc();
  *(v28 + 552) = v45;
  *v45 = v28;
  v45[1] = sub_1DCE3B644;
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_141();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, v82, v85, a17, a18, a19, a20);
}

uint64_t sub_1DCE3B644()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 552);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 560) = v0;

  if (!v0)
  {
    *(v4 + 568) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3B748()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 568);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3B7C4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 576);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 584) = v0;

  if (!v0)
  {
    *(v4 + 592) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3B8C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 592);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3B944()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 600);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3BA48()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 616);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3BAC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 624);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 632) = v0;

  if (!v0)
  {
    *(v4 + 640) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3BBC8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 640);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3BC44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 648);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 656) = v0;

  if (!v0)
  {
    *(v4 + 664) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3BD48()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 664);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3BDC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 672);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 680) = v0;

  if (!v0)
  {
    *(v4 + 688) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3BEC8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 688);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3BF44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 696);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 704) = v0;

  if (!v0)
  {
    *(v4 + 712) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3C048()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 456);

  v2 = *(v0 + 712);
  v3 = *(v0 + 440);

  v4 = OUTLINED_FUNCTION_19_3();

  return v5(v4);
}

uint64_t sub_1DCE3C0B4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  swift_willThrow();

  v4 = v0[59];
  v5 = v0[55];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C12C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 456);

  v2 = *(v0 + 704);
  v3 = *(v0 + 440);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE3C198()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 680);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C214()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 656);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C290()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 520);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C30C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 632);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C388()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 608);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C404()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 584);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C480()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 560);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3C4FC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 528);
  v2 = *(v0 + 480);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 424);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 544);
  v7 = *(v0 + 440);

  OUTLINED_FUNCTION_29();

  return v8();
}

void sub_1DCE3C5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeDetailedResultFlow<A>(provider:)();
}

void PatternFlowProviding.makeDetailedResultFlow<A>(provider:)()
{
  OUTLINED_FUNCTION_42();
  v0[26] = v1;
  v0[27] = v2;
  v0[24] = v3;
  v0[25] = v4;
  v0[23] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[28] = AssociatedTypeWitness;
  v7 = sub_1DD0DE97C();
  v0[29] = v7;
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_24_0();
  v0[30] = v9;
  v11 = *(v10 + 64);
  v0[31] = OUTLINED_FUNCTION_38();
  v12 = *(AssociatedTypeWitness - 8);
  v0[32] = v12;
  v13 = *(v12 + 64);
  v0[33] = OUTLINED_FUNCTION_38();
  sub_1DD0DCC3C();
}

uint64_t sub_1DCE3C7E0()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_21();
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v1[5];
  v5 = OUTLINED_FUNCTION_49_3();
  v6(v5);
  OUTLINED_FUNCTION_64_2();
  v7 = v1[4];
  v8 = OUTLINED_FUNCTION_49_3();
  v0[37] = v9(v8);
  v10 = v1[3];
  v11 = OUTLINED_FUNCTION_49_3();
  v0[38] = v12(v11);
  v0[39] = v13;
  objc_opt_self();
  OUTLINED_FUNCTION_15_31();
  v0[40] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v14;
  v0[7] = v0 + 22;
  OUTLINED_FUNCTION_67_13();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v15);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_115_3(v16, sel_load_patternId_completion_);
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1DCE3C940()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 328) = v4;
  if (v4)
  {
    v5 = *(v1 + 312);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE3CA48()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[26];
  v4 = v0[24];
  v0[42] = v0[22];

  sub_1DCE40424();
}

uint64_t sub_1DCE3CED4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (v0)
  {
    v9 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3CFD4()
{
  v37 = v0;
  v1 = v0[31];
  v2 = v0[28];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v24 = v0[42];
    v26 = v0[38];
    v25 = v0[39];
    v35 = v0[37];
    v27 = v0[27];
    v28 = v0[25];
    (*(v0[32] + 32))(v0[33], v1, v2);
    v29 = [v24 settings];
    sub_1DD0DDE6C();

    type metadata accessor for LexicalWindowedContentSource();
    swift_allocObject();
    v30 = sub_1DD0C4690();
    OUTLINED_FUNCTION_191();
    swift_getAssociatedConformanceWitness();
    static PromptFlowProviderType.continuation<A>(_:)(v2, &v36);
    v31 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EE0, &qword_1DD0E28C0);
    v32 = swift_allocObject();
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0u;
    *(v32 + 112) = 6;
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    type metadata accessor for AnyFlow();
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  v3 = v0[39];
  v5 = v0[29];
  v4 = v0[30];

  (*(v4 + 8))(v1, v5);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v8))
  {
    v9 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v9);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_62();
  }

  v34 = v0[27];

  v15 = *(v34 + 48);
  OUTLINED_FUNCTION_8();
  v33 = (v16 + *v16);
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v0[45] = v19;
  *v19 = v0;
  v19[1] = sub_1DCE3D3A4;
  v20 = v0[27];
  v21 = v0[23];
  v22 = OUTLINED_FUNCTION_55_2(v0[25]);

  return v33(v22);
}

uint64_t sub_1DCE3D3A4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 360);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3D4A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = *(v0 + 376);
  v3 = OUTLINED_FUNCTION_21_29();
  v4(v3);

  v5 = OUTLINED_FUNCTION_19_3();

  return v6(v5);
}

uint64_t sub_1DCE3D53C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 384);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 392) = v0;

  if (!v0)
  {
    *(v4 + 400) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3D640()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = *(v0 + 400);
  v3 = OUTLINED_FUNCTION_21_29();
  v4(v3);

  v5 = OUTLINED_FUNCTION_19_3();

  return v6(v5);
}

uint64_t sub_1DCE3D6D4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 408);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 416) = v0;

  if (!v0)
  {
    *(v4 + 424) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3D7D8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = *(v0 + 424);
  v3 = OUTLINED_FUNCTION_21_29();
  v4(v3);

  v5 = OUTLINED_FUNCTION_19_3();

  return v6(v5);
}

uint64_t sub_1DCE3D86C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[37];
  swift_willThrow();

  v4 = v0[41];
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE3D8F0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 416);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE3D978()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 392);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE3DA00()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 368);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE3DA88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 352);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCE3DB10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeTableSetFlow<A>(provider:)();
}

uint64_t sub_1DCE3DC78()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_21();
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v1[5];
  v5 = OUTLINED_FUNCTION_49_3();
  v6(v5);
  OUTLINED_FUNCTION_64_2();
  v7 = v1[4];
  v8 = OUTLINED_FUNCTION_49_3();
  v0[56] = v9(v8);
  v10 = v1[3];
  v11 = OUTLINED_FUNCTION_49_3();
  v0[57] = v12(v11);
  objc_opt_self();
  OUTLINED_FUNCTION_15_31();
  v0[58] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v13;
  v0[7] = v0 + 42;
  OUTLINED_FUNCTION_67_13();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v14);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_115_3(v15, sel_load_patternId_completion_);
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DEC8](v16);
}

uint64_t sub_1DCE3DDD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 472) = v4;
  if (v4)
  {
    v5 = *(v1 + 456);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE3DEE0()
{
  OUTLINED_FUNCTION_100();
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v0[60] = v0[42];

  sub_1DCE40424();
}

uint64_t sub_1DCE3E8F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[64] = v0;

  if (v0)
  {
    v9 = v3[57];
  }

  else
  {
    v10 = v3[62];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE3EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 232);
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v87 = *(v28 + 208);
    v56 = *(v28 + 216);
    v57 = *(v28 + 224);
    v58 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    v59 = OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9(v59 & 0xFFFFFFFFFFFFLL | 0x6953000000000000);

    if (*(v28 + 264))
    {
      v60 = swift_dynamicCast();
      v61 = *(v28 + 376);
    }

    else
    {
      sub_1DCB16DB0(v28 + 240, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v60 = 0;
    }

    v83 = v57;
    if ((v57 & 1) != 0 && (v60 & 1) == 0)
    {
      v62 = *(v28 + 488);
      v63 = *(v28 + 456);
      sub_1DD0DE3BC();
    }

    v64 = [*(v28 + 480) settings];
    v65 = sub_1DD0DDE6C();

    v66 = OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40(v66, v67, v65);

    if (*(v28 + 296))
    {
      v68 = swift_dynamicCast();
      if (v68)
      {
        v69 = *(v28 + 368);
      }

      else
      {
        v69 = 0;
      }

      v70 = v68 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 272, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v69 = 0;
      v70 = 1;
    }

    v71 = *(v28 + 488);
    v72 = *(v28 + 456);
    v79 = *(v28 + 448);
    v80 = *(v28 + 480);
    v73 = *(v28 + 432);
    v74 = *(v28 + 416);
    v81 = *(v28 + 424);
    v82 = *(v28 + 440);
    v75 = *(v28 + 400);
    type metadata accessor for ListWindowedContentSource();
    v76 = OUTLINED_FUNCTION_21_3();
    v78 = sub_1DD0C35E8(v76, v77, v69, v70, v87);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_39();
    OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow();
    a17 = v31;
    *(v28 + 352) = v78;
    *(v28 + 360) = sub_1DD0C7E80(&a17);
    sub_1DCBA0D4C(v87, v56, v83, v31);
    sub_1DD0DCF8C();
  }

  v32 = *(v28 + 456);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
  v34 = sub_1DD0DD8EC();
  v35 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v35))
  {
    v36 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v36);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_62();
  }

  v85 = *(v28 + 416);

  v42 = *(v85 + 56);
  v86 = v85 + 56;
  OUTLINED_FUNCTION_24_0();
  v84 = v43 + *v43;
  v45 = *(v44 + 4);
  v46 = swift_task_alloc();
  *(v28 + 520) = v46;
  *v46 = v28;
  v46[1] = sub_1DCE3EE84;
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_141();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, v84, v86, a17, a18, a19, a20);
}

uint64_t sub_1DCE3EE84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 520);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 528) = v0;

  if (!v0)
  {
    *(v4 + 536) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3EF88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 536);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 544);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 552) = v0;

  if (!v0)
  {
    *(v4 + 560) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3F108()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 560);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F184()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 568);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3F288()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 584);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F304()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 592);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3F408()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 608);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F484()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 616);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 624) = v0;

  if (!v0)
  {
    *(v4 + 632) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3F588()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 632);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F604()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 640);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE3F708()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 656);
  v5 = *(v1 + 440);

  v6 = OUTLINED_FUNCTION_19_3();

  return v7(v6);
}

uint64_t sub_1DCE3F784()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[56];
  swift_willThrow();

  v4 = v0[59];
  v5 = v0[55];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3F7FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 648);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3F878()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 624);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3F8F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 600);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3F970()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 576);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3F9EC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 552);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3FA68()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v2 = OUTLINED_FUNCTION_4_83();
  v3(v2);
  v4 = *(v1 + 528);
  v5 = *(v1 + 440);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE3FAE4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 512);
  v7 = *(v0 + 440);

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCE3FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE3FBAC, 0, 0);
}

uint64_t sub_1DCE3FBAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  swift_beginAccess();
  sub_1DCB17D04(v1 + 56, (v0 + 2));
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_8();
  v14 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[14] = v7;
  *v7 = v8;
  v7[1] = sub_1DCE3FCE4;
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[10];
  OUTLINED_FUNCTION_90_7();

  return v12();
}

uint64_t sub_1DCE3FCE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE3FDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = v12[12];
  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = v13;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[15];
  if (v18)
  {
    v20 = v12[12];
    v21 = v12[10];
    v22 = OUTLINED_FUNCTION_151();
    a9 = OUTLINED_FUNCTION_83();
    *v22 = 136315138;
    v23 = [v20 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v24 = OUTLINED_FUNCTION_15_31();
    v27 = sub_1DCB10E9C(v24, v25, v26);

    *(v22 + 4) = v27;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v28, v29, "Could not build output for pattern %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v21 = v12[10];
  }

  v30 = type metadata accessor for EmptyOutput();
  v31 = swift_allocObject();
  v21[3] = v30;
  v21[4] = &protocol witness table for EmptyOutput;

  *v21 = v31;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1DCE3FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE3FFA4, 0, 0);
}

uint64_t sub_1DCE3FFA4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[8];
  (*(v0[12] + 16))(v0[11]);
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_8();
  v14 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[13] = v7;
  *v7 = v8;
  v7[1] = sub_1DCE400D8;
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  OUTLINED_FUNCTION_90_7();

  return v12();
}

uint64_t sub_1DCE400D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE401D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = v12[9];
  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = v13;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[14];
  if (v18)
  {
    v20 = v12[9];
    v21 = v12[7];
    v22 = OUTLINED_FUNCTION_151();
    a9 = OUTLINED_FUNCTION_83();
    *v22 = 136315138;
    v23 = [v20 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v24 = OUTLINED_FUNCTION_15_31();
    v27 = sub_1DCB10E9C(v24, v25, v26);

    *(v22 + 4) = v27;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v28, v29, "Could not build output for pattern %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v21 = v12[7];
  }

  v30 = type metadata accessor for EmptyOutput();
  v31 = swift_allocObject();
  v21[3] = v30;
  v21[4] = &protocol witness table for EmptyOutput;

  *v21 = v31;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

__int128 *PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(shouldContinueForResponse:strategy:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = type metadata accessor for ContinuationPromptFlow();
  OUTLINED_FUNCTION_106_3(v7, v8, v9, v10, v11, v12, v13, v14, v27, *(&v27 + 1), v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_112(a5);
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_92_7();
  v18 = v17();
  *&v27 = OUTLINED_FUNCTION_108_4(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_unknownObjectRetain();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_33_4();

  return &v27;
}

uint64_t sub_1DCE40AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1DCEA2438(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1DCEA243C(v5, v8);
  }
}

uint64_t PatternFlowProvider.init(outputPublisher:responseGenerator:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v9 = OUTLINED_FUNCTION_76_11(v8);
  v10(v9);
  OUTLINED_FUNCTION_84_8();
  v11 = OUTLINED_FUNCTION_33_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v2;
}

uint64_t PatternFlowProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t PatternFlowProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1DCE40D9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCF08C;

  PatternFlowProviding.makeTableSetFlow<A>(provider:)();
}

uint64_t sub_1DCE40E60(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  sub_1DCAFF9E8(a1, a3 + 16);
  sub_1DCAFF9E8(&v11, a3 + 56);
  return a3;
}

uint64_t sub_1DCE40EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputGenerationManifest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE40F58()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for OutputGenerationManifest() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v0 + v10);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DCB4AE1C;

  return sub_1DCE3FF7C(v4, v0 + v8, v13, v0 + v12, v6, v5);
}

uint64_t sub_1DCE410B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AD3C;

  return sub_1DCE3FB88(a1, v8, a3, a4);
}

uint64_t sub_1DCE41168(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for PatternFlowProvider();
  v11 = &protocol witness table for PatternFlowProvider;
  *&v9 = a3;
  *(a4 + 16) = a2 & 1;
  *(a4 + 24) = a1;
  sub_1DCAFF9E8(&v9, a4 + 32);
  *(a4 + 72) = 0;
  return a4;
}

unint64_t sub_1DCE411D8()
{
  result = qword_1ECCA7EC8;
  if (!qword_1ECCA7EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA7EC8);
  }

  return result;
}

unint64_t sub_1DCE41220()
{
  result = qword_1ECCA7ED0;
  if (!qword_1ECCA7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7ED0);
  }

  return result;
}

uint64_t dispatch thunk of PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 104);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_30_1(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_23_3(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 112);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_30_1(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_23_3(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 120);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_30_1(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_23_3(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of PatternFlowProviding.makeTableSetFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 128);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_30_1(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_23_3(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1DCE41734()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1DCE41870()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *(type metadata accessor for OutputGenerationManifest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DCB4AD3C;

  return sub_1DCE410B0(v3, (v0 + 16), v6, v0 + v5);
}

void OUTLINED_FUNCTION_68_14()
{
  v2 = v0[42];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
}

id OUTLINED_FUNCTION_105_6(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t *OUTLINED_FUNCTION_106_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  a17 = v19;
  a12 = v18;
  a13 = v17;

  return __swift_allocate_boxed_opaque_existential_1Tm(&a9);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_117_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_1DCE41A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE41A3C, 0, 0);
}

uint64_t sub_1DCE41A3C()
{
  v1 = *(v0[3] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = qword_1EDE4F900;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Using PatternExecutionResult to build Output", v7, 2u);
      MEMORY[0x1E12A8390](v7, -1, -1);
    }

    v8 = v0[5];

    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
    v11 = *(v10 + 8);
    v19 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = sub_1DCE41C90;
    v14 = v0[4];
    v15 = v0[2];

    return v19(v15, v3, v14, v9, v10);
  }

  else
  {
    v17 = v0[2];
    *(v17 + 32) = 0;
    *v17 = 0u;
    *(v17 + 16) = 0u;
    OUTLINED_FUNCTION_29();

    return v18();
  }
}