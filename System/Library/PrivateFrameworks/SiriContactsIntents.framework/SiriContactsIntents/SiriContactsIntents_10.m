void Parse.cancelOrContactIntent.getter()
{
  OUTLINED_FUNCTION_15();
  v36 = type metadata accessor for ContactNLv3Intent();
  v2 = OUTLINED_FUNCTION_10_1(v36);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v5 = type metadata accessor for NLIntent();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_6();
  v15 = type metadata accessor for Parse();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_56_6();
  v24(v23, v0, v15);
  v25 = (*(v18 + 88))(v23, v15);
  if (v25 == *MEMORY[0x277D5C128])
  {
    (*(v18 + 96))(v23, v15);
    v26 = OUTLINED_FUNCTION_63_4(v8);
    v27(v26, v23, v5);
    (*(v8 + 16))(v13, v1, v5);
    ContactNLv3Intent.init(intent:)(v13, v0);
    if (ContactNLv3Intent.isContactDomain.getter())
    {
      if (one-time initialization token for contactConfirmation != -1)
      {
        OUTLINED_FUNCTION_10_20();
      }

      OUTLINED_FUNCTION_5_40();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v28, v29);
      IntentNodeTraversable.value<A>(forNode:)();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v30);
      (*(v8 + 8))(v1, v5);
    }

    else
    {
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v35);
      (*(v8 + 8))(v1, v5);
    }
  }

  else
  {
    v31 = v25;
    v32 = *MEMORY[0x277D5C150];
    v33 = *MEMORY[0x277D5C160];
    (*(v18 + 8))(v23, v15);
    if (v31 == v32 || v31 == v33)
    {
      Parse.isCancel.getter();
      Parse.isContactIntent.getter();
    }
  }

  OUTLINED_FUNCTION_14();
}

uint64_t Parse.isUSODisambiguationTask.getter()
{
  v1 = type metadata accessor for USOParse();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v7 = type metadata accessor for Parse();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  (*(v10 + 16))(v14 - v13, v0, v7);
  v16 = *(v10 + 88);
  v17 = OUTLINED_FUNCTION_61_1();
  if (v18(v17) == *MEMORY[0x277D5C160])
  {
    v19 = *(v10 + 96);
    v20 = OUTLINED_FUNCTION_61_1();
    v21(v20);
    (*(v4 + 32))(v0, v15, v1);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      v22 = 1;
    }

    else
    {
      v22 = USOParse.isContactDisambiguation.getter();
    }

    (*(v4 + 8))(v0, v1);
  }

  else
  {
    v23 = *(v10 + 8);
    v24 = OUTLINED_FUNCTION_61_1();
    v25(v24);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (*(a3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_26_3();
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    outlined init with copy of Any(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void Parse.isCancel.getter()
{
  OUTLINED_FUNCTION_15();
  v82 = v0;
  v81 = type metadata accessor for ContactNLv3Intent();
  v3 = OUTLINED_FUNCTION_10_1(v81);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for NLIntent();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_6();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  v80 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v22 = OUTLINED_FUNCTION_1_0(v80);
  v77 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v76 = v27 - v26;
  OUTLINED_FUNCTION_13_8();
  v28 = type metadata accessor for USOParse();
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v78 = v30;
  v79 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v33 = type metadata accessor for Parse();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  v41 = v40 - v39;
  (*(v36 + 16))(v40 - v39, v82, v33);
  v42 = *(v36 + 88);
  v43 = OUTLINED_FUNCTION_70_4();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D5C128])
  {
    v46 = *(v36 + 96);
    v47 = OUTLINED_FUNCTION_70_4();
    v48(v47);
    v49 = OUTLINED_FUNCTION_63_4(v12);
    v50(v49, v41, v9);
    OUTLINED_FUNCTION_56_6();
    v51(v2, v1, v9);
    ContactNLv3Intent.init(intent:)(v2, v8);
    if (one-time initialization token for contactConfirmation != -1)
    {
      OUTLINED_FUNCTION_10_20();
    }

    OUTLINED_FUNCTION_5_40();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v52, v53);
    IntentNodeTraversable.value<A>(forNode:)();
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v8, v54);
    (*(v12 + 8))(v1, v9);
  }

  else if (v45 == *MEMORY[0x277D5C160])
  {
    v55 = *(v36 + 96);
    v56 = OUTLINED_FUNCTION_70_4();
    v57(v56);
    v58 = v78;
    v59 = *(v78 + 32);
    v60 = OUTLINED_FUNCTION_19_11();
    v61(v60);
    USOParse.preferredUserDialogAct.getter(v21);
    v62 = v80;
    OUTLINED_FUNCTION_57(v21, 1, v80);
    if (v63)
    {
      v64 = *(v58 + 8);
      v65 = OUTLINED_FUNCTION_19_11();
      v66(v65);
      outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v71 = v76;
      v70 = v77;
      (*(v77 + 32))(v76, v21, v62);
      v72 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
      if ((v72 & 1) == 0)
      {
        Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
      }

      (*(v70 + 8))(v71, v62);
      v73 = *(v58 + 8);
      v74 = OUTLINED_FUNCTION_19_11();
      v75(v74);
    }
  }

  else
  {
    v67 = *(v36 + 8);
    v68 = OUTLINED_FUNCTION_70_4();
    v69(v68);
  }

  OUTLINED_FUNCTION_14();
}

void Parse.getSiriKitIntentType()()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v123 = type metadata accessor for ContactsError();
  v2 = OUTLINED_FUNCTION_10_1(v123);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v122 = v6 - v5;
  OUTLINED_FUNCTION_13_8();
  v7 = type metadata accessor for ContactNLv3Intent();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v13 = (v12 - v11);
  v14 = type metadata accessor for NLIntent();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_16();
  v131 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v130 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  v25 = &v121 - v24;
  v128 = type metadata accessor for USOParse();
  v26 = OUTLINED_FUNCTION_1_0(v128);
  v126 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_16();
  v124 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_4();
  v127 = v32;
  OUTLINED_FUNCTION_13_8();
  v33 = type metadata accessor for Parse();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_16();
  v129 = v39;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  v42 = (&v121 - v41);
  v43 = v36[2];
  v125 = v1;
  v43(&v121 - v41, v1, v33);
  v44 = v36[11];
  v45 = OUTLINED_FUNCTION_47_0();
  v47 = v46(v45);
  if (v47 == *MEMORY[0x277D5C128])
  {
    v48 = v36[12];
    v49 = OUTLINED_FUNCTION_47_0();
    v50(v49);
    (*(v17 + 32))(v25, v42, v14);
    v51 = v25;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v129 = v13;
    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v52, static Logger.siriContacts);
    v128 = *(v17 + 16);
    v128(v130, v25, v14);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_33_12(v54))
    {
      OUTLINED_FUNCTION_5_5();
      v55 = swift_slowAlloc();
      v125 = v55;
      OUTLINED_FUNCTION_8_3();
      v126 = swift_slowAlloc();
      v132 = v126;
      *v55 = 136315138;
      OUTLINED_FUNCTION_24_14();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v56, v57);
      dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v51;
      v58 = OUTLINED_FUNCTION_49_8();
      v42(v58);
      v59 = OUTLINED_FUNCTION_60_0();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v61);
      v51 = v127;

      v63 = v125;
      *(v125 + 1) = v62;
      _os_log_impl(&dword_26686A000, v53, v54, "#Parse.getSiriKitIntentType Getting SiriKit Intent Type for NLv3IntentOnly: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v77 = OUTLINED_FUNCTION_49_8();
      v42(v77);
    }

    v78 = v131;
    v128(v131, v51, v14);
    v79 = v129;
    v80 = ContactNLv3Intent.init(intent:)(v78, v129);
    ContactNLv3Intent.getSiriKitIntentType()(v80);
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v79, v81);
    (v42)(v51, v14);
  }

  else if (v47 == *MEMORY[0x277D5C150])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v64, static Logger.siriContacts);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_64_3();
      _os_log_impl(v67, v68, v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v73);
    }

    v74 = v36[1];
    v75 = OUTLINED_FUNCTION_47_0();
    v76(v75);
  }

  else if (v47 == *MEMORY[0x277D5C160])
  {
    v82 = v36[12];
    v83 = OUTLINED_FUNCTION_47_0();
    v84(v83);
    v85 = v126;
    v86 = v128;
    (v126[4])(v127, v42, v128);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v87, static Logger.siriContacts);
    v88 = v85[2];
    v89 = v124;
    v90 = OUTLINED_FUNCTION_40_8();
    v91(v90);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_33_12(v93))
    {
      OUTLINED_FUNCTION_5_5();
      v94 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v95 = swift_slowAlloc();
      v132 = v95;
      *v94 = 136315138;
      USOParse.debugDescription.getter();
      v96 = OUTLINED_FUNCTION_59_8();
      v97 = v85[1];
      v97(v96, v86);
      v98 = OUTLINED_FUNCTION_54_6();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v100);
      OUTLINED_FUNCTION_59_8();

      *(v94 + 4) = v89;
      OUTLINED_FUNCTION_74_3(&dword_26686A000, v101, v102, "#Parse.getSiriKitIntentType Getting SiriKit Intent Type for USO Parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      v103 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v103);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v97 = v85[1];
      v97(v89, v86);
    }

    USOParse.getSiriKitIntentType()();
    v119 = OUTLINED_FUNCTION_36_12();
    (v97)(v119);
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.siriContacts);
    v105 = v129;
    v43(v129, v125, v33);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      OUTLINED_FUNCTION_5_5();
      v108 = v105;
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v131 = swift_slowAlloc();
      v132 = v131;
      *v109 = 136315138;
      v110 = v122;
      v43(v122, v108, v33);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v111, v112);
      OUTLINED_FUNCTION_73();
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_25_12();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v110, v113);
      v114 = v36[1];
      OUTLINED_FUNCTION_67_4();
      v114(v129, v33);
      v115 = OUTLINED_FUNCTION_60_0();
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, v117);

      *(v109 + 4) = v118;
      _os_log_impl(&dword_26686A000, v106, v107, "%s", v109, 0xCu);
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v114 = v36[1];
      OUTLINED_FUNCTION_67_4();
      v114(v105, v33);
    }

    v120 = OUTLINED_FUNCTION_47_0();
    (v114)(v120);
  }

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_14();
}

uint64_t specialized RRReferenceResolverProtocol.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v129 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v134 = &v128 - v9;
  MEMORY[0x28223BE20](v8);
  v132 = &v128 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v130 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v133 = &v128 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v128 - v18;
  MEMORY[0x28223BE20](v17);
  v136 = &v128 - v19;
  v142 = type metadata accessor for RRCandidate();
  v137 = *(v142 - 8);
  v20 = *(v137 + 64);
  v21 = MEMORY[0x28223BE20](v142);
  v135 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v138 = &v128 - v23;
  v24 = type metadata accessor for RRResult();
  v143 = *(v24 - 8);
  v144 = v24;
  v25 = *(v143 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v141 = (&v128 - v29);
  MEMORY[0x28223BE20](v28);
  v31 = &v128 - v30;
  v32 = type metadata accessor for RRQuery();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = (&v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = (&v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v43 = &v128 - v42;
  v147[1] = v145;
  v139 = type metadata accessor for RREntity();
  v140 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v139);
  *v36 = a1;
  (*(v33 + 104))(v36, *MEMORY[0x277D5FEA8], v32);
  type metadata accessor for ReferenceResolutionClient();

  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v33 + 8))(v36, v32);
  v145 = v43;
  outlined init with copy of Any?(v43, v41, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v41;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriContacts);
    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v146 = v44;
      v147[0] = v50;
      *v49 = 136315138;
      v51 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v52 = String.init<A>(describing:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v147);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_26686A000, v47, v48, "#ReferenceResolution Received a failure: %s -> nil", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x26D5E3300](v50, -1, -1);
      MEMORY[0x26D5E3300](v49, -1, -1);
    }

    else
    {
    }

    return outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  v55 = v143;
  v56 = v144;
  (*(v143 + 32))(v31, v41, v144);
  v57 = *(v55 + 16);
  v58 = v141;
  v57(v141, v31, v56);
  v59 = (*(v55 + 88))(v58, v56);
  v60 = v31;
  if (v59 == *MEMORY[0x277D5FEC0])
  {
    (*(v55 + 96))(v58, v56);
    v61 = v137;
    v62 = v138;
    v63 = v142;
    (*(v137 + 32))(v138, v58, v142);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v134 = v60;
    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.siriContacts);
    v65 = v135;
    (*(v61 + 16))(v135, v62, v63);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v65;
      v70 = v61;
      v71 = swift_slowAlloc();
      v147[0] = v71;
      *v68 = 136315138;
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08]);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = *(v70 + 8);
      v75(v69, v142);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v147);
      v63 = v142;

      *(v68 + 4) = v76;
      _os_log_impl(&dword_26686A000, v66, v67, "#ReferenceResolution Found a candidate %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x26D5E3300](v71, -1, -1);
      v77 = v68;
      v62 = v138;
      MEMORY[0x26D5E3300](v77, -1, -1);
    }

    else
    {

      v75 = *(v61 + 8);
      v75(v65, v63);
    }

    v93 = v136;
    RRCandidate.entity.getter();
    v75(v62, v63);
    (*(v143 + 8))(v134, v144);
    outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v88 = v140;
    outlined destroy of Result<TemplatingResult, Error>(v140, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v139);
    v94 = v93;
    return outlined init with take of RREntity?(v94, v88);
  }

  if (v59 == *MEMORY[0x277D5FED0])
  {
    (*(v55 + 96))(v58, v56);
    v79 = *v58;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.siriContacts);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26686A000, v81, v82, "#ReferenceResolution Found ambiguous entities -> returning the first one", v83, 2u);
      MEMORY[0x26D5E3300](v83, -1, -1);
    }

    v84 = v134;
    specialized Collection.first.getter(v79, v134);

    v85 = v142;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v142);
    v87 = v133;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      (*(v55 + 8))(v31, v56);
      outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v88 = v140;
      outlined destroy of Result<TemplatingResult, Error>(v140, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      v89 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v90 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v91 = v84;
LABEL_20:
      outlined destroy of Result<TemplatingResult, Error>(v91, v89, v90);
      v92 = 1;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v87, v92, 1, v139);
      v94 = v87;
      return outlined init with take of RREntity?(v94, v88);
    }

    goto LABEL_38;
  }

  if (v59 == *MEMORY[0x277D5FEC8])
  {
    (*(v55 + 96))(v58, v56);
    v95 = *v58;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static Logger.siriContacts);

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      *(v99 + 4) = *(v95 + 16);

      _os_log_impl(&dword_26686A000, v97, v98, "#ReferenceResolution Found %ld candidates. Using the first one", v99, 0xCu);
      MEMORY[0x26D5E3300](v99, -1, -1);
    }

    else
    {
    }

    v85 = v142;
    v87 = v131;
    v84 = v132;
    specialized Collection.first.getter(v95, v132);

    if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
    {
      goto LABEL_19;
    }

LABEL_38:
    RRCandidate.entity.getter();
    (*(v55 + 8))(v31, v56);
    outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v88 = v140;
    outlined destroy of Result<TemplatingResult, Error>(v140, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    (*(v137 + 8))(v84, v85);
    goto LABEL_39;
  }

  if (v59 == *MEMORY[0x277D5FED8])
  {
    (*(v55 + 96))(v58, v56);
    v100 = *v58;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    __swift_project_value_buffer(v101, static Logger.siriContacts);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v129;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_26686A000, v102, v103, "#ReferenceResolution Found ambiguous entities -> returning the first one", v106, 2u);
      MEMORY[0x26D5E3300](v106, -1, -1);
    }

    v107 = v142;
    v87 = v130;
    if (!*(v100 + 16))
    {

      (*(v55 + 8))(v60, v56);
      outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v89 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
      v90 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
      v88 = v140;
      v91 = v140;
      goto LABEL_20;
    }

    v108 = *(v100 + 32);

    specialized Collection.first.getter(v108, v105);

    if (__swift_getEnumTagSinglePayload(v105, 1, v107) == 1)
    {
      (*(v55 + 8))(v60, v56);
      outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v88 = v140;
      outlined destroy of Result<TemplatingResult, Error>(v140, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      v89 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v90 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v91 = v105;
      goto LABEL_20;
    }

    RRCandidate.entity.getter();
    (*(v55 + 8))(v60, v56);
    outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v88 = v140;
    outlined destroy of Result<TemplatingResult, Error>(v140, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    (*(v137 + 8))(v105, v107);
LABEL_39:
    v92 = 0;
    goto LABEL_40;
  }

  if (v59 == *MEMORY[0x277D5FEE0])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, static Logger.siriContacts);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_26686A000, v110, v111, "#ReferenceResolution No matches found", v112, 2u);
      MEMORY[0x26D5E3300](v112, -1, -1);
    }

    (*(v55 + 8))(v31, v56);
    return outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for Logger();
  __swift_project_value_buffer(v113, static Logger.siriContacts);
  v114 = v128;
  v57(v128, v31, v56);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v147[0] = v118;
    *v117 = 136315138;
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, MEMORY[0x277D5FEE8]);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v134 = v60;
    v121 = v120;
    v122 = v114;
    v123 = v56;
    v124 = *(v55 + 8);
    v124(v122, v123);
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v147);

    *(v117 + 4) = v125;
    _os_log_impl(&dword_26686A000, v115, v116, "#ReferenceResolution Received unknown result type %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v118);
    MEMORY[0x26D5E3300](v118, -1, -1);
    MEMORY[0x26D5E3300](v117, -1, -1);

    v126 = v134;
  }

  else
  {

    v127 = v114;
    v123 = v56;
    v124 = *(v55 + 8);
    v124(v127, v123);
    v126 = v60;
  }

  v124(v126, v123);
  outlined destroy of Result<TemplatingResult, Error>(v145, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  return (v124)(v141, v123);
}

uint64_t specialized RRReferenceResolverProtocol.resolvePersonDisambiguationReference(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for RREntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized RRReferenceResolverProtocol.resolvePositionEntity(from:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v3, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v9 = v20;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriContacts);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v9;
      v20 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonCSgMd, &_s12SiriOntology23UsoEntity_common_PersonCSgMR);
      v15 = Optional.debugDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_26686A000, v11, v12, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_Person: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x26D5E3300](v14, -1, -1);
      MEMORY[0x26D5E3300](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9;
}

uint64_t specialized RRReferenceResolverProtocol.resolvePositionEntity(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  USOParse.preferredUserDialogAct.getter(&v25 - v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v11 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v12 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v13 = v9;
  }

  else
  {
    v14 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(*(v10 - 8) + 8))(v9, v10);
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE21extractPositionEntity33_41E6F657CD7DFBBA05B1CD3301A231094task0A8Ontology03UsoK0CSgAH0U4TaskC_tFZAA0bC6ClientC_Tt0g5();
    if (!v15)
    {

      goto LABEL_9;
    }

    specialized RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v15, v5);

    v16 = type metadata accessor for RREntity();
    if (__swift_getEnumTagSinglePayload(v5, 1, v16) != 1)
    {
      (*(*(v16 - 8) + 32))(a1, v5, v16);
      v22 = a1;
      v23 = 0;
      v21 = v16;
      return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
    }

    v11 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
    v12 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
    v13 = v5;
  }

  outlined destroy of Result<TemplatingResult, Error>(v13, v11, v12);
LABEL_9:
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriContacts);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26686A000, v18, v19, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v20, 2u);
    MEMORY[0x26D5E3300](v20, -1, -1);
  }

  v21 = type metadata accessor for RREntity();
  v22 = a1;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
}

uint64_t _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE21extractPositionEntity33_41E6F657CD7DFBBA05B1CD3301A23109LL4task0A8Ontology03UsoK0CSgAH0U4TaskC_tFZAA0bC6ClientC_Tt0g5()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v19)
  {
    goto LABEL_20;
  }

  outlined init with copy of Any?(v18, v17, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v16)
    {

      v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      if (v0)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v1 = type metadata accessor for Logger();
        __swift_project_value_buffer(v1, static Logger.siriContacts);

        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          v5 = swift_slowAlloc();
          v16 = v5;
          *v4 = 136315138;
          CodeGenBase.entity.getter();
          v6 = UsoEntity.debugString.getter();
          v8 = v7;

          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v16);

          *(v4 + 4) = v9;
          _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v5);
          MEMORY[0x26D5E3300](v5, -1, -1);
          MEMORY[0x26D5E3300](v4, -1, -1);
        }

        v10 = CodeGenBase.entity.getter();

        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  type metadata accessor for UsoTask_request_common_Person();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_15:

    v10 = _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE6helper33_41E6F657CD7DFBBA05B1CD3301A231096person0A8Ontology9UsoEntityCSgAH0sT14_common_PersonCSg_tFZAA0bC6ClientC_Tt0g5(v16);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    outlined destroy of Result<TemplatingResult, Error>(v18, &_sypSgMd, &_sypSgMR);
    return v10;
  }

  type metadata accessor for UsoTask_summarise_common_Person();
  if (swift_dynamicCast() || (type metadata accessor for UsoTask_read_common_Person(), swift_dynamicCast()))
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_15;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
LABEL_20:
  outlined destroy of Result<TemplatingResult, Error>(v18, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26686A000, v12, v13, "#ReferenceResolution Found no positional reference, returning nil", v14, 2u);
    MEMORY[0x26D5E3300](v14, -1, -1);
  }

  return 0;
}

uint64_t _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE6helper33_41E6F657CD7DFBBA05B1CD3301A23109LL6person0A8Ontology9UsoEntityCSgAH0sT14_common_PersonCSg_tFZAA0bC6ClientC_Tt0g5(uint64_t a1)
{
  if (a1)
  {

    if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.siriContacts);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v16 = v5;
        *v4 = 136315138;
        CodeGenBase.entity.getter();
        v6 = UsoEntity.debugString.getter();
        v8 = v7;

        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v16);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v5);
        MEMORY[0x26D5E3300](v5, -1, -1);
        MEMORY[0x26D5E3300](v4, -1, -1);
      }

      v10 = CodeGenBase.entity.getter();

      return v10;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26686A000, v12, v13, "#ReferenceResolution Found no positional reference, returning nil", v14, 2u);
    MEMORY[0x26D5E3300](v14, -1, -1);
  }

  return 0;
}

void Parse.DirectInvocation.toSiriKitIntent()()
{
  OUTLINED_FUNCTION_15();
  v1 = type metadata accessor for Parse.DirectInvocation();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v28 = v3;
  v29 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Signpost.OpenSignpost();
  v10 = OUTLINED_FUNCTION_10_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  *(&v33 + 1) = MEMORY[0x277D837D0];
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *&v32 = 0xD000000000000010;
  *(&v32 + 1) = 0x80000002669738B0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_266966D90;
  outlined init with copy of DeviceState(&v32, v16 + 32);
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v17 = v15 + *(v9 + 20);
  *v17 = "ToSiriKitIntent";
  *(v17 + 8) = 15;
  *(v17 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  v18 = Parse.DirectInvocation.identifier.getter();
  v20 = v19;
  OUTLINED_FUNCTION_21_11();
  v22 = v18 == 0xD000000000000026 && v21 == v20;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for ModifyContactAttributeIntent();
    (*(v28 + 16))(v8, v0, v29);
    ModifyContactAttributeIntent.__allocating_init(_:)(v8);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21_11();
  if (v18 == 0xD000000000000022 && v23 == v20)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v26 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  v27 = Parse.DirectInvocation.userData.getter();
  if (!v27)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_22;
  }

  specialized Dictionary.subscript.getter(v27, &v32);

  if (!*(&v33 + 1))
  {
LABEL_22:
    outlined destroy of Result<TemplatingResult, Error>(&v32, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(v30, v31, v26);
  }

LABEL_9:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v15, type metadata accessor for Signpost.OpenSignpost);
  OUTLINED_FUNCTION_14();
}

void Parse.isContactIntent.getter()
{
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v105 = v104 - v5;
  OUTLINED_FUNCTION_13_8();
  v6 = type metadata accessor for USOParse();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v106 = v8;
  v107 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v104[1] = v12 - v11;
  OUTLINED_FUNCTION_13_8();
  v13 = type metadata accessor for Parse.DirectInvocation();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v109 = v15;
  v110 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v108 = v19 - v18;
  OUTLINED_FUNCTION_13_8();
  v20 = type metadata accessor for ContactNLv3Intent();
  v21 = OUTLINED_FUNCTION_18_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v113 = (v25 - v24);
  OUTLINED_FUNCTION_13_8();
  v114 = type metadata accessor for NLIntent();
  v26 = OUTLINED_FUNCTION_1_0(v114);
  v112 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_16();
  v111 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  v33 = v104 - v32;
  v34 = type metadata accessor for Parse();
  v35 = OUTLINED_FUNCTION_1_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  v42 = v41 - v40;
  v43 = OUTLINED_FUNCTION_43();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  OUTLINED_FUNCTION_18_0(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v48);
  v50 = v104 - v49;
  Parse.confirmationResponse.getter();
  v51 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v51);
  outlined destroy of Result<TemplatingResult, Error>(v50, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_56_6();
    v53(v42, v0, v34);
    v54 = (*(v37 + 88))(v42, v34);
    if (v54 == *MEMORY[0x277D5C128])
    {
      v55 = OUTLINED_FUNCTION_47_7();
      v56(v55);
      v57 = v112;
      v58 = v114;
      (*(v112 + 32))(v33, v42, v114);
      OUTLINED_FUNCTION_56_6();
      v59 = v111;
      v60(v111, v33, v58);
      v61 = v113;
      ContactNLv3Intent.init(intent:)(v59, v113);
      ContactNLv3Intent.isContactDomain.getter();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v61, v62);
      (*(v57 + 8))(v33, v58);
      goto LABEL_47;
    }

    if (v54 == *MEMORY[0x277D5C150])
    {
      v63 = OUTLINED_FUNCTION_47_7();
      v64(v63);
      v66 = v108;
      v65 = v109;
      v67 = *(v109 + 32);
      v68 = OUTLINED_FUNCTION_40_8();
      v69 = v110;
      v71 = v70(v68);
      MEMORY[0x28223BE20](v71);
      v104[-2] = v66;
      specialized Sequence.contains(where:)(partial apply for closure #1 in Parse.isContactIntent.getter, &v104[-4], &outlined read-only object #0 of static ContactsDirectInvocations.Identifiers.allCases.getter);
      (*(v65 + 8))(v66, v69);
      goto LABEL_47;
    }

    if (v54 != *MEMORY[0x277D5C160])
    {
      (*(v37 + 8))(v42, v34);
      goto LABEL_47;
    }

    v72 = OUTLINED_FUNCTION_47_7();
    v73(v72);
    v74 = *(v106 + 32);
    v75 = OUTLINED_FUNCTION_40_8();
    v76(v75);
    v77 = v105;
    USOParse.preferredUserDialogAct.getter(v105);
    v78 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_57(v77, 1, v78);
    if (v79)
    {
      v80 = OUTLINED_FUNCTION_45_3();
      v81(v80);
      v82 = outlined destroy of Result<TemplatingResult, Error>(v77, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v84 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52(v78);
      (*(v85 + 8))(v77, v78);
      if (v84)
      {
        static UsoTask_CodegenConverter.convert(task:)();

        v86 = OUTLINED_FUNCTION_45_3();
        v82 = v87(v86);
        goto LABEL_15;
      }

      v88 = OUTLINED_FUNCTION_45_3();
      v82 = v89(v88);
    }

    v117 = 0u;
    v118 = 0u;
LABEL_15:
    OUTLINED_FUNCTION_48_7(v82, v83, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_summarise_common_Person();
      v90 = OUTLINED_FUNCTION_8_32();
      if (v90)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v90 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v90, v91, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_read_common_Person();
      v92 = OUTLINED_FUNCTION_8_32();
      if (v92)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v92 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v92, v93, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_request_common_Person();
      v94 = OUTLINED_FUNCTION_8_32();
      if (v94)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v94 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v94, v95, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_noVerb_common_Person();
      v96 = OUTLINED_FUNCTION_8_32();
      if (v96)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v96 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v96, v97, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_update_common_Person();
      v98 = OUTLINED_FUNCTION_8_32();
      if (v98)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v98 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v98, v99, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_create_common_Person();
      v100 = OUTLINED_FUNCTION_8_32();
      if (v100)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v100 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v100, v101, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_delete_common_Person();
      v102 = OUTLINED_FUNCTION_8_32();
      if (v102)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v102 = outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v102, v103, &_sypSgMd, &_sypSgMR);
    if (*(&v116 + 1))
    {
      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (OUTLINED_FUNCTION_8_32())
      {
LABEL_45:
        outlined destroy of Result<TemplatingResult, Error>(&v117, &_sypSgMd, &_sypSgMR);
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
    }

    v115 = v117;
    v116 = v118;
    if (!*(&v118 + 1))
    {
      outlined destroy of Result<TemplatingResult, Error>(&v115, &_sypSgMd, &_sypSgMR);
      goto LABEL_47;
    }

    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if ((OUTLINED_FUNCTION_8_32() & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_47:
  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in Parse.isContactIntent.getter(char *a1)
{
  v1 = ContactsDirectInvocations.Identifiers.rawValue.getter(*a1);
  v3 = v2;
  if (v1 == Parse.DirectInvocation.identifier.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = OUTLINED_FUNCTION_61_1();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4);
}

{
  AnyHashable._rawHashValue(seed:)(*(v0 + 40));
  v1 = OUTLINED_FUNCTION_73();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v1 = *(v0 + 40);
  type metadata accessor for ContactsLabelCATContainer.LabelType();
  _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v2 = OUTLINED_FUNCTION_73();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5E2960](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

{
  v14 = a1;
  v4 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8]);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_26_3();
  v9(v8);
  return a2;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_33_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_37_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_48_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of Any?(v4 - 128, v4 - 160, a3, a4);
}

void OUTLINED_FUNCTION_74_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.phoneNumber.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.phoneNumber.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.phoneNumber.getter(v1);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.emailAddress.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.emailAddress.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.emailAddress.getter(v1);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

void protocol witness for SiriKitGetEntityIntent.siriMatches.setter in conformance GetContactIntent(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for SiriMatch();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSiriMatches_];
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.siriMatches.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.siriMatches.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.siriMatches.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(v1);
  return OUTLINED_FUNCTION_0_53();
}

void GetContactIntent.siriMatches.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for SiriMatch();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v4 = *a1;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setSiriMatches_];
  }

  else if (v3)
  {
    type metadata accessor for SiriMatch();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1[1] setSiriMatches_];
  }

  else
  {
    isa = 0;
    [a1[1] setSiriMatches_];
  }
}

void protocol witness for SiriKitGetEntityIntent.phoneNumber.setter in conformance GetContactIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v7 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.contactIdentifier.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.contactIdentifier.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.contactIdentifier.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_contactIdentifier);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

void GetContactIntent.phoneNumber.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = a1[1];
  if (a2)
  {
    if (v5)
    {
      v6 = *a1;
      v7 = a1[1];

      v8 = MEMORY[0x26D5E2470](v6, v5);
    }

    else
    {
      v8 = 0;
    }

    [a1[2] *a3];
  }

  else if (v5)
  {
    v8 = MEMORY[0x26D5E2470](*a1, v5);

    [a1[2] *a3];
  }

  else
  {
    v8 = 0;
    [a1[2] *a3];
  }
}

id protocol witness for SiriKitContactIntent.isMe.getter in conformance GetContactIntent()
{
  v1 = [v0 isMe];

  return v1;
}

id GetContactIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id key path getter for GetContactIntent.isMe : GetContactIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMe];
  *a2 = result;
  return result;
}

void key path getter for GetContactIntent.firstName : GetContactIntent(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for GetContactIntent.firstName : GetContactIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = MEMORY[0x26D5E2470](*a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void key path getter for GetContactIntent.siriMatches : GetContactIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 siriMatches];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriMatch();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for GetContactIntent.siriMatches : GetContactIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriMatch();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setSiriMatches_];
}

id GetContactIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetContactIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetContactIntent.init(coder:)(void *a1)
{
  ContactIntent = type metadata accessor for GetContactIntent();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetContactIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v5 = 0;
  }

  ContactIntent = type metadata accessor for GetContactIntent();
  v12 = OUTLINED_FUNCTION_3_34(ContactIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetContactIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id GetContactIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for GetContactIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t GetContactIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void key path getter for GetContactIntentResponse.contactIdentifiers : GetContactIntentResponse(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contactIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for GetContactIntentResponse.contactIdentifiers : GetContactIntentResponse(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setContactIdentifiers_];
}

uint64_t GetContactIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetContactIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GetContactIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GetContactIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetContactIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetContactIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetContactIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetContactIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetContactIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactIntentResponse_code) = 0;
  ContactIntentResponse = type metadata accessor for GetContactIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetContactIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactIntentResponse_code) = 0;
  ContactIntentResponse = type metadata accessor for GetContactIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetContactIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetContactIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetContactSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id GetContactSiriMatchesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id GetContactSiriMatchesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GetContactSiriMatchesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id GetContactIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc GetContactIntentResponse.contactIdentifiers.getter(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void OUTLINED_FUNCTION_4_36()
{

  JUMPOUT(0x26D5E2470);
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactAttributeIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.phoneNumber.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent;
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactAttributeIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.emailAddress.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.siriMatches.modify in conformance GetContactAttributeIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.siriMatches.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.contactIdentifier.modify in conformance GetContactAttributeIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.contactIdentifier.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id GetContactAttributeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id key path getter for GetContactAttributeIntent.contactAttributeToGet : GetContactAttributeIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactAttributeToGet];
  *a2 = result;
  return result;
}

void key path getter for GetContactAttributeIntent.siriMatches : GetContactAttributeIntent(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void key path setter for GetContactAttributeIntent.siriMatches : GetContactAttributeIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  isa = v8.super.isa;
  [v7 *a6];
}

id GetContactAttributeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactAttributeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetContactAttributeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetContactAttributeIntent.init(coder:)(void *a1)
{
  ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetContactAttributeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v5 = 0;
  }

  ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
  v12 = OUTLINED_FUNCTION_3_34(ContactAttributeIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetContactAttributeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id GetContactAttributeIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for GetContactAttributeIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t GetContactAttributeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t GetContactAttributeIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GetContactAttributeIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetContactAttributeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetContactAttributeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetContactAttributeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactAttributeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetContactAttributeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactAttributeIntentResponse_code) = 0;
  ContactAttributeIntentResponse = type metadata accessor for GetContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetContactAttributeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactAttributeIntentResponse_code) = 0;
  ContactAttributeIntentResponse = type metadata accessor for GetContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetContactAttributeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactAttributeIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetContactAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetContactAttributeSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeContactAttributeToGetUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GetContactAttributeSiriMatchesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id GetContactAttributeSiriMatchesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v8)
  {
  }

  return v8;
}

id GetContactAttributeIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason);
  }

  return result;
}

uint64_t ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id ModifyContactAttributeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void key path getter for ModifyContactAttributeIntent.modifyNickName : ModifyContactAttributeIntent(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_52(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void key path getter for ModifyContactAttributeIntent.relatedSiriMatches : ModifyContactAttributeIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relatedSiriMatches];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriMatch();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for ModifyContactAttributeIntent.relatedSiriMatches : ModifyContactAttributeIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriMatch();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setRelatedSiriMatches_];
}

id key path getter for ModifyContactAttributeIntent.relatedContact : ModifyContactAttributeIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relatedContact];
  *a2 = result;
  return result;
}

id ModifyContactAttributeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyContactAttributeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ModifyContactAttributeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ModifyContactAttributeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for ModifyContactAttributeIntent();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ModifyContactAttributeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for ModifyContactAttributeIntent();
  v12 = OUTLINED_FUNCTION_3_34(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id ModifyContactAttributeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id ModifyContactAttributeIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for ModifyContactAttributeIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t ModifyContactAttributeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyContactAttributeIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyContactAttributeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id key path getter for ModifyContactAttributeIntentResponse.updatedRelationship : ModifyContactAttributeIntentResponse@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updatedRelationship];
  *a2 = result;
  return result;
}

uint64_t ModifyContactAttributeIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ModifyContactAttributeIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *ModifyContactAttributeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ModifyContactAttributeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ModifyContactAttributeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyContactAttributeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ModifyContactAttributeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___ModifyContactAttributeIntentResponse_code) = 0;
  v13 = type metadata accessor for ModifyContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ModifyContactAttributeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___ModifyContactAttributeIntentResponse_code) = 0;
  v13 = type metadata accessor for ModifyContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ModifyContactAttributeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ModifyContactAttributeIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ModifyContactAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t ModifyContactAttributeRelatedSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyContactAttributeRelatedSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ModifyContactAttributeModifyNickNameResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v8)
  {
  }

  return v8;
}

id ModifyContactAttributeIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason);
  }

  return result;
}

id LearnPronunciationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LearnPronunciationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnPronunciationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LearnPronunciationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LearnPronunciationIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for LearnPronunciationIntent();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LearnPronunciationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for LearnPronunciationIntent();
  v12 = OUTLINED_FUNCTION_3_34(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id LearnPronunciationIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id LearnPronunciationIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for LearnPronunciationIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t LearnPronunciationIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LearnPronunciationIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LearnPronunciationIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t LearnPronunciationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LearnPronunciationIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *LearnPronunciationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LearnPronunciationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LearnPronunciationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnPronunciationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LearnPronunciationIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___LearnPronunciationIntentResponse_code) = 0;
  v13 = type metadata accessor for LearnPronunciationIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LearnPronunciationIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___LearnPronunciationIntentResponse_code) = 0;
  v13 = type metadata accessor for LearnPronunciationIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LearnPronunciationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LearnPronunciationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LearnPronunciationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id LearnPronunciationIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode);
  }

  return result;
}

unint64_t ContactAttributeType.init(rawValue:)(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactAttributeType@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ContactAttributeType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static ContactAttributeTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id ContactAttributeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactAttributeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactAttributeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactAttributeTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAttributeTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ContactAttributeType and conformance ContactAttributeType()
{
  result = lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType;
  if (!lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType);
  }

  return result;
}

unint64_t ModifyOperation.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyOperation@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyOperation.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ModifyOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ModifyOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ModifyOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ModifyOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifyOperation and conformance ModifyOperation()
{
  result = lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation;
  if (!lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation);
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return OUTLINED_FUNCTION_8_33();
}

{
  return OUTLINED_FUNCTION_8_33();
}

{
  return OUTLINED_FUNCTION_8_33();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  OUTLINED_FUNCTION_7_29();
  v0(v3, v1);
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_33();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  OUTLINED_FUNCTION_7_29();
  v0(v1);
  OUTLINED_FUNCTION_0_55();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a1 + 1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 5:
      OUTLINED_FUNCTION_1_53();
      break;
    default:
      OUTLINED_FUNCTION_2_52();
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
    case 6:
      OUTLINED_FUNCTION_2_52();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_1_53();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_2_52();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, GetContactAttributeSlots.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Constants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactAttributesValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactReferenceValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactVerbValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, GetContactSlots.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLIntent.NLContactTypeValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_5_41();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_5_41();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a2 + 1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_4_37();
  OUTLINED_FUNCTION_6_39();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_3_35();
  v0(v3, v1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  v1 = OUTLINED_FUNCTION_3_35();
  v0(v1);
  OUTLINED_FUNCTION_0_55();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_3_35();
  v0(v1);
  OUTLINED_FUNCTION_0_55();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a2);
  return Hasher._finalize()();
}

unint64_t Qualifier.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Qualifier@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Qualifier.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id QualifierResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id QualifierResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for QualifierResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id QualifierResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QualifierResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Qualifier and conformance Qualifier()
{
  result = lazy protocol witness table cache variable for type Qualifier and conformance Qualifier;
  if (!lazy protocol witness table cache variable for type Qualifier and conformance Qualifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Qualifier and conformance Qualifier);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return Hasher.init(_seed:)();
}

Swift::Int OUTLINED_FUNCTION_8_33()
{

  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

id static ContactAttributeResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContactAttributeResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

id static ContactAttributeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id key path getter for ContactAttribute.ageDateTime : ContactAttribute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ageDateTime];
  *a2 = result;
  return result;
}

id key path getter for ContactAttribute.postalAddress : ContactAttribute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 postalAddress];
  *a2 = result;
  return result;
}

id ContactAttribute.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id ContactAttribute.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContactAttribute();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id ContactAttribute.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContactAttribute.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContactAttribute();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void static ContactAttributeResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695D2BCLL);
}

void static ContactAttributeResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695D46CLL);
}

id ContactAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactAttribute.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id PostalAddress.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id PostalAddress.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for PostalAddress();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id PostalAddress.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PostalAddress.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PostalAddress();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static PostalAddressResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static PostalAddressResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static PostalAddressResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static PostalAddressResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695DF20);
}

void static PostalAddressResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695E0D0);
}

id PostalAddressResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id PostalAddressResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PostalAddressResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id PostalAddress.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id static SiriMatchResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static SiriMatchResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static SiriMatchResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void key path getter for SiriMatch.fullName : SiriMatch(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 fullName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for SiriMatch.fullName : SiriMatch(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x26D5E2470](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setFullName_];
}

id SiriMatch.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id SiriMatch.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for SiriMatch();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id SiriMatch.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriMatch.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriMatch();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void static SiriMatchResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695EC6CLL);
}

void static SiriMatchResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695EE1CLL);
}

id SiriMatchResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id SiriMatchResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriMatchResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id SiriMatch.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id Contact.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id Contact.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for Contact();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

uint64_t type metadata accessor for Contact()
{
  return objc_opt_self();
}

{
  return MEMORY[0x2821B8E08]();
}

id Contact.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Contact.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Contact();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContactResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContactResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static ContactResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static ContactResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695F880);
}

void static ContactResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x26695FA30);
}

id ContactResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id Contact.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ContactRelation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id ContactRelation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContactRelation();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id ContactRelation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContactRelation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContactRelation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContactRelationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContactRelationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static ContactRelationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static ContactRelationResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x2669604C4);
}

void static ContactRelationResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x266960674);
}

id ContactRelationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactRelationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactRelationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactRelation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t key path getter for AgeDateTime.dateComponents : AgeDateTime@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateComponents];
  if (v3)
  {
    v4 = v3;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for DateComponents();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path setter for AgeDateTime.dateComponents : AgeDateTime(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of DateComponents?(a1, &v11 - v6);
  v8 = *a2;
  v9 = type metadata accessor for DateComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDateComponents_];
}

id AgeDateTime.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id AgeDateTime.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for AgeDateTime();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id AgeDateTime.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AgeDateTime.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AgeDateTime();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static AgeDateTimeResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static AgeDateTimeResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static AgeDateTimeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static AgeDateTimeResolutionResult.success(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x266961274);
}

void static AgeDateTimeResolutionResult.confirmationRequired(with:)()
{
  v0 = static String.EMPTY.getter();
  v2 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26686A000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v9 = static FatalError.fatalErrorClosure;

  v10 = static String.EMPTY.getter();
  (v9)(v10);
  JUMPOUT(0x266961424);
}

id AgeDateTimeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id AgeDateTimeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AgeDateTimeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id AgeDateTime.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static PhonemeDataParser.parse(from:)()
{
  return MEMORY[0x2821B90F8]();
}

{
  return MEMORY[0x2821B73B8]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}