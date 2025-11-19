uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 240);
  v10[16] = *v3;
  v11 = v10 + 16;
  v10[31] = v2;
  v10[32] = a1;
  v10[33] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  else
  {
    v6 = *v11;
    v7 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

{
  v10 = *v3;
  v5 = *(*v3 + 272);
  v10[16] = *v3;
  v11 = v10 + 16;
  v10[35] = v2;
  v10[36] = a1;
  v10[37] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  else
  {
    v6 = *v11;
    v7 = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[24] = v7;
  v8[23] = a7;
  v8[22] = a5;
  v8[21] = a4;
  v8[20] = a3;
  v8[19] = a2;
  v8[18] = a1;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v9 = type metadata accessor for Logger();
  v8[25] = v9;
  v13 = *(v9 - 8);
  v8[26] = v13;
  v10 = *(v13 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = v7;
  v11 = v8[4];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[27];
  v41 = v0[26];
  v42 = v0[25];
  v0[4] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v41 + 16))(v1, v2, v42);
  v44 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v36 = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0);
    v38 = createStorage<A>(capacity:type:)(0);
    *(v40 + 112) = v36;
    *(v40 + 120) = v37;
    *(v40 + 128) = v38;
    serialize(_:at:)(0, (v40 + 112));
    serialize(_:at:)(0, (v40 + 112));
    *(v40 + 136) = v45;
    v39 = swift_task_alloc();
    v39[2] = v40 + 112;
    v39[3] = v40 + 120;
    v39[4] = v40 + 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v44, v43, "#ConfirmationViewBuilder makeWatchFirstPartyView", v36, 2u);
    destroyStorage<A>(_:count:)(v37, 0, v35);
    destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v36, MEMORY[0x277D84B78]);
  }

  v32 = *(v40 + 216);
  v33 = *(v40 + 200);
  v31 = *(v40 + 208);
  MEMORY[0x277D82BD8](v44);
  (*(v31 + 8))(v32, v33);
  type metadata accessor for SASTItemGroup();
  v34 = SAUIAppPunchOut.__allocating_init()();
  *(v40 + 224) = v34;
  *(v40 + 80) = v34;
  if ((static RFFeatureFlags.ResponseFramework.SMART.getter() & 1) == 0)
  {
    v3 = *(v40 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    _allocateUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 setTemplateItems_];
    MEMORY[0x277D82BD8](isa);
    v29 = App.appIdentifier.getter();
    v30 = v4;
    if (v4)
    {
      v26 = *(v40 + 152);
      *(v40 + 16) = v29;
      *(v40 + 24) = v4;
      type metadata accessor for SASTApplicationBannerItem();
      MEMORY[0x277D82BE0](v26);

      *(v40 + 104) = SASTApplicationBannerItem.init(intent:appId:)(v26, v29, v30);
      v27 = [v34 templateItems];
      if (v27)
      {
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v27);
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
      Array.append(_:)();
      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v34 setTemplateItems_];
      MEMORY[0x277D82BD8](v23);
    }
  }

  v6 = *(v40 + 144);
  MEMORY[0x277D82BE0](*(v40 + 152));
  v22 = App.systemUIExtensionBundleId.getter();
  if (v7)
  {
    v20 = MEMORY[0x26D620690](v22);

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v17 = *(v40 + 160);
  v15 = *(v40 + 152);
  [v15 _setUiExtensionBundleId_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v15);
  type metadata accessor for SAIntentGroupSendPaymentSnippet();
  v18 = SAUIAppPunchOut.__allocating_init()();
  *(v40 + 232) = v18;
  *(v40 + 88) = v18;
  type metadata accessor for SAIntentGroupProtobufMessage();
  MEMORY[0x277D82BE0](v15);
  v16 = SAIntentGroupProtobufMessage.init(intent:)(v15);
  [v18 setIntent_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BE0](v17);
  v19 = SAIntentGroupProtobufMessage.init(response:)(v17);
  [v18 setIntentResponse_];
  MEMORY[0x277D82BD8](v19);
  v8 = swift_task_alloc();
  *(v40 + 240) = v8;
  *v8 = *(v40 + 32);
  v8[1] = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  v9 = *(v40 + 192);
  v10 = *(v40 + 184);
  v11 = *(v40 + 176);
  v12 = *(v40 + 168);
  v13 = *(v40 + 152);
  v14 = *(v40 + 144);

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v14, v13, v12);
}

{
  v1 = v0[31];
  v0[4] = v0;
  v0[12] = v1;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v10 = v19[31];
    v11 = v19[29];
    v12 = v19[28];
    type metadata accessor for SAAceView();
    v9 = _allocateUninitializedArray<A>(_:)();
    v8 = v3;
    MEMORY[0x277D82BE0](v11);
    *v8 = v11;
    MEMORY[0x277D82BE0](v10);
    v8[1] = v10;
    _finalizeUninitializedArray<A>(_:)();
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v18 = v9;
  }

  else
  {
    v15 = v19[31];
    v16 = v19[29];
    v17 = v19[28];
    type metadata accessor for SAAceView();
    v14 = _allocateUninitializedArray<A>(_:)();
    v13 = v2;
    MEMORY[0x277D82BE0](v17);
    *v13 = v17;
    MEMORY[0x277D82BE0](v16);
    v13[1] = v16;
    MEMORY[0x277D82BE0](v15);
    v13[2] = v15;
    _finalizeUninitializedArray<A>(_:)();
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v18 = v14;
  }

  v4 = v19[27];

  v5 = *(v19[4] + 8);
  v6 = v19[4];

  return v5(v18);
}

{
  v1 = v0[29];
  v7 = v0[28];
  v8 = v0[27];
  v0[4] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[32];

  return v3();
}

uint64_t ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 240);
  v9[4] = *v2;
  v10 = v9 + 4;
  v9[31] = a1;
  v9[32] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v5 = *v10;
    v6 = ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

unint64_t lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError()
{
  v2 = lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError;
  if (!lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsError and conformance PaymentsError);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t default argument 1 of static SATextDecorationRegion.from(_:property:)()
{
  v1 = *MEMORY[0x277D487B8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D487B8]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = v3;
  v4[27] = a3;
  v4[26] = a2;
  v4[25] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v5 = type metadata accessor for TemplatingResult();
  v4[29] = v5;
  v11 = *(v5 - 8);
  v4[30] = v11;
  v6 = *(v11 + 64) + 15;
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[32] = v7;
  v12 = *(v7 - 8);
  v4[33] = v12;
  v8 = *(v12 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;
  v9 = v4[7];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)()
{
  v1 = v0[34];
  v27 = v0[33];
  v28 = v0[32];
  v0[7] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v1, v2, v28);
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(0);
    *(v26 + 168) = v22;
    *(v26 + 176) = v23;
    *(v26 + 184) = v24;
    serialize(_:at:)(0, (v26 + 168));
    serialize(_:at:)(0, (v26 + 168));
    *(v26 + 192) = v31;
    v25 = swift_task_alloc();
    v25[2] = v26 + 168;
    v25[3] = v26 + 176;
    v25[4] = v26 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v30, v29, "#ConfirmationViewBuilder makeWatchConfirmationButtons", v22, 2u);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
  }

  v17 = *(v26 + 272);
  v18 = *(v26 + 256);
  v19 = *(v26 + 208);
  v3 = *(v26 + 200);
  v16 = *(v26 + 264);
  MEMORY[0x277D82BD8](v30);
  (*(v16 + 8))(v17, v18);
  *(v26 + 280) = type metadata accessor for SASTCommandTemplateAction();
  MEMORY[0x277D82BE0](v19);
  v20 = App.appIdentifier.getter();
  if (!v4)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v12 = *(v26 + 216);
  v5 = SASTCommandTemplateAction.init(intent:appId:)(*(v26 + 208), v20, v4);
  *(v26 + 288) = v5;
  *(v26 + 96) = v5;
  *(v26 + 296) = type metadata accessor for SASTButtonItem();
  v6 = SAUIAppPunchOut.__allocating_init()();
  *(v26 + 304) = v6;
  *(v26 + 104) = v6;
  *(v26 + 312) = type metadata accessor for SAUIDecoratedText();
  v7 = SAUIAppPunchOut.__allocating_init()();
  *(v26 + 320) = v7;
  *(v26 + 112) = v7;
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = (*(v14 + 8) + **(v14 + 8));
  v8 = *(*(v14 + 8) + 4);
  v9 = swift_task_alloc();
  *(v26 + 328) = v9;
  *v9 = *(v26 + 56);
  v9[1] = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  v10 = *(v26 + 248);

  return v15(v10, v13, v14);
}

{
  v7 = *v1;
  v2 = *(*v1 + 328);
  *(v7 + 56) = *v1;
  v8 = (v7 + 56);
  *(v7 + 336) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  else
  {
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v23 = v0[40];
  v22 = v0[38];
  v20 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v24 = v0[26];
  v17 = v0[25];
  v0[7] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v21 = MEMORY[0x26D620690](v1);
  (*(v18 + 8))(v20, v19);

  [v23 setText_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BE0](v23);
  [v22 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BE0](v24);
  v25 = App.appIdentifier.getter();
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v11 = *(v16 + 312);
  v10 = *(v16 + 296);
  v3 = *(v16 + 280);
  v12 = *(v16 + 224);
  v4 = SASTCommandTemplateAction.init(intent:appId:)(*(v16 + 208), v25, v2);
  *(v16 + 344) = v4;
  *(v16 + 120) = v4;
  v5 = SAUIAppPunchOut.__allocating_init()();
  *(v16 + 352) = v5;
  *(v16 + 128) = v5;
  v6 = SAUIAppPunchOut.__allocating_init()();
  *(v16 + 360) = v6;
  *(v16 + 136) = v6;
  outlined init with copy of GlobalsProviding(v12, v16 + 16);
  v15 = *(v16 + 40);
  v13 = *(v16 + 48);
  __swift_project_boxed_opaque_existential_1((v16 + 16), v15);
  v14 = (*(v13 + 8) + **(v13 + 8));
  v7 = *(*(v13 + 8) + 4);
  v8 = swift_task_alloc();
  *(v16 + 368) = v8;
  *v8 = *(v16 + 56);
  v8[1] = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);

  return v14(v15, v13);
}

{
  v43 = v0[49];
  v1 = v0[48];
  v46 = v0[45];
  v45 = v0[44];
  v47 = v0[40];
  v0[7] = v0;
  v44 = MEMORY[0x26D620690](v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v46 setText_];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BE0](v46);
  [v45 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v46);
  v48 = [v47 text];
  if (v48)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v2;
    MEMORY[0x277D82BD8](v48);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  if (!v41)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v37 = [*(v42 + 360) text];
  if (v37)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v4;
    MEMORY[0x277D82BD8](v37);
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (!v36)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = *(v42 + 224);
  v31 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v40, v41, v35, v36);
  v30 = v6;

  *(v42 + 144) = v31;
  *(v42 + 152) = v30;
  v32 = [v31 commands];
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v32);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = isa;
  }

  else
  {
    v27 = 0;
  }

  [*(v42 + 288) setCommands_];
  MEMORY[0x277D82BD8](v27);
  v25 = [v30 commands];
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v25);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v21 = Array._bridgeToObjectiveC()().super.isa;

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v12 = *(v42 + 360);
  v13 = *(v42 + 352);
  v14 = *(v42 + 344);
  v15 = *(v42 + 320);
  v16 = *(v42 + 304);
  v17 = *(v42 + 288);
  v18 = *(v42 + 272);
  v19 = *(v42 + 248);
  [v14 setCommands_];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BE0](v17);
  [v16 0x1FAEC4178];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v14);
  [v13 0x1FAEC4178];
  swift_unknownObjectRelease();
  [v16 0x1FBDBEDF3];
  [v13 0x1FBDBEDF3];
  type metadata accessor for SASTItemGroup();
  v20 = SAUIAppPunchOut.__allocating_init()();
  *(v42 + 160) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v7;
  MEMORY[0x277D82BE0](v16);
  *v10 = v16;
  MEMORY[0x277D82BE0](v13);
  v10[1] = v13;
  _finalizeUninitializedArray<A>(_:)();
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v20 setTemplateItems_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);

  v8 = *(*(v42 + 56) + 8);
  v9 = *(v42 + 56);

  return v8(v20);
}

{
  v1 = v0[40];
  v7 = v0[38];
  v8 = v0[36];
  v0[7] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v2 = v0[42];
  v3 = v0[34];
  v9 = v0[31];

  v4 = *(v0[7] + 8);
  v5 = v0[7];

  return v4();
}

{
  v6 = v0[45];
  v7 = v0[44];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[38];
  v11 = v0[36];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v1 = v0[47];
  v2 = v0[34];
  v12 = v0[31];

  v3 = *(v0[7] + 8);
  v4 = v0[7];

  return v3();
}

uint64_t ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 368);
  v10[7] = *v3;
  v11 = v10 + 7;
  v10[47] = v2;
  v10[48] = a1;
  v10[49] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  else
  {
    v6 = *v11;
    v7 = ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t implicit closure #9 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for SASTItemGroup();
  lazy protocol witness table accessor for type SASTItemGroup and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[11] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v3 = type metadata accessor for TemplatingResult();
  v2[23] = v3;
  v9 = *(v3 - 8);
  v2[24] = v9;
  v4 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[26] = v5;
  v10 = *(v5 - 8);
  v2[27] = v10;
  v6 = *(v10 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[12] = a1;
  v2[13] = v1;
  v7 = v2[11];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)()
{
  v1 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v0[11] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v20 + 16))(v1, v2, v21);
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 136) = buf;
    *(v19 + 144) = v16;
    *(v19 + 152) = v17;
    serialize(_:at:)(0, (v19 + 136));
    serialize(_:at:)(0, (v19 + 136));
    *(v19 + 160) = v24;
    v18 = swift_task_alloc();
    v18[2] = v19 + 136;
    v18[3] = v19 + 144;
    v18[4] = v19 + 152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v23, v22, "#ConfirmationViewBuilder makeConfirmationOptions", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v19 + 224);
  v9 = *(v19 + 208);
  v10 = *(v19 + 168);
  v7 = *(v19 + 216);
  MEMORY[0x277D82BD8](v23);
  (*(v7 + 8))(v8, v9);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = (*(v12 + 8) + **(v12 + 8));
  v3 = *(*(v12 + 8) + 4);
  v4 = swift_task_alloc();
  *(v19 + 232) = v4;
  *v4 = *(v19 + 88);
  v4[1] = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  v5 = *(v19 + 200);

  return v13(v5, v11, v12);
}

{
  v7 = *v1;
  v2 = *(*v1 + 232);
  *(v7 + 88) = *v1;
  v8 = (v7 + 88);
  *(v7 + 240) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  else
  {
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v7 = v0[25];
  v6 = v0[24];
  v8 = v0[23];
  v9 = v0[22];
  v0[11] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[31] = v1;
  v0[32] = v2;
  v0[7] = v1;
  v0[8] = v2;
  (*(v6 + 8))(v7, v8);
  outlined init with copy of GlobalsProviding(v9, (v0 + 2));
  v13 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v3 = *(*(v11 + 8) + 4);
  v4 = swift_task_alloc();
  *(v10 + 264) = v4;
  *v4 = *(v10 + 88);
  v4[1] = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);

  return v12(v13, v11);
}

{
  v43 = v0[36];
  v42 = v0[35];
  v41 = v0[32];
  v40 = v0[31];
  v1 = v0[22];
  v0[11] = v0;
  v0[9] = v42;
  v0[10] = v43;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v52 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v40, v41, v42, v43);
  v48 = v2;
  v0[14] = v52;
  v0[15] = v2;
  v44 = *MEMORY[0x277D48B80];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B80]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = MEMORY[0x26D620690](v3);

  MEMORY[0x277D82BD8](v44);
  [v52 setButtonRole_];
  MEMORY[0x277D82BD8](v45);
  v46 = *MEMORY[0x277D48B88];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B88]);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = MEMORY[0x26D620690](v4);

  MEMORY[0x277D82BD8](v46);
  [v52 setType_];
  MEMORY[0x277D82BD8](v47);
  type metadata accessor for SAUIConfirmationOptions();
  v50 = SAUIAppPunchOut.__allocating_init()();
  v0[16] = v50;
  type metadata accessor for SAUIConfirmationOption();
  _allocateUninitializedArray<A>(_:)();
  v49 = v5;
  MEMORY[0x277D82BE0](v52);
  *v49 = v52;
  MEMORY[0x277D82BE0](v48);
  v49[1] = v48;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 setAllConfirmationOptions_];
  MEMORY[0x277D82BD8](isa);
  v53 = [v52 commands];
  if (v53)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v53);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v35 = Array._bridgeToObjectiveC()().super.isa;

    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  [v50 setConfirmCommands_];
  MEMORY[0x277D82BD8](v36);
  v34 = [v52 label];
  if (v34)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v6;
    MEMORY[0x277D82BD8](v34);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  if (v33)
  {
    v28 = MEMORY[0x26D620690](v32);

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  [v50 setConfirmText_];
  MEMORY[0x277D82BD8](v29);
  v27 = [v48 commands];
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v27);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v23 = Array._bridgeToObjectiveC()().super.isa;

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  [v50 setDenyCommands_];
  MEMORY[0x277D82BD8](v24);
  v22 = [v48 label];
  if (v22)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v7;
    MEMORY[0x277D82BD8](v22);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    v16 = MEMORY[0x26D620690](v20);

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v12 = v39[36];
  v13 = v39[32];
  v14 = v39[28];
  v15 = v39[25];
  [v50 setDenyText_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v52);

  v8 = *(v39[11] + 8);
  v9 = v39[11];

  return v8(v50);
}

{
  v0[11] = v0;
  v1 = v0[30];
  v2 = v0[28];
  v6 = v0[25];

  v3 = *(v0[11] + 8);
  v4 = v0[11];

  return v3();
}

{
  v6 = v0[32];
  v0[11] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[34];
  v2 = v0[28];
  v7 = v0[25];

  v3 = *(v0[11] + 8);
  v4 = v0[11];

  return v3();
}

uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 264);
  v10[11] = *v3;
  v11 = v10 + 11;
  v10[34] = v2;
  v10[35] = a1;
  v10[36] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  else
  {
    v6 = *v11;
    v7 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x26D620690](a1);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t protocol witness for ConfirmationViewBuilding.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:) in conformance ConfirmationViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for ConfirmationViewBuilding.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:) in conformance ConfirmationViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for ConfirmationViewBuilding.makeTCCAcceptanceView(app:) in conformance ConfirmationViewBuilder(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(a1);
}

uint64_t sub_2686DFE18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686DFE58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2686DFFC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for SAAceView()
{
  v2 = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAceView);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2686E00AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #4 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)();
}

uint64_t sub_2686E0150()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for SATextDecorationRegion()
{
  v2 = lazy cache variable for type metadata for SATextDecorationRegion;
  if (!lazy cache variable for type metadata for SATextDecorationRegion)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SATextDecorationRegion);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2686E0234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E02CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E030C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E034C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E03E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0504()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E061C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E065C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E069C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E0774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E07B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E084C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686E088C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for SASTApplicationBannerItem()
{
  v2 = lazy cache variable for type metadata for SASTApplicationBannerItem;
  if (!lazy cache variable for type metadata for SASTApplicationBannerItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTApplicationBannerItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAAppsLaunchApp()
{
  v2 = lazy cache variable for type metadata for SAAppsLaunchApp;
  if (!lazy cache variable for type metadata for SAAppsLaunchApp)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAppsLaunchApp);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFAbstractCommand()
{
  v2 = lazy cache variable for type metadata for SFAbstractCommand;
  if (!lazy cache variable for type metadata for SFAbstractCommand)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFAbstractCommand);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFCardSection()
{
  v2 = lazy cache variable for type metadata for SFCardSection;
  if (!lazy cache variable for type metadata for SFCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRichTitleCardSection()
{
  v2 = lazy cache variable for type metadata for SFRichTitleCardSection;
  if (!lazy cache variable for type metadata for SFRichTitleCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRichTitleCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRowCardSection()
{
  v2 = lazy cache variable for type metadata for SFRowCardSection;
  if (!lazy cache variable for type metadata for SFRowCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRowCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *outlined destroy of [SFCardSection](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t type metadata accessor for INSendPaymentIntent()
{
  v2 = lazy cache variable for type metadata for INSendPaymentIntent;
  if (!lazy cache variable for type metadata for INSendPaymentIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSendPaymentIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SACardSnippet()
{
  v2 = lazy cache variable for type metadata for SACardSnippet;
  if (!lazy cache variable for type metadata for SACardSnippet)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SACardSnippet);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRichText()
{
  v2 = lazy cache variable for type metadata for SFRichText;
  if (!lazy cache variable for type metadata for SFRichText)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRichText);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INRequestPaymentIntent()
{
  v2 = lazy cache variable for type metadata for INRequestPaymentIntent;
  if (!lazy cache variable for type metadata for INRequestPaymentIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INRequestPaymentIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of (A, B)(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

void *outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  outlined consume of Data._Representation(a1[8], a1[9]);
  outlined consume of Data._Representation(a1[10], a1[11]);
  v5 = a1[13];

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t type metadata accessor for INSendPaymentIntentResponse()
{
  v2 = lazy cache variable for type metadata for INSendPaymentIntentResponse;
  if (!lazy cache variable for type metadata for INSendPaymentIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSendPaymentIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v6 = a1[7];

  a2[7] = v6;
  v7 = a1[8];
  v8 = a1[9];
  outlined copy of Data._Representation(v7, v8);
  a2[8] = v7;
  a2[9] = v8;
  v9 = a1[10];
  v10 = a1[11];
  outlined copy of Data._Representation(v9, v10);
  a2[10] = v9;
  a2[11] = v10;
  a2[12] = a1[12];
  v13 = a1[13];

  result = a2;
  a2[13] = v13;
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v16 = (a1 + *(v6 + 24));
  v18 = (a2 + *(v6 + 24));
  *v18 = *v16;
  v8 = v16[1];

  v18[1] = v8;
  v18[2] = v16[2];
  v9 = v16[3];

  v18[3] = v9;
  v18[4] = v16[4];
  v10 = v16[5];

  v18[5] = v10;
  v18[6] = v16[6];
  v11 = v16[7];

  v18[7] = v11;
  v12 = v16[8];
  v13 = v16[9];
  outlined copy of Data._Representation(v12, v13);
  v18[8] = v12;
  v18[9] = v13;
  v14 = v16[10];
  v15 = v16[11];
  outlined copy of Data._Representation(v14, v15);
  v18[10] = v14;
  v18[11] = v15;
  v18[12] = v16[12];
  v19 = v16[13];

  result = a2;
  v18[13] = v19;
  return result;
}

char *outlined init with take of SiriPaymentsSnippetModel(char *a1, char *a2)
{
  v15 = type metadata accessor for SiriPaymentsSnippetModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
      (*(*(v4 - 8) + 32))(a2, a1);
      v9 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
      v8 = &a2[*(v9 + 20)];
      v7 = &a1[*(v9 + 20)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
      (*(*(v5 - 8) + 32))(v8, v7);
      memcpy(&a2[*(v9 + 24)], &a1[*(v9 + 24)], 0x70uLL);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v2 - 8) + 32))(a2, a1);
    v12 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    v11 = &a2[*(v12 + 20)];
    v10 = &a1[*(v12 + 20)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v3 - 8) + 32))(v11, v10);
    memcpy(&a2[*(v12 + 24)], &a1[*(v12 + 24)], 0x70uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v1 - 8) + 8))(a1);
  v10 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
  v9 = *(v10 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v2 - 8) + 8))(a1 + v9);
  v11 = (a1 + *(v10 + 24));
  v3 = v11[1];

  v4 = v11[3];

  v5 = v11[5];

  v6 = v11[7];

  outlined consume of Data._Representation(v11[8], v11[9]);
  outlined consume of Data._Representation(v11[10], v11[11]);
  v7 = v11[13];

  return a1;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined init with copy of SiriPaymentsSnippetModel(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SiriPaymentsSnippetModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
      (*(*(v4 - 8) + 16))(a2, a1);
      v17 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
      v16 = a2 + *(v17 + 20);
      v15 = a1 + *(v17 + 20);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
      (*(*(v5 - 8) + 16))(v16, v15);
      v27 = (a2 + *(v17 + 24));
      v26 = (a1 + *(v17 + 24));
      *v27 = *v26;
      v18 = v26[1];

      v27[1] = v18;
      v27[2] = v26[2];
      v19 = v26[3];

      v27[3] = v19;
      v27[4] = v26[4];
      v20 = v26[5];

      v27[5] = v20;
      v27[6] = v26[6];
      v21 = v26[7];

      v27[7] = v21;
      v22 = v26[8];
      v23 = v26[9];
      outlined copy of Data._Representation(v22, v23);
      v27[8] = v22;
      v27[9] = v23;
      v24 = v26[10];
      v25 = v26[11];
      outlined copy of Data._Representation(v24, v25);
      v27[10] = v24;
      v27[11] = v25;
      v27[12] = v26[12];
      v28 = v26[13];

      v27[13] = v28;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = *a1;

        *a2 = v13;
        a2[1] = a1[1];
        v14 = a1[2];

        a2[2] = v14;
      }

      else
      {
        v7 = *a1;
        v8 = a1[1];
        outlined copy of Data._Representation(*a1, v8);
        *a2 = v7;
        a2[1] = v8;
        a2[2] = a1[2];
        v9 = a1[3];

        a2[3] = v9;
        v10 = a1[4];
        v11 = a1[5];
        outlined copy of Data._Representation(v10, v11);
        a2[4] = v10;
        a2[5] = v11;
        a2[6] = a1[6];
        v12 = a1[7];

        a2[7] = v12;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v2 - 8) + 16))(a2, a1);
    v31 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    v30 = a2 + *(v31 + 20);
    v29 = a1 + *(v31 + 20);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v3 - 8) + 16))(v30, v29);
    v41 = (a2 + *(v31 + 24));
    v40 = (a1 + *(v31 + 24));
    *v41 = *v40;
    v32 = v40[1];

    v41[1] = v32;
    v41[2] = v40[2];
    v33 = v40[3];

    v41[3] = v33;
    v41[4] = v40[4];
    v34 = v40[5];

    v41[5] = v34;
    v41[6] = v40[6];
    v35 = v40[7];

    v41[7] = v35;
    v36 = v40[8];
    v37 = v40[9];
    outlined copy of Data._Representation(v36, v37);
    v41[8] = v36;
    v41[9] = v37;
    v38 = v40[10];
    v39 = v40[11];
    outlined copy of Data._Representation(v38, v39);
    v41[10] = v38;
    v41[11] = v39;
    v41[12] = v40[12];
    v42 = v40[13];

    v41[13] = v42;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t type metadata accessor for DialogExecutionResult()
{
  v2 = lazy cache variable for type metadata for DialogExecutionResult;
  if (!lazy cache variable for type metadata for DialogExecutionResult)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for DialogExecutionResult);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *outlined destroy of SiriPaymentsSnippetModel(uint64_t *a1)
{
  type metadata accessor for SiriPaymentsSnippetModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
        (*(*(v8 - 8) + 8))(a1);
        v21 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
        v20 = a1 + *(v21 + 20);
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
        (*(*(v9 - 8) + 8))(v20);
        v22 = (a1 + *(v21 + 24));
        v10 = v22[1];

        v11 = v22[3];

        v12 = v22[5];

        v13 = v22[7];

        outlined consume of Data._Representation(v22[8], v22[9]);
        outlined consume of Data._Representation(v22[10], v22[11]);
        v14 = v22[13];

        break;
      case 2:
        v15 = *a1;

        v16 = a1[2];

        break;
      case 3:
        outlined consume of Data._Representation(*a1, a1[1]);
        v17 = a1[3];

        outlined consume of Data._Representation(a1[4], a1[5]);
        v18 = a1[7];

        break;
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v1 - 8) + 8))(a1);
    v24 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    v23 = a1 + *(v24 + 20);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v2 - 8) + 8))(v23);
    v25 = (a1 + *(v24 + 24));
    v3 = v25[1];

    v4 = v25[3];

    v5 = v25[5];

    v6 = v25[7];

    outlined consume of Data._Representation(v25[8], v25[9]);
    outlined consume of Data._Representation(v25[10], v25[11]);
    v7 = v25[13];
  }

  return a1;
}

unint64_t type metadata accessor for INRequestPaymentIntentResponse()
{
  v2 = lazy cache variable for type metadata for INRequestPaymentIntentResponse;
  if (!lazy cache variable for type metadata for INRequestPaymentIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INRequestPaymentIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v16 = (a1 + *(v6 + 24));
  v18 = (a2 + *(v6 + 24));
  *v18 = *v16;
  v8 = v16[1];

  v18[1] = v8;
  v18[2] = v16[2];
  v9 = v16[3];

  v18[3] = v9;
  v18[4] = v16[4];
  v10 = v16[5];

  v18[5] = v10;
  v18[6] = v16[6];
  v11 = v16[7];

  v18[7] = v11;
  v12 = v16[8];
  v13 = v16[9];
  outlined copy of Data._Representation(v12, v13);
  v18[8] = v12;
  v18[9] = v13;
  v14 = v16[10];
  v15 = v16[11];
  outlined copy of Data._Representation(v14, v15);
  v18[10] = v14;
  v18[11] = v15;
  v18[12] = v16[12];
  v19 = v16[13];

  result = a2;
  v18[13] = v19;
  return result;
}

uint64_t outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v1 - 8) + 8))(a1);
  v10 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
  v9 = *(v10 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v2 - 8) + 8))(a1 + v9);
  v11 = (a1 + *(v10 + 24));
  v3 = v11[1];

  v4 = v11[3];

  v5 = v11[5];

  v6 = v11[7];

  outlined consume of Data._Representation(v11[8], v11[9]);
  outlined consume of Data._Representation(v11[10], v11[11]);
  v7 = v11[13];

  return a1;
}

unint64_t type metadata accessor for SAUIConfirmationOption()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationOption;
  if (!lazy cache variable for type metadata for SAUIConfirmationOption)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationOption);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  v2 = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIConfirmationView()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationView;
  if (!lazy cache variable for type metadata for SAUIConfirmationView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationView);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAIntentGroupSendPaymentSnippet()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet;
  if (!lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAIntentGroupProtobufMessage()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupProtobufMessage;
  if (!lazy cache variable for type metadata for SAIntentGroupProtobufMessage)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIConfirmationOptions()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationOptions;
  if (!lazy cache variable for type metadata for SAUIConfirmationOptions)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationOptions);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder.WalletAppLaunchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
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

_BYTE *storeEnumTagSinglePayload for ConfirmationViewBuilder.WalletAppLaunchAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
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

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SASTItemGroup and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject)
  {
    type metadata accessor for SASTItemGroup();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = 0;
  v6 = *v3;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = *(v6 + 80);
  v20 = *(v6 + 88);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v7 + 16))(v8);
  outlined init with take of CommonLabelsProviding(v18, (v15 + 16));
  outlined init with copy of GlobalsProviding(a2, v17);
  outlined init with take of CommonLabelsProviding(v17, (v15 + 56));
  v11 = a3[3];
  v9 = a3[4];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v11);
  v16[3] = v11;
  v16[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10);
  outlined init with take of CommonLabelsProviding(v16, (v15 + 96));
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

uint64_t PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[88] = v2;
  v3[87] = a2;
  v3[86] = a1;
  v3[76] = v3;
  v3[77] = 0;
  v3[78] = 0;
  v3[79] = 0;
  v3[72] = 0;
  v3[73] = 0;
  v3[74] = 0;
  v3[75] = 0;
  v18 = *v2;
  v3[89] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[90] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[91] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v3[92] = v6;
  v13 = *(v6 - 8);
  v3[93] = v13;
  v14 = *(v13 + 64);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[96] = v7;
  v15 = *(v7 - 8);
  v3[97] = v15;
  v8 = *(v15 + 64) + 15;
  v3[98] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[99] = v9;
  v16 = *(v9 - 8);
  v3[100] = v16;
  v10 = *(v16 + 64) + 15;
  v3[101] = swift_task_alloc();
  v3[77] = a2;
  v3[102] = *(v18 + 80);
  v3[103] = *(v18 + 88);
  v3[78] = v2;
  v11 = v3[76];

  return MEMORY[0x2822009F8](PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0);
}

{
  v14 = *v3;
  v11 = (*v3 + 16);
  v12 = (*v3 + 608);
  v13 = (*v3 + 496);
  v5 = *(*v3 + 872);
  v14[76] = *v3;
  v14[110] = v2;
  v14[111] = a1;
  v14[112] = a2;

  if (v2)
  {
    v8 = *v12;
    v7 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v10 = v11[106];
    (*(v11[91] + 8))(v11[93], v11[90]);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v6 = *v12;
    v7 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

{
  v14 = *v3;
  v11 = (*v3 + 16);
  v12 = (*v3 + 608);
  v13 = (*v3 + 376);
  v5 = *(*v3 + 912);
  v14[76] = *v3;
  v14[115] = v2;
  v14[116] = a1;
  v14[117] = a2;

  if (v2)
  {
    v8 = *v12;
    v7 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v10 = v11[111];
    (*(v11[91] + 8))(v11[92], v11[90]);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v6 = *v12;
    v7 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  v1 = v0[101];
  v27 = v0[100];
  v28 = v0[99];
  v0[76] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v1, v2, v28);
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(0);
    *(v26 + 656) = v22;
    *(v26 + 664) = v23;
    *(v26 + 672) = v24;
    serialize(_:at:)(0, (v26 + 656));
    serialize(_:at:)(0, (v26 + 656));
    *(v26 + 680) = v31;
    v25 = swift_task_alloc();
    v25[2] = v26 + 656;
    v25[3] = v26 + 664;
    v25[4] = v26 + 672;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v30, v29, "#PaymentsContinueInAppStrategy makeContinueInAppResponse", v22, 2u);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
  }

  v20 = *(v26 + 816);
  v18 = *(v26 + 808);
  v19 = *(v26 + 792);
  v17 = *(v26 + 800);
  MEMORY[0x277D82BD8](v30);
  (*(v17 + 8))(v18, v19);
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    *(v26 + 944) = 0;
    v16 = 0;
  }

  else
  {
    v15 = *(v26 + 816);
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      *(v26 + 944) = 1;
      v16 = 1;
    }

    else
    {
      v14 = *(v26 + 816);
      type metadata accessor for INSearchForAccountsIntent();
      if (swift_dynamicCastMetatype())
      {
        *(v26 + 944) = 2;
        v16 = 2;
      }

      else
      {
        *(v26 + 944) = 1;
        v16 = 1;
      }
    }
  }

  v9 = *(v26 + 824);
  v8 = *(v26 + 816);
  v3 = *(v26 + 696);
  outlined init with copy of GlobalsProviding(*(v26 + 704) + 96, v26 + 16);
  v11 = *(v26 + 40);
  v12 = *(v26 + 48);
  __swift_project_boxed_opaque_existential_1((v26 + 16), v11);
  *(v26 + 832) = type metadata accessor for IntentResolutionRecord();
  v10 = IntentResolutionRecord.app.getter();
  *(v26 + 840) = v10;
  v13 = (*(v12 + 40) + **(v12 + 40));
  v4 = *(*(v12 + 40) + 4);
  v5 = swift_task_alloc();
  *(v26 + 848) = v5;
  *v5 = *(v26 + 608);
  v5[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v6 = *(v26 + 784);

  return v13(v6, v16, v10, v11, v12);
}

{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 608);
  v2 = *(*v1 + 848);
  *(v10 + 608) = *v1;
  *(v10 + 856) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v3 = *(v8 + 824);

    v4 = *v9;
    v5 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v60 = v0[88];
  v0[76] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  type metadata accessor for SAAceView();
  v0[79] = Array.init()();
  outlined init with copy of GlobalsProviding(v60 + 16, (v0 + 7));
  v59 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v61 = dispatch thunk of DeviceState.isPhone.getter();

  if (v61)
  {
    v57 = v58[88];

    __swift_destroy_boxed_opaque_existential_0(v58 + 7);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v58[88] + 16, (v58 + 12));
    v54 = v58[16];
    __swift_project_boxed_opaque_existential_1(v58 + 12, v58[15]);
    v56 = dispatch thunk of DeviceState.isPad.getter();
    __swift_destroy_boxed_opaque_existential_0(v58 + 12);
    v55 = v58[88];

    __swift_destroy_boxed_opaque_existential_0(v58 + 7);

    if ((v56 & 1) == 0)
    {
      outlined init with copy of GlobalsProviding(v58[88] + 16, (v58 + 17));
      v52 = v58[21];
      __swift_project_boxed_opaque_existential_1(v58 + 17, v58[20]);
      v53 = dispatch thunk of DeviceState.isPod.getter();
      __swift_destroy_boxed_opaque_existential_0(v58 + 17);
      v2 = v58[88];

      if ((v53 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }
  }

  v1 = v58[88];

LABEL_6:
  outlined init with copy of GlobalsProviding(v58[88] + 16, (v58 + 52));
  v50 = v58[56];
  __swift_project_boxed_opaque_existential_1(v58 + 52, v58[55]);
  v51 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0(v58 + 52);
  if ((v51 & 1) == 0)
  {
    v42 = v58[104];
    v44 = v58[95];
    v43 = v58[88];
    v3 = v58[87];
    outlined init with copy of GlobalsProviding(v43 + 56, (v58 + 57));
    v46 = v58[60];
    v47 = v58[61];
    __swift_project_boxed_opaque_existential_1(v58 + 57, v46);
    v49 = IntentResolutionRecord.app.getter();
    v58[108] = v49;
    outlined init with copy of GlobalsProviding(v43 + 16, (v58 + 62));
    v45 = v58[66];
    __swift_project_boxed_opaque_existential_1(v58 + 62, v58[65]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v48 = (*(v47 + 32) + **(v47 + 32));
    v4 = *(*(v47 + 32) + 4);
    v5 = swift_task_alloc();
    v6 = v46;
    v7 = v47;
    v8 = v48;
    v9 = v5;
    v10 = v49;
    v58[109] = v9;
    *v9 = v58[76];
    v9[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
    v11 = v58[95];

    return v8(v10, v11, v6, v7);
  }

LABEL_10:
  outlined init with copy of GlobalsProviding(v58[88] + 16, (v58 + 22));
  v40 = v58[26];
  __swift_project_boxed_opaque_existential_1(v58 + 22, v58[25]);
  v41 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v58 + 22);
  if (v41)
  {
    v32 = v58[104];
    v34 = v58[94];
    v33 = v58[88];
    v13 = v58[87];
    outlined init with copy of GlobalsProviding(v33 + 56, (v58 + 42));
    v36 = v58[45];
    v37 = v58[46];
    __swift_project_boxed_opaque_existential_1(v58 + 42, v36);
    v39 = IntentResolutionRecord.app.getter();
    v58[113] = v39;
    outlined init with copy of GlobalsProviding(v33 + 16, (v58 + 47));
    v35 = v58[51];
    __swift_project_boxed_opaque_existential_1(v58 + 47, v58[50]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v38 = (*(v37 + 32) + **(v37 + 32));
    v14 = *(*(v37 + 32) + 4);
    v15 = swift_task_alloc();
    v6 = v36;
    v7 = v37;
    v8 = v38;
    v16 = v15;
    v10 = v39;
    v58[114] = v16;
    *v16 = v58[76];
    v16[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
    v11 = v58[94];

    return v8(v10, v11, v6, v7);
  }

  v26 = v58[101];
  v27 = v58[98];
  v25 = v58[96];
  v28 = v58[95];
  v29 = v58[94];
  v30 = v58[91];
  v31 = v58[90];
  v20 = v58[88];
  v22 = v58[86];
  v24 = v58[97];
  outlined init with copy of GlobalsProviding(v20 + 16, (v58 + 27));
  outlined init with copy of GlobalsProviding(v20 + 16, (v58 + 32));
  v21 = v58[36];
  __swift_project_boxed_opaque_existential_1(v58 + 32, v58[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v23 = v58[79];

  v17 = type metadata accessor for NLContextUpdate();
  (*(*(v17 - 8) + 56))(v31, 1);
  v58[37] = 0;
  v58[38] = 0;
  v58[39] = 0;
  v58[40] = 0;
  v58[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v22[3] = type metadata accessor for AceOutput();
  v22[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v22);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v58 + 37);
  outlined destroy of NLContextUpdate?(v31);

  __swift_destroy_boxed_opaque_existential_0(v58 + 32);
  __swift_destroy_boxed_opaque_existential_0(v58 + 27);
  outlined destroy of [SFCardSection](v58 + 79);
  (*(v24 + 8))(v27, v25);

  v18 = *(v58[76] + 8);
  v19 = v58[76];

  return v18();
}

{
  v13 = v0[112];
  v9 = v0[111];
  v7 = v0[104];
  v10 = v0[91];
  v8 = v0[88];
  v1 = v0[87];
  v0[76] = v0;
  v0[74] = v9;
  v0[75] = v13;
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  v11 = IntentResolutionRecord.app.getter();
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v10, 1);
  outlined init with copy of GlobalsProviding(v8 + 16, (v0 + 67));
  v12 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(v11, v9, v13, v10, v0 + 67);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  outlined destroy of URL?(v10);

  v0[81] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  Array.append(_:)();

  v20 = v0[101];
  v21 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[91];
  v25 = v0[90];
  v14 = v0[88];
  v16 = v0[86];
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 32));
  v15 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v17 = v0[79];

  v3 = type metadata accessor for NLContextUpdate();
  (*(*(v3 - 8) + 56))(v25, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v16[3] = type metadata accessor for AceOutput();
  v16[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v16);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v25);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v18 + 8))(v21, v19);

  v4 = *(v0[76] + 8);
  v5 = v0[76];

  return v4();
}

{
  v13 = v0[117];
  v9 = v0[116];
  v7 = v0[104];
  v8 = v0[89];
  v6 = v0[87];
  v0[76] = v0;
  v0[72] = v9;
  v0[73] = v13;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v11 = IntentResolutionRecord.app.getter();
  v10 = IntentResolutionRecord.intent.getter();
  v1 = *(v8 + 96);
  v12 = static ConfirmationViewBuilder.makeWatchAppLaunchButton(for:buttonText:intent:)(v11, v9, v13, v10);
  MEMORY[0x277D82BD8](v10);

  v0[80] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  Array.append(_:)();

  v20 = v0[101];
  v21 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[91];
  v25 = v0[90];
  v14 = v0[88];
  v16 = v0[86];
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 32));
  v15 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v17 = v0[79];

  v2 = type metadata accessor for NLContextUpdate();
  (*(*(v2 - 8) + 56))(v25, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v16[3] = type metadata accessor for AceOutput();
  v16[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v16);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v25);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v18 + 8))(v21, v19);

  v3 = *(v0[76] + 8);
  v4 = v0[76];

  return v3();
}

{
  v1 = v0[105];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[107];
  v3 = v0[101];
  v7 = v0[98];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[91];
  v11 = v0[90];

  v4 = *(v0[76] + 8);
  v5 = v0[76];

  return v4();
}

{
  v9 = v0[108];
  v12 = v0[98];
  v10 = v0[97];
  v11 = v0[96];
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[92];
  v0[76] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);

  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v10 + 8))(v12, v11);
  v4 = v0[110];
  v5 = v0[101];
  v13 = v0[98];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[91];
  v17 = v0[90];

  v6 = *(v0[76] + 8);
  v7 = v0[76];

  return v6();
}

{
  v9 = v0[113];
  v12 = v0[98];
  v10 = v0[97];
  v11 = v0[96];
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v0[76] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v10 + 8))(v12, v11);
  v4 = v0[115];
  v5 = v0[101];
  v13 = v0[98];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[91];
  v17 = v0[90];

  v6 = *(v0[76] + 8);
  v7 = v0[76];

  return v6();
}

uint64_t PaymentsContinueInAppStrategy.deinit()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return v2;
}

uint64_t PaymentsContinueInAppStrategy.__deallocating_deinit()
{
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  PaymentsContinueInAppStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance PaymentsContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2);
}

uint64_t type metadata instantiation function for PaymentsContinueInAppStrategy(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  return swift_allocateGenericClassMetadata();
}

uint64_t type metadata completion function for PaymentsContinueInAppStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t instantiation function for generic protocol witness table for PaymentsContinueInAppStrategy<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[6] = a1;
  v9[5] = a2;
  v4 = type metadata accessor for Globals();
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9);
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  result = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v8, v7, v6);
  a3[3] = v4;
  a3[4] = &protocol witness table for Globals;
  *a3 = result;
  return result;
}

uint64_t default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = &v3 - v4;
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t PaymentsRCHFlowStrategy.init(globals:contactResolver:)(uint64_t *a1, uint64_t *a2)
{
  v31 = a2;
  v30 = a1;
  v42 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v28 = 0;
  v37 = *v2;
  v39 = type metadata accessor for Logger();
  v32 = v39;
  v33 = *(v39 - 8);
  v38 = v33;
  v34 = v33;
  v35 = *(v33 + 64);
  v3 = &v10 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  v56 = MEMORY[0x28223BE20](v30);
  v55 = v4;
  v54 = v5;
  v53 = *(v37 + 80);
  v52 = *(v37 + 88);
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v38 + 16))(v3, v6, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.debug.getter();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v7 = v28;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = 0;
    v20 = createStorage<A>(capacity:type:)(0);
    v18 = v20;
    v21 = createStorage<A>(capacity:type:)(v17);
    v49 = v19;
    v48 = v20;
    v47 = v21;
    v22 = 0;
    v23 = &v49;
    serialize(_:at:)(0, &v49);
    serialize(_:at:)(v22, v23);
    v46 = v45;
    v24 = &v10;
    MEMORY[0x28223BE20](&v10);
    v25 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v48;
    *(&v10 - 2) = &v47;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v27 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v40, v41, "#PaymentsRCHFlowStrategy init", v15, 2u);
      v13 = 0;
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v21, v13, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v15, MEMORY[0x277D84B78]);

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v34 + 8))(v36, v32);
  v11 = v51;
  outlined init with copy of GlobalsProviding(v30, v51);
  outlined init with take of CommonLabelsProviding(v11, (v29 + 16));
  v12 = v50;
  outlined init with copy of GlobalsProviding(v31, v50);
  outlined init with take of CommonLabelsProviding(v12, (v29 + 56));
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v29;
}

uint64_t PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[40] = v2;
  v3[39] = a2;
  v3[38] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[25] = 0;
  v11 = *v2;
  v3[41] = *v2;
  v4 = type metadata accessor for Logger();
  v3[42] = v4;
  v8 = *(v4 - 8);
  v3[43] = v8;
  v9 = *(v8 + 64);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[18] = a1;
  v3[19] = a2;
  v3[49] = *(v11 + 80);
  v3[20] = v2;
  v6 = v3[17];

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v87 = v0[48];
  v1 = v0[47];
  v88 = v0[43];
  v89 = v0[42];
  v0[17] = v0;
  v2 = SignpostName.makeIntentFromParse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v87);
  v3 = Logger.payments.unsafeMutableAddressor();
  v90 = *(v88 + 16);
  v90(v1, v3, v89);
  v92 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v93 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v92, v91))
  {
    v82 = static UnsafeMutablePointer.allocate(capacity:)();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v83 = createStorage<A>(capacity:type:)(0);
    v84 = createStorage<A>(capacity:type:)(0);
    *(v86 + 272) = v82;
    *(v86 + 280) = v83;
    *(v86 + 288) = v84;
    serialize(_:at:)(0, (v86 + 272));
    serialize(_:at:)(0, (v86 + 272));
    *(v86 + 296) = v93;
    v85 = swift_task_alloc();
    v85[2] = v86 + 272;
    v85[3] = v86 + 280;
    v85[4] = v86 + 288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v92, v91, "#PaymentsRCHFlowStrategy makeIntentFromParse", v82, 2u);
    destroyStorage<A>(_:count:)(v83, 0, v81);
    destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v82, MEMORY[0x277D84B78]);
  }

  v75 = *(v86 + 376);
  v4 = *(v86 + 368);
  v77 = *(v86 + 336);
  v74 = *(v86 + 344);
  MEMORY[0x277D82BD8](v92);
  v76 = *(v74 + 8);
  v76(v75, v77);
  v5 = Logger.payments.unsafeMutableAddressor();
  v90(v4, v5, v77);
  oslog = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  v80 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v78))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v71 = createStorage<A>(capacity:type:)(0);
    v72 = createStorage<A>(capacity:type:)(0);
    *(v86 + 240) = buf;
    *(v86 + 248) = v71;
    *(v86 + 256) = v72;
    serialize(_:at:)(0, (v86 + 240));
    serialize(_:at:)(0, (v86 + 240));
    *(v86 + 264) = v80;
    v73 = swift_task_alloc();
    v73[2] = v86 + 240;
    v73[3] = v86 + 248;
    v73[4] = v86 + 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v78, "#PaymentsRCHFlowStrategy Transforming Parse to SiriKitPaymentsIntent.", buf, 2u);
    destroyStorage<A>(_:count:)(v71, 0, v69);
    destroyStorage<A>(_:count:)(v72, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v66 = *(v86 + 368);
  v67 = *(v86 + 336);
  v68 = *(v86 + 312);
  MEMORY[0x277D82BD8](oslog);
  v76(v66, v67);
  MEMORY[0x277D82BE0](v68);
  if (v68)
  {
    v64 = *(v86 + 312);
    v65 = *(*(v86 + 328) + 96);
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v62 = *(v86 + 320);
  v61 = *(v86 + 304);
  outlined init with copy of GlobalsProviding(v62 + 16, v86 + 16);
  v60 = *(v86 + 40);
  v59 = *(v86 + 48);
  __swift_project_boxed_opaque_existential_1((v86 + 16), v60);
  (*(v59 + 24))(v60);
  outlined init with copy of GlobalsProviding(v62 + 56, v86 + 96);
  v63 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v64, v65, v86 + 56, v86 + 96);
  __swift_destroy_boxed_opaque_existential_0((v86 + 96));
  __swift_destroy_boxed_opaque_existential_0((v86 + 56));
  __swift_destroy_boxed_opaque_existential_0((v86 + 16));
  MEMORY[0x277D82BD8](v64);
  if (v63)
  {
    v6 = *(v86 + 392);
    v58 = swift_dynamicCastUnknownClass();
    if (v58)
    {
      v57 = v58;
    }

    else
    {
      MEMORY[0x277D82BD8](v63);
      v57 = 0;
    }

    v56 = v57;
  }

  else
  {
    v56 = 0;
  }

  if (v56)
  {
    v7 = *(v86 + 360);
    v52 = *(v86 + 336);
    *(v86 + 200) = v56;
    v8 = Logger.payments.unsafeMutableAddressor();
    v90(v7, v8, v52);
    log = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v55 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v53))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0);
      v50 = createStorage<A>(capacity:type:)(0);
      *(v86 + 208) = v48;
      *(v86 + 216) = v49;
      *(v86 + 224) = v50;
      serialize(_:at:)(0, (v86 + 208));
      serialize(_:at:)(0, (v86 + 208));
      *(v86 + 232) = v55;
      v51 = swift_task_alloc();
      v51[2] = v86 + 208;
      v51[3] = v86 + 216;
      v51[4] = v86 + 224;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, log, v53, "#PaymentsRCHFlowStrategy Returning SiriKitPaymentsIntent.", v48, 2u);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v48, MEMORY[0x277D84B78]);
    }

    v42 = *(v86 + 384);
    v43 = *(v86 + 376);
    v44 = *(v86 + 368);
    v45 = *(v86 + 360);
    v46 = *(v86 + 352);
    v41 = *(v86 + 336);
    MEMORY[0x277D82BD8](log);
    v76(v45, v41);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v42);

    v9 = v56;
    v10 = *(*(v86 + 136) + 8);
    v11 = *(v86 + 136);

    return v10(v9);
  }

  v13 = *(v86 + 352);
  v37 = *(v86 + 336);
  v14 = Logger.payments.unsafeMutableAddressor();
  v90(v13, v14, v37);
  v39 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v40 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v39, v38))
  {
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(0);
    v35 = createStorage<A>(capacity:type:)(0);
    *(v86 + 168) = v33;
    *(v86 + 176) = v34;
    *(v86 + 184) = v35;
    serialize(_:at:)(0, (v86 + 168));
    serialize(_:at:)(0, (v86 + 168));
    *(v86 + 192) = v40;
    v36 = swift_task_alloc();
    v36[2] = v86 + 168;
    v36[3] = v86 + 176;
    v36[4] = v86 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v39, v38, "#PaymentsRCHFlowStrategy could not convert to SiriKitPaymentsIntent.", v33, 2u);
    destroyStorage<A>(_:count:)(v34, 0, v32);
    destroyStorage<A>(_:count:)(v35, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v33, MEMORY[0x277D84B78]);
  }

  v30 = *(v86 + 392);
  v28 = *(v86 + 352);
  v29 = *(v86 + 336);
  MEMORY[0x277D82BD8](v39);
  v76(v28, v29);
  v31 = [swift_getObjCClassFromMetadata() typeName];
  if (v31)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v15;
    MEMORY[0x277D82BD8](v31);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  if (v27)
  {
    v18 = *(v86 + 384);
    v19 = *(v86 + 376);
    v20 = *(v86 + 368);
    v21 = *(v86 + 360);
    v22 = *(v86 + 352);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v26;
    *(v16 + 8) = v27;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 10;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v18);

    v9 = v23;
    v10 = *(*(v86 + 136) + 8);
    v17 = *(v86 + 136);

    return v10(v9);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t PaymentsRCHFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v6[1] = a1;
  v3 = v2;
  v8 = v3;
  v20 = 0;
  v19 = 0;
  v10 = *v3;
  v9 = v3;
  v16 = type metadata accessor for Parse();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = v6 - v7;
  v20 = a1;
  v19 = v8;
  v12 = v10[10];
  v18 = v12;
  v17 = v10[11];
  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v15, v12, v10[12], v11);
  return (*(v13 + 8))(v15, v16);
}

uint64_t PaymentsRCHFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v35 = a2;
  v34 = a1;
  v30 = a5;
  v46 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v31 = 0;
  v41 = *v5;
  v43 = type metadata accessor for Logger();
  v36 = v43;
  v37 = *(v43 - 8);
  v42 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  v6 = &v15 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v6;
  v59 = MEMORY[0x28223BE20](v34);
  v58 = v7;
  v57 = *(v41 + 80);
  v55 = v8;
  v56 = v9;
  v54 = v10;
  v53[1] = *(v41 + 88);
  v11 = Logger.payments.unsafeMutableAddressor();
  (*(v42 + 16))(v6, v11, v43);
  v48 = Logger.logObject.getter();
  v44 = v48;
  v47 = static os_log_type_t.debug.getter();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v49 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v48, v47))
  {
    v12 = v31;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = 0;
    v22 = createStorage<A>(capacity:type:)(0);
    v20 = v22;
    v23 = createStorage<A>(capacity:type:)(v19);
    v53[0] = v21;
    v52 = v22;
    v51 = v23;
    v24 = 0;
    v25 = v53;
    serialize(_:at:)(0, v53);
    serialize(_:at:)(v24, v25);
    v50 = v49;
    v26 = &v15;
    MEMORY[0x28223BE20](&v15);
    v27 = &v15 - 6;
    *(&v15 - 4) = v13;
    *(&v15 - 3) = &v52;
    *(&v15 - 2) = &v51;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v29 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v44, v45, "#PaymentsRCHFlowStrategy makeAppDoesNotSupportIntentResponse", v17, 2u);
      v15 = 0;
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v23, v15, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v17, MEMORY[0x277D84B78]);

      v16 = v29;
    }
  }

  else
  {

    v16 = v31;
  }

  (*(v38 + 8))(v40, v36);
  type metadata accessor for EmptyOutput();
  return static EmptyOutput.instance.getter();
}

uint64_t PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v12 = *v2;
  v3[6] = *v2;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v8 = *(v4 - 8);
  v3[8] = v8;
  v5 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = *(v12 + 80);
  v3[5] = v10;
  v3[11] = *(v12 + 88);
  v6 = v3[2];

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v35 = v0;
  v19 = v0[11];
  v18 = v0[10];
  v1 = v0[9];
  v16 = v0[8];
  v17 = v0[7];
  v20 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = *(v20 + 96);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(1);
    v30 = buf;
    v31 = v13;
    v32 = v14;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_2686B1000, v28, v29, "#PaymentsRCHFlowStrategy<%s> makeIntentExecutionBehavior", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[9];
  v8 = v15[7];
  v7 = v15[8];
  MEMORY[0x277D82BD8](v28);
  (*(v7 + 8))(v9, v8);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v15[2] + 8);
  v5 = v15[2];

  return v4(v10);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v14 = *v4;
  v5[9] = *v4;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v10 = *(v6 - 8);
  v5[11] = v10;
  v7 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[13] = *(v14 + 80);
  v5[5] = a4;
  v5[14] = *(v14 + 88);
  v5[6] = v4;
  v8 = v5[2];

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v42 = v0;
  v20 = v0[14];
  v19 = v0[13];
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v22 = v0[8];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v23 = swift_allocObject();
  v23[2] = v19;
  v23[3] = v20;
  v21 = *(v18 + 96);
  v23[4] = v21;
  MEMORY[0x277D82BE0](v22);
  v26 = swift_allocObject();
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = v21;
  v26[5] = v22;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v30 + 24) = v25;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  *(v27 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v3;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v28;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v29;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v30;

  v34[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[7] = v31;

  v34[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[9] = v32;

  v34[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[11] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(2);
    v37 = buf;
    v38 = v13;
    v39 = v14;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(2, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, v35, v36, "#PaymentsRCHFlowStrategy<%s> makeFailureConfirmingIntentResponse %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v15[12];
  v8 = v15[10];
  v9 = v15[7];
  v7 = v15[11];
  MEMORY[0x277D82BD8](v35);
  (*(v7 + 8))(v10, v8);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v4 = *(v15[2] + 8);
  v5 = v15[2];

  return v4();
}

uint64_t implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_getWitnessTable();
  return String.init<A>(describing:)();
}

uint64_t PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[32] = v2;
  v3[31] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v16 = *v2;
  v3[33] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[37] = v5;
  v13 = *(v5 - 8);
  v3[38] = v13;
  v6 = *(v13 + 64) + 15;
  v3[39] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[41] = v8;
  v14 = *(v8 - 8);
  v3[42] = v14;
  v9 = *(v14 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[28] = a2;
  v3[44] = *(v16 + 80);
  v3[45] = *(v16 + 88);
  v3[29] = v2;
  v10 = v3[27];

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v42 = v0;
  v26 = v0[45];
  v25 = v0[44];
  v1 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v27 = v0[33];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v23 + 16))(v1, v2, v24);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v26;
  v28[4] = *(v27 + 96);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v3;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v37 = buf;
    v38 = v20;
    v39 = v21;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, v35, v36, "#PaymentsRCHFlowStrategy<%s> makeFailureHandlingIntentResponse", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v22[43];
  v12 = v22[41];
  v13 = v22[40];
  v14 = v22[36];
  v15 = v22[35];
  v10 = v22[42];
  MEMORY[0x277D82BD8](v35);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  v22[46] = v4;
  v22[30] = v4;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1);
  String.toSpeakableString.getter();

  v16 = type metadata accessor for SpeakableString();
  v17 = *(*(v16 - 8) + 56);
  v17(v14);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
  String.toSpeakableString.getter();

  (v17)(v15, 0, 1, v16);
  v5 = swift_task_alloc();
  v22[47] = v5;
  *v5 = v22[27];
  v5[1] = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v6 = v22[39];
  v7 = v22[36];
  v8 = v22[35];

  return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v6, v7, 0, v8);
}

{
  v8 = *v1;
  v2 = *(*v1 + 376);
  v8[27] = *v1;
  v9 = v8 + 27;
  v8[48] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v7 = v8[36];
    outlined destroy of SpeakableString?(v8[35]);
    outlined destroy of SpeakableString?(v7);
    v3 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v14 = v0[46];
  v15 = v0[43];
  v16 = v0[40];
  v17 = v0[39];
  v12 = v0[38];
  v13 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v7 = v0[32];
  v11 = v0[31];
  v0[27] = v0;
  outlined init with copy of GlobalsProviding(v7 + 16, (v0 + 2));
  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);
  outlined init with copy of GlobalsProviding(v7 + 16, (v0 + 12));
  v9 = v0[15];
  v8 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  (*(v8 + 16))(v9);
  v10 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v20, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v11[3] = type metadata accessor for AceOutput();
  v11[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v11);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v12 + 8))(v17, v13);

  v2 = *(v0[27] + 8);
  v3 = v0[27];

  return v2();
}

{
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[39];
  v11 = v0[36];
  v1 = v0[35];
  v12 = v0[34];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v11);

  v2 = v0;
  v3 = *(v0[27] + 8);
  v4 = v0[27];
  v5 = v2[48];

  return v3();
}

uint64_t PaymentsRCHFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 288) = v2;
  *(v3 + 280) = a2;
  *(v3 + 272) = a1;
  *(v3 + 216) = v3;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 520) = 0;
  v20 = *v2;
  *(v3 + 296) = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v5 = type metadata accessor for BargeInError();
  *(v3 + 344) = v5;
  v13 = *(v5 - 8);
  *(v3 + 352) = v13;
  v6 = *(v13 + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  *(v3 + 376) = v8;
  v14 = *(v8 - 8);
  *(v3 + 384) = v14;
  v15 = *(v14 + 64);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v3 + 424) = v9;
  v16 = *(v9 - 8);
  *(v3 + 432) = v16;
  v17 = *(v16 + 64);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 224) = a2;
  *(v3 + 232) = v19;
  *(v3 + 464) = *(v20 + 80);
  *(v3 + 472) = *(v20 + 88);
  v10 = *(v3 + 216);

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeErrorResponse(error:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeErrorResponse(error:)()
{
  v119 = v0;
  v84 = v0[59];
  v83 = v0[58];
  v1 = v0[57];
  v80 = v0[54];
  v81 = v0[53];
  v85 = v0[37];
  v87 = v0[35];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v82 = *(v80 + 16);
  v82(v1, v2, v81);
  v88 = swift_allocObject();
  v88[2] = v83;
  v88[3] = v84;
  v86 = *(v85 + 96);
  v88[4] = v86;
  MEMORY[0x26D621420](v87);
  v91 = swift_allocObject();
  *(v91 + 16) = v87;
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v89 + 24) = v88;
  v90 = swift_allocObject();
  *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v90 + 24) = v89;
  v95 = swift_allocObject();
  *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v95 + 24) = v90;
  v96 = swift_allocObject();
  *(v96 + 16) = 32;
  v97 = swift_allocObject();
  *(v97 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  *(v92 + 24) = v91;
  v98 = swift_allocObject();
  *(v98 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v98 + 24) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v99 = v3;

  *v99 = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[1] = v93;

  v99[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[3] = v94;

  v99[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[5] = v95;

  v99[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[7] = v96;

  v99[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[9] = v97;

  v99[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v99[11] = v98;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v100, v101))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v77 = createStorage<A>(capacity:type:)(0);
    v78 = createStorage<A>(capacity:type:)(2);
    v114 = buf;
    v115 = v77;
    v116 = v78;
    serialize(_:at:)(2, &v114);
    serialize(_:at:)(2, &v114);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v96;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v97;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v98;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    _os_log_impl(&dword_2686B1000, v100, v101, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse for error: %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v77, 0, v75);
    destroyStorage<A>(_:count:)(v78, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v67 = *(v79 + 456);
  v68 = *(v79 + 424);
  v70 = *(v79 + 368);
  v74 = *(v79 + 360);
  v73 = *(v79 + 344);
  v72 = *(v79 + 280);
  v66 = *(v79 + 432);
  MEMORY[0x277D82BD8](v100);
  v69 = *(v66 + 8);
  v69(v67, v68);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v71 = CATWrapper.__allocating_init(options:globals:)();
  *(v79 + 480) = v71;
  *(v79 + 240) = v71;
  MEMORY[0x26D621420](v72);
  *(v79 + 248) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v79 + 352) + 8))(*(v79 + 360), *(v79 + 344));
    MEMORY[0x26D621420](*(v79 + 280));

    *(v79 + 520) = 1;
LABEL_17:
    v50 = *(v79 + 472);
    v49 = *(v79 + 464);
    v4 = *(v79 + 448);
    v48 = *(v79 + 424);
    v5 = Logger.payments.unsafeMutableAddressor();
    v82(v4, v5, v48);
    v51 = swift_allocObject();
    v51[2] = v49;
    v51[3] = v50;
    v51[4] = v86;
    oslog = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
    *(v52 + 24) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v56 + 24) = v53;
    _allocateUninitializedArray<A>(_:)();
    v57 = v6;

    *v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[1] = v54;

    v57[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v55;

    v57[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v59))
    {
      v45 = static UnsafeMutablePointer.allocate(capacity:)();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v46 = createStorage<A>(capacity:type:)(0);
      v47 = createStorage<A>(capacity:type:)(1);
      v107 = v45;
      v108 = v46;
      v109 = v47;
      serialize(_:at:)(2, &v107);
      serialize(_:at:)(1, &v107);
      v110 = partial apply for closure #1 in OSLogArguments.append(_:);
      v111 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      v110 = partial apply for closure #1 in OSLogArguments.append(_:);
      v111 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      v110 = partial apply for closure #1 in OSLogArguments.append(_:);
      v111 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      _os_log_impl(&dword_2686B1000, oslog, v59, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse vending TIMEOUT response", v45, 0xCu);
      destroyStorage<A>(_:count:)(v46, 0, v44);
      destroyStorage<A>(_:count:)(v47, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v45, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v38 = *(v79 + 448);
    v39 = *(v79 + 424);
    v40 = *(v79 + 336);
    v41 = *(v79 + 328);
    MEMORY[0x277D82BD8](oslog);
    v69(v38, v39);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TIMEOUT", 7uLL, 1);
    String.toSpeakableString.getter();

    v42 = type metadata accessor for SpeakableString();
    v43 = *(*(v42 - 8) + 56);
    v43(v40);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
    String.toSpeakableString.getter();

    (v43)(v41, 0, 1, v42);
    v7 = swift_task_alloc();
    *(v79 + 488) = v7;
    *v7 = *(v79 + 216);
    v7[1] = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
    v8 = *(v79 + 408);
    v9 = *(v79 + 336);
    v10 = *(v79 + 328);

    return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v8, v9, 0, v10);
  }

  MEMORY[0x26D621420](*(v79 + 280));
  v65 = *(v79 + 280);
  MEMORY[0x26D621420]();
  *(v79 + 256) = v65;
  type metadata accessor for CommandFailure();
  if (swift_dynamicCast())
  {
    v64 = *(v79 + 264);
  }

  else
  {
    v64 = 0;
  }

  if (v64)
  {
    v61 = CommandFailure.errorCode.getter();

    v62 = v61;
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 1;
  }

  if (v63)
  {
    v60 = 0;
  }

  else
  {
    v112 = v62;
    v113 = v63 & 1;
    v60 = v62 == 1307;
  }

  *(v79 + 520) = v60;
  if (v60)
  {
    goto LABEL_17;
  }

  v28 = *(v79 + 472);
  v27 = *(v79 + 464);
  v12 = *(v79 + 440);
  v26 = *(v79 + 424);
  v13 = Logger.payments.unsafeMutableAddressor();
  v82(v12, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = v28;
  v29[4] = v86;
  log = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v34 + 24) = v31;
  _allocateUninitializedArray<A>(_:)();
  v35 = v14;

  *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[1] = v32;

  v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[3] = v33;

  v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v37))
  {
    v23 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0);
    v25 = createStorage<A>(capacity:type:)(1);
    v102 = v23;
    v103 = v24;
    v104 = v25;
    serialize(_:at:)(2, &v102);
    serialize(_:at:)(1, &v102);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_2686B1000, log, v37, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse vending generic response", v23, 0xCu);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v16 = *(v79 + 440);
  v17 = *(v79 + 424);
  v18 = *(v79 + 320);
  v19 = *(v79 + 312);
  MEMORY[0x277D82BD8](log);
  v69(v16, v17);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  String.toSpeakableString.getter();

  v20 = type metadata accessor for SpeakableString();
  v21 = *(*(v20 - 8) + 56);
  v21(v18);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
  String.toSpeakableString.getter();

  (v21)(v19, 0, 1, v20);
  v15 = swift_task_alloc();
  *(v79 + 504) = v15;
  *v15 = *(v79 + 216);
  v15[1] = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v8 = *(v79 + 400);
  v9 = *(v79 + 320);
  v10 = *(v79 + 312);

  return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v8, v9, 0, v10);
}

{
  v8 = *v1;
  v2 = *(*v1 + 488);
  v8[27] = *v1;
  v9 = v8 + 27;
  v8[62] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  else
  {
    v7 = v8[42];
    outlined destroy of SpeakableString?(v8[41]);
    outlined destroy of SpeakableString?(v7);
    v3 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[47];
  v0[27] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v17 = v0[60];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[49];
  v16 = v0[48];
  v18 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v11 = v0[36];
  v15 = v0[34];
  (*(v16 + 16))();
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 2));
  v10 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  (*(v9 + 16))(v10);
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 12));
  v13 = v0[15];
  v12 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v13);
  (*(v12 + 16))(v13);
  v14 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v33, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = *(v16 + 8);
  v19(v26, v18);

  v19(v23, v18);

  v6 = *(v0[27] + 8);
  v7 = v0[27];

  return v6();
}

{
  v8 = *v1;
  v2 = *(*v1 + 504);
  v8[27] = *v1;
  v9 = v8 + 27;
  v8[64] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  else
  {
    v7 = v8[40];
    outlined destroy of SpeakableString?(v8[39]);
    outlined destroy of SpeakableString?(v7);
    v3 = *v9;
    v4 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[47];
  v0[27] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v17 = v0[60];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[49];
  v16 = v0[48];
  v18 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v11 = v0[36];
  v15 = v0[34];
  (*(v16 + 16))();
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 2));
  v10 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  (*(v9 + 16))(v10);
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 12));
  v13 = v0[15];
  v12 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v13);
  (*(v12 + 16))(v13);
  v14 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v33, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = *(v16 + 8);
  v19(v26, v18);

  v19(v23, v18);

  v6 = *(v0[27] + 8);
  v7 = v0[27];

  return v6();
}

{
  v8 = v0[60];
  v7 = v0[42];
  v1 = v0[41];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  v2 = v0[62];
  v3 = v0[57];
  v9 = v0[56];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];

  v4 = *(v0[27] + 8);
  v5 = v0[27];

  return v4();
}

{
  v8 = v0[60];
  v7 = v0[40];
  v1 = v0[39];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  v2 = v0[64];
  v3 = v0[57];
  v9 = v0[56];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];

  v4 = *(v0[27] + 8);
  v5 = v0[27];

  return v4();
}

uint64_t PaymentsRCHFlowStrategy.deinit()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  return v2;
}

uint64_t PaymentsRCHFlowStrategy.__deallocating_deinit()
{
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  PaymentsRCHFlowStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[10];
  v5 = a2[11];
  v6 = a2[12];
  v7 = type metadata accessor for PaymentsRCHFlowStrategy();
  return MEMORY[0x26D61EE50](a1, v7, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsRCHFlowStrategy.makeErrorResponse(error:)(a1, a2);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B498] + 4);
  v7 = swift_task_alloc();
  *(v14 + 24) = v7;
  v8 = a4[10];
  v9 = a4[11];
  v10 = a4[12];
  v11 = type metadata accessor for PaymentsRCHFlowStrategy();
  *v7 = *(v14 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B490] + 4);
  v7 = swift_task_alloc();
  *(v14 + 24) = v7;
  v8 = a4[10];
  v9 = a4[11];
  v10 = a4[12];
  v11 = type metadata accessor for PaymentsRCHFlowStrategy();
  *v7 = *(v14 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B488] + 4);
  v7 = swift_task_alloc();
  *(v14 + 24) = v7;
  v8 = a4[10];
  v9 = a4[11];
  v10 = a4[12];
  v11 = type metadata accessor for PaymentsRCHFlowStrategy();
  *v7 = *(v14 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v15 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B480] + 4);
  v8 = swift_task_alloc();
  *(v15 + 24) = v8;
  v9 = a5[10];
  v10 = a5[11];
  v11 = a5[12];
  v12 = type metadata accessor for PaymentsRCHFlowStrategy();
  *v8 = *(v15 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v12, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(**v4 + 160);
  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = v4;
  v5[40] = a4;
  v5[39] = a3;
  v5[38] = a2;
  v5[37] = a1;
  v5[31] = v5;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  v5[35] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[36] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  v5[44] = v8;
  v14 = *(v8 - 8);
  v5[45] = v14;
  v9 = *(v14 + 64) + 15;
  v5[46] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[47] = v10;
  v15 = *(v10 - 8);
  v5[48] = v15;
  v11 = *(v15 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = a4;
  v5[35] = v4;
  v12 = v5[31];

  return MEMORY[0x2822009F8](SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v43 = v0;
  v1 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v2 = v0[40];
  v0[31] = v0;
  v27 = static PaymentIntentCATResponseCode.from(_:)([v2 code]);
  v28 = v3;
  v0[50] = v3;
  v0[27] = v27;
  v0[28] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v4, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_2686B1000, v35, v36, "#SendPaymentFlowStrategy makeFailureConfirmingIntentResponse, code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v24[49];
  v16 = v24[47];
  v14 = v24[48];
  MEMORY[0x277D82BD8](v35);
  (*(v14 + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v18 = type metadata accessor for INSendPaymentIntent();
  v24[51] = v18;
  v17 = type metadata accessor for INSendPaymentIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17, v37);
  v19 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v6 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v7 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v37, v19, v6);
  v24[52] = v7;
  v24[36] = v7;
  v8 = swift_task_alloc();
  v24[53] = v8;
  *v8 = v24[31];
  v8[1] = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v9 = v24[43];
  v10 = v24[40];
  v11 = v24[39];
  v12 = v24[38];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v9, v11, v10, v12);
}

{
  v7 = *v1;
  v2 = *(*v1 + 424);
  *(v7 + 248) = *v1;
  v8 = (v7 + 248);
  *(v7 + 432) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v3 = *v8;
    v4 = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v0[31] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v20 = v40[52];
    v15 = v40[51];
    v21 = v40[50];
    outlined destroy of TemplatingResult?(v40[43]);
    v40[29] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v40[30] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v17 = v40[29];
    v16 = v40[30];

    outlined destroy of String.UTF8View((v40 + 29));
    v19 = MEMORY[0x26D620710](v17, v16);
    v18 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v19;
    *(v11 + 8) = v18;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    v12 = v40[49];
    v22 = v40[46];
    v23 = v40[43];
    v24 = v40[42];

    v5 = *(v40[31] + 8);
    v13 = v40[31];
  }

  else
  {
    v34 = v40[52];
    v35 = v40[50];
    v36 = v40[49];
    v37 = v40[46];
    v33 = v40[44];
    v38 = v40[43];
    v39 = v40[42];
    v27 = v40[41];
    v31 = v40[37];
    v32 = v40[45];
    (*(v32 + 32))();

    outlined init with copy of GlobalsProviding(v27 + 16, (v40 + 2));

    v26 = v40[5];
    v25 = v40[6];
    __swift_project_boxed_opaque_existential_1(v40 + 2, v26);
    (*(v25 + 16))(v26);

    outlined init with copy of GlobalsProviding(v27 + 16, (v40 + 12));

    v29 = v40[15];
    v28 = v40[16];
    __swift_project_boxed_opaque_existential_1(v40 + 12, v29);
    (*(v28 + 16))(v29);
    v30 = v40[21];
    __swift_project_boxed_opaque_existential_1(v40 + 17, v40[20]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v39, 1);
    v40[22] = 0;
    v40[23] = 0;
    v40[24] = 0;
    v40[25] = 0;
    v40[26] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v31[3] = type metadata accessor for AceOutput();
    v31[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v31);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v40 + 22);
    outlined destroy of NLContextUpdate?(v39);
    __swift_destroy_boxed_opaque_existential_0(v40 + 17);
    __swift_destroy_boxed_opaque_existential_0(v40 + 12);
    __swift_destroy_boxed_opaque_existential_0(v40 + 7);
    __swift_destroy_boxed_opaque_existential_0(v40 + 2);
    (*(v32 + 8))(v37, v33);

    v5 = *(v40[31] + 8);
    v6 = v40[31];
  }

  return v5();
}

{
  v1 = v0[52];
  v7 = v0[50];
  v0[31] = v0;

  v2 = v0[54];
  v3 = v0[49];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[42];

  v4 = *(v0[31] + 8);
  v5 = v0[31];

  return v4();
}

uint64_t SendPaymentFlowStrategy.init(globals:contactResolver:)(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v7[6] = a1;
  v7[5] = a2;
  outlined init with copy of GlobalsProviding(a1, v7);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v7, v6);

  v8 = v5;
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return v5;
}

uint64_t RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = v4;
  v5[40] = a4;
  v5[39] = a3;
  v5[38] = a2;
  v5[37] = a1;
  v5[31] = v5;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  v5[35] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[36] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  v5[44] = v8;
  v14 = *(v8 - 8);
  v5[45] = v14;
  v9 = *(v14 + 64) + 15;
  v5[46] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[47] = v10;
  v15 = *(v10 - 8);
  v5[48] = v15;
  v11 = *(v15 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = a4;
  v5[35] = v4;
  v12 = v5[31];

  return MEMORY[0x2822009F8](RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v43 = v0;
  v1 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v2 = v0[40];
  v0[31] = v0;
  v27 = static PaymentIntentCATResponseCode.from(_:)([v2 code]);
  v28 = v3;
  v0[50] = v3;
  v0[27] = v27;
  v0[28] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v4, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_2686B1000, v35, v36, "#RequestPaymentFlowStrategy makeFailureConfirmingIntentResponse %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v24[49];
  v16 = v24[47];
  v14 = v24[48];
  MEMORY[0x277D82BD8](v35);
  (*(v14 + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v18 = type metadata accessor for INRequestPaymentIntent();
  v24[51] = v18;
  v17 = type metadata accessor for INRequestPaymentIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17, v37);
  v19 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v6 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v7 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v37, v19, v6);
  v24[52] = v7;
  v24[36] = v7;
  v8 = swift_task_alloc();
  v24[53] = v8;
  *v8 = v24[31];
  v8[1] = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v9 = v24[43];
  v10 = v24[40];
  v11 = v24[39];
  v12 = v24[38];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v9, v11, v10, v12);
}

uint64_t SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = v4;
  v5[38] = a4;
  v5[37] = a3;
  v5[36] = a2;
  v5[35] = a1;
  v5[29] = v5;
  v5[30] = 0;
  v5[31] = 0;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  v5[42] = v8;
  v14 = *(v8 - 8);
  v5[43] = v14;
  v9 = *(v14 + 64) + 15;
  v5[44] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[45] = v10;
  v15 = *(v10 - 8);
  v5[46] = v15;
  v11 = *(v15 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[30] = a2;
  v5[31] = a3;
  v5[32] = a4;
  v5[33] = v4;
  v12 = v5[29];

  return MEMORY[0x2822009F8](SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v40 = v0;
  v1 = v0[47];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[38];
  v0[29] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v23 + 16))(v1, v2, v24);
  MEMORY[0x277D82BE0](v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[1] = v28;

  v31[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[3] = v29;

  v31[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v32, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v35 = buf;
    v36 = v20;
    v37 = v21;
    serialize(_:at:)(2, &v35);
    serialize(_:at:)(1, &v35);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_2686B1000, v32, v33, "#SearchForAccountsFlowStrategy makeFailureConfirmingIntentResponse for response %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v22[47];
  v14 = v22[45];
  v12 = v22[46];
  MEMORY[0x277D82BD8](v32);
  (*(v12 + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v16 = type metadata accessor for INSearchForAccountsIntent();
  v22[48] = v16;
  v15 = type metadata accessor for INSearchForAccountsIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v34);
  v17 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15);
  v4 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15);
  v5 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v34, v17, v4);
  v22[49] = v5;
  v22[34] = v5;
  v6 = swift_task_alloc();
  v22[50] = v6;
  *v6 = v22[29];
  v6[1] = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v7 = v22[41];
  v8 = v22[38];
  v9 = v22[37];
  v10 = v22[36];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v7, v9, v8, v10);
}

{
  v7 = *v1;
  v2 = *(*v1 + 400);
  *(v7 + 232) = *v1;
  v8 = (v7 + 232);
  *(v7 + 408) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v3 = *v8;
    v4 = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[41];
  v0[29] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v20 = v38[49];
    v15 = v38[48];
    outlined destroy of TemplatingResult?(v38[41]);
    v38[27] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v38[28] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v17 = v38[27];
    v16 = v38[28];

    outlined destroy of String.UTF8View((v38 + 27));
    v19 = MEMORY[0x26D620710](v17, v16);
    v18 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v19;
    *(v11 + 8) = v18;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    v12 = v38[47];
    v21 = v38[44];
    v22 = v38[41];
    v23 = v38[40];

    v5 = *(v38[29] + 8);
    v13 = v38[29];
  }

  else
  {
    v33 = v38[49];
    v34 = v38[47];
    v35 = v38[44];
    v32 = v38[42];
    v36 = v38[41];
    v37 = v38[40];
    v26 = v38[39];
    v30 = v38[35];
    v31 = v38[43];
    (*(v31 + 32))();

    outlined init with copy of GlobalsProviding(v26 + 16, (v38 + 2));

    v25 = v38[5];
    v24 = v38[6];
    __swift_project_boxed_opaque_existential_1(v38 + 2, v25);
    (*(v24 + 16))(v25);

    outlined init with copy of GlobalsProviding(v26 + 16, (v38 + 12));

    v28 = v38[15];
    v27 = v38[16];
    __swift_project_boxed_opaque_existential_1(v38 + 12, v28);
    (*(v27 + 16))(v28);
    v29 = v38[21];
    __swift_project_boxed_opaque_existential_1(v38 + 17, v38[20]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v37, 1);
    v38[22] = 0;
    v38[23] = 0;
    v38[24] = 0;
    v38[25] = 0;
    v38[26] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v30[3] = type metadata accessor for AceOutput();
    v30[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v30);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v38 + 22);
    outlined destroy of NLContextUpdate?(v37);
    __swift_destroy_boxed_opaque_existential_0(v38 + 17);
    __swift_destroy_boxed_opaque_existential_0(v38 + 12);
    __swift_destroy_boxed_opaque_existential_0(v38 + 7);
    __swift_destroy_boxed_opaque_existential_0(v38 + 2);
    (*(v31 + 8))(v35, v32);

    v5 = *(v38[29] + 8);
    v6 = v38[29];
  }

  return v5();
}

{
  v1 = v0[49];
  v0[29] = v0;

  v2 = v0[51];
  v3 = v0[47];
  v7 = v0[44];
  v8 = v0[41];
  v9 = v0[40];

  v4 = *(v0[29] + 8);
  v5 = v0[29];

  return v4();
}

uint64_t implicit closure #1 in SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSearchForAccountsIntentResponse();
  lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostID();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_2686F0328()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

NSJSONWritingOptions partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v3 = v0[3];
  v1 = v0[4];
  return NSJSONWritingOptions.init(rawValue:)(v0[2]);
}

uint64_t sub_2686F03E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0470()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F04B0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

uint64_t sub_2686F04F4()
{
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x277D82BD8](v0[5]);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[4];
  return implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v0[5]);
}

uint64_t sub_2686F05C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0648()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F06E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0760()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

uint64_t sub_2686F07FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F083C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F087C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F08BC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

uint64_t sub_2686F09A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F09E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0A20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0AF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0B38()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

uint64_t sub_2686F0BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0C54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0C94()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_deallocObject();
}

uint64_t sub_2686F0D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0E1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F0EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of TemplatingResult?(uint64_t a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2686F0FDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F1074()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F10B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F119C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F11DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata completion function for PaymentsRCHFlowStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for SendPaymentFlowStrategy()
{
  v1 = type metadata singleton initialization cache for SendPaymentFlowStrategy;
  if (!type metadata singleton initialization cache for SendPaymentFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SendPaymentFlowStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for RequestPaymentFlowStrategy()
{
  v1 = type metadata singleton initialization cache for RequestPaymentFlowStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for SearchForAccountsFlowStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsFlowStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject)
  {
    type metadata accessor for INSearchForAccountsIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t UsoTaskBuilder.asUsoGraph()@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v9 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v10 = partial apply for closure #1 in OSLogArguments.append(_:);
  v11 = partial apply for closure #1 in OSLogArguments.append(_:);
  v12 = partial apply for closure #1 in OSLogArguments.append(_:);
  v13 = "Fatal error";
  v14 = "SiriPaymentsIntents/UsoTaskBuilder+SiriPayments.swift";
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v19 = &v6[-v18];
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v32 = &v6[-v23];
  v39 = &v6[-v23];
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v30 = &v6[-v24];
  v38 = v1;
  v28 = type metadata accessor for UsoTaskBuilder();
  v25 = _allocateUninitializedArray<A>(_:)();
  v27 = v2;

  v3 = v25;
  *v27 = v26;
  _finalizeUninitializedArray<A>(_:)();
  v31 = v3;
  v29 = 1;
  UsoBuilderOptions.init(longhandDefinedValues:)();
  v4 = type metadata accessor for UsoBuilderOptions();
  (*(*(v4 - 8) + 56))(v30, 0, v29);
  v33 = MEMORY[0x26D61F5F0](v31, v30);
  outlined destroy of UsoBuilderOptions?(v30);

  v37 = v33;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v35 = 0;
  (*(v21 + 16))(v7, v32, v20);
  (*(v21 + 8))(v32, v20);
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v3 = type metadata accessor for UsoBuilderOptions();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2686F20A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2686F20E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t AppResolutionStateProvider.init(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v14 = a1;
  v25 = a2;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v15 = 0;
  v16 = type metadata accessor for AppResolutionStateProvider();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v20 = *(v17 + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v21 = &v7 - v19;
  v22 = v19;
  MEMORY[0x28223BE20](v3);
  v23 = &v7 - v22;
  v32 = &v7 - v22;
  v30 = v4;
  v31 = v5;
  type metadata accessor for SAIntentGroupSiriKitAppSelectionState();
  v24 = SAUIAppPunchOut.__allocating_init()();
  v29 = v24;

  if (v25)
  {
    v11 = v14;
    v12 = v25;
    v10 = v25;
    v7 = v14;
    v27 = v14;
    v28 = v25;
    type metadata accessor for SASyncAppIdentifyingInfo();
    v9 = SAUIAppPunchOut.__allocating_init()();
    v26 = v9;

    v8 = MEMORY[0x26D620690](v7, v10);

    [v9 setBundleId_];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BE0](v9);
    [v24 setRequestedApp_];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v24);
  AppResolutionStateProvider.init(appSelectionState:)();
  (*(v17 + 32))(v23, v21, v16);
  MEMORY[0x277D82BD8](v24);
  (*(v17 + 16))(v13, v23, v16);

  return (*(v17 + 8))(v23, v16);
}

unint64_t type metadata accessor for SAIntentGroupSiriKitAppSelectionState()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState;
  if (!lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASyncAppIdentifyingInfo()
{
  v2 = lazy cache variable for type metadata for SASyncAppIdentifyingInfo;
  if (!lazy cache variable for type metadata for SASyncAppIdentifyingInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASyncAppIdentifyingInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter()
{
  v7 = *(*v0 + 80);
  swift_beginAccess();
  v6 = v0[2];

  swift_endAccess();
  if (v6)
  {
    return v6;
  }

  v3 = closure #1 in PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();

  swift_beginAccess();
  v1 = *(v5 + 16);
  *(v5 + 16) = v3;

  swift_endAccess();
  return v3;
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter()
{
  type metadata accessor for INSiriAuthorizationStatus();
  _allocateUninitializedArray<A>(_:)();
  *v0 = 3;
  v0[1] = 0;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus();
  return Set.init(arrayLiteral:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(uint64_t a1)
{
  v5 = *(*v1 + 80);

  swift_beginAccess();
  v2 = v1[2];
  v1[2] = a1;

  swift_endAccess();
}

uint64_t *(*PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();
  return PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify;
}

uint64_t *PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(*a1);
  }

  v4 = *a1;

  PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(v4);
  return outlined destroy of [SFCardSection](a1);
}

uint64_t PaymentsAppResolutionFlowStrategy.appResolutionService.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.appResolutionService.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t PaymentsAppResolutionFlowStrategy.baseCATs.getter()
{
  v2 = *(v0 + 152);

  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v6 = *v5;
  v23 = a1;
  v22 = *(v6 + 80);
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = v5;
  v5[2] = 0;

  v5[3] = a1;
  outlined init with copy of GlobalsProviding(a2, v16);
  outlined init with take of CommonLabelsProviding(v16, v5 + 4);
  outlined init with copy of GlobalsProviding(a3, v15);
  outlined init with take of CommonLabelsProviding(v15, v5 + 9);
  outlined init with copy of GlobalsProviding(a4, v14);
  outlined init with take of CommonLabelsProviding(v14, v5 + 14);

  v5[19] = a5;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v13;
}

uint64_t PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1)
{
  v2[110] = v1;
  v2[109] = a1;
  v2[80] = v2;
  v2[81] = 0;
  v2[82] = 0;
  v2[83] = 0;
  v2[72] = 0;
  v2[73] = 0;
  v2[84] = 0;
  v2[85] = 0;
  v2[165] = 0;
  v2[92] = 0;
  v2[99] = 0;
  v2[100] = 0;
  v2[101] = 0;
  v2[76] = 0;
  v2[77] = 0;
  v2[106] = 0;
  v17 = *v1;
  v2[111] = *v1;
  v3 = type metadata accessor for Input();
  v2[112] = v3;
  v11 = *(v3 - 8);
  v2[113] = v11;
  v2[114] = *(v11 + 64);
  v2[115] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
  v2[116] = v4;
  v12 = *(*(v4 - 8) + 64);
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v2[119] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[120] = v6;
  v13 = *(v6 - 8);
  v2[121] = v13;
  v14 = *(v13 + 64);
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v2[133] = v7;
  v15 = *(v7 - 8);
  v2[134] = v15;
  v8 = *(v15 + 64) + 15;
  v2[135] = swift_task_alloc();
  v2[81] = a1;
  v2[82] = v16;
  v2[136] = *(v17 + 80);
  v9 = v2[80];

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 1136);
  v6 = *(*v1 + 1128);
  v7 = *(*v1 + 1120);
  *(v8 + 640) = *v1;
  *(v8 + 1144) = a1;

  v4 = *(v8 + 640);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 1304);
  v6 = *(*v1 + 1296);
  *(v7 + 640) = *v1;
  *(v7 + 1312) = a1;

  v4 = *(v7 + 640);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v116 = v0;
  v107 = v0[135];
  v106 = v0[134];
  v108 = v0[133];
  v105 = v0[110];
  v1 = v0[109];
  v0[80] = v0;
  Input.parse.getter();
  static AceService.currentAsync.getter();
  outlined init with copy of GlobalsProviding(v105 + 72, (v0 + 7));
  v109 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, (v0 + 2), (v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v106 + 8))(v107, v108);
  if (v109)
  {
    v2 = *(v104 + 1088);
    v103 = swift_dynamicCastUnknownClass();
    if (v103)
    {
      v102 = v103;
    }

    else
    {
      MEMORY[0x277D82BD8](v109);
      v102 = 0;
    }

    v101 = v102;
  }

  else
  {
    v101 = 0;
  }

  *(v104 + 1096) = v101;
  if (!v101)
  {
    v18 = *(v104 + 976);
    v47 = *(v104 + 960);
    v52 = *(v104 + 920);
    v50 = *(v104 + 912);
    v53 = *(v104 + 896);
    v49 = *(v104 + 872);
    v46 = *(v104 + 968);
    v48 = *(v104 + 904);
    v19 = Logger.payments.unsafeMutableAddressor();
    (*(v46 + 16))(v18, v19, v47);
    (*(v48 + 16))(v52, v49, v53);
    v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v54 = swift_allocObject();
    (*(v48 + 32))(v54 + v51, v52, v53);
    log = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
    *(v55 + 24) = v54;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v58 + 24) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v59 = v20;

    *v59 = partial apply for closure #1 in OSLogArguments.append(_:);
    v59[1] = v56;

    v59[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v59[3] = v57;

    v59[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v59[5] = v58;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v61))
    {
      v43 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = createStorage<A>(capacity:type:)(0);
      v45 = createStorage<A>(capacity:type:)(1);
      v110 = v43;
      v111 = v44;
      v112 = v45;
      serialize(_:at:)(2, &v110);
      serialize(_:at:)(1, &v110);
      v113 = partial apply for closure #1 in OSLogArguments.append(_:);
      v114 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v113, &v110, &v111, &v112);
      v113 = partial apply for closure #1 in OSLogArguments.append(_:);
      v114 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v113, &v110, &v111, &v112);
      v113 = partial apply for closure #1 in OSLogArguments.append(_:);
      v114 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v113, &v110, &v111, &v112);
      _os_log_impl(&dword_2686B1000, log, v61, "#PaymentsAppResolutionFlowStrategy resolveApp parse provided could not be converted to a known intent. %s", v43, 0xCu);
      destroyStorage<A>(_:count:)(v44, 0, v42);
      destroyStorage<A>(_:count:)(v45, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v43, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v40 = *(v104 + 976);
    v41 = *(v104 + 960);
    v39 = *(v104 + 968);
    MEMORY[0x277D82BD8](log);
    (*(v39 + 8))(v40, v41);
    type metadata accessor for AppResolutionAction();
    v93 = static AppResolutionAction.noAppFound()();
LABEL_36:
    v21 = *(v104 + 1080);
    v24 = *(v104 + 1056);
    v25 = *(v104 + 1048);
    v26 = *(v104 + 1040);
    v27 = *(v104 + 1032);
    v28 = *(v104 + 1024);
    v29 = *(v104 + 1016);
    v30 = *(v104 + 1008);
    v31 = *(v104 + 1000);
    v32 = *(v104 + 992);
    v33 = *(v104 + 984);
    v34 = *(v104 + 976);
    v35 = *(v104 + 952);
    v36 = *(v104 + 944);
    v37 = *(v104 + 936);
    v38 = *(v104 + 920);

    v22 = *(*(v104 + 640) + 8);
    v23 = *(v104 + 640);

    return v22(v93);
  }

  *(v104 + 664) = v101;
  MEMORY[0x277D82BE0](v101);
  key = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
  swift_beginAccess();
  v100 = objc_getAssociatedObject(v101, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v100)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v104 + 160, v104 + 128);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v104 + 128) = 0;
    *(v104 + 136) = 0;
    *(v104 + 144) = 0;
    *(v104 + 152) = 0;
  }

  *(v104 + 96) = *(v104 + 128);
  *(v104 + 112) = *(v104 + 144);
  if (*(v104 + 120))
  {
    if (swift_dynamicCast())
    {
      v98 = *(v104 + 624);
    }

    else
    {
      v98 = 0;
    }

    v97 = v98;
  }

  else
  {
    outlined destroy of FlowActivity?((v104 + 96));
    v97 = 0;
  }

  *(v104 + 1104) = v97._object;
  *(v104 + 576) = v97;
  v115 = v97;
  if (v97._object)
  {
    v95 = *(v104 + 952);
    v3 = SignpostName.resolveApp.unsafeMutableAddressor();
    static Signpost.begin(_:)(*v3, v3[1], *(v3 + 16), v95);
    *(v104 + 1152) = type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v96 = App.isFirstParty.getter();

    if (v96)
    {
      v91 = *(v104 + 952);
      type metadata accessor for AppResolutionAction();
      static AppUtil.walletApp.getter();
      v92 = static AppResolutionAction.select(app:)();

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v91);

      MEMORY[0x277D82BD8](v101);
      v93 = v92;
    }

    else
    {

      v88 = *(v104 + 880);
      *(v104 + 608) = v97;
      swift_beginAccess();
      v89 = *(v88 + 24);

      swift_endAccess();
      v90 = PaymentsAppResolver.isAppOnDevice(_:)(v97);

      if (v90)
      {

        v66 = *(v104 + 1088);
        v62 = *(v104 + 928);
        v65 = *(v104 + 880);
        v67 = *(v104 + 888);
        v69 = swift_allocObject();
        *(v104 + 1160) = v69;
        *(v104 + 672) = v69 + 16;
        *(v69 + 16) = Array.init()();
        v70 = swift_allocObject();
        *(v104 + 1168) = v70;
        *(v104 + 680) = v70 + 16;
        *(v70 + 16) = 0;
        v71 = swift_allocBox();
        v63 = v10;
        *(v104 + 1176) = v71;
        *(v104 + 1184) = v10;
        *(v104 + 1320) = v10;
        v11 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
        *(v104 + 1192) = v11;
        v64 = *(v11 - 8);
        *(v104 + 1200) = v64;
        (*(v64 + 56))(v63, 1);
        v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resolveApp(input:)", 0x12uLL, 1);
        *(v104 + 1208) = v12._object;
        v68 = swift_allocObject();
        *(v104 + 1216) = v68;

        swift_weakInit();

        MEMORY[0x277D82BE0](v101);

        v13 = swift_task_alloc();
        *(v104 + 1224) = v13;
        *(v13 + 16) = v66;
        v14 = *(v67 + 88);
        *(v104 + 1232) = v14;
        *(v13 + 24) = v14;
        *(v13 + 32) = v68;
        *(v13 + 40) = v101;
        *(v13 + 48) = v97;
        *(v13 + 64) = v69;
        *(v13 + 72) = v70;
        *(v13 + 80) = v71;
        v15 = *(MEMORY[0x277D859E0] + 4);
        v16 = swift_task_alloc();
        *(v104 + 1240) = v16;
        *v16 = *(v104 + 640);
        v16[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);
        v17 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822007B8](v72, 0, 0, v12._countAndFlagsBits, v12._object, partial apply for closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:), v13, v17);
      }

      v8 = *(v104 + 1048);
      v84 = *(v104 + 960);
      v83 = *(v104 + 968);
      v9 = Logger.payments.unsafeMutableAddressor();
      (*(v83 + 16))(v8, v9, v84);
      oslog = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v87 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v85))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v80 = createStorage<A>(capacity:type:)(0);
        v81 = createStorage<A>(capacity:type:)(0);
        *(v104 + 816) = buf;
        *(v104 + 824) = v80;
        *(v104 + 832) = v81;
        serialize(_:at:)(0, (v104 + 816));
        serialize(_:at:)(0, (v104 + 816));
        *(v104 + 840) = v87;
        v82 = swift_task_alloc();
        v82[2] = v104 + 816;
        v82[3] = v104 + 824;
        v82[4] = v104 + 832;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v85, "#PaymentsAppResolutionFlowStrategy resolveApp initial app search didn't find app, returning noAppFound", buf, 2u);
        destroyStorage<A>(_:count:)(v80, 0, v78);
        destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      v74 = *(v104 + 1048);
      v75 = *(v104 + 960);
      v76 = *(v104 + 952);
      v73 = *(v104 + 968);
      MEMORY[0x277D82BD8](oslog);
      (*(v73 + 8))(v74, v75);
      type metadata accessor for AppResolutionAction();
      v77 = static AppResolutionAction.noAppFound()();

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v76);

      MEMORY[0x277D82BD8](v101);
      v93 = v77;
    }

    goto LABEL_36;
  }

  v4 = *(v104 + 880);
  v5 = swift_allocObject();
  *(v104 + 1112) = v5;
  *(v104 + 848) = v5 + 16;
  swift_beginAccess();
  *(v104 + 1120) = *(v4 + 24);

  swift_endAccess();
  v94 = PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();
  *(v104 + 1128) = v94;
  v6 = swift_task_alloc();
  *(v104 + 1136) = v6;
  *v6 = *(v104 + 640);
  v6[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);

  return PaymentsAppResolver.listApps(siriAuthorizationRestriction:)(v94);
}

{
  v68 = v0;
  v1 = v0[143];
  v55 = v0[139];
  v52 = v0[132];
  v53 = v0[121];
  v54 = v0[120];
  v2 = v0[110];
  v0[80] = v0;
  *(v55 + 16) = v1;
  PaymentsAppResolutionFlowStrategy.finalizeAppsForDisambiguation(_:)((v55 + 16));
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v53 + 16))(v52, v3, v54);

  oslog = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v56 + 24) = v55;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v59 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v60 = v4;

  *v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[1] = v57;

  v60[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[3] = v58;

  v60[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[5] = v59;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v62))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = createStorage<A>(capacity:type:)(0);
    v50 = createStorage<A>(capacity:type:)(1);
    v63 = buf;
    v64 = v49;
    v65 = v50;
    serialize(_:at:)(2, &v63);
    serialize(_:at:)(1, &v63);
    v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v67 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v66, &v63, &v64, &v65);
    v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v67 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v66, &v63, &v64, &v65);
    v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v67 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v66, &v63, &v64, &v65);
    _os_log_impl(&dword_2686B1000, oslog, v62, "#PaymentsAppResolutionFlowStrategy resolveApp found supporting apps %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v49, 0, v47);
    destroyStorage<A>(_:count:)(v50, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v42 = v51[132];
  v43 = v51[120];
  v44 = (v51[139] + 16);
  v41 = v51[121];
  MEMORY[0x277D82BD8](oslog);
  (*(v41 + 8))(v42, v43);
  swift_beginAccess();
  v45 = *v44;

  swift_endAccess();
  type metadata accessor for App();
  v46 = MEMORY[0x26D620910](v45);

  if (v46 == 1)
  {
    v37 = v51[138];
    v35 = (v51[139] + 16);
    v38 = v51[137];
    type metadata accessor for AppResolutionAction();
    swift_beginAccess();
    v5 = *v35;
    Array.subscript.getter();
    v36 = v51[108];
    swift_endAccess();
    v39 = static AppResolutionAction.select(app:)();

    MEMORY[0x277D82BD8](v38);
    v40 = v39;
  }

  else
  {
    v32 = v51[139];
    swift_beginAccess();
    v33 = *(v32 + 16);

    swift_endAccess();
    v51[107] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    lazy protocol witness table accessor for type [App] and conformance [A]();
    v34 = Collection.isEmpty.getter();

    if (v34)
    {
      type metadata accessor for AppResolutionAction();
      v31 = static AppResolutionAction.noAppFound()();
    }

    else
    {
      v28 = (v51[139] + 16);
      type metadata accessor for AppResolutionAction();
      swift_beginAccess();
      v29 = *v28;

      swift_endAccess();
      v30 = static AppResolutionAction.disambiguate(apps:)();

      v31 = v30;
    }

    v6 = v51[139];
    v26 = v51[138];
    v27 = v51[137];

    MEMORY[0x277D82BD8](v27);
    v40 = v31;
  }

  v7 = v51[135];
  v11 = v51[132];
  v12 = v51[131];
  v13 = v51[130];
  v14 = v51[129];
  v15 = v51[128];
  v16 = v51[127];
  v17 = v51[126];
  v18 = v51[125];
  v19 = v51[124];
  v20 = v51[123];
  v21 = v51[122];
  v22 = v51[119];
  v23 = v51[118];
  v24 = v51[117];
  v25 = v51[115];

  v8 = *(v51[80] + 8);
  v9 = v51[80];

  return v8(v40);
}

{
  v12 = *v0;
  v1 = *(*v0 + 1240);
  v4 = *(*v0 + 1224);
  v10 = *(*v0 + 1216);
  v11 = *(*v0 + 1208);
  v9 = *(*v0 + 1176);
  v8 = *(*v0 + 1168);
  v7 = *(*v0 + 1160);
  v6 = *(*v0 + 1104);
  v5 = *(*v0 + 1096);
  *(v12 + 640) = *v0;

  v2 = *(v12 + 640);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v119 = v0;
  v106 = v0[150];
  v108 = v0[149];
  v105 = v0[148];
  v107 = v0[118];
  v0[80] = v0;
  swift_beginAccess();
  outlined init with copy of AppResolutionResult.AppResolutionResultError?(v105, v107);
  swift_endAccess();
  if ((*(v106 + 48))(v107, 1, v108) == 1)
  {
    outlined destroy of AppResolutionResult.AppResolutionResultError?(v104[118]);
    goto LABEL_14;
  }

  v101 = v104[149];
  v102 = v104[117];
  v100 = v104[150];
  outlined init with copy of AppResolutionResult.AppResolutionResultError?(v104[118], v102);
  v103 = (*(v100 + 88))(v102, v101);
  if (v103 == *MEMORY[0x277D553F0])
  {
    v1 = v104[149];
    v92 = v104[147];
    v93 = v104[146];
    v94 = v104[145];
    v96 = v104[138];
    v95 = v104[119];
    v91 = v104[118];
    v90 = v104[117];
    v97 = v104[137];
    (*(v104[150] + 96))();
    v104[101] = *v90;
    type metadata accessor for AppResolutionAction();
    v98 = static AppResolutionAction.appNotSupported(app:)();

    outlined destroy of AppResolutionResult.AppResolutionResultError?(v91);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v95);

    MEMORY[0x277D82BD8](v97);
    v99 = v98;
  }

  else if (v103 == *MEMORY[0x277D553F8])
  {
    v2 = v104[149];
    v75 = v104[147];
    v76 = v104[146];
    v77 = v104[145];
    v79 = v104[138];
    v78 = v104[119];
    v74 = v104[118];
    v73 = v104[117];
    v80 = v104[137];
    (*(v104[150] + 96))();
    v104[100] = *v73;
    type metadata accessor for AppResolutionAction();
    v81 = static AppResolutionAction.screenTimeEnabled(app:)();

    outlined destroy of AppResolutionResult.AppResolutionResultError?(v74);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v78);

    MEMORY[0x277D82BD8](v80);
    v99 = v81;
  }

  else
  {
    if (v103 != *MEMORY[0x277D553E8])
    {
      v63 = v104[154];
      v62 = v104[136];
      v3 = v104[130];
      v61 = v104[120];
      v60 = v104[121];
      (*(v104[150] + 8))(v104[117], v104[149]);
      v4 = Logger.payments.unsafeMutableAddressor();
      (*(v60 + 16))(v3, v4, v61);
      v64 = swift_allocObject();
      *(v64 + 16) = v62;
      *(v64 + 24) = v63;
      oslog = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v65 = swift_allocObject();
      *(v65 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v65 + 24) = v64;
      v66 = swift_allocObject();
      *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v66 + 24) = v65;
      v69 = swift_allocObject();
      *(v69 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v69 + 24) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v70 = v5;

      *v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v70[1] = v67;

      v70[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v70[3] = v68;

      v70[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v70[5] = v69;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v72))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v58 = createStorage<A>(capacity:type:)(0);
        v59 = createStorage<A>(capacity:type:)(1);
        v114 = buf;
        v115 = v58;
        v116 = v59;
        serialize(_:at:)(2, &v114);
        serialize(_:at:)(1, &v114);
        v117 = partial apply for closure #1 in OSLogArguments.append(_:);
        v118 = v67;
        closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
        v117 = partial apply for closure #1 in OSLogArguments.append(_:);
        v118 = v68;
        closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
        v117 = partial apply for closure #1 in OSLogArguments.append(_:);
        v118 = v69;
        closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
        _os_log_impl(&dword_2686B1000, oslog, v72, "#PaymentsAppResolutionFlowStrategy<%s> encountered unrecognized AppResolutionResultError case", buf, 0xCu);
        destroyStorage<A>(_:count:)(v58, 0, v56);
        destroyStorage<A>(_:count:)(v59, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v53 = v104[130];
      v54 = v104[120];
      v55 = v104[118];
      v52 = v104[121];
      MEMORY[0x277D82BD8](oslog);
      (*(v52 + 8))(v53, v54);
      outlined destroy of AppResolutionResult.AppResolutionResultError?(v55);
LABEL_14:
      v43 = v104[145];
      v6 = v104[129];
      v42 = v104[120];
      v41 = v104[121];
      v7 = Logger.payments.unsafeMutableAddressor();
      v8 = *(v41 + 16);
      v104[156] = v8;
      v104[157] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v6, v7, v42);

      v44 = swift_allocObject();
      *(v44 + 16) = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v44 + 24) = v43;

      log = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = 32;
      v47 = swift_allocObject();
      *(v47 + 16) = 8;
      v45 = swift_allocObject();
      *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v45 + 24) = v44;
      v48 = swift_allocObject();
      *(v48 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v48 + 24) = v45;
      v104[158] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v49 = v9;

      *v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v49[1] = v46;

      v49[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v49[3] = v47;

      v49[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v49[5] = v48;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v51))
      {
        v38 = static UnsafeMutablePointer.allocate(capacity:)();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v39 = createStorage<A>(capacity:type:)(0);
        v40 = createStorage<A>(capacity:type:)(1);
        v109 = v38;
        v110 = v39;
        v111 = v40;
        serialize(_:at:)(2, &v109);
        serialize(_:at:)(1, &v109);
        v112 = partial apply for closure #1 in OSLogArguments.append(_:);
        v113 = v46;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
        v112 = partial apply for closure #1 in OSLogArguments.append(_:);
        v113 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
        v112 = partial apply for closure #1 in OSLogArguments.append(_:);
        v113 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
        _os_log_impl(&dword_2686B1000, log, v51, "#PaymentsAppResolutionFlowStrategy resolved apps %s", v38, 0xCu);
        destroyStorage<A>(_:count:)(v39, 0, v37);
        destroyStorage<A>(_:count:)(v40, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v38, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v104[159] = 0;
      v33 = v104[129];
      v34 = v104[120];
      v35 = (v104[145] + 16);
      v32 = v104[121];
      MEMORY[0x277D82BD8](log);
      v10 = *(v32 + 8);
      v104[160] = v10;
      v104[161] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v33, v34);
      swift_beginAccess();
      v36 = *v35;
      v104[162] = *v35;

      swift_endAccess();
      v11 = swift_task_alloc();
      v104[163] = v11;
      *v11 = v104[80];
      v11[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      v12 = v104[110];

      return PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)(v36);
    }

    v83 = v104[147];
    v84 = v104[146];
    v85 = v104[145];
    v87 = v104[138];
    v86 = v104[119];
    v82 = v104[118];
    v88 = v104[137];
    type metadata accessor for AppResolutionAction();
    v89 = static AppResolutionAction.noAppFound()();
    outlined destroy of AppResolutionResult.AppResolutionResultError?(v82);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v86);

    MEMORY[0x277D82BD8](v88);
    v99 = v89;
  }

  v14 = v104[135];
  v17 = v104[132];
  v18 = v104[131];
  v19 = v104[130];
  v20 = v104[129];
  v21 = v104[128];
  v22 = v104[127];
  v23 = v104[126];
  v24 = v104[125];
  v25 = v104[124];
  v26 = v104[123];
  v27 = v104[122];
  v28 = v104[119];
  v29 = v104[118];
  v30 = v104[117];
  v31 = v104[115];

  v15 = *(v104[80] + 8);
  v16 = v104[80];

  return v15(v99);
}

{
  v250 = v0;
  v228 = v0[164];
  v226 = v0[145];
  v227 = v0[144];
  v0[80] = v0;
  swift_beginAccess();

  v1 = *(v226 + 16);
  *(v226 + 16) = v228;

  swift_endAccess();
  swift_beginAccess();
  swift_endAccess();
  v229 = MEMORY[0x26D620910](v228, v227);

  if (v229 <= 1)
  {
    v193 = *(v225 + 1168);
    swift_beginAccess();
    v194 = *(v193 + 16);
    swift_endAccess();
    if (v194)
    {
      v190 = *(v225 + 1160);
      swift_beginAccess();
      v191 = *(v190 + 16);

      swift_endAccess();
      *(v225 + 776) = v191;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Collection.first.getter();
      v192 = *(v225 + 784);
      if (v192)
      {
        v187 = *(v225 + 1264);
        v180 = *(v225 + 1256);
        v181 = *(v225 + 1248);
        v7 = *(v225 + 1016);
        v179 = *(v225 + 960);
        *(v225 + 792) = v192;

        v8 = Logger.payments.unsafeMutableAddressor();
        v181(v7, v8, v179);

        log = Logger.logObject.getter();
        v189 = static os_log_type_t.debug.getter();
        v183 = swift_allocObject();
        *(v183 + 16) = 32;
        v184 = swift_allocObject();
        *(v184 + 16) = 8;
        v182 = swift_allocObject();
        *(v182 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
        *(v182 + 24) = v192;
        v185 = swift_allocObject();
        *(v185 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v185 + 24) = v182;
        _allocateUninitializedArray<A>(_:)();
        v186 = v9;

        *v186 = partial apply for closure #1 in OSLogArguments.append(_:);
        v186[1] = v183;

        v186[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v186[3] = v184;

        v186[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v186[5] = v185;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v189))
        {
          v10 = *(v225 + 1272);
          v176 = static UnsafeMutablePointer.allocate(capacity:)();
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v177 = createStorage<A>(capacity:type:)(0);
          v178 = createStorage<A>(capacity:type:)(1);
          v240 = v176;
          v241 = v177;
          v242 = v178;
          serialize(_:at:)(2, &v240);
          serialize(_:at:)(1, &v240);
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v183;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v240, &v241, &v242);
          if (v10)
          {
          }

          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v184;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v240, &v241, &v242);
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v185;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v240, &v241, &v242);
          _os_log_impl(&dword_2686B1000, log, v189, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found one app, returning needsConfirmation for %s", v176, 0xCu);
          destroyStorage<A>(_:count:)(v177, 0, v175);
          destroyStorage<A>(_:count:)(v178, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v176, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v166 = *(v225 + 1288);
        v167 = *(v225 + 1280);
        v168 = *(v225 + 1176);
        v169 = *(v225 + 1168);
        v170 = *(v225 + 1160);
        v172 = *(v225 + 1104);
        v164 = *(v225 + 1016);
        v165 = *(v225 + 960);
        v171 = *(v225 + 952);
        v173 = *(v225 + 1096);
        MEMORY[0x277D82BD8](log);
        v167(v164, v165);
        type metadata accessor for AppResolutionAction();
        v174 = static AppResolutionAction.confirm(app:)();

        $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
        outlined destroy of Signpost.OpenSignpost(v171);

        MEMORY[0x277D82BD8](v173);
        v207 = v174;
        goto LABEL_47;
      }
    }

    v160 = *(v225 + 1160);
    v161 = *(v225 + 1152);
    swift_beginAccess();
    v162 = *(v160 + 16);

    swift_endAccess();
    v163 = MEMORY[0x26D620910](v162, v161);

    if (v163 == 1)
    {
      v157 = *(v225 + 1160);
      swift_beginAccess();
      v158 = *(v157 + 16);

      swift_endAccess();
      *(v225 + 720) = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Collection.first.getter();
      v159 = *(v225 + 728);
      if (v159)
      {
        v153 = *(v225 + 1088);
        *(v225 + 736) = v159;

        *(v225 + 592) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v225 + 600) = v11;
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](countAndFlagsBits);

        DefaultStringInterpolation.appendInterpolation(_:)();
        v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v13);

        v155 = *(v225 + 592);
        v154 = *(v225 + 600);

        outlined destroy of String.UTF8View(v225 + 592);
        v14._countAndFlagsBits = MEMORY[0x26D620710](v155, v154);
        v156 = App.supportsIntent(intentName:)(v14);

        if (v156)
        {
          v150 = *(v225 + 1264);
          v143 = *(v225 + 1256);
          v144 = *(v225 + 1248);
          v15 = *(v225 + 1008);
          v142 = *(v225 + 960);
          v16 = Logger.payments.unsafeMutableAddressor();
          v144(v15, v16, v142);

          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.debug.getter();
          v146 = swift_allocObject();
          *(v146 + 16) = 32;
          v147 = swift_allocObject();
          *(v147 + 16) = 8;
          v145 = swift_allocObject();
          *(v145 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v145 + 24) = v159;
          v148 = swift_allocObject();
          *(v148 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v148 + 24) = v145;
          _allocateUninitializedArray<A>(_:)();
          v149 = v17;

          *v149 = partial apply for closure #1 in OSLogArguments.append(_:);
          v149[1] = v146;

          v149[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v149[3] = v147;

          v149[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v149[5] = v148;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v151, v152))
          {
            v18 = *(v225 + 1272);
            v139 = static UnsafeMutablePointer.allocate(capacity:)();
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v140 = createStorage<A>(capacity:type:)(0);
            v141 = createStorage<A>(capacity:type:)(1);
            v235 = v139;
            v236 = v140;
            v237 = v141;
            serialize(_:at:)(2, &v235);
            serialize(_:at:)(1, &v235);
            v238 = partial apply for closure #1 in OSLogArguments.append(_:);
            v239 = v146;
            closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
            if (v18)
            {
            }

            v238 = partial apply for closure #1 in OSLogArguments.append(_:);
            v239 = v147;
            closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
            v238 = partial apply for closure #1 in OSLogArguments.append(_:);
            v239 = v148;
            closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
            _os_log_impl(&dword_2686B1000, v151, v152, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found one app, returning select for %s", v139, 0xCu);
            destroyStorage<A>(_:count:)(v140, 0, v138);
            destroyStorage<A>(_:count:)(v141, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v139, MEMORY[0x277D84B78]);

            v137 = 0;
          }

          else
          {

            v137 = *(v225 + 1272);
          }

          v135 = *(v225 + 1288);
          v136 = *(v225 + 1280);
          v133 = *(v225 + 1008);
          v134 = *(v225 + 960);
          MEMORY[0x277D82BD8](v151);
          v136(v133, v134);
          if (App.isFirstParty.getter())
          {
            v129 = *(v225 + 1264);
            v127 = *(v225 + 1256);
            v128 = *(v225 + 1248);
            v19 = *(v225 + 1000);
            v126 = *(v225 + 960);
            v20 = Logger.payments.unsafeMutableAddressor();
            v128(v19, v20, v126);
            v131 = Logger.logObject.getter();
            v130 = static os_log_type_t.debug.getter();
            v132 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v131, v130))
            {
              v122 = static UnsafeMutablePointer.allocate(capacity:)();
              v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v123 = createStorage<A>(capacity:type:)(0);
              v124 = createStorage<A>(capacity:type:)(0);
              *(v225 + 744) = v122;
              *(v225 + 752) = v123;
              *(v225 + 760) = v124;
              serialize(_:at:)(0, (v225 + 744));
              serialize(_:at:)(0, (v225 + 744));
              *(v225 + 768) = v132;
              v125 = swift_task_alloc();
              v125[2] = v225 + 744;
              v125[3] = v225 + 752;
              v125[4] = v225 + 760;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();
              if (v137)
              {
              }

              _os_log_impl(&dword_2686B1000, v131, v130, "#PaymentsAppResolutionFlowStrategy resolveApp the app found was first party, falling back to pre-defined AppUtil constant for extension values", v122, 2u);
              destroyStorage<A>(_:count:)(v123, 0, v121);
              destroyStorage<A>(_:count:)(v124, 0, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v122, MEMORY[0x277D84B78]);
            }

            else
            {
            }

            v112 = *(v225 + 1288);
            v113 = *(v225 + 1280);
            v114 = *(v225 + 1176);
            v115 = *(v225 + 1168);
            v116 = *(v225 + 1160);
            v118 = *(v225 + 1104);
            v110 = *(v225 + 1000);
            v111 = *(v225 + 960);
            v117 = *(v225 + 952);
            v119 = *(v225 + 1096);
            MEMORY[0x277D82BD8](v131);
            v113(v110, v111);
            type metadata accessor for AppResolutionAction();
            static AppUtil.walletApp.getter();
            v120 = static AppResolutionAction.select(app:)();

            $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
            outlined destroy of Signpost.OpenSignpost(v117);

            MEMORY[0x277D82BD8](v119);
            v207 = v120;
          }

          else
          {
            v103 = *(v225 + 1176);
            v104 = *(v225 + 1168);
            v105 = *(v225 + 1160);
            v107 = *(v225 + 1104);
            v106 = *(v225 + 952);
            v108 = *(v225 + 1096);
            type metadata accessor for AppResolutionAction();
            v109 = static AppResolutionAction.select(app:)();

            $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
            outlined destroy of Signpost.OpenSignpost(v106);

            MEMORY[0x277D82BD8](v108);
            v207 = v109;
          }
        }

        else
        {
          v100 = *(v225 + 1264);
          v85 = *(v225 + 1256);
          v86 = *(v225 + 1248);
          v88 = *(v225 + 1232);
          v87 = *(v225 + 1088);
          v21 = *(v225 + 992);
          v84 = *(v225 + 960);
          v22 = Logger.payments.unsafeMutableAddressor();
          v86(v21, v22, v84);
          v89 = swift_allocObject();
          *(v89 + 16) = v87;
          *(v89 + 24) = v88;

          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.debug.getter();
          v93 = swift_allocObject();
          *(v93 + 16) = 32;
          v94 = swift_allocObject();
          *(v94 + 16) = 8;
          v90 = swift_allocObject();
          *(v90 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v90 + 24) = v89;
          v91 = swift_allocObject();
          *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v91 + 24) = v90;
          v95 = swift_allocObject();
          *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v95 + 24) = v91;
          v96 = swift_allocObject();
          *(v96 + 16) = 32;
          v97 = swift_allocObject();
          *(v97 + 16) = 8;
          v92 = swift_allocObject();
          *(v92 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v92 + 24) = v159;
          v98 = swift_allocObject();
          *(v98 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v98 + 24) = v92;
          _allocateUninitializedArray<A>(_:)();
          v99 = v23;

          *v99 = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[1] = v93;

          v99[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[3] = v94;

          v99[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[5] = v95;

          v99[6] = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[7] = v96;

          v99[8] = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[9] = v97;

          v99[10] = partial apply for closure #1 in OSLogArguments.append(_:);
          v99[11] = v98;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v101, v102))
          {
            v24 = *(v225 + 1272);
            v81 = static UnsafeMutablePointer.allocate(capacity:)();
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v82 = createStorage<A>(capacity:type:)(0);
            v83 = createStorage<A>(capacity:type:)(2);
            v230 = v81;
            v231 = v82;
            v232 = v83;
            serialize(_:at:)(2, &v230);
            serialize(_:at:)(2, &v230);
            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v93;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            if (v24)
            {
            }

            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v94;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v95;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v96;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v97;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            v233 = partial apply for closure #1 in OSLogArguments.append(_:);
            v234 = v98;
            closure #1 in osLogInternal(_:log:type:)(&v233, &v230, &v231, &v232);
            _os_log_impl(&dword_2686B1000, v101, v102, "#PaymentsAppResolutionFlowStrategy resolveApp found app that doesn't support %s, returning appNotSupported for %s", v81, 0x16u);
            destroyStorage<A>(_:count:)(v82, 0, v80);
            destroyStorage<A>(_:count:)(v83, 2, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);
          }

          else
          {
          }

          v71 = *(v225 + 1288);
          v72 = *(v225 + 1280);
          v73 = *(v225 + 1176);
          v74 = *(v225 + 1168);
          v75 = *(v225 + 1160);
          v77 = *(v225 + 1104);
          v69 = *(v225 + 992);
          v70 = *(v225 + 960);
          v76 = *(v225 + 952);
          v78 = *(v225 + 1096);
          MEMORY[0x277D82BD8](v101);
          v72(v69, v70);
          type metadata accessor for AppResolutionAction();
          v79 = static AppResolutionAction.appNotSupported(app:)();

          $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
          outlined destroy of Signpost.OpenSignpost(v76);

          MEMORY[0x277D82BD8](v78);
          v207 = v79;
        }

        goto LABEL_47;
      }
    }

    v65 = *(v225 + 1264);
    v63 = *(v225 + 1256);
    v64 = *(v225 + 1248);
    v25 = *(v225 + 984);
    v62 = *(v225 + 960);
    v26 = Logger.payments.unsafeMutableAddressor();
    v64(v25, v26, v62);
    v67 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v68 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v67, v66))
    {
      v27 = *(v225 + 1272);
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(0);
      v60 = createStorage<A>(capacity:type:)(0);
      *(v225 + 688) = v58;
      *(v225 + 696) = v59;
      *(v225 + 704) = v60;
      serialize(_:at:)(0, (v225 + 688));
      serialize(_:at:)(0, (v225 + 688));
      *(v225 + 712) = v68;
      v61 = swift_task_alloc();
      v61[2] = v225 + 688;
      v61[3] = v225 + 696;
      v61[4] = v225 + 704;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v27)
      {
      }

      _os_log_impl(&dword_2686B1000, v67, v66, "#PaymentsAppResolutionFlowStrategy resolveApp resolution did not find any apps, returning noAppFound", v58, 2u);
      destroyStorage<A>(_:count:)(v59, 0, v57);
      destroyStorage<A>(_:count:)(v60, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v48 = *(v225 + 1288);
    v49 = *(v225 + 1280);
    v50 = *(v225 + 1176);
    v51 = *(v225 + 1168);
    v52 = *(v225 + 1160);
    v54 = *(v225 + 1104);
    v46 = *(v225 + 984);
    v47 = *(v225 + 960);
    v53 = *(v225 + 952);
    v55 = *(v225 + 1096);
    MEMORY[0x277D82BD8](v67);
    v49(v46, v47);
    type metadata accessor for AppResolutionAction();
    v56 = static AppResolutionAction.noAppFound()();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v53);

    MEMORY[0x277D82BD8](v55);
    v207 = v56;
  }

  else
  {
    v222 = *(v225 + 1264);
    v213 = *(v225 + 1256);
    v214 = *(v225 + 1248);
    v215 = *(v225 + 1160);
    v2 = *(v225 + 1024);
    v212 = *(v225 + 960);
    v3 = Logger.payments.unsafeMutableAddressor();
    v214(v2, v3, v212);

    v216 = swift_allocObject();
    *(v216 + 16) = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
    *(v216 + 24) = v215;

    oslog = Logger.logObject.getter();
    v224 = static os_log_type_t.debug.getter();
    v218 = swift_allocObject();
    *(v218 + 16) = 32;
    v219 = swift_allocObject();
    *(v219 + 16) = 8;
    v217 = swift_allocObject();
    *(v217 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v217 + 24) = v216;
    v220 = swift_allocObject();
    *(v220 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v220 + 24) = v217;
    _allocateUninitializedArray<A>(_:)();
    v221 = v4;

    *v221 = partial apply for closure #1 in OSLogArguments.append(_:);
    v221[1] = v218;

    v221[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v221[3] = v219;

    v221[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v221[5] = v220;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v224))
    {
      v5 = *(v225 + 1272);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v210 = createStorage<A>(capacity:type:)(0);
      v211 = createStorage<A>(capacity:type:)(1);
      v245 = buf;
      v246 = v210;
      v247 = v211;
      serialize(_:at:)(2, &v245);
      serialize(_:at:)(1, &v245);
      v248 = partial apply for closure #1 in OSLogArguments.append(_:);
      v249 = v218;
      closure #1 in osLogInternal(_:log:type:)(&v248, &v245, &v246, &v247);
      if (v5)
      {
      }

      v248 = partial apply for closure #1 in OSLogArguments.append(_:);
      v249 = v219;
      closure #1 in osLogInternal(_:log:type:)(&v248, &v245, &v246, &v247);
      v248 = partial apply for closure #1 in OSLogArguments.append(_:);
      v249 = v220;
      closure #1 in osLogInternal(_:log:type:)(&v248, &v245, &v246, &v247);
      _os_log_impl(&dword_2686B1000, oslog, v224, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found multiple apps, returning disambiguate for %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v210, 0, v208);
      destroyStorage<A>(_:count:)(v211, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v197 = *(v225 + 1288);
    v198 = *(v225 + 1280);
    v200 = *(v225 + 1176);
    v201 = *(v225 + 1168);
    v202 = *(v225 + 1160);
    v204 = *(v225 + 1104);
    v195 = *(v225 + 1024);
    v196 = *(v225 + 960);
    v203 = *(v225 + 952);
    v205 = *(v225 + 1096);
    MEMORY[0x277D82BD8](oslog);
    v198(v195, v196);
    type metadata accessor for AppResolutionAction();
    swift_beginAccess();
    v199 = *(v202 + 16);

    swift_endAccess();
    v206 = static AppResolutionAction.disambiguate(apps:)();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v203);

    MEMORY[0x277D82BD8](v205);
    v207 = v206;
  }

LABEL_47:
  v28 = *(v225 + 1080);
  v31 = *(v225 + 1056);
  v32 = *(v225 + 1048);
  v33 = *(v225 + 1040);
  v34 = *(v225 + 1032);
  v35 = *(v225 + 1024);
  v36 = *(v225 + 1016);
  v37 = *(v225 + 1008);
  v38 = *(v225 + 1000);
  v39 = *(v225 + 992);
  v40 = *(v225 + 984);
  v41 = *(v225 + 976);
  v42 = *(v225 + 952);
  v43 = *(v225 + 944);
  v44 = *(v225 + 936);
  v45 = *(v225 + 920);

  v29 = *(*(v225 + 640) + 8);
  v30 = *(v225 + 640);

  return v29(v207);
}

uint64_t implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v4 = type metadata accessor for Parse();
  v2 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v3 = &v1 - v2;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t sub_2686F9644()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)();
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  return String.init<A>(describing:)();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v48 = a8;
  v49 = 0;
  v33 = partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v65 = a9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v43 = *(v41 - 8);
  v42 = v41 - 8;
  v44 = v43;
  v45 = *(v43 + 64);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = &v24 - v46;
  v64 = MEMORY[0x28223BE20](v40);
  v50 = v9 + 16;
  v63 = v9 + 16;
  v62 = v10;
  v60 = v11;
  v61 = v12;
  v59 = v13 + 16;
  v58 = v14 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
  v57 = swift_projectBox();
  v51 = &v56;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return CheckedContinuation.resume<>()();
  }

  v32 = Strong;
  v31 = Strong;
  v55 = Strong;
  v24 = &v54;
  swift_beginAccess();
  v30 = *(v31 + 24);

  swift_endAccess();

  v15 = type metadata accessor for AppResolutionStateProvider();
  v29 = v53;
  v53[3] = v15;
  v53[4] = MEMORY[0x277D553E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  AppResolutionStateProvider.init(appBundleId:)(v36, v37, boxed_opaque_existential_1);

  v25 = v44;
  (*(v43 + 16))(v47, v40, v41);

  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = (v26 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v39;
  v19 = v26;
  v20 = v43;
  v21 = v47;
  v22 = v41;
  v28 = v17;
  *(v17 + 16) = v38;
  *(v17 + 24) = v18;
  (*(v20 + 32))(v17 + v19, v21, v22);
  *(v28 + v27) = v48;
  dispatch thunk of AppResolutionService.resolveApp(intent:appResolutionState:_:)();

  __swift_destroy_boxed_opaque_existential_0(v29);
}

void closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v155 = a1;
  v150 = a2;
  v151 = a3;
  v152 = a4;
  v153 = a5;
  v111 = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v112 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v113 = partial apply for closure #1 in OSLogArguments.append(_:);
  v114 = partial apply for closure #1 in OSLogArguments.append(_:);
  v115 = partial apply for closure #1 in OSLogArguments.append(_:);
  v116 = partial apply for implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v117 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v118 = partial apply for closure #1 in OSLogArguments.append(_:);
  v119 = partial apply for closure #1 in OSLogArguments.append(_:);
  v120 = partial apply for closure #1 in OSLogArguments.append(_:);
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v121 = 0;
  v187 = 0;
  v168 = 0;
  v164 = 0;
  v161 = 0;
  v133 = 0;
  v122 = type metadata accessor for Logger();
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v125 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v126 = &v44 - v125;
  v127 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v44 - v125);
  v128 = &v44 - v127;
  v129 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v133);
  v130 = &v44 - v129;
  v131 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v132 = &v44 - v131;
  v134 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v136 = *(v134 - 8);
  v135 = v134 - 8;
  v137 = v136;
  v138 = *(v136 + 64);
  v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v133);
  v140 = &v44 - v139;
  v141 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v142 = &v44 - v141;
  v188 = &v44 - v141;
  v143 = type metadata accessor for AppResolutionResult();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v146 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v143);
  v147 = (&v44 - v146);
  v148 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v149 = &v44 - v148;
  v187 = &v44 - v148;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, &_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  v154 = (*(*(v157 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v153);
  v158 = (&v44 - v154);
  v186 = v12;
  v185 = v13 + 16;
  v184 = v14 + 16;
  v183 = v15;
  v156 = swift_projectBox();
  v182 = v156;
  outlined init with copy of Result<AppResolutionResult, Error>(v155, v158);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v144 + 32))(v149, v158, v143);
    v187 = v149;
    (*(v144 + 16))(v147);
    v110 = (*(v144 + 88))(v147, v143);
    if (v110 == *MEMORY[0x277D55418])
    {
      (*(v144 + 96))(v147, v143);
      v102 = *v147;
      v168 = v102;

      v97 = &v167;
      v167 = v102;
      v98 = &v166;
      v99 = 33;
      v100 = 0;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      Array.append(_:)();
      swift_endAccess();
      v101 = &v165;
      swift_beginAccess();
      *(v151 + 16) = 1;
      swift_endAccess();
    }

    else if (v110 == *MEMORY[0x277D55420])
    {
      (*(v144 + 96))(v147, v143);
      v106 = *v147;
      v164 = v106;

      v104 = &v163;
      v163 = v106;
      v105 = &v162;
      swift_beginAccess();
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Array.append<A>(contentsOf:)();
      swift_endAccess();
    }

    else if (v110 == *MEMORY[0x277D55428])
    {
      (*(v144 + 96))(v147, v143);
      v109 = *v147;
      v161 = v109;

      v107 = &v160;
      v160 = v109;
      v108 = &v159;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      Array.append(_:)();
      swift_endAccess();
    }

    else
    {
      (*(v144 + 8))(v147, v143);
    }

    (*(v144 + 8))(v149, v143);
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume<>()();
    return;
  }

  v95 = *v158;
  v181 = v95;
  MEMORY[0x26D621420]();
  v96 = &v180;
  v180 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v136 + 56))(v132, 0, 1, v134);
  }

  else
  {
    (*(v136 + 56))(v132, 1, 1, v134);
  }

  if ((*(v136 + 48))(v132, 1, v134) != 1)
  {
    v29 = v126;
    v65 = v137;
    v68 = *(v136 + 32);
    v67 = v136 + 32;
    v68(v142, v132, v134);
    v64 = *(v136 + 16);
    v63 = v136 + 16;
    v64(v130, v142, v134);
    (*(v136 + 56))(v130, 0, 1, v134);
    v62 = &v174;
    swift_beginAccess();
    outlined assign with take of AppResolutionResult.AppResolutionResultError?(v130, v156);
    swift_endAccess();
    v30 = Logger.payments.unsafeMutableAddressor();
    (*(v123 + 16))(v29, v30, v122);
    v64(v140, v142, v134);
    v66 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v71 = 7;
    v72 = swift_allocObject();
    v68((v72 + v66), v140, v134);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v69 = 17;
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v70 = 32;
    v31 = swift_allocObject();
    v32 = v72;
    v73 = v31;
    *(v31 + 16) = v116;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v73;
    v77 = v33;
    *(v33 + 16) = v117;
    *(v33 + 24) = v34;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v76 = _allocateUninitializedArray<A>(_:)();
    v78 = v35;

    v36 = v74;
    v37 = v78;
    *v78 = v118;
    v37[1] = v36;

    v38 = v75;
    v39 = v78;
    v78[2] = v119;
    v39[3] = v38;

    v40 = v77;
    v41 = v78;
    v78[4] = v120;
    v41[5] = v40;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v80, v81))
    {
      v42 = v121;
      v55 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = createStorage<A>(capacity:type:)(0);
      v57 = createStorage<A>(capacity:type:)(1);
      v58 = &v173;
      v173 = v55;
      v59 = &v172;
      v172 = v56;
      v60 = &v171;
      v171 = v57;
      serialize(_:at:)(2, &v173);
      serialize(_:at:)(1, v58);
      v169 = v118;
      v170 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v169, v58, v59, v60);
      v61 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v169 = v119;
        v170 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v169, &v173, &v172, &v171);
        v53 = 0;
        v169 = v120;
        v170 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v169, &v173, &v172, &v171);
        _os_log_impl(&dword_2686B1000, v80, v81, "#PaymentsAppResolutionFlowStrategy resolveApp resolution returned an error: %s", v55, 0xCu);
        destroyStorage<A>(_:count:)(v56, 0, v54);
        destroyStorage<A>(_:count:)(v57, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v55, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v80);
    (*(v123 + 8))(v126, v122);
    (*(v136 + 8))(v142, v134);

    goto LABEL_26;
  }

  v16 = v128;
  outlined destroy of AppResolutionResult.AppResolutionResultError?(v132);
  v17 = Logger.payments.unsafeMutableAddressor();
  (*(v123 + 16))(v16, v17, v122);
  MEMORY[0x26D621420](v95);
  v84 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v95;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();
  v82 = 17;
  v87 = swift_allocObject();
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  *(v88 + 16) = 8;
  v83 = 32;
  v18 = swift_allocObject();
  v19 = v85;
  v86 = v18;
  *(v18 + 16) = v111;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v86;
  v90 = v20;
  *(v20 + 16) = v112;
  *(v20 + 24) = v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v89 = _allocateUninitializedArray<A>(_:)();
  v91 = v22;

  v23 = v87;
  v24 = v91;
  *v91 = v113;
  v24[1] = v23;

  v25 = v88;
  v26 = v91;
  v91[2] = v114;
  v26[3] = v25;

  v27 = v90;
  v28 = v91;
  v91[4] = v115;
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v93, v94))
  {
    v43 = v121;
    v46 = static UnsafeMutablePointer.allocate(capacity:)();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v47 = createStorage<A>(capacity:type:)(0);
    v48 = createStorage<A>(capacity:type:)(1);
    v49 = &v179;
    v179 = v46;
    v50 = &v178;
    v178 = v47;
    v51 = &v177;
    v177 = v48;
    serialize(_:at:)(2, &v179);
    serialize(_:at:)(1, v49);
    v175 = v113;
    v176 = v87;
    closure #1 in osLogInternal(_:log:type:)(&v175, v49, v50, v51);
    v52 = v43;
    if (v43)
    {

      __break(1u);
    }

    else
    {
      v175 = v114;
      v176 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v175, &v179, &v178, &v177);
      v44 = 0;
      v175 = v115;
      v176 = v90;
      closure #1 in osLogInternal(_:log:type:)(&v175, &v179, &v178, &v177);
      _os_log_impl(&dword_2686B1000, v93, v94, "#PaymentsAppResolutionFlowStrategy resolveApp resolution returned an unrecognized error: %s", v46, 0xCu);
      destroyStorage<A>(_:count:)(v47, 0, v45);
      destroyStorage<A>(_:count:)(v48, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v46, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v93);
  (*(v123 + 8))(v128, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume<>()();
}

uint64_t implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  type metadata accessor for AppResolutionResult.AppResolutionResultError();
  lazy protocol witness table accessor for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError();
  return Error.localizedDescription.getter();
}

uint64_t implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  outlined init with copy of [App](v3, a2);
  return swift_endAccess();
}

uint64_t implicit closure #6 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{

  type metadata accessor for App();
  lazy protocol witness table accessor for type App and conformance App();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v126 = a1;
  v111 = 0;
  v171 = 0;
  v170 = 0;
  v102 = 0;
  v125 = *v1;
  v103 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64);
  v2 = MEMORY[0x28223BE20](0);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v49 - v105;
  MEMORY[0x28223BE20](v2);
  v106 = &v49 - v105;
  v107 = type metadata accessor for Parse();
  v108 = *(v107 - 8);
  v109 = v108;
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Input();
  v112 = *(v131 - 8);
  v129 = v112;
  v127 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  v130 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Logger();
  v113 = v121;
  v114 = *(v121 - 8);
  v120 = v114;
  v115 = v114;
  v116 = *(v114 + 64);
  v6 = MEMORY[0x28223BE20](v126);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v49 - v118;
  v7 = MEMORY[0x28223BE20](v6);
  v8 = &v49 - v118;
  v119 = &v49 - v118;
  v171 = v7;
  v170 = v9;
  v124 = *(v125 + 80);
  v169[1] = v124;
  v10 = Logger.payments.unsafeMutableAddressor();
  v122 = *(v120 + 16);
  v123 = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v122(v8, v10, v121);
  v140 = 32;
  v145 = 32;
  v146 = 7;
  v11 = swift_allocObject();
  v12 = v125;
  v13 = v126;
  v14 = v129;
  v15 = v131;
  v16 = v11;
  v17 = v130;
  v136 = v16;
  *(v16 + 16) = v124;
  *(v16 + 24) = *(v12 + 88);
  (*(v14 + 16))(v17, v13, v15);
  v128 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v147 = swift_allocObject();
  (*(v129 + 32))(v147 + v128, v130, v131);
  v161 = Logger.logObject.getter();
  v132 = v161;
  v160 = static os_log_type_t.debug.getter();
  v133 = v160;
  v141 = 17;
  v151 = swift_allocObject();
  v134 = v151;
  *(v151 + 16) = v140;
  v152 = swift_allocObject();
  v135 = v152;
  v143 = 8;
  *(v152 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v136;
  v137 = v18;
  *(v18 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v137;
  v138 = v20;
  *(v20 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v138;
  v153 = v22;
  v139 = v22;
  *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v22 + 24) = v23;
  v154 = swift_allocObject();
  v142 = v154;
  *(v154 + 16) = v140;
  v155 = swift_allocObject();
  v144 = v155;
  *(v155 + 16) = v143;
  v24 = swift_allocObject();
  v25 = v147;
  v148 = v24;
  *(v24 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:);
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v148;
  v158 = v26;
  v149 = v26;
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v27;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v150 = v159;
  v156 = _allocateUninitializedArray<A>(_:)();
  v157 = v28;

  v29 = v151;
  v30 = v157;
  *v157 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v29;

  v31 = v152;
  v32 = v157;
  v157[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v31;

  v33 = v153;
  v34 = v157;
  v157[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;

  v35 = v154;
  v36 = v157;
  v157[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[7] = v35;

  v37 = v155;
  v38 = v157;
  v157[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v38[9] = v37;

  v39 = v157;
  v40 = v158;
  v157[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[11] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v161, v160))
  {
    v41 = v102;
    v95 = static UnsafeMutablePointer.allocate(capacity:)();
    v92 = v95;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(0);
    v94 = v96;
    v98 = 2;
    v97 = createStorage<A>(capacity:type:)(2);
    v166[0] = v95;
    v165 = v96;
    v164 = v97;
    v99 = v166;
    serialize(_:at:)(v98, v166);
    serialize(_:at:)(v98, v99);
    v162 = partial apply for closure #1 in OSLogArguments.append(_:);
    v163 = v134;
    closure #1 in osLogInternal(_:log:type:)(&v162, v99, &v165, &v164);
    v100 = v41;
    v101 = v41;
    if (v41)
    {
      v90 = 0;

      __break(1u);
    }

    else
    {
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v135;
      closure #1 in osLogInternal(_:log:type:)(&v162, v166, &v165, &v164);
      v88 = 0;
      v89 = 0;
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v162, v166, &v165, &v164);
      v86 = 0;
      v87 = 0;
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v162, v166, &v165, &v164);
      v84 = 0;
      v85 = 0;
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v144;
      closure #1 in osLogInternal(_:log:type:)(&v162, v166, &v165, &v164);
      v82 = 0;
      v83 = 0;
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v149;
      closure #1 in osLogInternal(_:log:type:)(&v162, v166, &v165, &v164);
      v80 = 0;
      v81 = 0;
      _os_log_impl(&dword_2686B1000, v132, v133, "#PaymentsAppResolutionFlowStrategy<%s> parseConfirmationResponse, input %s", v92, 0x16u);
      destroyStorage<A>(_:count:)(v94, 0, v93);
      destroyStorage<A>(_:count:)(v97, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v92, MEMORY[0x277D84B78]);

      v91 = v80;
    }
  }

  else
  {
    v42 = v102;

    v91 = v42;
  }

  v75 = v91;

  v76 = *(v115 + 8);
  v77 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v119, v113);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v106);
  (*(v109 + 8))(v110, v107);
  v78 = type metadata accessor for ConfirmationResponse();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v106, 1) == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of ConfirmationResponse?(v106, v104);
  v74 = (*(v79 + 88))(v104, v78);
  if (v74 == *MEMORY[0x277D5BED8])
  {
    type metadata accessor for AppConfirmationResponse();
    v71 = static AppConfirmationResponse.select()();
    outlined destroy of ConfirmationResponse?(v106);
    v72 = v71;
    v73 = v75;
    return v72;
  }

  if (v74 == *MEMORY[0x277D5BED0])
  {
LABEL_11:
    outlined destroy of ConfirmationResponse?(v106);
    type metadata accessor for AppConfirmationResponse();
    v72 = static AppConfirmationResponse.cancel()();
    v73 = v75;
    return v72;
  }

  v43 = v117;
  (*(v79 + 8))(v104, v78);
  v44 = Logger.payments.unsafeMutableAddressor();
  v122(v43, v44, v113);
  v69 = Logger.logObject.getter();
  v66 = v69;
  v68 = static os_log_type_t.debug.getter();
  v67 = v68;
  v70 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v69, v68))
  {
    v46 = v75;
    v57 = static UnsafeMutablePointer.allocate(capacity:)();
    v53 = v57;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v55 = 0;
    v58 = createStorage<A>(capacity:type:)(0);
    v56 = v58;
    v59 = createStorage<A>(capacity:type:)(v55);
    v169[0] = v57;
    v168 = v58;
    v167 = v59;
    v60 = 0;
    v61 = v169;
    serialize(_:at:)(0, v169);
    serialize(_:at:)(v60, v61);
    v166[2] = v70;
    v62 = &v49;
    MEMORY[0x28223BE20](&v49);
    v63 = &v49 - 6;
    *(&v49 - 4) = v47;
    *(&v49 - 3) = &v168;
    *(&v49 - 2) = &v167;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v65 = v46;
    if (v46)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v66, v67, "Unrecognized response from user attempting to respond to confirmation prompt", v53, 2u);
      v51 = 0;
      destroyStorage<A>(_:count:)(v56, 0, v54);
      destroyStorage<A>(_:count:)(v59, v51, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v53, MEMORY[0x277D84B78]);

      v52 = v65;
    }
  }

  else
  {

    v52 = v75;
  }

  v50 = v52;

  v76(v117, v113);
  type metadata accessor for AppConfirmationResponse();
  v49 = static AppConfirmationResponse.ignore()();
  outlined destroy of ConfirmationResponse?(v106);
  v72 = v49;
  v73 = v50;
  return v72;
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Input();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(uint64_t a1)
{
  v2 = v1;
  v359 = v1;
  v329 = a1;
  v364 = 0;
  v402 = 0;
  v401 = 0;
  v330 = 0;
  v392 = 0;
  v391 = 0;
  v403 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v360 = *v2;
  v331 = v360;
  v332 = type metadata accessor for Parse.DirectInvocation();
  v333 = *(v332 - 8);
  v334 = v333;
  v336 = *(v333 + 64);
  v335 = v336;
  v4 = MEMORY[0x28223BE20](0);
  v338 = (v336 + 15) & 0xFFFFFFFFFFFFFFF0;
  v337 = &v103 - v338;
  MEMORY[0x28223BE20](v4);
  v339 = &v103 - v338;
  v403 = &v103 - v338;
  v340 = type metadata accessor for Logger();
  v341 = *(v340 - 8);
  v342 = v341;
  v346 = *(v341 + 64);
  MEMORY[0x28223BE20](v340 - 8);
  v348 = (v346 + 15) & 0xFFFFFFFFFFFFFFF0;
  v343 = &v103 - v348;
  MEMORY[0x28223BE20](&v103 - v348);
  v344 = &v103 - v348;
  MEMORY[0x28223BE20](&v103 - v348);
  v345 = &v103 - v348;
  MEMORY[0x28223BE20](&v103 - v348);
  v347 = &v103 - v348;
  MEMORY[0x28223BE20](&v103 - v348);
  v349 = &v103 - v348;
  v350 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v364);
  v365 = &v103 - v350;
  v351 = &v103 - v350;
  v352 = type metadata accessor for Parse();
  v353 = *(v352 - 8);
  v354 = v353;
  v356 = *(v353 + 64);
  MEMORY[0x28223BE20](v352 - 8);
  v358 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
  v355 = &v103 - v358;
  MEMORY[0x28223BE20](&v103 - v358);
  v357 = &v103 - v358;
  MEMORY[0x28223BE20](&v103 - v358);
  v363 = &v103 - v358;
  v361 = &v103 - v358;
  v402 = a1;
  v401 = v359;
  v362 = *(v360 + 80);
  v400 = v362;
  Input.parse.getter();
  Parse.confirmationResponse.getter(v365);
  v366 = type metadata accessor for ConfirmationResponse();
  v367 = *(v366 - 8);
  if ((*(v367 + 48))(v365, 1) == 1)
  {
    outlined destroy of ConfirmationResponse?(v351);
    (*(v354 + 8))(v361, v352);
  }

  else
  {
    if ((*(v367 + 88))(v351, v366) == *MEMORY[0x277D5BED0])
    {
      v5 = v349;
      (*(v367 + 8))(v351, v366);
      (*(v354 + 8))(v361, v352);
      v6 = Logger.payments.unsafeMutableAddressor();
      (*(v342 + 16))(v5, v6, v340);
      v311 = 32;
      v316 = 32;
      v317 = 7;
      v7 = swift_allocObject();
      v8 = v331;
      v315 = v7;
      *(v7 + 16) = v362;
      *(v7 + 24) = *(v8 + 88);
      v328 = Logger.logObject.getter();
      v309 = v328;
      v327 = static os_log_type_t.debug.getter();
      v310 = v327;
      v312 = 17;
      v321 = swift_allocObject();
      v313 = v321;
      *(v321 + 16) = v311;
      v322 = swift_allocObject();
      v314 = v322;
      *(v322 + 16) = 8;
      v9 = swift_allocObject();
      v10 = v315;
      v318 = v9;
      *(v9 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v318;
      v319 = v11;
      *(v11 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v319;
      v325 = v13;
      v320 = v13;
      *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v13 + 24) = v14;
      v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v323 = _allocateUninitializedArray<A>(_:)();
      v324 = v15;

      v16 = v321;
      v17 = v324;
      *v324 = partial apply for closure #1 in OSLogArguments.append(_:);
      v17[1] = v16;

      v18 = v322;
      v19 = v324;
      v324[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v19[3] = v18;

      v20 = v324;
      v21 = v325;
      v324[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v20[5] = v21;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v328, v327))
      {
        v22 = v330;
        v302 = static UnsafeMutablePointer.allocate(capacity:)();
        v299 = v302;
        v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v303 = createStorage<A>(capacity:type:)(0);
        v301 = v303;
        v305 = 1;
        v304 = createStorage<A>(capacity:type:)(1);
        v372 = v302;
        v371 = v303;
        v370 = v304;
        v306 = &v372;
        serialize(_:at:)(2, &v372);
        serialize(_:at:)(v305, v306);
        v368 = partial apply for closure #1 in OSLogArguments.append(_:);
        v369 = v313;
        closure #1 in osLogInternal(_:log:type:)(&v368, v306, &v371, &v370);
        v307 = v22;
        v308 = v22;
        if (v22)
        {
          v297 = 0;

          __break(1u);
        }

        else
        {
          v368 = partial apply for closure #1 in OSLogArguments.append(_:);
          v369 = v314;
          closure #1 in osLogInternal(_:log:type:)(&v368, &v372, &v371, &v370);
          v295 = 0;
          v296 = 0;
          v368 = partial apply for closure #1 in OSLogArguments.append(_:);
          v369 = v320;
          closure #1 in osLogInternal(_:log:type:)(&v368, &v372, &v371, &v370);
          v293 = 0;
          v294 = 0;
          _os_log_impl(&dword_2686B1000, v309, v310, "#PaymentsAppResolutionFlowStrategy<%s> parseDisambiguationResponse found user rejected, returning .cancel()", v299, 0xCu);
          destroyStorage<A>(_:count:)(v301, 0, v300);
          destroyStorage<A>(_:count:)(v304, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v299, MEMORY[0x277D84B78]);

          v298 = v293;
        }
      }

      else
      {
        v23 = v330;

        v298 = v23;
      }

      v290 = v298;

      (*(v342 + 8))(v349, v340);
      type metadata accessor for AppDisambiguationResponse();
      v291 = static AppDisambiguationResponse.cancel()();
      v292 = v290;
      return v291;
    }

    (*(v367 + 8))(v351, v366);
    (*(v354 + 8))(v361, v352);
  }

  Input.parse.getter();
  v289 = (*(v354 + 88))(v357, v352);
  if (v289 == *MEMORY[0x277D5C150])
  {
    (*(v354 + 96))(v357, v352);
    v284 = *(v334 + 32);
    v285 = (v334 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v284(v339, v357, v332);
    v403 = v339;
    v286 = static PaymentsDirectInvocations.from(_:)(v339);
    v287 = v24;
    v288 = v25;
    if (v25 != 0xFF)
    {
      v281 = v286;
      v282 = v287;
      v283 = v288;
      v278 = v283;
      v279 = v282;
      v280 = v281;
      if (v283 == 1)
      {
        v276 = v280;
        v277 = v279;
        v26 = v347;
        v256 = v279;
        v255 = v280;
        v379 = v280;
        v380 = v279;
        v27 = Logger.payments.unsafeMutableAddressor();
        (*(v342 + 16))(v26, v27, v340);

        v259 = 32;
        v263 = 32;
        v264 = 7;
        v28 = swift_allocObject();
        v29 = v256;
        v265 = v28;
        *(v28 + 16) = v255;
        *(v28 + 24) = v29;
        v275 = Logger.logObject.getter();
        v257 = v275;
        v274 = static os_log_type_t.debug.getter();
        v258 = v274;
        v260 = 17;
        v268 = swift_allocObject();
        v261 = v268;
        *(v268 + 16) = v259;
        v269 = swift_allocObject();
        v262 = v269;
        *(v269 + 16) = 8;
        v30 = swift_allocObject();
        v31 = v265;
        v266 = v30;
        *(v30 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v30 + 24) = v31;
        v32 = swift_allocObject();
        v33 = v266;
        v272 = v32;
        v267 = v32;
        *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v32 + 24) = v33;
        v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v270 = _allocateUninitializedArray<A>(_:)();
        v271 = v34;

        v35 = v268;
        v36 = v271;
        *v271 = partial apply for closure #1 in OSLogArguments.append(_:);
        v36[1] = v35;

        v37 = v269;
        v38 = v271;
        v271[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v38[3] = v37;

        v39 = v271;
        v40 = v272;
        v271[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v39[5] = v40;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v275, v274))
        {
          v42 = v330;
          v248 = static UnsafeMutablePointer.allocate(capacity:)();
          v245 = v248;
          v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v249 = createStorage<A>(capacity:type:)(0);
          v247 = v249;
          v251 = 1;
          v250 = createStorage<A>(capacity:type:)(1);
          v377 = v248;
          v376 = v249;
          v375 = v250;
          v252 = &v377;
          serialize(_:at:)(2, &v377);
          serialize(_:at:)(v251, v252);
          v373 = partial apply for closure #1 in OSLogArguments.append(_:);
          v374 = v261;
          closure #1 in osLogInternal(_:log:type:)(&v373, v252, &v376, &v375);
          v253 = v42;
          v254 = v42;
          if (v42)
          {
            v243 = 0;

            __break(1u);
          }

          else
          {
            v373 = partial apply for closure #1 in OSLogArguments.append(_:);
            v374 = v262;
            closure #1 in osLogInternal(_:log:type:)(&v373, &v377, &v376, &v375);
            v241 = 0;
            v242 = 0;
            v373 = partial apply for closure #1 in OSLogArguments.append(_:);
            v374 = v267;
            closure #1 in osLogInternal(_:log:type:)(&v373, &v377, &v376, &v375);
            v239 = 0;
            v240 = 0;
            _os_log_impl(&dword_2686B1000, v257, v258, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() selecting app identifier from direct invocation %s", v245, 0xCu);
            destroyStorage<A>(_:count:)(v247, 0, v246);
            destroyStorage<A>(_:count:)(v250, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v245, MEMORY[0x277D84B78]);

            v244 = v239;
          }
        }

        else
        {
          v43 = v330;

          v244 = v43;
        }

        v235 = v244;

        (*(v342 + 8))(v347, v340);
        v236 = 0;
        type metadata accessor for App();

        v237 = App.__allocating_init(appIdentifier:)();
        v378 = v237;
        v238 = type metadata accessor for AppDisambiguationResponse();
        if (App.isFirstParty.getter())
        {
          v234 = static AppUtil.walletApp.getter();
        }

        else
        {

          v234 = v237;
        }

        v232 = v234;
        v233 = static AppDisambiguationResponse.select(app:)();

        (*(v334 + 8))(v339, v332);
        v291 = v233;
        v292 = v235;
        return v291;
      }

      outlined consume of PaymentsDirectInvocations(v280, v279, v278);
    }

    v44 = v345;
    v45 = Logger.payments.unsafeMutableAddressor();
    (*(v342 + 16))(v44, v45, v340);
    v46 = *(v334 + 16);
    v211 = v334 + 16;
    v46(v337, v339, v332);
    v212 = (*(v211 + 64) + 16) & ~*(v211 + 64);
    v221 = swift_allocObject();
    v284((v221 + v212), v337, v332);
    v231 = Logger.logObject.getter();
    v213 = v231;
    v230 = static os_log_type_t.error.getter();
    v214 = v230;
    v215 = 17;
    v220 = 7;
    v224 = swift_allocObject();
    v216 = v224;
    v217 = 32;
    *(v224 + 16) = 32;
    v47 = swift_allocObject();
    v48 = v217;
    v225 = v47;
    v218 = v47;
    *(v47 + 16) = 8;
    v219 = v48;
    v49 = swift_allocObject();
    v50 = v221;
    v222 = v49;
    *(v49 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:);
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v222;
    v228 = v51;
    v223 = v51;
    *(v51 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v51 + 24) = v52;
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v226 = _allocateUninitializedArray<A>(_:)();
    v227 = v53;

    v54 = v224;
    v55 = v227;
    *v227 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[1] = v54;

    v56 = v225;
    v57 = v227;
    v227[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v56;

    v58 = v227;
    v59 = v228;
    v227[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v58[5] = v59;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v231, v230))
    {
      v60 = v330;
      v204 = static UnsafeMutablePointer.allocate(capacity:)();
      v201 = v204;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v205 = createStorage<A>(capacity:type:)(0);
      v203 = v205;
      v207 = 1;
      v206 = createStorage<A>(capacity:type:)(1);
      v385 = v204;
      v384 = v205;
      v383 = v206;
      v208 = &v385;
      serialize(_:at:)(2, &v385);
      serialize(_:at:)(v207, v208);
      v381 = partial apply for closure #1 in OSLogArguments.append(_:);
      v382 = v216;
      closure #1 in osLogInternal(_:log:type:)(&v381, v208, &v384, &v383);
      v209 = v60;
      v210 = v60;
      if (v60)
      {
        v199 = 0;

        __break(1u);
      }

      else
      {
        v381 = partial apply for closure #1 in OSLogArguments.append(_:);
        v382 = v218;
        closure #1 in osLogInternal(_:log:type:)(&v381, &v385, &v384, &v383);
        v197 = 0;
        v198 = 0;
        v381 = partial apply for closure #1 in OSLogArguments.append(_:);
        v382 = v223;
        closure #1 in osLogInternal(_:log:type:)(&v381, &v385, &v384, &v383);
        v195 = 0;
        v196 = 0;
        _os_log_impl(&dword_2686B1000, v213, v214, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() couldn't get button press from Direct invocation %s", v201, 0xCu);
        destroyStorage<A>(_:count:)(v203, 0, v202);
        destroyStorage<A>(_:count:)(v206, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v201, MEMORY[0x277D84B78]);

        v200 = v195;
      }
    }

    else
    {
      v61 = v330;

      v200 = v61;
    }

    v194 = v200;

    (*(v342 + 8))(v345, v340);
    v190 = 0;
    v187 = type metadata accessor for AppDisambiguationResponse();
    v188 = Parse.DirectInvocation.identifier.getter();
    v189 = v62;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v191 = 0;
    v63 = swift_allocError();
    v64 = v189;
    v65 = v190;
    v66 = v191;
    v192 = v63;
    *v67 = v188;
    *(v67 + 8) = v64;
    *(v67 + 16) = v65;
    *(v67 + 24) = v65;
    *(v67 + 32) = v65;
    *(v67 + 40) = v65;
    *(v67 + 48) = v66;
    v193 = static AppDisambiguationResponse.error(_:)();

    (*(v334 + 8))(v339, v332);
    v291 = v193;
    v292 = v194;
  }

  else if (v289 == *MEMORY[0x277D5C160])
  {
    (*(v354 + 96))(v357, v352);
    Input.parse.getter();
    v68 = Parse.toAppId()();
    object = v68.value._object;
    v185 = v68;
    (*(v354 + 8))(v355, v352);
    if (object)
    {
      v184 = v185;
      v69 = v344;
      v164 = v185;
      v392 = v185;
      v70 = Logger.payments.unsafeMutableAddressor();
      (*(v342 + 16))(v69, v70, v340);

      v167 = 32;
      v171 = 32;
      v172 = 7;
      v71 = swift_allocObject();
      v72 = v164.value._object;
      v173 = v71;
      *(v71 + 16) = v164.value._countAndFlagsBits;
      *(v71 + 24) = v72;
      v183 = Logger.logObject.getter();
      v165 = v183;
      v182 = static os_log_type_t.debug.getter();
      v166 = v182;
      v168 = 17;
      v176 = swift_allocObject();
      v169 = v176;
      *(v176 + 16) = v167;
      v177 = swift_allocObject();
      v170 = v177;
      *(v177 + 16) = 8;
      v73 = swift_allocObject();
      v74 = v173;
      v174 = v73;
      *(v73 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v174;
      v180 = v75;
      v175 = v75;
      *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v75 + 24) = v76;
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v178 = _allocateUninitializedArray<A>(_:)();
      v179 = v77;

      v78 = v176;
      v79 = v179;
      *v179 = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[1] = v78;

      v80 = v177;
      v81 = v179;
      v179[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v81[3] = v80;

      v82 = v179;
      v83 = v180;
      v179[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v82[5] = v83;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v183, v182))
      {
        v84 = v330;
        v157 = static UnsafeMutablePointer.allocate(capacity:)();
        v154 = v157;
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v158 = createStorage<A>(capacity:type:)(0);
        v156 = v158;
        v160 = 1;
        v159 = createStorage<A>(capacity:type:)(1);
        v390 = v157;
        v389 = v158;
        v388 = v159;
        v161 = &v390;
        serialize(_:at:)(2, &v390);
        serialize(_:at:)(v160, v161);
        v386 = partial apply for closure #1 in OSLogArguments.append(_:);
        v387 = v169;
        closure #1 in osLogInternal(_:log:type:)(&v386, v161, &v389, &v388);
        v162 = v84;
        v163 = v84;
        if (v84)
        {
          v152 = 0;

          __break(1u);
        }

        else
        {
          v386 = partial apply for closure #1 in OSLogArguments.append(_:);
          v387 = v170;
          closure #1 in osLogInternal(_:log:type:)(&v386, &v390, &v389, &v388);
          v150 = 0;
          v151 = 0;
          v386 = partial apply for closure #1 in OSLogArguments.append(_:);
          v387 = v175;
          closure #1 in osLogInternal(_:log:type:)(&v386, &v390, &v389, &v388);
          v148 = 0;
          v149 = 0;
          _os_log_impl(&dword_2686B1000, v165, v166, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() selecting app identifier from parse %s", v154, 0xCu);
          destroyStorage<A>(_:count:)(v156, 0, v155);
          destroyStorage<A>(_:count:)(v159, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v154, MEMORY[0x277D84B78]);

          v153 = v148;
        }
      }

      else
      {
        v85 = v330;

        v153 = v85;
      }

      v144 = v153;

      (*(v342 + 8))(v344, v340);
      v145 = 0;
      type metadata accessor for App();

      v146 = App.__allocating_init(appIdentifier:)();
      v391 = v146;
      v147 = type metadata accessor for AppDisambiguationResponse();
      if (App.isFirstParty.getter())
      {
        v143 = static AppUtil.walletApp.getter();
      }

      else
      {

        v143 = v146;
      }

      v140 = v143;
      v142 = static AppDisambiguationResponse.select(app:)();

      v141 = type metadata accessor for USOParse();
      (*(*(v141 - 8) + 8))(v357);
      v291 = v142;
      v292 = v144;
    }

    else
    {
      v86 = v343;
      v87 = Logger.payments.unsafeMutableAddressor();
      (*(v342 + 16))(v86, v87, v340);
      v138 = Logger.logObject.getter();
      v135 = v138;
      v137 = static os_log_type_t.error.getter();
      v136 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v139 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v138, v137))
      {
        v88 = v330;
        v126 = static UnsafeMutablePointer.allocate(capacity:)();
        v122 = v126;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v124 = 0;
        v127 = createStorage<A>(capacity:type:)(0);
        v125 = v127;
        v128 = createStorage<A>(capacity:type:)(v124);
        v396 = v126;
        v395 = v127;
        v394 = v128;
        v129 = 0;
        v130 = &v396;
        serialize(_:at:)(0, &v396);
        serialize(_:at:)(v129, v130);
        v393 = v139;
        v131 = &v103;
        MEMORY[0x28223BE20](&v103);
        v132 = &v103 - 6;
        *(&v103 - 4) = v89;
        *(&v103 - 3) = &v395;
        v101 = &v394;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v134 = v88;
        if (v88)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v135, v136, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() couldn't find associated app ID", v122, 2u);
          v120 = 0;
          destroyStorage<A>(_:count:)(v125, 0, v123);
          destroyStorage<A>(_:count:)(v128, v120, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v122, MEMORY[0x277D84B78]);

          v121 = v134;
        }
      }

      else
      {

        v121 = v330;
      }

      v119 = v121;

      (*(v342 + 8))(v343, v340);
      v116 = 0;
      type metadata accessor for AppDisambiguationResponse();
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      v90 = swift_allocError();
      v91 = v116;
      v115 = v90;
      *v92 = 10;
      *(v92 + 8) = v91;
      *(v92 + 16) = v91;
      *(v92 + 24) = v91;
      *(v92 + 32) = v91;
      *(v92 + 40) = v91;
      *(v92 + 48) = 17;
      v118 = static AppDisambiguationResponse.error(_:)();

      v117 = type metadata accessor for USOParse();
      (*(*(v117 - 8) + 8))(v357);
      v291 = v118;
      v292 = v119;
    }
  }

  else
  {
    v104 = 86;
    v107 = 1;
    v398 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v399 = v93;
    v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() unexpected parse type ", v104, v107);
    v105 = v94._object;
    v109 = &v398;
    MEMORY[0x26D620F90](v94._countAndFlagsBits);

    Input.parse.getter();
    v397[0] = String.init<A>(describing:)();
    v397[1] = v95;
    v106 = v397;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v106);
    v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v107);
    v108 = v96._object;
    MEMORY[0x26D620F90](v96._countAndFlagsBits);

    v111 = v398;
    v110 = v399;

    outlined destroy of String.UTF8View(v109);
    v97 = MEMORY[0x26D620710](v111, v110);
    v112 = v98;
    v113 = static Logger.logForCrash(_:)(v97, v98);
    v114 = v99;

    v102 = 0;
    v101 = 216;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return v291;
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)(uint64_t a1, uint64_t a2)
{
  v3[28] = v2;
  v3[27] = a2;
  v3[26] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v18 = *v2;
  v3[29] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v3[31] = v5;
  v12 = *(v5 - 8);
  v3[32] = v12;
  v6 = *(v12 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = type metadata accessor for NLContextUpdate();
  v3[34] = v7;
  v13 = *(v7 - 8);
  v3[35] = v13;
  v8 = *(v13 + 64) + 15;
  v3[36] = swift_task_alloc();
  v9 = type metadata accessor for TemplatingResult();
  v3[37] = v9;
  v14 = *(v9 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[23] = a2;
  v3[24] = v17;
  v3[42] = *(v18 + 80);
  v10 = v3[22];

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)()
{
  v1 = v0[28];
  v0[22] = v0;
  v0[43] = *(v1 + 152);

  v2 = swift_task_alloc();
  v5[44] = v2;
  *v2 = v5[22];
  v2[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v3 = v5[41];

  return PaymentsBaseCATs.buttonCancel()(v3);
}

{
  v8 = *v1;
  v2 = *(*v1 + 352);
  v8[22] = *v1;
  v9 = v8 + 22;
  v8[45] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {
    v3 = v8[43];

    v4 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = v0[28];
  v0[22] = v0;
  v0[46] = *(v1 + 152);

  v2 = swift_task_alloc();
  v5[47] = v2;
  *v2 = v5[22];
  v2[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v3 = v5[40];

  return PaymentsBaseCATs.buttonYes()(v3);
}

{
  v8 = *v1;
  v2 = *(*v1 + 376);
  v8[22] = *v1;
  v9 = v8 + 22;
  v8[48] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {
    v3 = v8[46];

    v4 = *v9;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = v0[28];
  v2 = v0[27];
  v0[22] = v0;
  v0[49] = *(v1 + 152);

  v7 = App.sirikitApp.getter();
  v0[50] = v7;
  v3 = swift_task_alloc();
  v6[51] = v3;
  *v3 = v6[22];
  v3[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v4 = v6[39];

  return PaymentsBaseCATs.confirmApp(app:)(v4, v7);
}

{
  v9 = *v1;
  v2 = *(*v1 + 408);
  v9[22] = *v1;
  v10 = v9 + 22;
  v9[52] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {
    v3 = v9[50];
    v8 = v9[49];

    v4 = *v10;
    v5 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v8 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v26 = v0[36];
  v17 = v0[35];
  v18 = v0[34];
  v27 = v0[33];
  v11 = v0[32];
  v12 = v0[31];
  v28 = v0[30];
  v7 = v0[29];
  v13 = v0[28];
  v10 = v0[27];
  v16 = v0[26];
  v0[22] = v0;
  v19 = static AppResolutionResponse.makeConfirmationView(confirmDialog:cancelDialog:)();
  v0[25] = v19;
  outlined init with copy of GlobalsProviding(v13 + 112, (v0 + 2));
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v9 = *(v7 + 88);
  v1 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appConfirmationContextUpdate(app:locale:intentType:isRequestAccount:)(v10, v27, v8, v9, v1 & 1, v26);
  (*(v11 + 8))(v27, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of GlobalsProviding(v13 + 112, (v0 + 7));
  outlined init with copy of GlobalsProviding(v13 + 112, (v0 + 12));
  v14 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  MEMORY[0x277D82BE0](v19);
  *v15 = v19;
  _finalizeUninitializedArray<A>(_:)();
  (*(v17 + 16))(v28, v26, v18);
  (*(v17 + 56))(v28, 0, 1, v18);
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v16[3] = type metadata accessor for AceOutput();
  v16[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v16);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 17);
  outlined destroy of NLContextUpdate?(v28);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v17 + 8))(v26, v18);
  MEMORY[0x277D82BD8](v19);
  v22 = *(v20 + 8);
  v22(v25, v21);
  v22(v24, v21);
  v22(v23, v21);

  v3 = *(v0[22] + 8);
  v4 = v0[22];

  return v3();
}

{
  v1 = v0[43];
  v0[22] = v0;

  v2 = v0[45];
  v3 = v0[41];
  v7 = v0[40];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[30];

  v4 = *(v0[22] + 8);
  v5 = v0[22];

  return v4();
}

{
  v1 = v0[46];
  v8 = v0[41];
  v7 = v0[38];
  v9 = v0[37];
  v0[22] = v0;

  (*(v7 + 8))(v8, v9);
  v2 = v0[48];
  v3 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[30];

  v4 = *(v0[22] + 8);
  v5 = v0[22];

  return v4();
}

{
  v1 = v0[50];
  v7 = v0[49];
  v10 = v0[41];
  v9 = v0[40];
  v8 = v0[38];
  v11 = v0[37];
  v0[22] = v0;

  v12 = *(v8 + 8);
  v12(v9, v11);
  v12(v10, v11);
  v2 = v0[52];
  v3 = v0[41];
  v13 = v0[40];
  v14 = v0[39];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[30];

  v4 = *(v0[22] + 8);
  v5 = v0[22];

  return v4();
}