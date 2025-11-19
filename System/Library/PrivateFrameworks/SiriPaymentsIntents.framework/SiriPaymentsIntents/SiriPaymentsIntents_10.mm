uint64_t RequestPaymentConfirmIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(a1, a2, a3);
}

id @nonobjc INRequestPaymentIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 initWithCode:a1 userActivity:?];
  MEMORY[0x277D82BD8](a2);
  return v5;
}

id @nonobjc INPaymentRecord.init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = MEMORY[0x26D620690](a5);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v9 = [v17 initWithPayee:a1 payer:a2 currencyAmount:a3 paymentMethod:a4 note:a8 status:? feeAmount:?];
  MEMORY[0x277D82BD8](a8);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v9;
}

uint64_t sub_26881E7B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26881E7F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26881E830()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26881E8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26881E908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RequestPaymentConfirmIntentStrategy()
{
  v1 = type metadata singleton initialization cache for RequestPaymentConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t PaymentsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v34 = a2;
  v33 = a1;
  v45 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v30 = 0;
  v40 = *v4;
  v42 = type metadata accessor for Logger();
  v35 = v42;
  v36 = *(v42 - 8);
  v41 = v36;
  v37 = v36;
  v38 = *(v36 + 64);
  v5 = &v14 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v5;
  v58 = MEMORY[0x28223BE20](v33);
  v57 = v6;
  v56 = *(v40 + 80);
  v54 = v7;
  v55 = v8;
  v53 = v9;
  v52[1] = *(v40 + 88);
  v10 = Logger.payments.unsafeMutableAddressor();
  (*(v41 + 16))(v5, v10, v42);
  v47 = Logger.logObject.getter();
  v43 = v47;
  v46 = static os_log_type_t.debug.getter();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v48 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v47, v46))
  {
    v11 = v30;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = 0;
    v22 = createStorage<A>(capacity:type:)(0);
    v20 = v22;
    v23 = createStorage<A>(capacity:type:)(v19);
    v52[0] = v21;
    v51 = v22;
    v50 = v23;
    v24 = 0;
    v25 = v52;
    serialize(_:at:)(0, v52);
    serialize(_:at:)(v24, v25);
    v49 = v48;
    v26 = &v14;
    MEMORY[0x28223BE20](&v14);
    v27 = &v14 - 6;
    *(&v14 - 4) = v12;
    *(&v14 - 3) = &v51;
    *(&v14 - 2) = &v50;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v29 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v43, v44, "#PaymentsHandleIntentStrategy makeIntentExecutionBehavior", v17, 2u);
      v15 = 0;
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v23, v15, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v17, MEMORY[0x277D84B78]);

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  (*(v37 + 8))(v39, v35);

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v14 = static SiriKitIntentExecutionBehavior.standard()();
  v31(v14);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3A8] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C40](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3A0] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C38](a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5C0D0] + 4);
  v6 = swift_task_alloc();
  *(v13 + 24) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = type metadata accessor for PaymentsHandleIntentStrategy();
  *v6 = *(v13 + 16);
  v6[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

uint64_t ReferenceResolutionClient.resolveAppDisambiguationReference(from:)(uint64_t a1)
{
  v57 = a1;
  v44 = partial apply for implicit closure #1 in ReferenceResolutionClient.resolveAppDisambiguationReference(from:);
  v45 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v47 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v49 = 0;
  v55 = 0;
  v50 = type metadata accessor for Logger();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v54 = v20 - v53;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v62 = v20 - v56;
  v63 = type metadata accessor for RREntity();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v58 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v57);
  v59 = v20 - v58;
  v73 = v20 - v58;
  v72 = v2;
  v71 = v1;
  ReferenceResolutionClient.resolvePositionEntity(from:useCase:)(v2, 0, v3);
  if ((*(v60 + 48))(v62, 1, v63) == 1)
  {
    outlined destroy of RREntity?(v62);
    v20[0] = 0;
  }

  else
  {
    (*(v60 + 32))(v59, v62, v63);
    v4 = RREntity.usoEntity.getter();
    v5 = v54;
    v29 = v4;
    type metadata accessor for UsoEntity_common_App();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v30 = v70;
    v69 = v70;
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v51 + 16))(v5, v6, v50);

    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v7 = swift_allocObject();
    v8 = v34;
    v35 = v7;
    *(v7 + 16) = v44;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v35;
    v39 = v9;
    *(v9 + 16) = v45;
    *(v9 + 24) = v10;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    v40 = v11;

    v12 = v36;
    v13 = v40;
    *v40 = v46;
    v13[1] = v12;

    v14 = v37;
    v15 = v40;
    v40[2] = v47;
    v15[3] = v14;

    v16 = v39;
    v17 = v40;
    v40[4] = v48;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v42, v43))
    {
      v18 = v49;
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0);
      v24 = createStorage<A>(capacity:type:)(1);
      v25 = &v68;
      v68 = v22;
      v26 = &v67;
      v67 = v23;
      v27 = &v66;
      v66 = v24;
      serialize(_:at:)(2, &v68);
      serialize(_:at:)(1, v25);
      v64 = v46;
      v65 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v64, v25, v26, v27);
      v28 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v64 = v47;
        v65 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v64, &v68, &v67, &v66);
        v20[1] = 0;
        v64 = v48;
        v65 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_2686B1000, v42, v43, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_App: %s", v22, 0xCu);
        destroyStorage<A>(_:count:)(v23, 0, v21);
        destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v42);
    (*(v51 + 8))(v54, v50);
    (*(v60 + 8))(v59, v63);
    v20[0] = v30;
  }

  return v20[0];
}

uint64_t ReferenceResolutionClient.resolvePersonDisambiguationReference(from:)(uint64_t a1)
{
  v59 = a1;
  v46 = partial apply for implicit closure #1 in ReferenceResolutionClient.resolvePersonDisambiguationReference(from:);
  v47 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v51 = 0;
  v57 = 0;
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v56 = &v20 - v55;
  v58 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v64 = &v20 - v58;
  v66 = type metadata accessor for RREntity();
  v62 = *(v66 - 8);
  v63 = v66 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v59);
  v61 = &v20 - v60;
  v76 = &v20 - v60;
  v75 = v2;
  v74 = v1;
  v65 = 1;
  ReferenceResolutionClient.resolvePositionEntity(from:useCase:)(v2, 1, v3);
  if ((*(v62 + 48))(v64, v65, v66) == 1)
  {
    outlined destroy of RREntity?(v64);
    return 0;
  }

  else
  {
    (*(v62 + 32))(v61, v64, v66);
    v4 = RREntity.usoEntity.getter();
    v5 = v56;
    v31 = v4;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v32 = v73;
    v72 = v73;
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v53 + 16))(v5, v6, v52);

    v35 = 7;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = 32;
    v7 = swift_allocObject();
    v8 = v36;
    v37 = v7;
    *(v7 + 16) = v46;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v37;
    v41 = v9;
    *(v9 + 16) = v47;
    *(v9 + 24) = v10;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v40 = _allocateUninitializedArray<A>(_:)();
    v42 = v11;

    v12 = v38;
    v13 = v42;
    *v42 = v48;
    v13[1] = v12;

    v14 = v39;
    v15 = v42;
    v42[2] = v49;
    v15[3] = v14;

    v16 = v41;
    v17 = v42;
    v42[4] = v50;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v44, v45))
    {
      v18 = v51;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = createStorage<A>(capacity:type:)(1);
      v27 = &v71;
      v71 = v24;
      v28 = &v70;
      v70 = v25;
      v29 = &v69;
      v69 = v26;
      serialize(_:at:)(2, &v71);
      serialize(_:at:)(1, v27);
      v67 = v48;
      v68 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v67, v27, v28, v29);
      v30 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v67 = v49;
        v68 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v71, &v70, &v69);
        v22 = 0;
        v67 = v50;
        v68 = v41;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v71, &v70, &v69);
        _os_log_impl(&dword_2686B1000, v44, v45, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_Person: %s", v24, 0xCu);
        destroyStorage<A>(_:count:)(v25, 0, v23);
        destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v44);
    (*(v53 + 8))(v56, v52);
    (*(v62 + 8))(v61, v66);
    return v32;
  }
}

uint64_t static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase@<X0>(uint64_t *a1@<X8>)
{
  result = static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ReferenceResolutionClient.resolveCommonPerson()@<X0>(void *a1@<X8>)
{
  type metadata accessor for UsoEntityBuilder_common_Person();
  UsoEntityBuilder_common_Person.__allocating_init()();
  v4 = MEMORY[0x26D61F7C0]();

  if (v4)
  {
    ReferenceResolutionClient.resolveEntity(referenceEntity:)(v4, a1);
  }

  else
  {
    v2 = type metadata accessor for RREntity();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v396 = a1;
  v343 = a2;
  v397 = 0;
  v447 = 0;
  v446 = 0;
  v445 = 0;
  v444 = 0;
  v443 = 0;
  v344 = 0;
  v448 = 0;
  v428 = 0;
  v421 = 0;
  v416 = 0;
  v449 = 0;
  v346 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR) - 8) + 64);
  v3 = MEMORY[0x28223BE20](0);
  v348 = (v346 + 15) & 0xFFFFFFFFFFFFFFF0;
  v345 = &v107 - v348;
  v4 = MEMORY[0x28223BE20](v3);
  v347 = &v107 - v348;
  MEMORY[0x28223BE20](v4);
  v349 = &v107 - v348;
  v350 = type metadata accessor for Logger();
  v351 = *(v350 - 8);
  v352 = v351;
  v358 = *(v351 + 64);
  v5 = MEMORY[0x28223BE20](v397);
  v360 = (v358 + 15) & 0xFFFFFFFFFFFFFFF0;
  v353 = &v107 - v360;
  v6 = MEMORY[0x28223BE20](v5);
  v354 = &v107 - v360;
  v7 = MEMORY[0x28223BE20](v6);
  v355 = &v107 - v360;
  v8 = MEMORY[0x28223BE20](v7);
  v356 = &v107 - v360;
  v9 = MEMORY[0x28223BE20](v8);
  v357 = &v107 - v360;
  v10 = MEMORY[0x28223BE20](v9);
  v359 = &v107 - v360;
  MEMORY[0x28223BE20](v10);
  v361 = &v107 - v360;
  v362 = type metadata accessor for RRCandidate();
  v363 = *(v362 - 8);
  v364 = v363;
  v366 = *(v363 + 64);
  v365 = v366;
  v11 = MEMORY[0x28223BE20](v397);
  v368 = (v366 + 15) & 0xFFFFFFFFFFFFFFF0;
  v367 = &v107 - v368;
  MEMORY[0x28223BE20](v11);
  v369 = &v107 - v368;
  v449 = &v107 - v368;
  v370 = type metadata accessor for RRResult();
  v371 = *(v370 - 8);
  v372 = v371;
  v375 = *(v371 + 64);
  v373 = v375;
  MEMORY[0x28223BE20](v370 - 8);
  v377 = (v375 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = (&v107 - v377);
  v12 = MEMORY[0x28223BE20](&v107 - v377);
  v376 = (&v107 - v377);
  MEMORY[0x28223BE20](v12);
  v378 = &v107 - v377;
  v448 = &v107 - v377;
  v379 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v397);
  v399 = &v107 - v379;
  v401 = type metadata accessor for RRQuery();
  v380 = *(v401 - 8);
  v400 = v380;
  v13 = *(v380 + 64);
  MEMORY[0x28223BE20](v401 - 8);
  v402 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v381 = *(*(v404 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v404 - 8);
  v383 = (v381 + 15) & 0xFFFFFFFFFFFFFFF0;
  v405 = (&v107 - v383);
  v382 = (&v107 - v383);
  MEMORY[0x28223BE20](v15);
  v403 = (&v107 - v383);
  v384 = (&v107 - v383);
  v447 = &v107 - v383;
  v388 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64);
  v16 = MEMORY[0x28223BE20](v397);
  v390 = (v388 + 15) & 0xFFFFFFFFFFFFFFF0;
  v385 = &v107 - v390;
  v17 = MEMORY[0x28223BE20](v16);
  v386 = &v107 - v390;
  v18 = MEMORY[0x28223BE20](v17);
  v387 = &v107 - v390;
  v19 = MEMORY[0x28223BE20](v18);
  v389 = &v107 - v390;
  MEMORY[0x28223BE20](v19);
  v392 = &v107 - v390;
  v391 = &v107 - v390;
  v446 = &v107 - v390;
  v445 = v20;
  v444 = v2;
  v393 = type metadata accessor for RREntity();
  v21 = *(v393 - 8);
  v394 = *(v21 + 56);
  v395 = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v398 = 1;
  v394(v392, 1);

  v22 = v400;
  *v402 = v396;
  v23 = *MEMORY[0x277D5FEA8];
  (*(v22 + 104))();
  v24 = type metadata accessor for RRFilter();
  (*(*(v24 - 8) + 56))(v399, v398);
  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();
  outlined destroy of RRFilter?(v399);
  (*(v400 + 8))(v402, v401);
  outlined init with copy of Result<RRResult, Error>(v403, v405);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v338 = *(v372 + 32);
    v339 = (v372 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v338(v378, v382, v370);
    v448 = v378;
    v340 = *(v372 + 16);
    v341 = (v372 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v340)(v376);
    v342 = (*(v372 + 88))(v376, v370);
    if (v342 == *MEMORY[0x277D5FEC0])
    {
      v25 = v361;
      (*(v372 + 96))(v376, v370);
      v317 = *(v364 + 32);
      v316 = v364 + 32;
      v317(v369, v376, v362);
      v449 = v369;
      v26 = Logger.payments.unsafeMutableAddressor();
      (*(v352 + 16))(v25, v26, v350);
      v27 = *(v364 + 16);
      v314 = v364 + 16;
      v27(v367, v369, v362);
      v315 = (*(v314 + 64) + 16) & ~*(v314 + 64);
      v318 = swift_allocObject();
      v317((v318 + v315), v367, v362);

      v321 = 32;
      v325 = 32;
      v326 = 7;
      v28 = swift_allocObject();
      v29 = v318;
      v327 = v28;
      *(v28 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
      *(v28 + 24) = v29;

      v337 = Logger.logObject.getter();
      v319 = v337;
      v336 = static os_log_type_t.debug.getter();
      v320 = v336;
      v322 = 17;
      v330 = swift_allocObject();
      v323 = v330;
      *(v330 + 16) = v321;
      v331 = swift_allocObject();
      v324 = v331;
      *(v331 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v327;
      v328 = v30;
      *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v328;
      v334 = v32;
      v329 = v32;
      *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v32 + 24) = v33;
      v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v332 = _allocateUninitializedArray<A>(_:)();
      v333 = v34;

      v35 = v330;
      v36 = v333;
      *v333 = partial apply for closure #1 in OSLogArguments.append(_:);
      v36[1] = v35;

      v37 = v331;
      v38 = v333;
      v333[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v38[3] = v37;

      v39 = v333;
      v40 = v334;
      v333[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v39[5] = v40;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v337, v336))
      {
        v41 = v344;
        v307 = static UnsafeMutablePointer.allocate(capacity:)();
        v304 = v307;
        v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v308 = createStorage<A>(capacity:type:)(0);
        v306 = v308;
        v310 = 1;
        v309 = createStorage<A>(capacity:type:)(1);
        v410 = v307;
        v409 = v308;
        v408 = v309;
        v311 = &v410;
        serialize(_:at:)(2, &v410);
        serialize(_:at:)(v310, v311);
        v406 = partial apply for closure #1 in OSLogArguments.append(_:);
        v407 = v323;
        closure #1 in osLogInternal(_:log:type:)(&v406, v311, &v409, &v408);
        v312 = v41;
        v313 = v41;
        if (v41)
        {
          v302 = 0;

          __break(1u);
        }

        else
        {
          v406 = partial apply for closure #1 in OSLogArguments.append(_:);
          v407 = v324;
          closure #1 in osLogInternal(_:log:type:)(&v406, &v410, &v409, &v408);
          v300 = 0;
          v301 = 0;
          v406 = partial apply for closure #1 in OSLogArguments.append(_:);
          v407 = v329;
          closure #1 in osLogInternal(_:log:type:)(&v406, &v410, &v409, &v408);
          v298 = 0;
          v299 = 0;
          _os_log_impl(&dword_2686B1000, v319, v320, "#ReferenceResolution Found a candidate %s", v304, 0xCu);
          destroyStorage<A>(_:count:)(v306, 0, v305);
          destroyStorage<A>(_:count:)(v309, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v304, MEMORY[0x277D84B78]);

          v303 = v298;
        }
      }

      else
      {
        v42 = v344;

        v303 = v42;
      }

      v296 = v303;

      (*(v352 + 8))(v361, v350);
      RRCandidate.entity.getter();
      (v394)(v389, 0, 1, v393);
      outlined assign with take of RREntity?(v389, v391);
      (*(v364 + 8))(v369, v362);
      v297 = v296;
      goto LABEL_57;
    }

    if (v342 == *MEMORY[0x277D5FED0])
    {
      v58 = v357;
      (*(v372 + 96))(v376, v370);
      v251 = *v376;
      v421 = v251;
      v59 = Logger.payments.unsafeMutableAddressor();
      (*(v352 + 16))(v58, v59, v350);
      v255 = Logger.logObject.getter();
      v252 = v255;
      v254 = static os_log_type_t.debug.getter();
      v253 = v254;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v256 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v255, v254))
      {
        v60 = v344;
        v242 = static UnsafeMutablePointer.allocate(capacity:)();
        v238 = v242;
        v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v240 = 0;
        v243 = createStorage<A>(capacity:type:)(0);
        v241 = v243;
        v244 = createStorage<A>(capacity:type:)(v240);
        v420[0] = v242;
        v419 = v243;
        v418 = v244;
        v245 = 0;
        v246 = v420;
        serialize(_:at:)(0, v420);
        serialize(_:at:)(v245, v246);
        v417 = v256;
        v247 = &v107;
        MEMORY[0x28223BE20](&v107);
        v248 = &v107 - 6;
        *(&v107 - 4) = v61;
        *(&v107 - 3) = &v419;
        *(&v107 - 2) = &v418;
        v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v250 = v60;
        if (v60)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v252, v253, "#ReferenceResolution Found ambiguous entities -> returning the first one", v238, 2u);
          v236 = 0;
          destroyStorage<A>(_:count:)(v241, 0, v239);
          destroyStorage<A>(_:count:)(v244, v236, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v238, MEMORY[0x277D84B78]);

          v237 = v250;
        }
      }

      else
      {

        v237 = v344;
      }

      v234 = v237;

      (*(v352 + 8))(v357, v350);
      v420[1] = v251;
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();
      if ((*(v364 + 48))(v347, 1, v362) == 1)
      {
        outlined destroy of RRCandidate?(v347);
        (v394)(v386, 1, 1, v393);
      }

      else
      {
        RRCandidate.entity.getter();
        (*(v364 + 8))(v347, v362);
        (v394)(v386, 0, 1, v393);
      }

      outlined assign with take of RREntity?(v386, v391);

      v297 = v234;
      goto LABEL_57;
    }

    if (v342 == *MEMORY[0x277D5FEC8])
    {
      v43 = v359;
      (*(v372 + 96))(v376, v370);
      v277 = *v376;
      v276 = v277;
      v416 = v277;
      v44 = Logger.payments.unsafeMutableAddressor();
      (*(v352 + 16))(v43, v44, v350);

      v284 = 7;
      v285 = swift_allocObject();
      *(v285 + 16) = v277;
      v295 = Logger.logObject.getter();
      v278 = v295;
      v294 = static os_log_type_t.debug.getter();
      v279 = v294;
      v280 = 17;
      v288 = swift_allocObject();
      v281 = v288;
      *(v288 + 16) = 0;
      v289 = swift_allocObject();
      v282 = v289;
      *(v289 + 16) = 8;
      v283 = 32;
      v45 = swift_allocObject();
      v46 = v285;
      v286 = v45;
      *(v45 + 16) = partial apply for implicit closure #2 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v286;
      v292 = v47;
      v287 = v47;
      *(v47 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v47 + 24) = v48;
      v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v290 = _allocateUninitializedArray<A>(_:)();
      v291 = v49;

      v50 = v288;
      v51 = v291;
      *v291 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[1] = v50;

      v52 = v289;
      v53 = v291;
      v291[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v53[3] = v52;

      v54 = v291;
      v55 = v292;
      v291[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v54[5] = v55;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v295, v294))
      {
        v56 = v344;
        v270 = static UnsafeMutablePointer.allocate(capacity:)();
        v266 = v270;
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v268 = 0;
        v271 = createStorage<A>(capacity:type:)(0);
        v269 = v271;
        v272 = createStorage<A>(capacity:type:)(v268);
        v415[0] = v270;
        v414 = v271;
        v413 = v272;
        v273 = v415;
        serialize(_:at:)(0, v415);
        serialize(_:at:)(1, v273);
        v411 = partial apply for closure #1 in OSLogArguments.append(_:);
        v412 = v281;
        closure #1 in osLogInternal(_:log:type:)(&v411, v273, &v414, &v413);
        v274 = v56;
        v275 = v56;
        if (v56)
        {
          v264 = 0;

          __break(1u);
        }

        else
        {
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v282;
          closure #1 in osLogInternal(_:log:type:)(&v411, v415, &v414, &v413);
          v262 = 0;
          v263 = 0;
          v411 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v412 = v287;
          closure #1 in osLogInternal(_:log:type:)(&v411, v415, &v414, &v413);
          v260 = 0;
          v261 = 0;
          _os_log_impl(&dword_2686B1000, v278, v279, "#ReferenceResolution Found %ld candidates. Using the first one", v266, 0xCu);
          v259 = 0;
          destroyStorage<A>(_:count:)(v269, 0, v267);
          destroyStorage<A>(_:count:)(v272, v259, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v266, MEMORY[0x277D84B78]);

          v265 = v260;
        }
      }

      else
      {
        v57 = v344;

        v265 = v57;
      }

      v257 = v265;

      (*(v352 + 8))(v359, v350);
      v415[1] = v276;
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();
      if ((*(v364 + 48))(v349, 1, v362) == 1)
      {
        outlined destroy of RRCandidate?(v349);
        (v394)(v387, 1, 1, v393);
      }

      else
      {
        RRCandidate.entity.getter();
        (*(v364 + 8))(v349, v362);
        (v394)(v387, 0, 1, v393);
      }

      outlined assign with take of RREntity?(v387, v391);

      v297 = v257;
      goto LABEL_57;
    }

    if (v342 != *MEMORY[0x277D5FED8])
    {
      if (v342 == *MEMORY[0x277D5FEE0])
      {
        v67 = v355;
        v68 = Logger.payments.unsafeMutableAddressor();
        (*(v352 + 16))(v67, v68, v350);
        v205 = Logger.logObject.getter();
        v202 = v205;
        v204 = static os_log_type_t.debug.getter();
        v203 = v204;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v206 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v205, v204))
        {
          v69 = v344;
          v193 = static UnsafeMutablePointer.allocate(capacity:)();
          v189 = v193;
          v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v191 = 0;
          v194 = createStorage<A>(capacity:type:)(0);
          v192 = v194;
          v195 = createStorage<A>(capacity:type:)(v191);
          v432 = v193;
          v431 = v194;
          v430 = v195;
          v196 = 0;
          v197 = &v432;
          serialize(_:at:)(0, &v432);
          serialize(_:at:)(v196, v197);
          v429 = v206;
          v198 = &v107;
          MEMORY[0x28223BE20](&v107);
          v199 = &v107 - 6;
          *(&v107 - 4) = v70;
          *(&v107 - 3) = &v431;
          *(&v107 - 2) = &v430;
          v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v201 = v69;
          if (v69)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v202, v203, "#ReferenceResolution No matches found", v189, 2u);
            v187 = 0;
            destroyStorage<A>(_:count:)(v192, 0, v190);
            destroyStorage<A>(_:count:)(v195, v187, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v189, MEMORY[0x277D84B78]);

            v188 = v201;
          }
        }

        else
        {

          v188 = v344;
        }

        v186 = v188;

        (*(v352 + 8))(v355, v350);
        v297 = v186;
      }

      else
      {
        v71 = v354;
        v72 = Logger.payments.unsafeMutableAddressor();
        (*(v352 + 16))(v71, v72, v350);
        v340(v374, v378, v370);
        v165 = (*(v372 + 80) + 16) & ~*(v372 + 80);
        v166 = swift_allocObject();
        v338((v166 + v165), v374, v370);

        v169 = 32;
        v173 = 32;
        v174 = 7;
        v73 = swift_allocObject();
        v74 = v166;
        v175 = v73;
        *(v73 + 16) = partial apply for implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
        *(v73 + 24) = v74;

        v185 = Logger.logObject.getter();
        v167 = v185;
        v184 = static os_log_type_t.error.getter();
        v168 = v184;
        v170 = 17;
        v178 = swift_allocObject();
        v171 = v178;
        *(v178 + 16) = v169;
        v179 = swift_allocObject();
        v172 = v179;
        *(v179 + 16) = 8;
        v75 = swift_allocObject();
        v76 = v175;
        v176 = v75;
        *(v75 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v176;
        v182 = v77;
        v177 = v77;
        *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v77 + 24) = v78;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v180 = _allocateUninitializedArray<A>(_:)();
        v181 = v79;

        v80 = v178;
        v81 = v181;
        *v181 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81[1] = v80;

        v82 = v179;
        v83 = v181;
        v181[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v83[3] = v82;

        v84 = v181;
        v85 = v182;
        v181[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v84[5] = v85;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v185, v184))
        {
          v87 = v344;
          v158 = static UnsafeMutablePointer.allocate(capacity:)();
          v155 = v158;
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v159 = createStorage<A>(capacity:type:)(0);
          v157 = v159;
          v161 = 1;
          v160 = createStorage<A>(capacity:type:)(1);
          v437[0] = v158;
          v436 = v159;
          v435 = v160;
          v162 = v437;
          serialize(_:at:)(2, v437);
          serialize(_:at:)(v161, v162);
          v433 = partial apply for closure #1 in OSLogArguments.append(_:);
          v434 = v171;
          closure #1 in osLogInternal(_:log:type:)(&v433, v162, &v436, &v435);
          v163 = v87;
          v164 = v87;
          if (v87)
          {
            v153 = 0;

            __break(1u);
          }

          else
          {
            v433 = partial apply for closure #1 in OSLogArguments.append(_:);
            v434 = v172;
            closure #1 in osLogInternal(_:log:type:)(&v433, v437, &v436, &v435);
            v151 = 0;
            v152 = 0;
            v433 = partial apply for closure #1 in OSLogArguments.append(_:);
            v434 = v177;
            closure #1 in osLogInternal(_:log:type:)(&v433, v437, &v436, &v435);
            v149 = 0;
            v150 = 0;
            _os_log_impl(&dword_2686B1000, v167, v168, "#ReferenceResolution Received unknown result type %s", v155, 0xCu);
            destroyStorage<A>(_:count:)(v157, 0, v156);
            destroyStorage<A>(_:count:)(v160, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v155, MEMORY[0x277D84B78]);

            v154 = v149;
          }
        }

        else
        {
          v88 = v344;

          v154 = v88;
        }

        v148 = v154;

        (*(v352 + 8))(v354, v350);
        (*(v372 + 8))(v376, v370);
        v297 = v148;
      }

      goto LABEL_57;
    }

    v62 = v356;
    (*(v372 + 96))(v376, v370);
    v228 = *v376;
    v428 = v228;
    v63 = Logger.payments.unsafeMutableAddressor();
    (*(v352 + 16))(v62, v63, v350);
    v232 = Logger.logObject.getter();
    v229 = v232;
    v231 = static os_log_type_t.debug.getter();
    v230 = v231;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v233 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v232, v231))
    {
      v64 = v344;
      v219 = static UnsafeMutablePointer.allocate(capacity:)();
      v215 = v219;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v217 = 0;
      v220 = createStorage<A>(capacity:type:)(0);
      v218 = v220;
      v221 = createStorage<A>(capacity:type:)(v217);
      v425[0] = v219;
      v424 = v220;
      v423 = v221;
      v222 = 0;
      v223 = v425;
      serialize(_:at:)(0, v425);
      serialize(_:at:)(v222, v223);
      v422 = v233;
      v224 = &v107;
      MEMORY[0x28223BE20](&v107);
      v225 = &v107 - 6;
      *(&v107 - 4) = v65;
      *(&v107 - 3) = &v424;
      *(&v107 - 2) = &v423;
      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v227 = v64;
      if (v64)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v229, v230, "#ReferenceResolution Found ambiguous entities -> returning the first one", v215, 2u);
        v213 = 0;
        destroyStorage<A>(_:count:)(v218, 0, v216);
        destroyStorage<A>(_:count:)(v221, v213, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v215, MEMORY[0x277D84B78]);

        v214 = v227;
      }
    }

    else
    {

      v214 = v344;
    }

    v210 = v214;

    (*(v352 + 8))(v356, v350);
    v427 = v228;
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
    lazy protocol witness table accessor for type [[RRCandidate]] and conformance [A]();
    Collection.first.getter();
    v212 = v426;
    if (v426)
    {
      v209 = v212;
      v208 = v212;
      v425[1] = v212;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();

      v66 = (*(v364 + 48))(v345, 1, v362);
      if (v66 != 1)
      {
        RRCandidate.entity.getter();
        (*(v364 + 8))(v345, v362);
        (v394)(v385, 0, 1, v393);
LABEL_43:
        outlined assign with take of RREntity?(v385, v391);

        v297 = v210;
LABEL_57:
        v146 = v297;
        (*(v372 + 8))(v378, v370);
        v147 = v146;
        goto LABEL_64;
      }

      outlined destroy of RRCandidate?(v345);
    }

    (v394)(v385, 1, 1, v393);
    goto LABEL_43;
  }

  v89 = v353;
  v126 = *v382;
  v125 = v126;
  v443 = v126;
  v90 = Logger.payments.unsafeMutableAddressor();
  (*(v352 + 16))(v89, v90, v350);
  MEMORY[0x26D621420](v126);
  v134 = 7;
  v135 = swift_allocObject();
  *(v135 + 16) = v126;
  v145 = Logger.logObject.getter();
  v127 = v145;
  v144 = static os_log_type_t.error.getter();
  v128 = v144;
  v129 = 17;
  v138 = swift_allocObject();
  v130 = v138;
  v131 = 32;
  *(v138 + 16) = 32;
  v91 = swift_allocObject();
  v92 = v131;
  v139 = v91;
  v132 = v91;
  *(v91 + 16) = 8;
  v133 = v92;
  v93 = swift_allocObject();
  v94 = v135;
  v136 = v93;
  *(v93 + 16) = partial apply for implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:);
  *(v93 + 24) = v94;
  v95 = swift_allocObject();
  v96 = v136;
  v142 = v95;
  v137 = v95;
  *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v95 + 24) = v96;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v140 = _allocateUninitializedArray<A>(_:)();
  v141 = v97;

  v98 = v138;
  v99 = v141;
  *v141 = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[1] = v98;

  v100 = v139;
  v101 = v141;
  v141[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v101[3] = v100;

  v102 = v141;
  v103 = v142;
  v141[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v102[5] = v103;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v145, v144))
  {
    v104 = v344;
    v118 = static UnsafeMutablePointer.allocate(capacity:)();
    v115 = v118;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v119 = createStorage<A>(capacity:type:)(0);
    v117 = v119;
    v121 = 1;
    v120 = createStorage<A>(capacity:type:)(1);
    v442 = v118;
    v441 = v119;
    v440 = v120;
    v122 = &v442;
    serialize(_:at:)(2, &v442);
    serialize(_:at:)(v121, v122);
    v438 = partial apply for closure #1 in OSLogArguments.append(_:);
    v439 = v130;
    closure #1 in osLogInternal(_:log:type:)(&v438, v122, &v441, &v440);
    v123 = v104;
    v124 = v104;
    if (v104)
    {
      v113 = 0;

      __break(1u);
    }

    else
    {
      v438 = partial apply for closure #1 in OSLogArguments.append(_:);
      v439 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v438, &v442, &v441, &v440);
      v111 = 0;
      v112 = 0;
      v438 = partial apply for closure #1 in OSLogArguments.append(_:);
      v439 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v438, &v442, &v441, &v440);
      v109 = 0;
      v110 = 0;
      _os_log_impl(&dword_2686B1000, v127, v128, "#ReferenceResolution Received a failure: %s -> nil", v115, 0xCu);
      destroyStorage<A>(_:count:)(v117, 0, v116);
      destroyStorage<A>(_:count:)(v120, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v115, MEMORY[0x277D84B78]);

      v114 = v109;
    }
  }

  else
  {
    v105 = v344;

    v114 = v105;
  }

  v108 = v114;

  (*(v352 + 8))(v353, v350);
  v147 = v108;
LABEL_64:
  outlined init with copy of RREntity?(v391, v343);
  outlined destroy of Result<RRResult, Error>(v384);
  return outlined destroy of RREntity?(v391);
}

uint64_t ReferenceResolutionClient.resolvePositionEntity(from:useCase:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v49 = a3;
  v72 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v50 = 0;
  v77 = 0;
  v76 = 0;
  v51 = a2;
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  v54 = v53;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v57 = &v19 - v56;
  v58 = type metadata accessor for RREntity();
  v59 = *(v58 - 8);
  v60 = v59;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v72);
  v61 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v61;
  v68 = type metadata accessor for Siri_Nlu_External_UserParse();
  v62 = *(v68 - 8);
  v67 = v62;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v69 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v64 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v19 - v64;
  v66 = &v19 - v64;
  v84 = a1;
  v83 = v11 & 1;
  v82 = v65;
  v12 = USOParse.userParse.getter();
  v71 = MEMORY[0x26D61F2D0](v12);
  (*(v67 + 8))(v69, v68);
  v81[1] = v71;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v74 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v66);
    v48 = 0;
  }

  else
  {
    v47 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v75 + 8))(v66, v74);
    v48 = v47;
  }

  v46 = v48;
  if (v48)
  {
    v45 = v46;
    v43 = v46;
    v77 = v46;
    v13 = ReferenceResolutionClient.extractPositionEntity(task:useCase:)(v46, v51 & 1);
    v44 = v13;
    if (v13)
    {
      v42 = v44;
      v41 = v44;
      v76 = v44;
      ReferenceResolutionClient.resolveEntity(referenceEntity:)(v44, v57);
      if ((*(v60 + 48))(v57, 1, v58) != 1)
      {
        (*(v60 + 32))(v61, v57, v58);
        (*(v60 + 16))(v49, v61, v58);
        (*(v60 + 56))(v49, 0, 1, v58);
        (*(v60 + 8))(v61, v58);

        return v50;
      }

      outlined destroy of RREntity?(v57);
    }

    else
    {
    }
  }

  v14 = v55;
  v15 = Logger.payments.unsafeMutableAddressor();
  (*(v54 + 16))(v14, v15, v52);
  v38 = Logger.logObject.getter();
  v35 = v38;
  v37 = static os_log_type_t.debug.getter();
  v36 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v16 = v50;
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = 0;
    v27 = createStorage<A>(capacity:type:)(0);
    v25 = v27;
    v28 = createStorage<A>(capacity:type:)(v24);
    v81[0] = v26;
    v80 = v27;
    v79 = v28;
    v29 = 0;
    v30 = v81;
    serialize(_:at:)(0, v81);
    serialize(_:at:)(v29, v30);
    v78 = v39;
    v31 = &v19;
    MEMORY[0x28223BE20](&v19);
    v32 = &v19 - 6;
    *(&v19 - 4) = v17;
    *(&v19 - 3) = &v80;
    *(&v19 - 2) = &v79;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v34 = v16;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v35, v36, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v22, 2u);
      v20 = 0;
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v28, v20, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);

      v21 = v34;
    }
  }

  else
  {

    v21 = v50;
  }

  v19 = v21;

  (*(v54 + 8))(v55, v52);
  (*(v60 + 56))(v49, 1, 1, v58);
  return v19;
}

uint64_t sub_2688240D4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t ReferenceResolutionClient.extractPositionEntity(task:useCase:)(uint64_t a1, int a2)
{
  v148 = a2;
  v145 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v146 = 0;
  v170 = 0;
  v167 = 0;
  v164 = 0;
  v162 = 0;
  v147 = a2;
  v149 = type metadata accessor for Logger();
  v150 = *(v149 - 8);
  v151 = v150;
  v152 = *(v150 + 64);
  MEMORY[0x28223BE20](v149 - 8);
  v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  v153 = &v27 - v154;
  MEMORY[0x28223BE20](&v27 - v154);
  v155 = &v27 - v154;
  v181 = a1;
  v180 = v3 & 1;
  v179 = v4;
  UsoTask.eraseToAny.getter();
  if (!v178[3])
  {
    goto LABEL_45;
  }

  v144 = v174;
  outlined init with copy of Any?(v178, v174);
  v143 = 0;
  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {
    v141 = v173;
    v164 = v173;

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v142 = v163;
    if (v163)
    {
      v140 = v142;
      v138 = v142;
      v162 = v142;

      v139 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      v161 = v139;
      v137 = v139 != 0;
      v136 = v137;
      outlined destroy of ContiguousArray<A1>(&v161);
      if (v136)
      {
        v5 = v155;
        v6 = Logger.payments.unsafeMutableAddressor();
        (*(v151 + 16))(v5, v6, v149);

        v135 = Logger.logObject.getter();
        v118 = v135;
        v134 = static os_log_type_t.debug.getter();
        v119 = v134;
        v120 = 17;
        v125 = 7;
        v128 = swift_allocObject();
        v121 = v128;
        v122 = 32;
        *(v128 + 16) = 32;
        v7 = swift_allocObject();
        v8 = v122;
        v129 = v7;
        v123 = v7;
        *(v7 + 16) = 8;
        v124 = v8;
        v9 = swift_allocObject();
        v10 = v138;
        v126 = v9;
        *(v9 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v126;
        v132 = v11;
        v127 = v11;
        *(v11 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v11 + 24) = v12;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v130 = _allocateUninitializedArray<A>(_:)();
        v131 = v13;

        v14 = v128;
        v15 = v131;
        *v131 = partial apply for closure #1 in OSLogArguments.append(_:);
        v15[1] = v14;

        v16 = v129;
        v17 = v131;
        v131[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v17[3] = v16;

        v18 = v131;
        v19 = v132;
        v131[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v18[5] = v19;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v135, v134))
        {
          v20 = v146;
          v111 = static UnsafeMutablePointer.allocate(capacity:)();
          v108 = v111;
          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v112 = createStorage<A>(capacity:type:)(0);
          v110 = v112;
          v114 = 1;
          v113 = createStorage<A>(capacity:type:)(1);
          v160 = v111;
          v159 = v112;
          v158 = v113;
          v115 = &v160;
          serialize(_:at:)(2, &v160);
          serialize(_:at:)(v114, v115);
          v156 = partial apply for closure #1 in OSLogArguments.append(_:);
          v157 = v121;
          closure #1 in osLogInternal(_:log:type:)(&v156, v115, &v159, &v158);
          v116 = v20;
          v117 = v20;
          if (v20)
          {
            v106 = 0;

            __break(1u);
          }

          else
          {
            v156 = partial apply for closure #1 in OSLogArguments.append(_:);
            v157 = v123;
            closure #1 in osLogInternal(_:log:type:)(&v156, &v160, &v159, &v158);
            v104 = 0;
            v105 = 0;
            v156 = partial apply for closure #1 in OSLogArguments.append(_:);
            v157 = v127;
            closure #1 in osLogInternal(_:log:type:)(&v156, &v160, &v159, &v158);
            v102 = 0;
            v103 = 0;
            _os_log_impl(&dword_2686B1000, v118, v119, "#ReferenceResolution Found positional reference, returning: %s", v108, 0xCu);
            destroyStorage<A>(_:count:)(v110, 0, v109);
            destroyStorage<A>(_:count:)(v113, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v108, MEMORY[0x277D84B78]);

            v107 = v102;
          }
        }

        else
        {
          v21 = v146;

          v107 = v21;
        }

        v99 = v107;

        (*(v151 + 8))(v155, v149);

        v97 = CodeGenBase.entity.getter();

        v98 = v97;

        __swift_destroy_boxed_opaque_existential_0(v174);
        outlined destroy of FlowActivity?(v178);
        v100 = v98;
        v101 = v99;
        return v100;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v174);
    outlined destroy of FlowActivity?(v178);
    goto LABEL_46;
  }

  v96 = 0;
  type metadata accessor for UsoTask_pay_common_Payment();
  if (swift_dynamicCast())
  {
    v95 = v172;
    v167 = v172;
    if (static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.__derived_enum_equals(_:_:)(v147 & 1, 0))
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v94 = v165;
      v93 = v165;

      if (v94)
      {
        v92 = v93;
        v89 = v93;
        v90 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      v86 = v91;
      v87 = ReferenceResolutionClient.helper(app:)(v91);

      v88 = v87;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v85 = v166;
      v84 = v166;

      if (v85 && (v83 = v84, v80 = v84, v82 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), v81 = v82, , v82))
      {
        v79 = v81;
        v76 = v81;
        v77 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v74 = v78;
      v75 = ReferenceResolutionClient.helper(person:)(v78);

      v88 = v75;
    }

    v73 = v88;

    __swift_destroy_boxed_opaque_existential_0(v174);
    outlined destroy of FlowActivity?(v178);
    v100 = v73;
    v101 = v146;
    return v100;
  }

  v72 = 0;
  type metadata accessor for UsoTask_requestMoney_common_Payment();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v174);
LABEL_45:
    outlined destroy of FlowActivity?(v178);
LABEL_46:
    v22 = v153;
    v23 = Logger.payments.unsafeMutableAddressor();
    (*(v151 + 16))(v22, v23, v149);
    v47 = Logger.logObject.getter();
    v44 = v47;
    v46 = static os_log_type_t.debug.getter();
    v45 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v48 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v47, v46))
    {
      v24 = v146;
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = v35;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = 0;
      v36 = createStorage<A>(capacity:type:)(0);
      v34 = v36;
      v37 = createStorage<A>(capacity:type:)(v33);
      v177 = v35;
      v176 = v36;
      v175 = v37;
      v38 = 0;
      v39 = &v177;
      serialize(_:at:)(0, &v177);
      serialize(_:at:)(v38, v39);
      v174[5] = v48;
      v40 = &v27;
      MEMORY[0x28223BE20](&v27);
      v41 = &v27 - 6;
      *(&v27 - 4) = v25;
      *(&v27 - 3) = &v176;
      *(&v27 - 2) = &v175;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v43 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v44, v45, "#ReferenceResolution Found no positional reference, returning nil", v31, 2u);
        v29 = 0;
        destroyStorage<A>(_:count:)(v34, 0, v32);
        destroyStorage<A>(_:count:)(v37, v29, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v31, MEMORY[0x277D84B78]);

        v30 = v43;
      }
    }

    else
    {

      v30 = v146;
    }

    v28 = v30;

    (*(v151 + 8))(v153, v149);
    v100 = 0;
    v101 = v28;
    return v100;
  }

  v71 = v171;
  v170 = v171;
  if (static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.__derived_enum_equals(_:_:)(v147 & 1, 0))
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v70 = v168;
    v69 = v168;

    if (v70)
    {
      v68 = v69;
      v65 = v69;
      v66 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v62 = v67;
    v63 = ReferenceResolutionClient.helper(app:)(v67);

    v64 = v63;
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v61 = v169;
    v60 = v169;

    if (v61 && (v59 = v60, v56 = v60, v58 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), v57 = v58, , v58))
    {
      v55 = v57;
      v52 = v57;
      v53 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v50 = v54;
    v51 = ReferenceResolutionClient.helper(person:)(v54);

    v64 = v51;
  }

  v49 = v64;

  __swift_destroy_boxed_opaque_existential_0(v174);
  outlined destroy of FlowActivity?(v178);
  v100 = v49;
  v101 = v146;
  return v100;
}

uint64_t implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:)()
{

  CodeGenBase.entity.getter();

  v1 = UsoEntity.debugString.getter();

  return v1;
}

uint64_t ReferenceResolutionClient.helper(app:)(uint64_t a1)
{
  v99 = a1;
  v112 = 0;
  v111 = 0;
  v91 = 0;
  v106 = 0;
  v92 = type metadata accessor for Logger();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  v2 = MEMORY[0x28223BE20](v99);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v26 - v97;
  v3 = MEMORY[0x28223BE20](v2);
  v98 = &v26 - v97;
  v112 = v3;
  v111 = v1;

  if (v99)
  {
    v90 = v99;
    v88 = v99;
    v106 = v99;

    v89 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

    v105 = v89;
    v87 = v89 != 0;
    v86 = v87;
    outlined destroy of ContiguousArray<A1>(&v105);
    if (v86)
    {
      v4 = v98;
      v5 = Logger.payments.unsafeMutableAddressor();
      (*(v94 + 16))(v4, v5, v92);

      v85 = Logger.logObject.getter();
      v68 = v85;
      v84 = static os_log_type_t.debug.getter();
      v69 = v84;
      v70 = 17;
      v75 = 7;
      v78 = swift_allocObject();
      v71 = v78;
      v72 = 32;
      *(v78 + 16) = 32;
      v6 = swift_allocObject();
      v7 = v72;
      v79 = v6;
      v73 = v6;
      *(v6 + 16) = 8;
      v74 = v7;
      v8 = swift_allocObject();
      v9 = v88;
      v76 = v8;
      *(v8 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v76;
      v82 = v10;
      v77 = v10;
      *(v10 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v10 + 24) = v11;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v80 = _allocateUninitializedArray<A>(_:)();
      v81 = v12;

      v13 = v78;
      v14 = v81;
      *v81 = partial apply for closure #1 in OSLogArguments.append(_:);
      v14[1] = v13;

      v15 = v79;
      v16 = v81;
      v81[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v16[3] = v15;

      v17 = v81;
      v18 = v82;
      v81[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v17[5] = v18;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v85, v84))
      {
        v19 = v91;
        v61 = static UnsafeMutablePointer.allocate(capacity:)();
        v58 = v61;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v62 = createStorage<A>(capacity:type:)(0);
        v60 = v62;
        v64 = 1;
        v63 = createStorage<A>(capacity:type:)(1);
        v104 = v61;
        v103 = v62;
        v102 = v63;
        v65 = &v104;
        serialize(_:at:)(2, &v104);
        serialize(_:at:)(v64, v65);
        v100 = partial apply for closure #1 in OSLogArguments.append(_:);
        v101 = v71;
        closure #1 in osLogInternal(_:log:type:)(&v100, v65, &v103, &v102);
        v66 = v19;
        v67 = v19;
        if (v19)
        {
          v56 = 0;

          __break(1u);
        }

        else
        {
          v100 = partial apply for closure #1 in OSLogArguments.append(_:);
          v101 = v73;
          closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
          v54 = 0;
          v55 = 0;
          v100 = partial apply for closure #1 in OSLogArguments.append(_:);
          v101 = v77;
          closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
          v52 = 0;
          v53 = 0;
          _os_log_impl(&dword_2686B1000, v68, v69, "#ReferenceResolution Found positional reference, returning: %s", v58, 0xCu);
          destroyStorage<A>(_:count:)(v60, 0, v59);
          destroyStorage<A>(_:count:)(v63, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);

          v57 = v52;
        }
      }

      else
      {
        v20 = v91;

        v57 = v20;
      }

      v49 = v57;

      (*(v94 + 8))(v98, v92);

      v47 = CodeGenBase.entity.getter();

      v48 = v47;

      v50 = v48;
      v51 = v49;
      return v50;
    }
  }

  v21 = v96;
  v22 = Logger.payments.unsafeMutableAddressor();
  (*(v94 + 16))(v21, v22, v92);
  v45 = Logger.logObject.getter();
  v42 = v45;
  v44 = static os_log_type_t.debug.getter();
  v43 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    v23 = v91;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = 0;
    v34 = createStorage<A>(capacity:type:)(0);
    v32 = v34;
    v35 = createStorage<A>(capacity:type:)(v31);
    v110 = v33;
    v109 = v34;
    v108 = v35;
    v36 = 0;
    v37 = &v110;
    serialize(_:at:)(0, &v110);
    serialize(_:at:)(v36, v37);
    v107 = v46;
    v38 = &v26;
    MEMORY[0x28223BE20](&v26);
    v39 = &v26 - 6;
    *(&v26 - 4) = v24;
    *(&v26 - 3) = &v109;
    *(&v26 - 2) = &v108;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v41 = v23;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v42, v43, "#ReferenceResolution Found no positional reference, returning nil", v29, 2u);
      v27 = 0;
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v35, v27, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v29, MEMORY[0x277D84B78]);

      v28 = v41;
    }
  }

  else
  {

    v28 = v91;
  }

  v26 = v28;

  (*(v94 + 8))(v96, v92);
  v50 = 0;
  v51 = v26;
  return v50;
}

uint64_t ReferenceResolutionClient.helper(person:)(uint64_t a1)
{
  v99 = a1;
  v112 = 0;
  v111 = 0;
  v91 = 0;
  v106 = 0;
  v92 = type metadata accessor for Logger();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  v2 = MEMORY[0x28223BE20](v99);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v26 - v97;
  v3 = MEMORY[0x28223BE20](v2);
  v98 = &v26 - v97;
  v112 = v3;
  v111 = v1;

  if (v99)
  {
    v90 = v99;
    v88 = v99;
    v106 = v99;

    v89 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

    v105 = v89;
    v87 = v89 != 0;
    v86 = v87;
    outlined destroy of ContiguousArray<A1>(&v105);
    if (v86)
    {
      v4 = v98;
      v5 = Logger.payments.unsafeMutableAddressor();
      (*(v94 + 16))(v4, v5, v92);

      v85 = Logger.logObject.getter();
      v68 = v85;
      v84 = static os_log_type_t.debug.getter();
      v69 = v84;
      v70 = 17;
      v75 = 7;
      v78 = swift_allocObject();
      v71 = v78;
      v72 = 32;
      *(v78 + 16) = 32;
      v6 = swift_allocObject();
      v7 = v72;
      v79 = v6;
      v73 = v6;
      *(v6 + 16) = 8;
      v74 = v7;
      v8 = swift_allocObject();
      v9 = v88;
      v76 = v8;
      *(v8 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v76;
      v82 = v10;
      v77 = v10;
      *(v10 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v10 + 24) = v11;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v80 = _allocateUninitializedArray<A>(_:)();
      v81 = v12;

      v13 = v78;
      v14 = v81;
      *v81 = partial apply for closure #1 in OSLogArguments.append(_:);
      v14[1] = v13;

      v15 = v79;
      v16 = v81;
      v81[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v16[3] = v15;

      v17 = v81;
      v18 = v82;
      v81[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v17[5] = v18;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v85, v84))
      {
        v19 = v91;
        v61 = static UnsafeMutablePointer.allocate(capacity:)();
        v58 = v61;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v62 = createStorage<A>(capacity:type:)(0);
        v60 = v62;
        v64 = 1;
        v63 = createStorage<A>(capacity:type:)(1);
        v104 = v61;
        v103 = v62;
        v102 = v63;
        v65 = &v104;
        serialize(_:at:)(2, &v104);
        serialize(_:at:)(v64, v65);
        v100 = partial apply for closure #1 in OSLogArguments.append(_:);
        v101 = v71;
        closure #1 in osLogInternal(_:log:type:)(&v100, v65, &v103, &v102);
        v66 = v19;
        v67 = v19;
        if (v19)
        {
          v56 = 0;

          __break(1u);
        }

        else
        {
          v100 = partial apply for closure #1 in OSLogArguments.append(_:);
          v101 = v73;
          closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
          v54 = 0;
          v55 = 0;
          v100 = partial apply for closure #1 in OSLogArguments.append(_:);
          v101 = v77;
          closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
          v52 = 0;
          v53 = 0;
          _os_log_impl(&dword_2686B1000, v68, v69, "#ReferenceResolution Found positional reference, returning: %s", v58, 0xCu);
          destroyStorage<A>(_:count:)(v60, 0, v59);
          destroyStorage<A>(_:count:)(v63, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);

          v57 = v52;
        }
      }

      else
      {
        v20 = v91;

        v57 = v20;
      }

      v49 = v57;

      (*(v94 + 8))(v98, v92);

      v47 = CodeGenBase.entity.getter();

      v48 = v47;

      v50 = v48;
      v51 = v49;
      return v50;
    }
  }

  v21 = v96;
  v22 = Logger.payments.unsafeMutableAddressor();
  (*(v94 + 16))(v21, v22, v92);
  v45 = Logger.logObject.getter();
  v42 = v45;
  v44 = static os_log_type_t.debug.getter();
  v43 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    v23 = v91;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = 0;
    v34 = createStorage<A>(capacity:type:)(0);
    v32 = v34;
    v35 = createStorage<A>(capacity:type:)(v31);
    v110 = v33;
    v109 = v34;
    v108 = v35;
    v36 = 0;
    v37 = &v110;
    serialize(_:at:)(0, &v110);
    serialize(_:at:)(v36, v37);
    v107 = v46;
    v38 = &v26;
    MEMORY[0x28223BE20](&v26);
    v39 = &v26 - 6;
    *(&v26 - 4) = v24;
    *(&v26 - 3) = &v109;
    *(&v26 - 2) = &v108;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v41 = v23;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v42, v43, "#ReferenceResolution Found no positional reference, returning nil", v29, 2u);
      v27 = 0;
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v35, v27, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v29, MEMORY[0x277D84B78]);

      v28 = v41;
    }
  }

  else
  {

    v28 = v91;
  }

  v26 = v28;

  (*(v94 + 8))(v96, v92);
  v50 = 0;
  v51 = v26;
  return v50;
}

uint64_t sub_2688267D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268826810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268826850()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2688268F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268826930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase()
{
  v2 = lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase;
  if (!lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase;
  if (!lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of RRFilter?(uint64_t a1)
{
  v3 = type metadata accessor for RRFilter();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of Result<RRResult, Error>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    MEMORY[0x26D621420]();
    *a2 = v4;
  }

  else
  {
    v2 = type metadata accessor for RRResult();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_268826C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268826C40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with copy of RREntity?(const void *a1, void *a2)
{
  v6 = type metadata accessor for RREntity();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id *outlined destroy of Result<RRResult, Error>(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = type metadata accessor for RRResult();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_268826E44()
{
  v3 = *(type metadata accessor for RRResult() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RRResult();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:)(v3, a1);
}

uint64_t sub_268826F84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for RRResult();
  v1 = lazy protocol witness table accessor for type RRResult and conformance RRResult();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult()
{
  v2 = lazy protocol witness table cache variable for type RRResult and conformance RRResult;
  if (!lazy protocol witness table cache variable for type RRResult and conformance RRResult)
  {
    type metadata accessor for RRResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRResult and conformance RRResult);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2688270F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [[RRCandidate]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined assign with take of RREntity?(const void *a1, void *a2)
{
  v7 = type metadata accessor for RREntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type [RRCandidate] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RRCandidate] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RRCandidate] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RRCandidate] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of RRCandidate?(uint64_t a1)
{
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268827558()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2688275F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827678()
{
  v3 = *(type metadata accessor for RRCandidate() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RRCandidate();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:)(v3, a1);
}

uint64_t sub_2688277B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate()
{
  v2 = lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate;
  if (!lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate)
  {
    type metadata accessor for RRCandidate();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26882792C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26882796C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827A0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827A4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827AE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827B24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827BBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268827BFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay23SiriReferenceResolution0bC6ClientC0A15PaymentsIntentsE0ebC7UseCaseOGMd, &_sSay23SiriReferenceResolution0bC6ClientC0A15PaymentsIntentsE0ebC7UseCaseOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SendPaymentConfirmIntentStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSendPaymentIntent();
  v1 = type metadata accessor for INSendPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SendPaymentConfirmIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v4[14] = v6;
  v12 = *(v6 - 8);
  v4[15] = v12;
  v7 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[17] = v8;
  v13 = *(v8 - 8);
  v4[18] = v13;
  v9 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v10 = v4[2];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v1 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(0);
    *(v21 + 48) = buf;
    *(v21 + 56) = v18;
    *(v21 + 64) = v19;
    serialize(_:at:)(0, (v21 + 48));
    serialize(_:at:)(0, (v21 + 48));
    *(v21 + 72) = v26;
    v20 = swift_task_alloc();
    v20[2] = v21 + 48;
    v20[3] = v21 + 56;
    v20[4] = v21 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#SendPaymentConfirmIntentStrategy parseConfirmationResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v13 = *(v21 + 152);
  v8 = *(v21 + 136);
  v14 = *(v21 + 128);
  v11 = *(v21 + 112);
  v15 = *(v21 + 104);
  v9 = *(v21 + 96);
  v3 = *(v21 + 88);
  v12 = *(v21 + 80);
  v7 = *(v21 + 144);
  v10 = *(v21 + 120);
  MEMORY[0x277D82BD8](v25);
  (*(v7 + 8))(v13, v8);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v15);
  (*(v10 + 8))(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for INSendPaymentIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  v4 = *(*(v21 + 16) + 8);
  v5 = *(v21 + 16);

  return v4();
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[106] = v2;
  v3[105] = a2;
  v3[104] = a1;
  v3[77] = v3;
  v3[78] = 0;
  v3[79] = 0;
  v3[84] = 0;
  v3[89] = 0;
  v3[94] = 0;
  v3[75] = 0;
  v3[76] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  v3[98] = 0;
  v3[99] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[107] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[108] = v5;
  v14 = *(v5 - 8);
  v3[109] = v14;
  v6 = *(v14 + 64) + 15;
  v3[110] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[111] = v7;
  v15 = *(v7 - 8);
  v3[112] = v15;
  v8 = *(v15 + 64) + 15;
  v3[113] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[119] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[120] = v10;
  v17 = *(v10 - 8);
  v3[121] = v17;
  v18 = *(v17 + 64);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[127] = swift_task_alloc();
  v3[78] = a2;
  v3[79] = v2;
  v12 = v3[77];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  v194 = v0;
  v182 = v0[127];
  v1 = v0[126];
  v183 = v0[121];
  v184 = v0[120];
  v0[77] = v0;
  v2 = SignpostName.makeSendPaymentPromptForConfirm.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v182);
  v3 = Logger.payments.unsafeMutableAddressor();
  v185 = *(v183 + 16);
  v185(v1, v3, v184);
  v187 = Logger.logObject.getter();
  v186 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v188 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v187, v186))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v178 = createStorage<A>(capacity:type:)(0);
    v179 = createStorage<A>(capacity:type:)(0);
    *(v181 + 800) = buf;
    *(v181 + 808) = v178;
    *(v181 + 816) = v179;
    serialize(_:at:)(0, (v181 + 800));
    serialize(_:at:)(0, (v181 + 800));
    *(v181 + 824) = v188;
    v180 = swift_task_alloc();
    v180[2] = v181 + 800;
    v180[3] = v181 + 808;
    v180[4] = v181 + 816;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v187, v186, "#SendPaymentConfirmIntentStrategy makePromptForConfirmation", buf, 2u);
    destroyStorage<A>(_:count:)(v178, 0, v176);
    destroyStorage<A>(_:count:)(v179, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v171 = *(v181 + 1008);
  v172 = *(v181 + 960);
  v4 = *(v181 + 840);
  v170 = *(v181 + 968);
  MEMORY[0x277D82BD8](v187);
  v173 = *(v170 + 8);
  v173(v171, v172);
  *(v181 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v174 = IntentResolutionRecord.intentResponse.getter();
  v175 = [v174 paymentRecord];
  *(v181 + 1032) = v175;
  if (v175)
  {
    v5 = *(v181 + 1000);
    v161 = *(v181 + 960);
    *(v181 + 672) = v175;
    MEMORY[0x277D82BD8](v174);
    v6 = Logger.payments.unsafeMutableAddressor();
    v185(v5, v6, v161);
    MEMORY[0x277D82BE0](v175);
    v162 = swift_allocObject();
    *(v162 + 16) = v175;
    oslog = Logger.logObject.getter();
    v169 = static os_log_type_t.debug.getter();
    v164 = swift_allocObject();
    *(v164 + 16) = 64;
    v165 = swift_allocObject();
    *(v165 + 16) = 8;
    v163 = swift_allocObject();
    *(v163 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v163 + 24) = v162;
    v166 = swift_allocObject();
    *(v166 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v166 + 24) = v163;
    _allocateUninitializedArray<A>(_:)();
    v167 = v7;

    *v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v167[1] = v164;

    v167[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v167[3] = v165;

    v167[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v167[5] = v166;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v169))
    {
      v158 = static UnsafeMutablePointer.allocate(capacity:)();
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v159 = createStorage<A>(capacity:type:)(1);
      v160 = createStorage<A>(capacity:type:)(0);
      v189 = v158;
      v190 = v159;
      v191 = v160;
      serialize(_:at:)(2, &v189);
      serialize(_:at:)(1, &v189);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v164;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v165;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v166;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      _os_log_impl(&dword_2686B1000, oslog, v169, "#SendPaymentConfirmIntentStrategy intent contained paymentRecord: %@", v158, 0xCu);
      destroyStorage<A>(_:count:)(v159, 1, v157);
      destroyStorage<A>(_:count:)(v160, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v158, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v154 = *(v181 + 1000);
    v155 = *(v181 + 960);
    MEMORY[0x277D82BD8](oslog);
    v173(v154, v155);
    v156 = [v175 payee];
    *(v181 + 1040) = v156;
    if (v156)
    {
      *(v181 + 712) = v156;
      v8 = [v175 currencyAmount];
      v153 = v8;
      *(v181 + 1048) = v8;
      if (v8)
      {
        *(v181 + 752) = v8;
        v152 = [v175 note];
        if (v152)
        {
          v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = v9;
          MEMORY[0x277D82BD8](v152);
          v150 = v148;
          v151 = v149;
        }

        else
        {
          v150 = 0;
          v151 = 0;
        }

        *(v181 + 1056) = v151;
        v143 = *(v181 + 952);
        v139 = *(v181 + 848);
        *(v181 + 600) = v150;
        *(v181 + 608) = v151;
        v138 = [v175 feeAmount];
        *(v181 + 1064) = v138;
        *(v181 + 760) = v138;
        type metadata accessor for PaymentsDialogConcept.Builder();
        v144 = PaymentsDialogConcept.Builder.__allocating_init()();
        *(v181 + 1072) = v144;
        *(v181 + 768) = v144;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v156);

        outlined init with copy of GlobalsProviding(v139 + 104, v181 + 136);

        v141 = *(v181 + 160);
        v140 = *(v181 + 168);
        __swift_project_boxed_opaque_existential_1((v181 + 136), v141);
        (*(v140 + 16))(v141);
        v142 = *(v181 + 208);
        __swift_project_boxed_opaque_existential_1((v181 + 176), *(v181 + 200));
        dispatch thunk of DeviceState.siriLocale.getter();
        v146 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v181 + 176));
        __swift_destroy_boxed_opaque_existential_0((v181 + 136));

        v145 = (v144 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
        swift_beginAccess();
        v10 = *v145;
        *v145 = v146;

        swift_endAccess();

        type metadata accessor for DialogCurrency.Builder();
        DialogCurrency.Builder.__allocating_init()();
        v11 = [v153 amount];
        v147 = v11;
        if (v11)
        {
          [v11 doubleValue];
          MEMORY[0x277D82BD8](v147);
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        v137 = [v153 currencyCode];
        if (v137)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = v12;
          MEMORY[0x277D82BD8](v137);
          v136 = v135;
        }

        else
        {
          v136 = 0;
        }

        if (v136)
        {
          v134 = *(v181 + 944);
          String.toSpeakableString.getter();

          v13 = type metadata accessor for SpeakableString();
          (*(*(v13 - 8) + 56))(v134, 0, 1);
        }

        else
        {
          v110 = *(v181 + 944);
          v33 = type metadata accessor for SpeakableString();
          (*(*(v33 - 8) + 56))(v110, 1);
        }

        v132 = *(v181 + 944);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v132);

        v133 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v14 = v144[2];
        v144[2] = v133;

        swift_endAccess();

        if (v151)
        {
          v131 = *(v181 + 936);
          String.toSpeakableString.getter();

          v15 = type metadata accessor for SpeakableString();
          (*(*(v15 - 8) + 56))(v131, 0, 1);
        }

        else
        {
          v111 = *(v181 + 936);
          v32 = type metadata accessor for SpeakableString();
          (*(*(v32 - 8) + 56))(v111, 1);
        }

        v130 = *(v181 + 936);
        v128 = *(v181 + 928);
        outlined init with copy of SpeakableString?(v130, v128);
        v129 = v144 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v128, v129);
        swift_endAccess();
        outlined destroy of SpeakableString?(v130);
        MEMORY[0x277D82BE0](v138);
        if (v138)
        {
          *(v181 + 792) = v138;
          DialogCurrency.Builder.__allocating_init()();
          v16 = [v138 amount];
          v127 = v16;
          if (v16)
          {
            [v16 doubleValue];
            MEMORY[0x277D82BD8](v127);
          }

          dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

          v126 = [v138 currencyCode];
          if (v126)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v17;
            MEMORY[0x277D82BD8](v126);
            v125 = v124;
          }

          else
          {
            v125 = 0;
          }

          if (v125)
          {
            v123 = *(v181 + 920);
            String.toSpeakableString.getter();

            v18 = type metadata accessor for SpeakableString();
            (*(*(v18 - 8) + 56))(v123, 0, 1);
          }

          else
          {
            v120 = *(v181 + 920);
            v20 = type metadata accessor for SpeakableString();
            (*(*(v20 - 8) + 56))(v120, 1);
          }

          v121 = *(v181 + 920);
          dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
          outlined destroy of SpeakableString?(v121);

          v122 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

          swift_beginAccess();
          v19 = v144[4];
          v144[4] = v122;

          swift_endAccess();

          MEMORY[0x277D82BD8](v138);
        }

        if (v151)
        {
          v119 = *(v181 + 912);
          String.toSpeakableString.getter();

          v21 = type metadata accessor for SpeakableString();
          (*(*(v21 - 8) + 56))(v119, 0, 1);
        }

        else
        {
          v112 = *(v181 + 912);
          v31 = type metadata accessor for SpeakableString();
          (*(*(v31 - 8) + 56))(v112, 1);
        }

        v114 = *(v181 + 928);
        v116 = *(v181 + 912);
        v22 = *(v181 + 840);
        outlined init with copy of SpeakableString?(v116, v114);
        v115 = v144 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v114, v115);
        swift_endAccess();
        outlined destroy of SpeakableString?(v116);
        IntentResolutionRecord.app.getter();
        v117 = App.sirikitApp.getter();

        swift_beginAccess();
        v23 = v144[3];
        v144[3] = v117;

        swift_endAccess();

        v118 = PaymentsDialogConcept.Builder.build()();
        *(v181 + 1080) = v118;
        *(v181 + 776) = v118;
        if (static RFFeatureFlags.ResponseFramework.SMART.getter())
        {
          v24 = swift_task_alloc();
          *(v181 + 1088) = v24;
          *v24 = *(v181 + 616);
          v24[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v25 = *(v181 + 848);
          v26 = *(v181 + 840);
          v27 = *(v181 + 832);

          return SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(v27, v26, v118);
        }

        else
        {
          v113 = *(v181 + 848);

          *(v181 + 1104) = *(v113 + 16);

          v29 = swift_task_alloc();
          *(v181 + 1112) = v29;
          *v29 = *(v181 + 616);
          v29[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v30 = *(v181 + 904);

          return SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(v30, v118);
        }
      }

      v34 = *(v181 + 992);
      v106 = *(v181 + 960);
      v35 = Logger.payments.unsafeMutableAddressor();
      v185(v34, v35, v106);
      log = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      v109 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v107))
      {
        v102 = static UnsafeMutablePointer.allocate(capacity:)();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v103 = createStorage<A>(capacity:type:)(0);
        v104 = createStorage<A>(capacity:type:)(0);
        *(v181 + 720) = v102;
        *(v181 + 728) = v103;
        *(v181 + 736) = v104;
        serialize(_:at:)(0, (v181 + 720));
        serialize(_:at:)(0, (v181 + 720));
        *(v181 + 744) = v109;
        v105 = swift_task_alloc();
        v105[2] = v181 + 720;
        v105[3] = v181 + 728;
        v105[4] = v181 + 736;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v107, "#SendPaymentConfirmIntentStrategy found no currencyAmount in paymentRecord, throwing exception", v102, 2u);
        destroyStorage<A>(_:count:)(v103, 0, v101);
        destroyStorage<A>(_:count:)(v104, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v102, MEMORY[0x277D84B78]);
      }

      v100 = *(v181 + 1016);
      v95 = *(v181 + 992);
      v96 = *(v181 + 960);
      MEMORY[0x277D82BD8](log);
      v173(v95, v96);
      v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1);
      type metadata accessor for INSendPaymentIntent();
      v99 = [swift_getObjCClassFromMetadata() description];
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v37;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v38 = v36;
      *(v38 + 16) = v98;
      *(v38 + 24) = v97;
      *(v38 + 32) = 0;
      *(v38 + 40) = 0;
      *(v38 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](v175);
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v100);
    }

    else
    {
      v39 = *(v181 + 984);
      v91 = *(v181 + 960);
      v40 = Logger.payments.unsafeMutableAddressor();
      v185(v39, v40, v91);
      v93 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      v94 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v93, v92))
      {
        v87 = static UnsafeMutablePointer.allocate(capacity:)();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v88 = createStorage<A>(capacity:type:)(0);
        v89 = createStorage<A>(capacity:type:)(0);
        *(v181 + 680) = v87;
        *(v181 + 688) = v88;
        *(v181 + 696) = v89;
        serialize(_:at:)(0, (v181 + 680));
        serialize(_:at:)(0, (v181 + 680));
        *(v181 + 704) = v94;
        v90 = swift_task_alloc();
        v90[2] = v181 + 680;
        v90[3] = v181 + 688;
        v90[4] = v181 + 696;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v93, v92, "#SendPaymentConfirmIntentStrategy found no payee in paymentRecord, throwing exception", v87, 2u);
        destroyStorage<A>(_:count:)(v88, 0, v86);
        destroyStorage<A>(_:count:)(v89, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v87, MEMORY[0x277D84B78]);
      }

      v85 = *(v181 + 1016);
      v80 = *(v181 + 984);
      v81 = *(v181 + 960);
      MEMORY[0x277D82BD8](v93);
      v173(v80, v81);
      v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
      type metadata accessor for INSendPaymentIntent();
      v84 = [swift_getObjCClassFromMetadata() description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v42;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v43 = v41;
      *(v43 + 16) = v83;
      *(v43 + 24) = v82;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      *(v43 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v175);
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v85);
    }
  }

  else
  {
    v44 = *(v181 + 976);
    v76 = *(v181 + 960);
    MEMORY[0x277D82BD8](v174);
    v45 = Logger.payments.unsafeMutableAddressor();
    v185(v44, v45, v76);
    v78 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v79 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v78, v77))
    {
      v72 = static UnsafeMutablePointer.allocate(capacity:)();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v73 = createStorage<A>(capacity:type:)(0);
      v74 = createStorage<A>(capacity:type:)(0);
      *(v181 + 640) = v72;
      *(v181 + 648) = v73;
      *(v181 + 656) = v74;
      serialize(_:at:)(0, (v181 + 640));
      serialize(_:at:)(0, (v181 + 640));
      *(v181 + 664) = v79;
      v75 = swift_task_alloc();
      v75[2] = v181 + 640;
      v75[3] = v181 + 648;
      v75[4] = v181 + 656;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, v78, v77, "#SendPaymentHandleIntentStrategy found no paymentRecord in intent response, throwing exception", v72, 2u);
      destroyStorage<A>(_:count:)(v73, 0, v71);
      destroyStorage<A>(_:count:)(v74, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v72, MEMORY[0x277D84B78]);
    }

    v70 = *(v181 + 1016);
    v65 = *(v181 + 976);
    v66 = *(v181 + 960);
    MEMORY[0x277D82BD8](v78);
    v173(v65, v66);
    type metadata accessor for INSendPaymentIntent();
    v69 = [swift_getObjCClassFromMetadata() description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v46;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v47 = v68;
    *(v47 + 8) = v67;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 0;
    *(v47 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v69);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v70);
  }

  v48 = *(v181 + 1016);
  v51 = *(v181 + 1008);
  v52 = *(v181 + 1000);
  v53 = *(v181 + 992);
  v54 = *(v181 + 984);
  v55 = *(v181 + 976);
  v56 = *(v181 + 952);
  v57 = *(v181 + 944);
  v58 = *(v181 + 936);
  v59 = *(v181 + 928);
  v60 = *(v181 + 920);
  v61 = *(v181 + 912);
  v62 = *(v181 + 904);
  v63 = *(v181 + 880);
  v64 = *(v181 + 856);

  v49 = *(*(v181 + 616) + 8);
  v50 = *(v181 + 616);

  return v49();
}

{
  v8 = *v1;
  v7 = (v8 + 616);
  v2 = *(*v1 + 1088);
  *(v8 + 616) = *v1;
  *(v8 + 1096) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v3 = *v7;
    v4 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[135];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[132];
  v9 = v0[131];
  v10 = v0[130];
  v11 = v0[129];
  v12 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);
  v2 = v0[127];
  v13 = v0[126];
  v14 = v0[125];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[118];
  v20 = v0[117];
  v21 = v0[116];
  v22 = v0[115];
  v23 = v0[114];
  v24 = v0[113];
  v25 = v0[110];
  v26 = v0[107];

  v3 = *(v0[77] + 8);
  v4 = v0[77];

  return v3();
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 616);
  v2 = *(*v1 + 1112);
  *(v11 + 616) = *v1;
  *(v11 + 1120) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v8 = *(v9 + 1088);
    v3 = *(v9 + 1064);

    v4 = *v10;
    v5 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v22 = v0;
  v10 = v0[128];
  v5 = v0[110];
  v11 = v0[106];
  v9 = v0[105];
  v0[77] = v0;
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v5);

  outlined init with copy of GlobalsProviding(v11 + 24, (v0 + 27));

  outlined init with copy of GlobalsProviding(v11 + 104, (v0 + 32));

  v7 = v0[35];
  v6 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v7);
  (*(v6 + 16))(v7);

  v8 = *(v11 + 16);

  v12 = type metadata accessor for SendPaymentCATs();
  v21[3] = v12;
  v21[4] = &protocol witness table for SendPaymentCATs;
  v21[0] = v8;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 27, v20, v21, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v19 = IntentResolutionRecord.app.getter();
  v0[141] = v19;
  v18 = IntentResolutionRecord.intent.getter();
  v0[142] = v18;
  v15 = IntentResolutionRecord.intentResponse.getter();
  v0[143] = v15;

  v13 = *(v11 + 16);

  v0[40] = v12;
  v0[41] = &protocol witness table for SendPaymentCATs;
  v16 = (v0 + 37);
  v0[37] = v13;
  v2 = swift_task_alloc();
  *(v14 + 1152) = v2;
  v17 = type metadata accessor for INSendPaymentIntent();
  v3 = type metadata accessor for INSendPaymentIntentResponse();
  *v2 = *(v14 + 616);
  v2[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(v19, v18, v15, v16, v17, v3, &protocol witness table for INSendPaymentIntent, &protocol witness table for INSendPaymentIntentResponse);
}

{
  v1 = v0[145];
  v17 = v0[135];
  v18 = v0[134];
  v19 = v0[133];
  v20 = v0[132];
  v21 = v0[131];
  v22 = v0[130];
  v23 = v0[129];
  v24 = v0[127];
  v15 = v0[113];
  v14 = v0[112];
  v16 = v0[111];
  v12 = v0[110];
  v11 = v0[109];
  v13 = v0[108];
  v10 = v0[107];
  v8 = v0[106];
  v9 = v0[104];
  v0[77] = v0;
  v0[98] = v1;

  outlined init with copy of GlobalsProviding(v8 + 104, (v0 + 42));

  v7 = v0[45];
  v6 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v7);
  (*(v6 + 16))(v7);

  BaseStrategy.ttsEnabled.getter();

  (*(v11 + 16))(v10, v12, v13);
  (*(v11 + 56))(v10, 0, 1, v13);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v11 + 8))(v12, v13);
  (*(v14 + 8))(v15, v16);

  MEMORY[0x277D82BD8](v19);

  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v24);
  v2 = v0[127];
  v25 = v0[126];
  v26 = v0[125];
  v27 = v0[124];
  v28 = v0[123];
  v29 = v0[122];
  v30 = v0[119];
  v31 = v0[118];
  v32 = v0[117];
  v33 = v0[116];
  v34 = v0[115];
  v35 = v0[114];
  v36 = v0[113];
  v37 = v0[110];
  v38 = v0[107];

  v3 = *(v0[77] + 8);
  v4 = v0[77];

  return v3();
}

{
  v1 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[132];
  v10 = v0[131];
  v11 = v0[130];
  v12 = v0[129];
  v13 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v13);
  v2 = v0[137];
  v3 = v0[127];
  v14 = v0[126];
  v15 = v0[125];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  v19 = v0[119];
  v20 = v0[118];
  v21 = v0[117];
  v22 = v0[116];
  v23 = v0[115];
  v24 = v0[114];
  v25 = v0[113];
  v26 = v0[110];
  v27 = v0[107];

  v4 = *(v0[77] + 8);
  v5 = v0[77];

  return v4();
}

{
  v6 = v0[138];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[129];
  v14 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v14);
  v1 = v0[140];
  v2 = v0[127];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[123];
  v19 = v0[122];
  v20 = v0[119];
  v21 = v0[118];
  v22 = v0[117];
  v23 = v0[116];
  v24 = v0[115];
  v25 = v0[114];
  v26 = v0[113];
  v27 = v0[110];
  v28 = v0[107];

  v3 = *(v0[77] + 8);
  v4 = v0[77];

  return v3();
}

{
  v6 = v0[143];
  v7 = v0[142];
  v8 = v0[141];
  v15 = v0[135];
  v16 = v0[134];
  v17 = v0[133];
  v18 = v0[132];
  v19 = v0[131];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[127];
  v13 = v0[113];
  v12 = v0[112];
  v14 = v0[111];
  v11 = v0[110];
  v9 = v0[109];
  v10 = v0[108];
  v0[77] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v9 + 8))(v11, v10);
  (*(v12 + 8))(v13, v14);

  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v22);
  v1 = v0[146];
  v2 = v0[127];
  v23 = v0[126];
  v24 = v0[125];
  v25 = v0[124];
  v26 = v0[123];
  v27 = v0[122];
  v28 = v0[119];
  v29 = v0[118];
  v30 = v0[117];
  v31 = v0[116];
  v32 = v0[115];
  v33 = v0[114];
  v34 = v0[113];
  v35 = v0[110];
  v36 = v0[107];

  v3 = *(v0[77] + 8);
  v4 = v0[77];

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v15 = *v2;
  v12 = (*v2 + 16);
  v13 = (*v2 + 616);
  v14 = (*v2 + 296);
  v4 = *(*v2 + 1152);
  v15[77] = *v2;
  v15[145] = a1;
  v15[146] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v9 = v12[141];
    v10 = v12[140];
    v11 = v12[139];
    __swift_destroy_boxed_opaque_existential_0(v14);

    outlined destroy of ConfirmationViewBuilder(v12);
    v5 = *v13;
    v6 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = v3;
  v4[44] = a3;
  v4[43] = a2;
  v4[42] = a1;
  v4[37] = v4;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[41] = 0;
  v5 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[38] = a2;
  v4[39] = a3;
  v4[40] = v3;
  v6 = v4[37];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)()
{
  v3 = v0[46];
  v5 = v0[44];
  v0[37] = v0;
  type metadata accessor for SendPaymentCATsModern();
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[47] = CATWrapperSimple.__allocating_init(options:globals:)();

  v1 = swift_task_alloc();
  *(v4 + 384) = v1;
  *v1 = *(v4 + 296);
  v1[1] = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);

  return SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(v5);
}

{
  v24 = v0;
  v1 = v0[49];
  v12 = v0[45];
  v10 = v0[43];
  v0[37] = v0;
  v0[41] = v1;

  outlined init with copy of GlobalsProviding(v12 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v12 + 104, (v0 + 22));

  v8 = v0[25];
  v7 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
  (*(v7 + 16))(v8);

  v9 = *(v12 + 16);

  v13 = type metadata accessor for SendPaymentCATs();
  v23[3] = v13;
  v23[4] = &protocol witness table for SendPaymentCATs;
  v23[0] = v9;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v22, v23, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v21 = IntentResolutionRecord.app.getter();
  v0[51] = v21;
  v16 = IntentResolutionRecord.intent.getter();
  v0[52] = v16;
  v17 = IntentResolutionRecord.intentResponse.getter();
  v0[53] = v17;

  v11 = *(v12 + 16);

  v0[30] = v13;
  v0[31] = &protocol witness table for SendPaymentCATs;
  v18 = (v0 + 27);
  v0[27] = v11;

  v14 = *(v12 + 16);

  v0[35] = v13;
  v0[36] = &protocol witness table for SendPaymentCATs;
  v19 = (v0 + 32);
  v0[32] = v14;
  v2 = swift_task_alloc();
  v15[54] = v2;
  v20 = type metadata accessor for INSendPaymentIntent();
  v3 = type metadata accessor for INSendPaymentIntentResponse();
  *v2 = v15[37];
  v2[1] = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  v4 = v15[49];
  v5 = v15[42];
  v26 = v3;
  v27 = &protocol witness table for INSendPaymentIntent;
  v28 = &protocol witness table for INSendPaymentIntentResponse;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(v5, v21, v16, v17, v4, v18, v19, v20);
}

{
  v14 = *v1;
  v10 = (*v1 + 16);
  v11 = (*v1 + 296);
  v12 = (*v1 + 216);
  v13 = (*v1 + 256);
  v2 = *(*v1 + 432);
  *(v14 + 296) = *v1;
  *(v14 + 440) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  else
  {
    v7 = v10[51];
    v8 = v10[50];
    v9 = v10[49];
    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v12);

    outlined destroy of ConfirmationViewBuilder(v10);
    v3 = *v11;
    v4 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[49];
  v5 = v0[46];
  v0[37] = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(v0[37] + 8);
  v3 = v0[37];

  return v2();
}

{
  v7 = v0[47];
  v1 = v0[44];
  v0[37] = v0;

  v2 = v0[50];
  v3 = v0[46];

  v4 = *(v0[37] + 8);
  v5 = v0[37];

  return v4();
}

{
  v6 = v0[53];
  v7 = v0[52];
  v8 = v0[51];
  v9 = v0[49];
  v0[37] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[55];
  v2 = v0[46];

  v3 = *(v0[37] + 8);
  v4 = v0[37];

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 37;
  v4 = *(*v2 + 384);
  v13[37] = *v2;
  v13[49] = a1;
  v13[50] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  else
  {
    v10 = *(v11 + 360);
    v5 = *(v11 + 336);

    v6 = *v12;
    v7 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = v3;
  v4[31] = a3;
  v4[30] = a1;
  v4[26] = v4;
  v4[27] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[22] = 0;
  v4[23] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v4[35] = v7;
  v14 = *(v7 - 8);
  v4[36] = v14;
  v8 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[38] = v9;
  v15 = *(v9 - 8);
  v4[39] = v15;
  v10 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = v3;
  v12 = v4[26];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)()
{
  v44 = v0;
  v23 = v0[41];
  v24 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v1 = v0[31];
  v0[26] = v0;
  v2 = SignpostName.makeSendPaymentErrorResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v25 = IntentResolutionRecord.intentResponse.getter();
  v26 = [v25 code];
  MEMORY[0x277D82BD8](v25);
  v29 = static PaymentIntentCATResponseCode.from(_:)(v26);
  v30 = v3;
  v0[42] = v3;
  v0[22] = v29;
  v0[23] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v24, v4, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v5;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v39 = buf;
    v40 = v20;
    v41 = v21;
    serialize(_:at:)(2, &v39);
    serialize(_:at:)(1, &v39);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_2686B1000, v37, v38, "#SendPaymentConfirmIntentStrategy makeErrorResponse, response had %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v22[40];
  v13 = v22[38];
  v14 = v22[32];
  v11 = v22[39];
  MEMORY[0x277D82BD8](v37);
  (*(v11 + 8))(v12, v13);

  outlined init with copy of GlobalsProviding(v14 + 144, (v22 + 2));

  v15 = v22[5];
  v16 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v15);
  v17 = (*(v16 + 48) + **(v16 + 48));
  v6 = *(*(v16 + 48) + 4);
  v7 = swift_task_alloc();
  v22[43] = v7;
  *v7 = v22[26];
  v7[1] = SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  v8 = v22[34];
  v9 = v22[31];

  return v17(v8, v9, v15, v16);
}

{
  v7 = *v1;
  v2 = *(*v1 + 344);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 352) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  else
  {
    v3 = *v8;
    v4 = SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v19 = v37[42];
    v20 = v37[41];
    outlined destroy of TemplatingResult?(v37[34]);
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);
    v37[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v37[25] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v16 = v37[24];
    v15 = v37[25];

    outlined destroy of String.UTF8View((v37 + 24));
    v18 = MEMORY[0x26D620710](v16, v15);
    v17 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v18;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v20);
    v12 = v37[41];
    v21 = v37[40];
    v22 = v37[37];
    v23 = v37[34];
    v24 = v37[33];

    v5 = *(v37[26] + 8);
    v13 = v37[26];
  }

  else
  {
    v31 = v37[42];
    v32 = v37[41];
    v33 = v37[40];
    v34 = v37[37];
    v30 = v37[35];
    v35 = v37[34];
    v36 = v37[33];
    v27 = v37[32];
    v28 = v37[30];
    v29 = v37[36];
    (*(v29 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);

    outlined init with copy of GlobalsProviding(v27 + 104, (v37 + 7));

    v26 = v37[10];
    v25 = v37[11];
    __swift_project_boxed_opaque_existential_1(v37 + 7, v26);
    (*(v25 + 16))(v26);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v36, 1);
    v37[17] = 0;
    v37[18] = 0;
    v37[19] = 0;
    v37[20] = 0;
    v37[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v28[3] = type metadata accessor for AceOutput();
    v28[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v28);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v37 + 17);
    outlined destroy of NLContextUpdate?(v36);
    __swift_destroy_boxed_opaque_existential_0(v37 + 12);
    __swift_destroy_boxed_opaque_existential_0(v37 + 7);
    (*(v29 + 8))(v34, v30);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v32);

    v5 = *(v37[26] + 8);
    v6 = v37[26];
  }

  return v5();
}

uint64_t SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[27] = v5;
  v14 = *(v5 - 8);
  v3[28] = v14;
  v6 = *(v14 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[30] = v7;
  v15 = *(v7 - 8);
  v3[31] = v15;
  v8 = *(v15 + 64) + 15;
  v3[32] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[33] = v9;
  v16 = *(v9 - 8);
  v3[34] = v16;
  v10 = *(v16 + 64) + 15;
  v3[35] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v12 = v3[17];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  v17 = v0[36];
  v1 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v0[17] = v0;
  v2 = SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v17);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v3, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 160) = buf;
    *(v16 + 168) = v13;
    *(v16 + 176) = v14;
    serialize(_:at:)(0, (v16 + 160));
    serialize(_:at:)(0, (v16 + 160));
    *(v16 + 184) = v22;
    v15 = swift_task_alloc();
    v15[2] = v16 + 160;
    v15[3] = v16 + 168;
    v15[4] = v16 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#SendPaymentConfirmIntentStrategy makeConfirmationRejectedResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v16 + 280);
  v9 = *(v16 + 264);
  v10 = *(v16 + 200);
  v7 = *(v16 + 272);
  MEMORY[0x277D82BD8](v21);
  (*(v7 + 8))(v8, v9);

  *(v16 + 296) = *(v10 + 16);

  v4 = swift_task_alloc();
  *(v16 + 304) = v4;
  *v4 = *(v16 + 136);
  v4[1] = SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  v5 = *(v16 + 256);

  return SendPaymentCATs.promptCancelled()(v5);
}

{
  v8 = *v1;
  v2 = *(*v1 + 304);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[39] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  else
  {
    v3 = v8[37];

    v4 = *v9;
    v5 = SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v13 = v0[36];
  v14 = v0[35];
  v15 = v0[32];
  v11 = v0[31];
  v12 = v0[30];
  v16 = v0[29];
  v9 = v0[28];
  v10 = v0[27];
  v17 = v0[26];
  v7 = v0[25];
  v8 = v0[24];
  v0[17] = v0;
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v16);

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 2));

  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  (*(v9 + 16))(v17, v16, v10);
  (*(v9 + 56))(v17, 0, 1, v10);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v16, v10);
  (*(v11 + 8))(v15, v12);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v13);

  v2 = *(v0[17] + 8);
  v3 = v0[17];

  return v2();
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v8 = *(v4 - 8);
  v3[11] = v8;
  v5 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)()
{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentConfirmIntentStrategy makeRepromptOnEmptyParse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v15 + 96);
  v7 = *(v15 + 80);
  v8 = *(v15 + 72);
  v6 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v9, v7);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v15 + 16) + 8);
  v4 = *(v15 + 16);

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v8 = *(v4 - 8);
  v3[11] = v8;
  v5 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)()
{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentConfirmIntentStrategy makeRepromptOnLowConfidence", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v15 + 96);
  v7 = *(v15 + 80);
  v8 = *(v15 + 72);
  v6 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v9, v7);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v15 + 16) + 8);
  v4 = *(v15 + 16);

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[27] = v5;
  v11 = *(v5 - 8);
  v3[28] = v11;
  v6 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[30] = v7;
  v12 = *(v7 - 8);
  v3[31] = v12;
  v8 = *(v12 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v9 = v3[17];

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentConfirmIntentStrategy makeFlowCancelledResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  v4 = *(v15 + 232);

  return SendPaymentCATs.promptCancelled()(v4);
}

uint64_t SendPaymentConfirmIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(a1, a2, a3);
}

uint64_t sub_268830738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268830778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688307B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268830850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268830890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SendPaymentConfirmIntentStrategy()
{
  v1 = type metadata singleton initialization cache for SendPaymentConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for SendPaymentConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SAClientBoundCommand.data.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = v0;
  v12 = [v0 dictionary];
  if (v12)
  {
    v14 = v12;
    v16 = 0;
    v9 = objc_opt_self();
    MEMORY[0x277D82BE0](v12);
    v13 = 0;
    v11 = [v9 dataWithPropertyList:v12 format:200 options:0 error:&v13];
    v10 = v13;
    MEMORY[0x277D82BE0](v13);
    v1 = v16;
    v16 = v10;
    MEMORY[0x277D82BD8](v1);
    swift_unknownObjectRelease();
    if (v11)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v2;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      v7 = v17;
      outlined copy of Data._Representation(v17, v18);
      outlined destroy of Data(&v17);
      v8 = v7;
    }

    else
    {
      v4 = v16;
      v5 = _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v4);
      swift_willThrow();
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x26D621420](v5);
      v6 = Data.init()();

      v8 = v6;
    }
  }

  else
  {
    v8 = Data.init()();
  }

  *MEMORY[0x277D85DE8];
  return v8;
}

void *SiriPaymentsSnippetModel.PaymentConfirmationModel.init(confirmLabel:cancelLabel:noteLabel:feeLabel:confirmDI:cancelDI:appId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  __src[11] = a13;
  __src[12] = a14;
  __src[13] = a15;
  return memcpy(a9, __src, 0x70uLL);
}

void *SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(intent:response:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v4 - 8) + 32))(a4, a1);
  v12 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v8 = *(v12 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v5 - 8) + 32))(a4 + v8, a2);
  return memcpy((a4 + *(v12 + 24)), a3, 0x70uLL);
}

void *SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(intent:response:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v4 - 8) + 32))(a4, a1);
  v12 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v8 = *(v12 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v5 - 8) + 32))(a4 + v8, a2);
  return memcpy((a4 + *(v12 + 24)), a3, 0x70uLL);
}

void *SiriPaymentsSnippetModel.BinaryConfirmationModel.init(primaryButtonDI:primaryButtonLabel:secondaryButtonDI:secondaryButtonLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  return memcpy(a9, __src, 0x40uLL);
}

uint64_t one-time initialization function for bundleName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SiriPaymentsUIPlugin", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static SiriPaymentsSnippetModel.bundleName = v1;
  return result;
}

__int128 *SiriPaymentsSnippetModel.bundleName.unsafeMutableAddressor()
{
  if (one-time initialization token for bundleName != -1)
  {
    swift_once();
  }

  return &static SiriPaymentsSnippetModel.bundleName;
}

uint64_t static SiriPaymentsSnippetModel.bundleName.getter()
{
  v0 = SiriPaymentsSnippetModel.bundleName.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.intent.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel()
{
  v1 = type metadata singleton initialization cache for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.response.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  (*(v6 + 16))();
  v2 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  (*(v6 + 40))(v1 + *(v2 + 20), v5, v8);
  return (*(v6 + 8))(v9, v8);
}

void *SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.confirmation.setter(void *a1)
{
  outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, v5);
  v2 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, (v1 + *(v2 + 24)));
  return outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1);
}

void *outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a2[1];
  a2[1] = v2;

  a2[2] = a1[2];
  v4 = a2[3];
  a2[3] = a1[3];

  a2[4] = a1[4];
  v5 = a2[5];
  a2[5] = a1[5];

  a2[6] = a1[6];
  v6 = a2[7];
  a2[7] = a1[7];

  v7 = a1[9];
  v8 = a2[8];
  v9 = a2[9];
  a2[8] = a1[8];
  a2[9] = v7;
  outlined consume of Data._Representation(v8, v9);
  v10 = a1[11];
  v11 = a2[10];
  v12 = a2[11];
  a2[10] = a1[10];
  a2[11] = v10;
  outlined consume of Data._Representation(v11, v12);
  a2[12] = a1[12];
  v13 = a2[13];
  a2[13] = a1[13];

  return a2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intent", 6uLL, 1);
  v14 = a1;
  v15 = a2;
  v9 = MEMORY[0x26D620740](v16._countAndFlagsBits, v16._object, a1, a2);
  outlined destroy of String.UTF8View(&v16);
  if (v9)
  {

    v19 = 0;
    v6 = 0;
LABEL_8:

    return v6;
  }

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("response", 8uLL, 1);
  v11 = a1;
  v12 = a2;
  v5 = MEMORY[0x26D620740](v13._countAndFlagsBits, v13._object, a1, a2);
  outlined destroy of String.UTF8View(&v13);
  if (v5)
  {

    v19 = 1;
    v6 = 1;
    goto LABEL_8;
  }

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmation", 0xCuLL, 1);
  v4 = MEMORY[0x26D620740](v10._countAndFlagsBits, v10._object, a1, a2);
  outlined destroy of String.UTF8View(&v10);
  if (v4)
  {

    v19 = 2;
    v6 = 2;
    goto LABEL_8;
  }

  return 3;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intent", 6uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("response", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmation", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v28 = v52;
  v29 = a1;
  v52[1] = 0;
  v52[0] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v26 = v9 - v25;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v36 = *(v41 - 8);
  v37 = v41 - 8;
  v27 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = v9 - v27;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v30 = *(v40 - 8);
  v31 = v40 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v29);
  v35 = v9 - v32;
  v3[1] = v2;
  *v3 = v1;
  v33 = v2[3];
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v33);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v36 + 16))(v43, v38, v41);
  v39 = &v51;
  v51 = 0;
  lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>();
  v4 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v44 = v4;
  v45 = v4;
  if (v4)
  {
    v10 = v45;
    (*(v36 + 8))(v43, v41);
    result = (*(v30 + 8))(v35, v40);
    v11 = v10;
  }

  else
  {
    (*(v36 + 8))(v43, v41);
    v18 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    (*(v23 + 16))(v26, v38 + *(v18 + 20), v22);
    v19 = &v50;
    v50 = 1;
    lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>();
    v5 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v9[1] = v21;
      (*(v23 + 8))(v26, v22);
      return (*(v30 + 8))(v35, v40);
    }

    else
    {
      (*(v23 + 8))(v26, v22);
      v6 = (v38 + *(v18 + 24));
      v12 = __dst;
      v13 = 112;
      memcpy(__dst, v6, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(__dst, v48);
      v15 = v47;
      memcpy(v47, v12, v13);
      v14 = &v46;
      v46 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
      v7 = v20;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v16 = v7;
      v17 = v7;
      if (v7)
      {
        v9[0] = v17;
      }

      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v47);
      return (*(v30 + 8))(v35, v40);
    }
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v41 = a1;
  v56 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v8 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v36 = &v8 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v45 = &v8 - v40;
  v42 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v41);
  v44 = &v8 - v43;
  v56 = v2;
  v47 = v2[3];
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v47);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys();
  v3 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v49 = v3;
  v50 = v3;
  if (v3)
  {
    v13 = v50;
    v14 = 0;
  }

  else
  {
    v23 = &v55;
    v55 = 0;
    lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>();
    v4 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v4;
    v25 = v4;
    if (v4)
    {
      v12 = v25;
      (*(v38 + 8))(v45, v37);
      v13 = v12;
      v14 = 0;
    }

    else
    {
      (*(v33 + 32))(v44, v36, v32);
      v20 = &v54;
      v54 = 1;
      lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>();
      v5 = v24;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v21 = v5;
      v22 = v5;
      if (v5)
      {
        v11 = v22;
        (*(v38 + 8))(v45, v37);
        v13 = v11;
        v14 = 1;
      }

      else
      {
        (*(v28 + 32))(v44 + *(v42 + 20), v31, v27);
        v17 = &v52;
        v52 = 2;
        lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
        v6 = v21;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v18 = v6;
        v19 = v6;
        if (!v6)
        {
          v15 = __dst;
          v16 = 112;
          memcpy(__dst, __src, sizeof(__dst));
          memcpy((v44 + *(v42 + 24)), __dst, 0x70uLL);
          (*(v38 + 8))(v45, v37);
          outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v44, v26);
          __swift_destroy_boxed_opaque_existential_0(v41);
          return outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v44);
        }

        v10 = v19;
        (*(v38 + 8))(v45, v37);
        v13 = v10;
        v14 = 3;
      }
    }
  }

  v9 = v14;
  v8 = v13;
  result = __swift_destroy_boxed_opaque_existential_0(v41);
  if (v9)
  {
    result = (*(v33 + 8))(v44, v32);
  }

  if ((v9 & 2) != 0)
  {
    return (*(v28 + 8))(v44 + *(v42 + 20), v27);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.intent.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel()
{
  v1 = type metadata singleton initialization cache for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.response.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  (*(v6 + 16))();
  v2 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  (*(v6 + 40))(v1 + *(v2 + 20), v5, v8);
  return (*(v6 + 8))(v9, v8);
}

void *SiriPaymentsSnippetModel.SendPaymentConfirmationModel.confirmation.setter(void *a1)
{
  outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, v5);
  v2 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, (v1 + *(v2 + 24)));
  return outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1);
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v28 = v52;
  v29 = a1;
  v52[1] = 0;
  v52[0] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v26 = v9 - v25;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v36 = *(v41 - 8);
  v37 = v41 - 8;
  v27 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = v9 - v27;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v30 = *(v40 - 8);
  v31 = v40 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v29);
  v35 = v9 - v32;
  v3[1] = v2;
  *v3 = v1;
  v33 = v2[3];
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v33);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v36 + 16))(v43, v38, v41);
  v39 = &v51;
  v51 = 0;
  lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>();
  v4 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v44 = v4;
  v45 = v4;
  if (v4)
  {
    v10 = v45;
    (*(v36 + 8))(v43, v41);
    result = (*(v30 + 8))(v35, v40);
    v11 = v10;
  }

  else
  {
    (*(v36 + 8))(v43, v41);
    v18 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    (*(v23 + 16))(v26, v38 + *(v18 + 20), v22);
    v19 = &v50;
    v50 = 1;
    lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>();
    v5 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v9[1] = v21;
      (*(v23 + 8))(v26, v22);
      return (*(v30 + 8))(v35, v40);
    }

    else
    {
      (*(v23 + 8))(v26, v22);
      v6 = (v38 + *(v18 + 24));
      v12 = __dst;
      v13 = 112;
      memcpy(__dst, v6, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(__dst, v48);
      v15 = v47;
      memcpy(v47, v12, v13);
      v14 = &v46;
      v46 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
      v7 = v20;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v16 = v7;
      v17 = v7;
      if (v7)
      {
        v9[0] = v17;
      }

      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v47);
      return (*(v30 + 8))(v35, v40);
    }
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v41 = a1;
  v56 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v8 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v36 = &v8 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v45 = &v8 - v40;
  v42 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v41);
  v44 = &v8 - v43;
  v56 = v2;
  v47 = v2[3];
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v47);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys();
  v3 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v49 = v3;
  v50 = v3;
  if (v3)
  {
    v13 = v50;
    v14 = 0;
  }

  else
  {
    v23 = &v55;
    v55 = 0;
    lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>();
    v4 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v4;
    v25 = v4;
    if (v4)
    {
      v12 = v25;
      (*(v38 + 8))(v45, v37);
      v13 = v12;
      v14 = 0;
    }

    else
    {
      (*(v33 + 32))(v44, v36, v32);
      v20 = &v54;
      v54 = 1;
      lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>();
      v5 = v24;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v21 = v5;
      v22 = v5;
      if (v5)
      {
        v11 = v22;
        (*(v38 + 8))(v45, v37);
        v13 = v11;
        v14 = 1;
      }

      else
      {
        (*(v28 + 32))(v44 + *(v42 + 20), v31, v27);
        v17 = &v52;
        v52 = 2;
        lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
        v6 = v21;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v18 = v6;
        v19 = v6;
        if (!v6)
        {
          v15 = __dst;
          v16 = 112;
          memcpy(__dst, __src, sizeof(__dst));
          memcpy((v44 + *(v42 + 24)), __dst, 0x70uLL);
          (*(v38 + 8))(v45, v37);
          outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v44, v26);
          __swift_destroy_boxed_opaque_existential_0(v41);
          return outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v44);
        }

        v10 = v19;
        (*(v38 + 8))(v45, v37);
        v13 = v10;
        v14 = 3;
      }
    }
  }

  v9 = v14;
  v8 = v13;
  result = __swift_destroy_boxed_opaque_existential_0(v41);
  if (v9)
  {
    result = (*(v33 + 8))(v44, v32);
  }

  if ((v9 & 2) != 0)
  {
    return (*(v28 + 8))(v44 + *(v42 + 20), v27);
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.confirmLabel.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.cancelLabel.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.noteLabel.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.feeLabel.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.confirmDI.getter()
{
  v2 = *(v0 + 64);
  outlined copy of Data._Representation(v2, *(v0 + 72));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.cancelDI.getter()
{
  v2 = *(v0 + 80);
  outlined copy of Data._Representation(v2, *(v0 + 88));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.appId.getter()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmLabel", 0xCuLL, 1);
  v30 = a1;
  v31 = a2;
  v13 = MEMORY[0x26D620740](v32._countAndFlagsBits, v32._object, a1, a2);
  outlined destroy of String.UTF8View(&v32);
  if (v13)
  {

    v35 = 0;
    v10 = 0;
LABEL_16:

    return v10;
  }

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelLabel", 0xBuLL, 1);
  v27 = a1;
  v28 = a2;
  v9 = MEMORY[0x26D620740](v29._countAndFlagsBits, v29._object, a1, a2);
  outlined destroy of String.UTF8View(&v29);
  if (v9)
  {

    v35 = 1;
    v10 = 1;
    goto LABEL_16;
  }

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noteLabel", 9uLL, 1);
  v24 = a1;
  v25 = a2;
  v8 = MEMORY[0x26D620740](v26._countAndFlagsBits, v26._object, a1, a2);
  outlined destroy of String.UTF8View(&v26);
  if (v8)
  {

    v35 = 2;
    v10 = 2;
    goto LABEL_16;
  }

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeLabel", 8uLL, 1);
  v21 = a1;
  v22 = a2;
  v7 = MEMORY[0x26D620740](v23._countAndFlagsBits, v23._object, a1, a2);
  outlined destroy of String.UTF8View(&v23);
  if (v7)
  {

    v35 = 3;
    v10 = 3;
    goto LABEL_16;
  }

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmDI", 9uLL, 1);
  v18 = a1;
  v19 = a2;
  v6 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v6)
  {

    v35 = 4;
    v10 = 4;
    goto LABEL_16;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelDI", 8uLL, 1);
  v15 = a1;
  v16 = a2;
  v5 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v5)
  {

    v35 = 5;
    v10 = 5;
    goto LABEL_16;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1);
  v4 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v4)
  {

    v35 = 6;
    v10 = 6;
    goto LABEL_16;
  }

  return 7;
}

BOOL static SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmLabel", 0xCuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelLabel", 0xBuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noteLabel", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeLabel", 8uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmDI", 9uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelDI", 8uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v42 = &v71;
  v43 = a1;
  v69 = 0;
  v68 = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v44 = *(v54 - 8);
  v45 = v54 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = v12 - v46;
  v69 = MEMORY[0x28223BE20](v43);
  v68 = v1;
  v47 = v69[3];
  v48 = v69[4];
  __swift_project_boxed_opaque_existential_1(v69, v47);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v2 = v51;
  v52 = *v50;
  v53 = v50[1];

  v67 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = v2;
  v56 = v2;
  if (v2)
  {
    v17 = v56;

    result = (*(v44 + 8))(v49, v54);
    v18 = v17;
  }

  else
  {

    v3 = v55;
    v38 = v50[2];
    v39 = v50[3];

    v66 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = v3;
    v41 = v3;
    if (v3)
    {
      v16 = v41;

      result = (*(v44 + 8))(v49, v54);
      v18 = v16;
    }

    else
    {

      v4 = v40;
      v34 = v50[4];
      v35 = v50[5];

      v65 = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      v36 = v4;
      v37 = v4;
      if (v4)
      {
        v15 = v37;

        result = (*(v44 + 8))(v49, v54);
        v18 = v15;
      }

      else
      {

        v5 = v36;
        v30 = v50[6];
        v31 = v50[7];

        v64 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v32 = v5;
        v33 = v5;
        if (v5)
        {
          v14 = v33;

          result = (*(v44 + 8))(v49, v54);
          v18 = v14;
        }

        else
        {

          *v42 = *(v50 + 4);
          outlined init with copy of Data(&v71, &v63);
          v6 = *v42;
          v26 = &v62;
          v62 = v6;
          v25 = &v61;
          v61 = 4;
          v7 = lazy protocol witness table accessor for type Data and conformance Data();
          v8 = v32;
          v27 = v7;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v28 = v8;
          v29 = v8;
          if (v8)
          {
            v13 = v29;
            outlined destroy of Data(&v62);
            result = (*(v44 + 8))(v49, v54);
            v18 = v13;
          }

          else
          {
            outlined destroy of Data(&v62);
            v70 = *(v50 + 5);
            outlined init with copy of Data(&v70, &v60);
            v9 = v28;
            v59 = v70;
            v58 = 5;
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            v23 = v9;
            v24 = v9;
            if (v9)
            {
              v12[2] = v24;
              outlined destroy of Data(&v59);
              return (*(v44 + 8))(v49, v54);
            }

            else
            {
              outlined destroy of Data(&v59);
              v10 = v23;
              v19 = v50[12];
              v20 = v50[13];

              v57 = 6;
              KeyedEncodingContainer.encode(_:forKey:)();
              v21 = v10;
              v22 = v10;
              if (v10)
              {
                v12[1] = v22;
              }

              return (*(v44 + 8))(v49, v54);
            }
          }
        }
      }
    }
  }

  return result;
}

void *SiriPaymentsSnippetModel.PaymentConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  v75 = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v16 - v55;
  v75 = MEMORY[0x28223BE20](v51);
  v58 = v75[3];
  v59 = v75[4];
  __swift_project_boxed_opaque_existential_1(v75, v58);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys();
  v2 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v60 = v2;
  v61 = v2;
  if (v2)
  {
    v19 = v61;
    v20 = 0;
  }

  else
  {
    v74 = 0;
    v3 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = 0;
    v47 = v3;
    v48 = v4;
    v49 = 0;
    v76[0] = v3;
    v76[1] = v4;
    v73 = 1;
    v5 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = 0;
    v43 = v5;
    v44 = v6;
    v45 = 0;
    v77[0] = v5;
    v77[1] = v6;
    v72 = 2;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = 0;
    v39 = v7;
    v40 = v8;
    v41 = 0;
    v78[0] = v7;
    v78[1] = v8;
    v71 = 3;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = 0;
    v35 = v9;
    v36 = v10;
    v37 = 0;
    v79[0] = v9;
    v79[1] = v10;
    v30 = &v68;
    v68 = 4;
    v11 = lazy protocol witness table accessor for type Data and conformance Data();
    v12 = v34;
    v31 = v11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v12;
    v33 = v12;
    if (!v12)
    {
      v80[0] = v69;
      v80[1] = v70;
      v65 = 5;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v28 = 0;
      v29 = 0;
      v81[0] = v66;
      v81[1] = v67;
      v64 = 6;
      v13 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = 0;
      v25 = v13;
      v26 = v14;
      v27 = 0;
      v21 = v76;
      v81[2] = v13;
      v81[3] = v14;
      (*(v53 + 8))(v56, v52);
      v22 = v63;
      v23 = 112;
      memcpy(v63, v21, sizeof(v63));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v63, v62);
      __swift_destroy_boxed_opaque_existential_0(v51);
      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v21);
      return memcpy(v50, v22, v23);
    }

    v18 = v33;
    (*(v53 + 8))(v56, v52);
    v19 = v18;
    v20 = 15;
  }

  v17 = v20;
  v16 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(v51);
  if (v17)
  {
    result = outlined destroy of String.UTF8View(v76);
  }

  if ((v17 & 2) != 0)
  {
    result = outlined destroy of String.UTF8View(v77);
  }

  if ((v17 & 4) != 0)
  {
    result = outlined destroy of String.UTF8View(v78);
  }

  if ((v17 & 8) != 0)
  {
    result = outlined destroy of String.UTF8View(v79);
  }

  if ((v17 & 0x10) != 0)
  {
    result = v80;
    outlined destroy of Data(v80);
  }

  if ((v17 & 0x20) != 0)
  {
    result = v81;
    outlined destroy of Data(v81);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SiriPaymentsSnippetModel.PaymentConfirmationModel.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x70uLL);
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDescription", 0xEuLL, 1);
  v10 = a1;
  v11 = a2;
  v8 = MEMORY[0x26D620740](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v8)
  {

    v15 = 0;
    v5 = 0;
LABEL_6:

    return v5;
  }

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prompt", 6uLL, 1);
  v4 = MEMORY[0x26D620740](v9._countAndFlagsBits, v9._object, a1, a2);
  outlined destroy of String.UTF8View(&v9);
  if (v4)
  {

    v15 = 1;
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prompt", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDescription", 0xEuLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v21 = a2;
  v12 = a3;
  v13 = a4;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v15 = *(v23 - 8);
  v16 = v23 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v10 - v17;
  v35 = MEMORY[0x28223BE20](v14);
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v18 = v35[3];
  v19 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v18);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();

  v26 = &v31;
  v31 = v21;
  v22 = &v30;
  v30 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
  lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]();
  v7 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = v7;
  v28 = v7;
  if (v7)
  {
    v10[1] = v28;
    outlined destroy of [SFCardSection](&v31);
    return (*(v15 + 8))(v20, v23);
  }

  else
  {
    outlined destroy of [SFCardSection](&v31);
    v8 = v27;

    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[3] = v8;
    v11 = v8;
    if (v8)
    {
      v10[0] = v11;
    }

    return (*(v15 + 8))(v20, v23);
  }
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.init(from:)(uint64_t *a1)
{
  v23 = a1;
  v37 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v6 - v27;
  v37 = MEMORY[0x28223BE20](v23);
  v30 = v37[3];
  v31 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v30);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys();
  v1 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v32 = v1;
  v33 = v1;
  if (v1)
  {
    v9 = v33;
    v10 = 0;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    v19 = &v35;
    v35 = 0;
    lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]();
    v2 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v2;
    v22 = v2;
    if (!v2)
    {
      v38[0] = v36;
      v34 = 1;
      v3 = KeyedDecodingContainer.decode(_:forKey:)();
      v15 = 0;
      v16 = v3;
      v17 = v4;
      v18 = 0;
      v13 = v4;
      v12 = v3;
      v11 = v38;

      v38[1] = v12;
      v38[2] = v13;
      (*(v25 + 8))(v28, v24);
      v14 = v38[0];

      __swift_destroy_boxed_opaque_existential_0(v23);
      outlined destroy of SiriPaymentsSnippetModel.AppDisambiguationModel(v11);
      return v14;
    }

    v8 = v22;
    (*(v25 + 8))(v28, v24);
    v9 = v8;
    v10 = 0;
  }

  v7 = v10;
  v6[3] = v9;
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (v7)
  {
    outlined destroy of [SFCardSection](v38);
  }

  return v6[2];
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.primaryButtonDI.getter()
{
  v2 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.secondaryButtonDI.getter()
{
  v2 = *(v0 + 32);
  outlined copy of Data._Representation(v2, *(v0 + 40));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonDI", 0xFuLL, 1);
  v18 = a1;
  v19 = a2;
  v10 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v10)
  {

    v23 = 0;
    v7 = 0;
LABEL_10:

    return v7;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonLabel", 0x12uLL, 1);
  v15 = a1;
  v16 = a2;
  v6 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v6)
  {

    v23 = 1;
    v7 = 1;
    goto LABEL_10;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonDI", 0x11uLL, 1);
  v12 = a1;
  v13 = a2;
  v5 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v5)
  {

    v23 = 2;
    v7 = 2;
    goto LABEL_10;
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonLabel", 0x14uLL, 1);
  v4 = MEMORY[0x26D620740](v11._countAndFlagsBits, v11._object, a1, a2);
  outlined destroy of String.UTF8View(&v11);
  if (v4)
  {

    v23 = 3;
    v7 = 3;
    goto LABEL_10;
  }

  return 4;
}

BOOL static SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonDI", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonLabel", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonDI", 0x11uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonLabel", 0x14uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.encode(to:)(uint64_t a1)
{
  v22 = a1;
  v46 = 0;
  v45 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, _ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v23 = *(v31 - 8);
  v24 = v31 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v8 - v25;
  v46 = MEMORY[0x28223BE20](v22);
  v45 = v1;
  v26 = v46[3];
  v27 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v26);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v48 = *v29;
  outlined init with copy of Data(&v48, &v44);
  v33 = &v43;
  v43 = v48;
  v30 = &v42;
  v42 = 0;
  v2 = lazy protocol witness table accessor for type Data and conformance Data();
  v3 = v32;
  v34 = v2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v35 = v3;
  v36 = v3;
  if (v3)
  {
    v10 = v36;
    outlined destroy of Data(&v43);
    result = (*(v23 + 8))(v28, v31);
    v11 = v10;
  }

  else
  {
    outlined destroy of Data(&v43);
    v4 = v35;
    v18 = *(v29 + 2);
    v19 = *(v29 + 3);

    v41 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v4;
    v21 = v4;
    if (v4)
    {
      v9 = v21;

      result = (*(v23 + 8))(v28, v31);
      v11 = v9;
    }

    else
    {

      v47 = v29[2];
      outlined init with copy of Data(&v47, &v40);
      v5 = v20;
      v39 = v47;
      v38 = 2;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v16 = v5;
      v17 = v5;
      if (v5)
      {
        v8[2] = v17;
        outlined destroy of Data(&v39);
        return (*(v23 + 8))(v28, v31);
      }

      else
      {
        outlined destroy of Data(&v39);
        v6 = v16;
        v12 = *(v29 + 6);
        v13 = *(v29 + 7);

        v37 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v14 = v6;
        v15 = v6;
        if (v6)
        {
          v8[1] = v15;
        }

        return (*(v23 + 8))(v28, v31);
      }
    }
  }

  return result;
}

void *SiriPaymentsSnippetModel.BinaryConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v54 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v10 - v37;
  v54 = MEMORY[0x28223BE20](v33);
  v40 = v54[3];
  v41 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v40);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys();
  v2 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v42 = v2;
  v43 = v2;
  if (v2)
  {
    v13 = v43;
    v14 = 0;
  }

  else
  {
    v28 = &v51;
    v51 = 0;
    v3 = lazy protocol witness table accessor for type Data and conformance Data();
    v4 = v42;
    v29 = v3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v4;
    v31 = v4;
    if (!v4)
    {
      v55[0] = v52;
      v55[1] = v53;
      v50 = 1;
      v5 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = 0;
      v25 = v5;
      v26 = v6;
      v27 = 0;
      v56[0] = v5;
      v56[1] = v6;
      v47 = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v22 = 0;
      v23 = 0;
      v57[0] = v48;
      v57[1] = v49;
      v46 = 3;
      v7 = KeyedDecodingContainer.decode(_:forKey:)();
      v18 = 0;
      v19 = v7;
      v20 = v8;
      v21 = 0;
      v15 = v55;
      v57[2] = v7;
      v57[3] = v8;
      (*(v35 + 8))(v38, v34);
      v16 = __dst;
      v17 = 64;
      memcpy(__dst, v15, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst, &v44);
      __swift_destroy_boxed_opaque_existential_0(v33);
      outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(v15);
      return memcpy(v32, v16, v17);
    }

    v12 = v31;
    (*(v35 + 8))(v38, v34);
    v13 = v12;
    v14 = 0;
  }

  v11 = v14;
  v10 = v13;
  result = __swift_destroy_boxed_opaque_existential_0(v33);
  if (v11)
  {
    result = v55;
    outlined destroy of Data(v55);
  }

  if ((v11 & 2) != 0)
  {
    result = outlined destroy of String.UTF8View(v56);
  }

  if ((v11 & 4) != 0)
  {
    result = v57;
    outlined destroy of Data(v57);
  }

  return result;
}

BOOL SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_0", 2uLL, 1);
  v5 = MEMORY[0x26D620740](v6._countAndFlagsBits, v6._object, a1, a2);
  outlined destroy of String.UTF8View(&v6);

  return (v5 & 1) == 0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SiriPaymentsSnippetModel.BinaryConfirmationModel.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x40uLL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestPaymentConfirmation", 0x1AuLL, 1);
  v18 = a1;
  v19 = a2;
  v10 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v10)
  {

    v23 = 0;
    v7 = 0;
LABEL_10:

    return v7;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sendPaymentConfirmation", 0x17uLL, 1);
  v15 = a1;
  v16 = a2;
  v6 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v6)
  {

    v23 = 1;
    v7 = 1;
    goto LABEL_10;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDisambiguation", 0x11uLL, 1);
  v12 = a1;
  v13 = a2;
  v5 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v5)
  {

    v23 = 2;
    v7 = 2;
    goto LABEL_10;
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binaryConfirmation", 0x12uLL, 1);
  v4 = MEMORY[0x26D620740](v11._countAndFlagsBits, v11._object, a1, a2);
  outlined destroy of String.UTF8View(&v11);
  if (v4)
  {

    v23 = 3;
    v7 = 3;
    goto LABEL_10;
  }

  return 4;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestPaymentConfirmation", 0x1AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sendPaymentConfirmation", 0x17uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDisambiguation", 0x11uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binaryConfirmation", 0x12uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.encode(to:)(uint64_t a1)
{
  v64 = v84;
  v65 = a1;
  v84[1] = 0;
  v84[0] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v40 = &v9 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v45 = &v9 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v50 = &v9 - v49;
  v59 = 0;
  v51 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v53 = &v9 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = &v9 - v57;
  v60 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v62 = &v9 - v61;
  v74 = type metadata accessor for SiriPaymentsSnippetModel();
  v63 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v75 = (&v9 - v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v65);
  v70 = &v9 - v69;
  v3[1] = v2;
  *v3 = v1;
  v71 = v2[3];
  v72 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v71);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of SiriPaymentsSnippetModel(v73, v75);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      outlined init with take of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v75, v62);
      v32 = &v77;
      v77 = 0;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
      v4 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = v4;
      v34 = v4;
      if (v4)
      {
        v12 = v34;
        (*(v55 + 8))(v58, v54);
        outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v62);
        result = (*(v67 + 8))(v70, v66);
        v13 = v12;
        return result;
      }

      (*(v55 + 8))(v58, v54);
      outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v62);
      v31 = v33;
      goto LABEL_13;
    case 1:
      outlined init with take of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v75, v53);
      v28 = &v78;
      v78 = 1;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
      v5 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v5;
      v30 = v5;
      if (v5)
      {
        v11 = v30;
        (*(v47 + 8))(v50, v46);
        outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v53);
        result = (*(v67 + 8))(v70, v66);
        v13 = v11;
        return result;
      }

      (*(v47 + 8))(v50, v46);
      outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v53);
      v31 = v29;
      goto LABEL_13;
    case 2:
      v22 = *v75;
      v23 = v75[1];
      v24 = v75[2];
      v21 = &v80;
      v80 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v79;
      v79[0] = v22;
      v79[1] = v23;
      v79[2] = v24;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel();
      v6 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = v6;
      v27 = v6;
      if (v6)
      {
        v10 = v27;
        (*(v42 + 8))(v45, v41);

        result = (*(v67 + 8))(v70, v66);
        v13 = v10;
        return result;
      }

      (*(v42 + 8))(v45, v41);

      v31 = v26;
LABEL_13:
      v14 = v31;
      return (*(v67 + 8))(v70, v66);
  }

  v16 = __dst;
  v17 = 64;
  memcpy(__dst, v75, sizeof(__dst));
  v15 = &v82;
  v82 = 3;
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v18 = v81;
  memcpy(v81, v16, v17);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel();
  v7 = v35;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19 = v7;
  v20 = v7;
  if (!v7)
  {
    (*(v37 + 8))(v40, v36);
    outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst);
    v31 = v19;
    goto LABEL_13;
  }

  v9 = v20;
  (*(v37 + 8))(v40, v36);
  outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst);
  return (*(v67 + 8))(v70, v66);
}

uint64_t *SiriPaymentsSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v128 = &v145;
  v92 = a2;
  v117 = a1;
  v148[4] = 0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93);
  v97 = v36 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98);
  v102 = v36 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v107 = v36 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108);
  v112 = v36 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113);
  v130 = v36 - v116;
  v118 = type metadata accessor for SiriPaymentsSnippetModel();
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v117);
  v120 = v36 - v119;
  v121 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v122 = v36 - v121;
  v123 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v124 = v36 - v123;
  v125 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v126 = v36 - v125;
  v127 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v129 = v36 - v127;
  *(v128 + 10) = v10;
  v132 = v10[3];
  v133 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v132);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys();
  v11 = v131;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v134 = v11;
  v135 = v11;
  if (v11)
  {
    v53 = v135;
    goto LABEL_33;
  }

  v12 = KeyedDecodingContainer.allKeys.getter();
  v88 = &v147;
  *(v128 + 5) = v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  lazy protocol witness table accessor for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]();
  v13 = ArraySlice.init<A>(_:)();
  v14 = v128;
  *(v128 + 6) = v13;
  *(v14 + 7) = v15;
  *(v14 + 8) = v16;
  *(v14 + 9) = v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v90 = lazy protocol witness table accessor for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>();
  Collection<>.popFirst()();
  v91 = v146;
  if (v146 == 4)
  {
    goto LABEL_23;
  }

  v86 = v91;
  v80 = v91;
  v84 = *(v128 + 6);
  v81 = *(v128 + 7);
  v82 = *(v128 + 8);
  v83 = *(v128 + 9);
  swift_unknownObjectRetain();
  v18 = v81;
  v19 = v82;
  v20 = v128;
  v21 = v83;
  *v128 = v84;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  *(v20 + 3) = v21;
  v85 = Collection.isEmpty.getter();
  swift_unknownObjectRelease();
  if ((v85 & 1) == 0)
  {
LABEL_23:
    v47 = 0;
    v51 = type metadata accessor for DecodingError();
    v45 = 1;
    v52 = swift_allocError();
    v50 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v46 = v50 + *(v35 + 48);
    *v50 = v118;
    v48 = KeyedDecodingContainer.codingPath.getter();
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid number of keys found, expected one.", 0x2BuLL, v45 & 1)._countAndFlagsBits;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v51 - 8) + 104))(v50, *MEMORY[0x277D84160]);
    swift_willThrow();
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
    (*(v114 + 8))(v130, v113);
    v53 = v52;
    goto LABEL_33;
  }

  if (!v80)
  {
    v77 = &v136;
    v136 = 0;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys();
    v22 = v134;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v78 = v22;
    v79 = v22;
    if (v22)
    {
      v44 = v79;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v44;
      goto LABEL_33;
    }

    v74 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    v23 = v78;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v75 = v23;
    v76 = v23;
    if (v23)
    {
      v43 = v76;
      (*(v109 + 8))(v112, v108);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v43;
      goto LABEL_33;
    }

    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v126, v129);
    (*(v109 + 8))(v112, v108);
    v73 = v75;
LABEL_22:
    v54 = v73;
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
    (*(v114 + 8))(v130, v113);
    outlined init with copy of SiriPaymentsSnippetModel(v129, v92);
    __swift_destroy_boxed_opaque_existential_0(v117);
    return outlined destroy of SiriPaymentsSnippetModel(v129);
  }

  if (v80 == 1)
  {
    v70 = &v137;
    v137 = v80;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys();
    v24 = v134;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v71 = v24;
    v72 = v24;
    if (v24)
    {
      v42 = v72;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v42;
      goto LABEL_33;
    }

    v67 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    v25 = v71;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v68 = v25;
    v69 = v25;
    if (v25)
    {
      v41 = v69;
      (*(v104 + 8))(v107, v103);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v41;
      goto LABEL_33;
    }

    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v124, v129);
    (*(v104 + 8))(v107, v103);
    v73 = v68;
    goto LABEL_22;
  }

  if (v80 == 2)
  {
    v64 = &v141;
    v141 = v80;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys();
    v26 = v134;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v65 = v26;
    v66 = v26;
    if (v26)
    {
      v40 = v66;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v40;
      goto LABEL_33;
    }

    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel();
    v27 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = v27;
    v63 = v27;
    if (v27)
    {
      v39 = v63;
      (*(v99 + 8))(v102, v98);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
      (*(v114 + 8))(v130, v113);
      v53 = v39;
      goto LABEL_33;
    }

    v28 = v122;
    v29 = v139;
    v30 = v140;
    *v122 = v138;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v122, v129);
    (*(v99 + 8))(v102, v98);
    v73 = v62;
    goto LABEL_22;
  }

  v59 = &v144;
  v144 = v80;
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys();
  v31 = v134;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v60 = v31;
  v61 = v31;
  if (v31)
  {
    v38 = v61;
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
    (*(v114 + 8))(v130, v113);
    v53 = v38;
  }

  else
  {
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel();
    v32 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = v32;
    v58 = v32;
    if (!v32)
    {
      v55 = __dst;
      v56 = 64;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v120, __dst, 0x40uLL);
      swift_storeEnumTagMultiPayload();
      outlined init with take of SiriPaymentsSnippetModel(v120, v129);
      (*(v94 + 8))(v97, v93);
      v73 = v57;
      goto LABEL_22;
    }

    v37 = v58;
    (*(v94 + 8))(v97, v93);
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(v148);
    (*(v114 + 8))(v130, v113);
    v53 = v37;
  }

LABEL_33:
  v36[1] = v53;
  return __swift_destroy_boxed_opaque_existential_0(v117);
}

uint64_t AppDescription.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);
  v10 = a1;
  v11 = a2;
  v8 = MEMORY[0x26D620740](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v8)
  {

    v15 = 0;
    v5 = 0;
LABEL_6:

    return v5;
  }

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appBundleId", 0xBuLL, 1);
  v4 = MEMORY[0x26D620740](v9._countAndFlagsBits, v9._object, a1, a2);
  outlined destroy of String.UTF8View(&v9);
  if (v4)
  {

    v15 = 1;
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t AppDescription.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appBundleId", 0xBuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDescription.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDescription.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t AppDescription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v17 = *(v26 - 8);
  v18 = v26 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v12 - v19;
  v33 = MEMORY[0x28223BE20](v16);
  *&v31 = v5;
  *(&v31 + 1) = v6;
  *&v32 = v7;
  *(&v32 + 1) = v8;
  v20 = v33[3];
  v21 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v20);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v23;

  v30 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = v9;
  v28 = v9;
  if (v9)
  {
    v12[2] = v28;

    return (*(v17 + 8))(v22, v26);
  }

  else
  {

    v10 = v27;

    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[4] = v10;
    v13 = v10;
    if (v10)
    {
      v12[1] = v13;
    }

    return (*(v17 + 8))(v22, v26);
  }
}

uint64_t AppDescription.init(from:)(uint64_t *a1)
{
  v24 = a1;
  v37 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v7 - v28;
  v37 = MEMORY[0x28223BE20](v24);
  v31 = v37[3];
  v32 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v31);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  v1 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v33 = v1;
  v34 = v1;
  if (v1)
  {
    v9 = v34;
    v10 = 0;
    v8 = 0;
    v7[2] = v34;
    __swift_destroy_boxed_opaque_existential_0(v24);
    if (v8)
    {
      outlined destroy of String.UTF8View(&v38);
    }

    return v7[0];
  }

  else
  {
    v36 = 0;
    v2 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = 0;
    v21 = v2;
    v22 = v3;
    v23 = 0;
    v38 = v2;
    v39 = v3;
    v35 = 1;
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 0;
    v17 = v4;
    v18 = v5;
    v19 = 0;
    v14 = v5;
    v13 = v4;
    v11 = &v38;

    v40 = v13;
    v41 = v14;
    (*(v26 + 8))(v29, v25);
    v15 = v38;
    v12 = v39;

    __swift_destroy_boxed_opaque_existential_0(v24);
    outlined destroy of DIIdentifier(v11);
    return v15;
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance AppDescription@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppDescription.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t static SABaseCommand.from(data:)(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[2] = 0;
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v16 = objc_opt_self();
  outlined copy of Data._Representation(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  type metadata accessor for NSPropertyListMutabilityOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v21[0] = 0;
  v19 = [v16 propertyListWithData:isa options:v21[1] format:0 error:v21];
  v17 = v21[0];
  MEMORY[0x277D82BE0](v21[0]);
  v2 = v22;
  v22 = v17;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](isa);
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      v13 = v20;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      swift_unknownObjectRelease();
      v10 = objc_opt_self();

      v11 = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v10 aceObjectWithDictionary_];
      MEMORY[0x277D82BD8](v11);
      if (v12)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v8 = v9;
        }

        else
        {
          MEMORY[0x277D82BD8](v12);
          v8 = 0;
        }

        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v6 = 0;
    }
  }

  else
  {
    v4 = v22;
    v5 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v4);
    swift_willThrow();
    MEMORY[0x26D621420](v5);

    v6 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel()
{
  v1 = type metadata singleton initialization cache for SiriPaymentsSnippetModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SiriPaymentsSnippetModel()
{
  v3 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_26883B618(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 24) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_26883B80C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel()
{
  v3 = type metadata accessor for CodableIntent<INRequestPaymentIntent>();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for CodableIntentResponse<INRequestPaymentIntentResponse>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for CodableIntent<INRequestPaymentIntent>()
{
  v4 = lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>;
  if (!lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>)
  {
    type metadata accessor for INRequestPaymentIntent();
    v3 = type metadata accessor for CodableIntent();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CodableIntentResponse<INRequestPaymentIntentResponse>()
{
  v4 = lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>;
  if (!lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>)
  {
    type metadata accessor for INRequestPaymentIntentResponse();
    v3 = type metadata accessor for CodableIntentResponse();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26883BC04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 24) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_26883BDF8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for SiriPaymentsSnippetModel.SendPaymentConfirmationModel()
{
  v3 = type metadata accessor for CodableIntent<INSendPaymentIntent>();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for CodableIntentResponse<INSendPaymentIntentResponse>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for CodableIntent<INSendPaymentIntent>()
{
  v4 = lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>;
  if (!lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>)
  {
    type metadata accessor for INSendPaymentIntent();
    v3 = type metadata accessor for CodableIntent();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CodableIntentResponse<INSendPaymentIntentResponse>()
{
  v4 = lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>;
  if (!lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>)
  {
    type metadata accessor for INSendPaymentIntentResponse();
    v3 = type metadata accessor for CodableIntentResponse();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>);
      return v1;
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.AppDisambiguationModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.AppDisambiguationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t outlined init with take of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v2 - 8) + 32))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v3 - 8) + 32))(a2 + v5, a1 + v5);
  memcpy((a2 + *(v6 + 24)), (a1 + *(v6 + 24)), 0x70uLL);
  return a2;
}

uint64_t outlined init with take of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v2 - 8) + 32))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v3 - 8) + 32))(a2 + v5, a1 + v5);
  memcpy((a2 + *(v6 + 24)), (a1 + *(v6 + 24)), 0x70uLL);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}