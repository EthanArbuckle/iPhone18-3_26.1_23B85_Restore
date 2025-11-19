uint64_t one-time initialization function for siriPhoneUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriPhoneUI);
  __swift_project_value_buffer(v0, static Logger.siriPhoneUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriPhoneUI.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneUI != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.siriPhoneUI);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.siriPhoneUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriPhoneUI != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriPhoneUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v33 = a4;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v7, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    outlined destroy of Logger?(v14);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a3;
      v22 = v21;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v29 = v19;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
      v26 = v20;
      v27 = v29;
      _os_log_impl(&dword_0, v29, v26, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v18 + 8))(v14, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t (**PhoneUIPlugin.snippet(for:mode:idiom:)(uint64_t a1))(void)
{
  v3 = type metadata accessor for SingleResultCallHistoryView();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SingleResultCallHistoryModel();
  v10 = OUTLINED_FUNCTION_16(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_1();
  v222 = v13;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_15();
  v225 = v15;
  OUTLINED_FUNCTION_5();
  v224 = type metadata accessor for SingleResultVoicemailView();
  v16 = OUTLINED_FUNCTION_2(v224);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_0_0();
  v223 = v19;
  OUTLINED_FUNCTION_5();
  v20 = type metadata accessor for SingleResultVoicemailModel();
  v21 = OUTLINED_FUNCTION_16(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_1();
  v218 = v24;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_15();
  v221 = v26;
  OUTLINED_FUNCTION_5();
  v220 = type metadata accessor for ShowPlayVoicemailListView();
  v27 = OUTLINED_FUNCTION_2(v220);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_0_0();
  v219 = v30;
  OUTLINED_FUNCTION_5();
  v31 = type metadata accessor for PlayVoicemailModel();
  v32 = OUTLINED_FUNCTION_16(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_1();
  v214 = v35;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_15();
  v217 = v37;
  OUTLINED_FUNCTION_5();
  v216 = type metadata accessor for ShowCallHistoryListView();
  v38 = OUTLINED_FUNCTION_2(v216);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_0_0();
  v215 = v41;
  OUTLINED_FUNCTION_5();
  v42 = type metadata accessor for SearchCallHistoryModel();
  v43 = OUTLINED_FUNCTION_16(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_15();
  v213 = v47;
  OUTLINED_FUNCTION_5();
  v212 = type metadata accessor for StackedButtonsView();
  v48 = OUTLINED_FUNCTION_2(v212);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v51);
  v211 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  v52 = OUTLINED_FUNCTION_2(v211);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v55);
  v56 = type metadata accessor for LocalEmergencyCallDisambiguationModel();
  v57 = OUTLINED_FUNCTION_16(v56);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v61);
  v209 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  v62 = OUTLINED_FUNCTION_2(v209);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v65);
  v66 = type metadata accessor for ForeignEmergencyCallDisambiguationModel();
  v67 = OUTLINED_FUNCTION_16(v66);
  v69 = *(v68 + 64);
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v71);
  v207 = type metadata accessor for EmergencyCountdownView();
  v72 = OUTLINED_FUNCTION_2(v207);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v75);
  v76 = type metadata accessor for EmergencyCountdownModel();
  v77 = OUTLINED_FUNCTION_16(v76);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v80);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v81);
  v203 = type metadata accessor for AppDisambiguationView();
  v82 = OUTLINED_FUNCTION_2(v203);
  v84 = *(v83 + 64);
  __chkstk_darwin(v82);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v85);
  v202 = type metadata accessor for AppDisambiguationViewSMART();
  v86 = OUTLINED_FUNCTION_2(v202);
  v88 = *(v87 + 64);
  __chkstk_darwin(v86);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v89);
  v205 = type metadata accessor for YesNoConfirmationCarPlayView();
  v90 = OUTLINED_FUNCTION_2(v205);
  v92 = *(v91 + 64);
  __chkstk_darwin(v90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v93);
  v227 = type metadata accessor for YesNoConfirmationView();
  v94 = OUTLINED_FUNCTION_2(v227);
  v96 = *(v95 + 64);
  __chkstk_darwin(v94);
  OUTLINED_FUNCTION_0_0();
  v228 = v97;
  OUTLINED_FUNCTION_5();
  v98 = type metadata accessor for YesNoConfirmationModel();
  v99 = OUTLINED_FUNCTION_16(v98);
  v101 = *(v100 + 64);
  __chkstk_darwin(v99);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v102);
  v229 = &v198 - v103;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v104);
  OUTLINED_FUNCTION_15();
  v226 = v105;
  OUTLINED_FUNCTION_5();
  v233 = type metadata accessor for PhoneSnippetDataModels();
  v106 = OUTLINED_FUNCTION_2(v233);
  v108 = *(v107 + 64);
  __chkstk_darwin(v106);
  OUTLINED_FUNCTION_1();
  v231 = v109;
  OUTLINED_FUNCTION_12();
  v111 = __chkstk_darwin(v110);
  v113 = &v198 - v112;
  __chkstk_darwin(v111);
  v115 = &v198 - v114;
  v116 = type metadata accessor for Logger();
  v117 = *(v116 - 8);
  v118 = *(v117 + 64);
  __chkstk_darwin(v116);
  v120 = &v198 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = Logger.phoneSnippetUI.unsafeMutableAddressor();
  v122 = *(v117 + 16);
  v230 = v116;
  v122(v120, v121, v116);
  OUTLINED_FUNCTION_3();
  v232 = a1;
  outlined init with copy of PhoneSnippetDataModels(a1, v115, v123);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v201 = v1;
    v127 = v126;
    v128 = swift_slowAlloc();
    v200 = v3;
    v129 = v128;
    v234 = v128;
    *v127 = 136315138;
    OUTLINED_FUNCTION_3();
    outlined init with copy of PhoneSnippetDataModels(v115, v113, v130);
    v131 = String.init<A>(describing:)();
    v199 = v8;
    v133 = v132;
    OUTLINED_FUNCTION_13();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v234);
    v8 = v199;

    *(v127 + 4) = v134;
    _os_log_impl(&dword_0, v124, v125, "#PhoneUIPlugin getting snippet for %s", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v129);
    v3 = v200;
  }

  else
  {

    OUTLINED_FUNCTION_13();
  }

  (*(v117 + 8))(v120, v230);
  OUTLINED_FUNCTION_3();
  v135 = v231;
  outlined init with copy of PhoneSnippetDataModels(v232, v231, v136);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v164 = *v135;
      v165 = v135[1];
      v166 = v135[2];
      if (static RFFeatureFlags.ResponseFramework.SMART.getter())
      {
        OUTLINED_FUNCTION_19(&v223);
        AppDisambiguationViewSMART.init(model:)();
        lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type AppDisambiguationViewSMART and conformance AppDisambiguationViewSMART, &type metadata accessor for AppDisambiguationViewSMART);
        v125 = View.eraseToAnyView()();
        v157 = &type metadata accessor for AppDisambiguationViewSMART;
      }

      else
      {
        OUTLINED_FUNCTION_19(&v225);
        AppDisambiguationView.init(model:)();
        lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type AppDisambiguationView and conformance AppDisambiguationView, &type metadata accessor for AppDisambiguationView);
        v125 = View.eraseToAnyView()();
        v157 = &type metadata accessor for AppDisambiguationView;
      }

      goto LABEL_22;
    case 2u:
      OUTLINED_FUNCTION_8();
      v167 = OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_20(v167, v168, &v227);
      v169 = v228;
      OUTLINED_FUNCTION_18();
      YesNoConfirmationView.init(model:)();
      OUTLINED_FUNCTION_10();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(v170, v171);
      View.eraseToAnyView()();
      OUTLINED_FUNCTION_9();
      goto LABEL_18;
    case 3u:
      v147 = OUTLINED_FUNCTION_11();
      v3 = v206;
      outlined init with take of SingleResultCallHistoryModel(v147, v206, v148);
      v149 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v149, v150, &v230);
      OUTLINED_FUNCTION_18();
      EmergencyCountdownView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type EmergencyCountdownView and conformance EmergencyCountdownView, &type metadata accessor for EmergencyCountdownView);
      v125 = View.eraseToAnyView()();
      v151 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v151, v152);
      v140 = &type metadata accessor for EmergencyCountdownModel;
      goto LABEL_19;
    case 4u:
      v177 = OUTLINED_FUNCTION_11();
      v3 = v208;
      outlined init with take of SingleResultCallHistoryModel(v177, v208, v178);
      v179 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v179, v180, &v232);
      OUTLINED_FUNCTION_18();
      ForeignEmergencyCallDisambiguationView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView and conformance ForeignEmergencyCallDisambiguationView, &type metadata accessor for ForeignEmergencyCallDisambiguationView);
      v125 = View.eraseToAnyView()();
      v181 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v181, v182);
      v140 = &type metadata accessor for ForeignEmergencyCallDisambiguationModel;
      goto LABEL_19;
    case 5u:
      v183 = OUTLINED_FUNCTION_11();
      v3 = v210;
      outlined init with take of SingleResultCallHistoryModel(v183, v210, v184);
      v185 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v185, v186, &v234);
      OUTLINED_FUNCTION_18();
      LocalEmergencyCallDisambiguationView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationView and conformance LocalEmergencyCallDisambiguationView, &type metadata accessor for LocalEmergencyCallDisambiguationView);
      v125 = View.eraseToAnyView()();
      v187 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v187, v188);
      v140 = &type metadata accessor for LocalEmergencyCallDisambiguationModel;
      goto LABEL_19;
    case 6u:
      v173 = *v135;
      v174 = *(v135 + 8);
      StackedButtonsView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type StackedButtonsView and conformance StackedButtonsView, &type metadata accessor for StackedButtonsView);
      v125 = View.eraseToAnyView()();
      v175 = OUTLINED_FUNCTION_17();
      goto LABEL_20;
    case 8u:
      OUTLINED_FUNCTION_8();
      v195 = OUTLINED_FUNCTION_7();
      v169 = v204;
      outlined init with copy of PhoneSnippetDataModels(v195, v204, v196);
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type YesNoConfirmationCarPlayView and conformance YesNoConfirmationCarPlayView, &type metadata accessor for YesNoConfirmationCarPlayView);
      v125 = View.eraseToAnyView()();
      v172 = &type metadata accessor for YesNoConfirmationCarPlayView;
LABEL_18:
      outlined destroy of PhoneSnippetDataModels(v169, v172);
      v140 = &type metadata accessor for YesNoConfirmationModel;
      goto LABEL_19;
    case 9u:
      v158 = OUTLINED_FUNCTION_11();
      v3 = v213;
      outlined init with take of SingleResultCallHistoryModel(v158, v213, v159);
      v160 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v160, v161, &v235);
      OUTLINED_FUNCTION_18();
      ShowCallHistoryListView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ShowCallHistoryListView and conformance ShowCallHistoryListView, &type metadata accessor for ShowCallHistoryListView);
      v125 = View.eraseToAnyView()();
      v162 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v162, v163);
      v140 = &type metadata accessor for SearchCallHistoryModel;
      goto LABEL_19;
    case 0xAu:
      v189 = OUTLINED_FUNCTION_11();
      v3 = v217;
      outlined init with take of SingleResultCallHistoryModel(v189, v217, v190);
      v191 = OUTLINED_FUNCTION_14();
      outlined init with copy of PhoneSnippetDataModels(v191, v214, v192);
      OUTLINED_FUNCTION_18();
      ShowPlayVoicemailListView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ShowPlayVoicemailListView and conformance ShowPlayVoicemailListView, &type metadata accessor for ShowPlayVoicemailListView);
      v125 = View.eraseToAnyView()();
      v193 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v193, v194);
      v140 = &type metadata accessor for PlayVoicemailModel;
      goto LABEL_19;
    case 0xBu:
      v141 = OUTLINED_FUNCTION_11();
      v3 = v221;
      outlined init with take of SingleResultCallHistoryModel(v141, v221, v142);
      v143 = OUTLINED_FUNCTION_14();
      outlined init with copy of PhoneSnippetDataModels(v143, v218, v144);
      OUTLINED_FUNCTION_18();
      SingleResultVoicemailView.init(singleVoicemailModel:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type SingleResultVoicemailView and conformance SingleResultVoicemailView, &type metadata accessor for SingleResultVoicemailView);
      v125 = View.eraseToAnyView()();
      v145 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v145, v146);
      v140 = &type metadata accessor for SingleResultVoicemailModel;
      goto LABEL_19;
    case 0xCu:
      v153 = OUTLINED_FUNCTION_11();
      v135 = v225;
      outlined init with take of SingleResultCallHistoryModel(v153, v225, v154);
      v155 = OUTLINED_FUNCTION_11();
      outlined init with copy of PhoneSnippetDataModels(v155, v222, v156);
      SingleResultCallHistoryView.init(singleResultCallHistoryModel:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView, &type metadata accessor for SingleResultCallHistoryView);
      v125 = View.eraseToAnyView()();
      outlined destroy of PhoneSnippetDataModels(v8, &type metadata accessor for SingleResultCallHistoryView);
      v157 = &type metadata accessor for SingleResultCallHistoryModel;
LABEL_22:
      v176 = v157;
      v175 = v135;
      goto LABEL_20;
    default:
      v125 = &type metadata accessor for YesNoConfirmationModel;
      v137 = v226;
      outlined init with take of SingleResultCallHistoryModel(v135, v226, &type metadata accessor for YesNoConfirmationModel);
      outlined init with take of SingleResultCallHistoryModel(v137, v229, &type metadata accessor for YesNoConfirmationModel);
      v3 = v228;
      YesNoConfirmationView.init(model:)();
      OUTLINED_FUNCTION_10();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(v138, v139);
      View.eraseToAnyView()();
      OUTLINED_FUNCTION_9();
LABEL_19:
      v176 = v140;
      v175 = v3;
LABEL_20:
      outlined destroy of PhoneSnippetDataModels(v175, v176);
      return v125;
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance PhoneUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneSnippetDataModels(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PhoneSnippetDataModels(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8()
{
  v3 = *(v1 - 128);

  return outlined init with take of SingleResultCallHistoryModel(v0, v3, &type metadata accessor for YesNoConfirmationModel);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return outlined destroy of PhoneSnippetDataModels(v0, &type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return outlined init with copy of PhoneSnippetDataModels(a1, v4, a2);
}

unint64_t PhoneUIPlugin.view(for:data:mode:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for siriPhoneUI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhoneUI);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v31 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&dword_0, v11, v12, "#PhoneUIPlugin creating view for id=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_0_1();
    v5 = v4;
    a3 = v31;
    OUTLINED_FUNCTION_0_1();
  }

  v27[0] = &type metadata for PhoneContactHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI0A13ContactHeaderVmMd, &_s14PhoneSnippetUI0A13ContactHeaderVmMR);
  if (String.init<A>(describing:)() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      lazy protocol witness table accessor for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error();
      v18 = swift_allocError();
      swift_willThrow();
      goto LABEL_13;
    }
  }

  outlined copy of Data._Representation(a3, a4);
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  CustomCanvasModel<>.init(serializedData:)();
  v18 = v5;
  if (!v5)
  {
    memcpy(__dst, __src, 0x41uLL);
    PhoneContactHeader.view.getter();
    outlined destroy of PhoneContactHeader(__dst);
    memcpy(v26, v29, 0x59uLL);
    lazy protocol witness table accessor for type ContactHeaderView and conformance ContactHeaderView();
    a2 = View.eraseToAnyView()();
    memcpy(v27, v26, 0x59uLL);
    outlined destroy of ContactHeaderView(v27);
    return a2;
  }

LABEL_13:

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    *(v21 + 12) = 2080;
    v26[0] = v18;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    a2 = v23;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v27);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_0, v19, v20, "#PhoneUIPlugin failed to create view component for id=%s: %s.", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  swift_willThrow();
  return a2;
}

Swift::Int PhoneUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneUIPlugin.Error()
{
  Hasher.init(_seed:)();
  PhoneUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error()
{
  result = lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactHeaderView and conformance ContactHeaderView()
{
  result = lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView;
  if (!lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneUIPlugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PhoneUIPlugin.Error(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x3ED8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
}