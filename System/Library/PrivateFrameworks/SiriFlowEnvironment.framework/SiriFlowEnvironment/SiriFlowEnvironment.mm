_BYTE *storeEnumTagSinglePayload for RequestPositionInSession(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD355B74);
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

uint64_t getEnumTagSinglePayload for UserSessionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{
  strcpy(a2, "responseMode");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
}

uint64_t OUTLINED_FUNCTION_0_5(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(a1);
}

uint64_t OUTLINED_FUNCTION_0_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(a1);
}

uint64_t outlined init with copy of SharedContextService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RefreshableSharedContext.sharedContext.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of SharedContextService?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t outlined assign with take of SharedContextService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SharedContext.internalSharedContext.getter()
{
  if (one-time initialization token for internalSharedContext != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }
}

uint64_t InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v131 = a7;
  v128 = a6;
  v138 = a5;
  v139 = a1;
  v142 = a4;
  v143 = a3;
  v145 = a2;
  v147 = a8;
  v134 = type metadata accessor for InputOrigin();
  v9 = OUTLINED_FUNCTION_0(v134);
  v132 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v133 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v128 - v19;
  v140 = type metadata accessor for AudioSource();
  v20 = OUTLINED_FUNCTION_0(v140);
  v135 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v146 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v129 = &v128 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v128 - v28;
  v144 = type metadata accessor for Logger();
  v29 = OUTLINED_FUNCTION_0(v144);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9_0();
  v130 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v128 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v46 = OUTLINED_FUNCTION_10(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v128 - v49;
  v51 = type metadata accessor for DeviceClass();
  v52 = OUTLINED_FUNCTION_0(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_7_0();
  v59 = v58 - v57;
  v61 = v8[8];
  v60 = v8[9];
  v141 = v8;
  __swift_project_boxed_opaque_existential_1(v8 + 5, v61);
  dispatch thunk of DeviceClassProvider.currentDeviceClass.getter();
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    outlined destroy of AudioDestination?(v50, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    static Logger.logger.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DD354000, v62, v63, "Unknown device type returned by MobileGestalt. Interaction type may not be accurate.", v64, 2u);
      MEMORY[0x1E12AE9C0](v64, -1, -1);
    }

    (*(v31 + 8))(v36, v144);
  }

  else
  {
    (*(v54 + 32))(v59, v50, v51);
    if (one-time initialization token for interactionForIdiom != -1)
    {
      swift_once();
    }

    specialized Dictionary.subscript.getter(v59, static InteractionTypeHelper.interactionForIdiom, v44);
    (*(v54 + 8))(v59, v51);
    v65 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_11(v44);
    if (!v66)
    {
      OUTLINED_FUNCTION_5_0(v65);
      return (*(v77 + 32))(v147, v44, v65);
    }

    outlined destroy of AudioDestination?(v44, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  }

  v67 = v146;
  if (v145)
  {
    goto LABEL_25;
  }

  if (v143)
  {
    goto LABEL_25;
  }

  if (v142)
  {
    goto LABEL_25;
  }

  v68 = v141[3];
  v69 = v141[4];
  __swift_project_boxed_opaque_existential_1(v141, v68);
  if ((*(v69 + 8))(v68, v69))
  {
    goto LABEL_25;
  }

  v70 = v137;
  outlined init with copy of AudioDestination?(v138, v137, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v71 = v140;
  if (__swift_getEnumTagSinglePayload(v70, 1, v140) == 1)
  {
    outlined destroy of AudioDestination?(v70, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    if (one-time initialization token for dialogDrivenInputOrigins != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v72 = specialized Set.contains(_:)(v139, static InteractionTypeHelper.dialogDrivenInputOrigins);
    v73 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0(v73);
    v75 = *(v74 + 104);
    if (v72)
    {
      v76 = MEMORY[0x1E69D35A8];
    }

    else
    {
      v76 = MEMORY[0x1E69D35B0];
    }

    v85 = *v76;
    v86 = v147;
    return v75(v86, v85);
  }

  v79 = v135;
  v80 = v136;
  (*(v135 + 32))(v136, v70, v71);
  v82 = v132;
  v81 = v133;
  v83 = v134;
  (*(v132 + 16))(v133, v139, v134);
  v84 = (*(v82 + 88))(v81, v83);
  if (v84 == *MEMORY[0x1E69D34F8])
  {
    (*(v79 + 8))(v80, v71);
LABEL_25:
    v87 = *MEMORY[0x1E69D35A8];
    v88 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0(v88);
    v75 = *(v89 + 104);
    v86 = v147;
    v85 = v87;
    return v75(v86, v85);
  }

  if (v84 == *MEMORY[0x1E69D34F0])
  {
LABEL_24:
    (*(v135 + 8))(v136, v140);
    goto LABEL_25;
  }

  v90 = v135;
  v91 = v140;
  if (v84 != *MEMORY[0x1E69D3508])
  {
    if (v84 == *MEMORY[0x1E69D34E0])
    {
      goto LABEL_24;
    }

    v97 = v129;
    (*(v135 + 16))(v129, v136, v140);
    static AudioSource.lineIn.getter();
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioSource and conformance AudioSource, MEMORY[0x1E69D3410]);
    v98 = OUTLINED_FUNCTION_3_0();
    v101 = *(v90 + 8);
    v100 = v90 + 8;
    v99 = v101;
    v101(v67, v91);
    if (v98)
    {
      v99(v97, v91);
      if (one-time initialization token for dialogDrivenInputOrigins != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v103 = specialized Set.contains(_:)(v139, static InteractionTypeHelper.dialogDrivenInputOrigins);
      v99(v136, v91);
      v104 = type metadata accessor for InteractionType();
      OUTLINED_FUNCTION_0_0(v104);
      v106 = MEMORY[0x1E69D35A8];
      if (!v103)
      {
        v106 = MEMORY[0x1E69D35B0];
      }

      (*(v105 + 104))(v147, *v106);
      return (*(v132 + 8))(v133, v134);
    }

    static AudioSource.wiredHeadsetMic.getter();
    OUTLINED_FUNCTION_3_0();
    v102 = OUTLINED_FUNCTION_4_0();
    (v99)(v102);
    static AudioSource.bluetoothHandsFreeDevice.getter();
    OUTLINED_FUNCTION_3_0();
    v107 = OUTLINED_FUNCTION_4_0();
    (v99)(v107);
    if (v98)
    {
      v99(v97, v91);
      v99(v136, v91);
    }

    else
    {
      static AudioSource.usbAudio.getter();
      OUTLINED_FUNCTION_3_0();
      v111 = OUTLINED_FUNCTION_4_0();
      (v99)(v111);
      static AudioSource.unknown.getter();
      OUTLINED_FUNCTION_3_0();
      v112 = OUTLINED_FUNCTION_4_0();
      (v99)(v112);
      static AudioSource.carAudio.getter();
      OUTLINED_FUNCTION_3_0();
      v113 = OUTLINED_FUNCTION_4_0();
      (v99)(v113);
      v115 = v146;
      static AudioSource.builtInMic.getter();
      v116 = OUTLINED_FUNCTION_8_0();
      v99(v115, v100);
      if (v116)
      {
        v117 = v140;
        v99(v129, v140);
        static InteractionTypeHelper.interactionType(audioDestination:)(v128, v147);
        v99(v136, v117);
        return (*(v132 + 8))(v133, v134);
      }

      v118 = v146;
      static AudioSource.bluetoothDoAPDevice.getter();
      v119 = OUTLINED_FUNCTION_8_0();
      v99(v118, v100);
      if ((v119 & 1) == 0)
      {
        v120 = v146;
        static AudioSource.carJarvisDevice.getter();
        v121 = v129;
        v122 = v140;
        v123 = dispatch thunk of static Equatable.== infix(_:_:)();
        v99(v120, v122);
        v99(v121, v122);
        v99(v136, v122);
        v124 = type metadata accessor for InteractionType();
        OUTLINED_FUNCTION_0_0(v124);
        v126 = (v132 + 8);
        if (v123)
        {
          v127 = MEMORY[0x1E69D35A8];
        }

        else
        {
          v127 = MEMORY[0x1E69D35B0];
        }

        (*(v125 + 104))(v147, *v127);
        return (*v126)(v133, v134);
      }

      v114 = v140;
      v99(v129, v140);
      v99(v136, v114);
    }

    v108 = *MEMORY[0x1E69D35A8];
    v109 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0(v109);
    (*(v110 + 104))(v147, v108);
    return (*(v132 + 8))(v133, v134);
  }

  (*(v135 + 8))(v136, v140);
  v92 = v130;
  outlined init with copy of AudioDestination?(v131, v130, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v93 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_11(v92);
  if (v66)
  {
    v94 = *MEMORY[0x1E69D35B0];
    OUTLINED_FUNCTION_5_0(v93);
    (*(v95 + 104))(v147);
    result = OUTLINED_FUNCTION_11(v92);
    if (!v66)
    {
      return outlined destroy of AudioDestination?(v92, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v93);
    return (*(v96 + 32))(v147, v92, v93);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 176);

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_10_0(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 37) = v2[5];
  *(v2 - 36) = v2[4];
  v3 = v2[2];
}

id OUTLINED_FUNCTION_10_1()
{

  return [v1 (v2 + 3320)];
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void OUTLINED_FUNCTION_9_2()
{

  JUMPOUT(0x1E12AE9C0);
}

uint64_t static InteractionTypeHelper.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return outlined init with copy of InteractionTypeHelper(&static InteractionTypeHelper.shared, a1);
}

__n128 OUTLINED_FUNCTION_2_3()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  v2 = *(v0 - 104);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DeviceClass();
  lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

uint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceClass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for InteractionType();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for InteractionType();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for DeviceClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return static MockablePublished.subscript.modify();
}

void OUTLINED_FUNCTION_11_2()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1E12ADF70);
}

uint64_t outlined destroy of AudioDestination?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment14MultiUserStateO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t CurrentRequest.__deallocating_deinit()
{
  CurrentRequest.deinit();
  v0 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDC0](v0);
}

void *CurrentRequest.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = v0[21];

  v21 = v0[22];

  v22 = v0[23];

  v23 = v0[24];

  v24 = v0[25];

  v25 = v0[26];

  v26 = v0[27];

  v27 = v0[28];

  v28 = v0[29];

  v29 = v0[30];

  v30 = v0[31];

  v31 = v0[32];

  v32 = v0[33];

  v33 = v0[34];

  v34 = v0[35];

  v35 = v0[36];

  v36 = v0[37];

  v37 = v0[38];

  v38 = v0[39];

  v39 = v0[40];

  return v0;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t sub_1DD3573E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t OUTLINED_FUNCTION_29(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(a1);
}

uint64_t SiriEnvironment.currentRequest.getter()
{
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiUserContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 66))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_3()
{

  JUMPOUT(0x1E12AE9C0);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_once();
}

uint64_t storeEnumTagSinglePayload for MultiUserContext(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t CurrentRequest.speechPackage.getter(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v3;
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1)
{
  *(v1 + 296) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_129()
{
  result = *(v0 - 320);
  v2 = *(v0 - 360);
  return result;
}

uint64_t CurrentRequest.mock.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 16);
}

uint64_t outlined init with take of SharedContextService(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DD357840(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.executionRequestId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.executionRequestId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.executionRequestId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t CurrentRequest.refId.getter()
{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v1;
}

{
  return CurrentRequest.refId.getter();
}

uint64_t OUTLINED_FUNCTION_248()
{
  *(v0 + 72) = v1;

  return swift_endAccess();
}

uint64_t sub_1DD357948(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.resultCandidateId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD357988(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.rootRequestId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t CurrentRequest.inputOrigin.getter(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();
}

uint64_t sub_1DD357A98(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.interactionId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t CurrentRequest.multiUserState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

BOOL MultiUserState.isEnabled.getter()
{
  outlined init with copy of MultiUserState(v0, v3);
  v1 = v4;
  if (v4 != 1)
  {
    outlined destroy of MultiUserState(v3);
  }

  return v1 != 1;
}

uint64_t MultiUserState.requiresUserGrounding.getter()
{
  outlined init with copy of MultiUserState(v0, v3);
  if (v3[4] == 1)
  {
    outlined destroy of MultiUserState(v3);
    return 0;
  }

  else
  {
    memcpy(__dst, v3, 0x42uLL);
    v1 = __dst[0];
    outlined destroy of MultiUserContext(__dst);
  }

  return v1;
}

uint64_t sub_1DD357CD4(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.companionName.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD357D14(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.responseLanguageVariant.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MultiUserState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD357DC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t protocol witness for Buildable.init(_:) in conformance CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.__allocating_init(_:)();
  *a1 = result;
  return result;
}

void CurrentRequest.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v363 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v28 = OUTLINED_FUNCTION_10(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v32);
  v33 = type metadata accessor for ExecutionLocation();
  v34 = OUTLINED_FUNCTION_4_1(v33, &a17);
  v354 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  OUTLINED_FUNCTION_10(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21(v327 - v45);
  v46 = type metadata accessor for ResponseMode();
  v47 = OUTLINED_FUNCTION_4_1(v46, &v376);
  v351 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6_2(v51, v327[0]);
  v53 = MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_37(v53, v54, v55, v56, v57, v58, v59, v60, v327[0]);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  OUTLINED_FUNCTION_10(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_21(v327 - v65);
  v66 = type metadata accessor for InteractionType();
  v67 = OUTLINED_FUNCTION_4_1(v66, &v362);
  v334 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  OUTLINED_FUNCTION_10(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_21(v327 - v77);
  v78 = type metadata accessor for InputOrigin();
  v79 = OUTLINED_FUNCTION_4_1(v78, &v341);
  v330 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v86 = OUTLINED_FUNCTION_10(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v92 = OUTLINED_FUNCTION_10(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v98 = OUTLINED_FUNCTION_10(v97);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v101);
  v103 = v327 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v105 = OUTLINED_FUNCTION_10(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_12();
  v110 = v108 - v109;
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_121();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v113 = OUTLINED_FUNCTION_10(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_12();
  v118 = v116 - v117;
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_191();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70(v120);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 3));
  OUTLINED_FUNCTION_73();
  v20[4] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 4));
  OUTLINED_FUNCTION_73();
  v20[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 5));
  OUTLINED_FUNCTION_73();
  v20[6] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 6));
  OUTLINED_FUNCTION_73();
  v20[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 7));
  OUTLINED_FUNCTION_73();
  v20[10] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_98((v20 + 10));
  type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  OUTLINED_FUNCTION_292();
  outlined init with copy of AudioSource?(v125, v126, v127, &_s13SiriUtilities11AudioSourceVSgMR);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  v328 = OUTLINED_FUNCTION_70(v128);
  swift_allocObject();
  v332 = v118;
  v129 = MockablePublished.init(wrappedValue:)();
  v331 = v21;
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v21, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v25[11] = v129;
  OUTLINED_FUNCTION_98((v25 + 11));
  v130 = type metadata accessor for AudioDestination();
  v133 = OUTLINED_FUNCTION_20(v130, v131, v132, v130);
  outlined init with copy of AudioSource?(v133, v110, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  v329 = OUTLINED_FUNCTION_70(v134);
  swift_allocObject();
  v337 = v110;
  v135 = MockablePublished.init(wrappedValue:)();
  v336 = v22;
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v136, v137, v138);
  v25[12] = v135;
  OUTLINED_FUNCTION_98((v25 + 12));
  type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_131(&a9);
  outlined init with copy of AudioSource?(v143, v144, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  v335 = OUTLINED_FUNCTION_70(v145);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v146 = MockablePublished.init(wrappedValue:)();
  v350[0] = v103;
  v147 = v327[1];
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v148, v149, v150);
  v25[15] = v146;
  OUTLINED_FUNCTION_24((v25 + 15));
  v151 = OUTLINED_FUNCTION_264();
  outlined init with copy of AudioSource?(v151, v152, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  v339 = OUTLINED_FUNCTION_70(v153);
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v154, v155, v156);
  v25[16] = v146;
  OUTLINED_FUNCTION_98((v25 + 16));
  v157 = type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_44(v157, v158, v159, v157);
  OUTLINED_FUNCTION_131(&a11);
  outlined init with copy of AudioSource?(v160, v161, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  v340 = OUTLINED_FUNCTION_70(v162);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v163 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v163, v164, &_s13SiriUtilities8HomeInfoVSgMR);
  v25[17] = v146;
  OUTLINED_FUNCTION_141((v25 + 17));
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  v341 = OUTLINED_FUNCTION_70(v165);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[18] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v25 + 18));
  OUTLINED_FUNCTION_73();
  v25[19] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_190((v25 + 19));
  LOBYTE(v373) = 2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70(v166);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[20] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_141((v25 + 20));
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  v345 = OUTLINED_FUNCTION_70(v167);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v25 + 22));
  OUTLINED_FUNCTION_73();
  v25[25] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_200((v25 + 25));
  LOBYTE(v373) = 2;
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_73();
  v25[26] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_98((v25 + 26));
  v168 = type metadata accessor for FlowTaskMetadata();
  v169 = v359[0];
  OUTLINED_FUNCTION_44(v168, v170, v171, v168);
  OUTLINED_FUNCTION_137(&a13);
  outlined init with copy of AudioSource?(v172, v173, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  v348 = OUTLINED_FUNCTION_70(v174);
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v175 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v175, v176, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v25[27] = v146;
  OUTLINED_FUNCTION_14((v25 + 27));
  OUTLINED_FUNCTION_73();
  v177 = MockablePublished.init(wrappedValue:)();
  v360 = v25;
  v25[29] = v177;
  v25 += 29;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[8] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[9] = MockablePublished.init(wrappedValue:)();
  v373 = 0;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70(v178);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v179 = MockablePublished.init(wrappedValue:)();
  v359[2] = v25;
  v25[11] = v179;
  KeyPath = swift_getKeyPath();
  v181 = v363;
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35(&v342);
  v182 = *KeyPath;

  OUTLINED_FUNCTION_52();
  v183 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v183);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35(&v343);
  v184 = *KeyPath;

  OUTLINED_FUNCTION_52();
  v185 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v185);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35(&v344);
  v186 = *KeyPath;

  OUTLINED_FUNCTION_52();
  v187 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v187);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35(&v345);
  v188 = *KeyPath;

  OUTLINED_FUNCTION_52();
  v189 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v189);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35(&v346);
  v190 = *KeyPath;

  OUTLINED_FUNCTION_52();
  v191 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v191);
  swift_getKeyPath();
  OUTLINED_FUNCTION_175(v350);
  Builder.subscript.getter();

  OUTLINED_FUNCTION_270(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, 1, v147);
  if (v192)
  {
    v193 = *MEMORY[0x1E69D3518];
    OUTLINED_FUNCTION_175(v352);
    v195 = *(v194 + 104);
    v196 = OUTLINED_FUNCTION_302();
    v197(v196);
    OUTLINED_FUNCTION_270(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, 1, v147);
    if (!v192)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_175(v352);
    v199 = *(v198 + 32);
    v200 = OUTLINED_FUNCTION_302();
    v201(v200, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, v147);
  }

  v202 = v360;
  OUTLINED_FUNCTION_71();
  v203 = OUTLINED_FUNCTION_284();
  v204(v203, v169, v147);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70(v205);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v206 = MockablePublished.init(wrappedValue:)();
  _s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd(v169, v147);
  v202[8] = v206;
  swift_endAccess();
  v207 = swift_getKeyPath();
  v208 = v333;
  Builder.subscript.getter();

  v209 = v338;
  OUTLINED_FUNCTION_270(v208, 1, v338);
  v210 = v334;
  if (v192)
  {
    v211 = *MEMORY[0x1E69D35B0];
    v212 = *(v334 + 104);
    v213 = OUTLINED_FUNCTION_284();
    v214(v213);
    OUTLINED_FUNCTION_270(v208, 1, v209);
    if (!v192)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v208, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }
  }

  else
  {
    v215 = *(v334 + 32);
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_290();
    v216();
  }

  OUTLINED_FUNCTION_71();
  v217 = *(v210 + 16);
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_167();
  v218();
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70(v219);
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  v220 = MockablePublished.init(wrappedValue:)();
  (*(v210 + 8))(v207, v209);
  v202[9] = v220;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136(&v347);
  v221 = v202[10];

  OUTLINED_FUNCTION_52();
  v202[10] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_175(&v353);
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136(&v348);
  v222 = v202[11];

  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v223, v224, v225, v226);
  OUTLINED_FUNCTION_70(v328);
  swift_allocObject();
  OUTLINED_FUNCTION_268();
  MockablePublished.init(wrappedValue:)();
  v227 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_254(v227);
  v202[11] = v181;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136(&v349);
  v228 = v202[12];

  v229 = &_s13SiriUtilities16AudioDestinationVSgMR;
  OUTLINED_FUNCTION_159(&v361);
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v230, v231, v232, v233);
  OUTLINED_FUNCTION_70(v329);
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v234 = OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_254(v234);
  v202[12] = v181;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_175(&v372);
  Builder.subscript.getter();
  v235 = v209;

  v236 = v209;
  v237 = v352[0];
  OUTLINED_FUNCTION_270(v236, 1, v352[0]);
  if (v192)
  {
    v229 = v350[2];
    static ResponseMode.displayForward.getter();
    OUTLINED_FUNCTION_270(v235, 1, v237);
    v238 = v351;
    if (!v192)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v235, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    v238 = v351;
    v239 = *(v351 + 32);
    v240 = OUTLINED_FUNCTION_302();
    v241(v240, v235, v237);
  }

  OUTLINED_FUNCTION_71();
  v242 = *(v238 + 16);
  v243 = v350[1];
  OUTLINED_FUNCTION_290();
  v244();
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70(v245);
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  v246 = MockablePublished.init(wrappedValue:)();
  (*(v238 + 8))(v229, v237);
  v202[13] = v246;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v247 = v352[1];
  if (v369[1] == 2)
  {
    OUTLINED_FUNCTION_225();
  }

  else
  {
    v248 = OUTLINED_FUNCTION_264();
    memcpy(v248, v249, 0x42uLL);
  }

  OUTLINED_FUNCTION_185();
  v250 = OUTLINED_FUNCTION_264();
  outlined init with copy of MultiUserState(v250, v251);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70(v252);
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v253 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v253);
  v202[14] = v246;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_188(&v373);
  Builder.subscript.getter();

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_136(v254);
  v255 = v202[15];

  OUTLINED_FUNCTION_159(&a9);
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v256, v257, v258, v259);
  OUTLINED_FUNCTION_70(v335);
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v260 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_254(v260);
  v202[15] = v181;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136(&v357);
  v261 = v202[16];

  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v262, v263, v264, v265);
  OUTLINED_FUNCTION_70(v339);
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v266 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_254(v266);
  v202[16] = v181;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_188(&a10);
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136(v359);
  v267 = v202[17];

  OUTLINED_FUNCTION_159(&a11);
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v268, v269, v270, v271);
  OUTLINED_FUNCTION_70(v340);
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v272 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_254(v272);
  v202[17] = v181;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v273 = v366;
  OUTLINED_FUNCTION_136(&v364);
  v274 = v202[18];

  v364 = v273;
  OUTLINED_FUNCTION_70(v341);
  swift_allocObject();
  v202[18] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136(&v365);
  v275 = v202[19];

  OUTLINED_FUNCTION_52();
  v202[19] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  LOBYTE(v273) = v366;
  OUTLINED_FUNCTION_136(&v367);
  v276 = v202[20];

  LOBYTE(v364) = v273;
  OUTLINED_FUNCTION_165();
  v202[20] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  if (v374)
  {
    v277 = v373;
  }

  else
  {
    v277 = 0;
  }

  if (v374)
  {
    v278 = v374;
  }

  else
  {
    v278 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_71();
  v366 = v277;
  v367 = v278;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70(v279);
  swift_allocObject();
  v202[21] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v280 = v366;
  OUTLINED_FUNCTION_136(&v368);
  v281 = v202[22];

  v364 = v280;
  OUTLINED_FUNCTION_70(v345);
  swift_allocObject();
  v202[22] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136(v369);
  v282 = v202[25];

  OUTLINED_FUNCTION_52();
  v202[25] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  LOBYTE(v280) = v366;
  OUTLINED_FUNCTION_136(&v370);
  v283 = v202[26];

  LOBYTE(v364) = v280;
  OUTLINED_FUNCTION_165();
  v202[26] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  v284 = v359[0];
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136(&v371);
  v285 = v202[27];

  OUTLINED_FUNCTION_128();
  outlined init with copy of AudioSource?(v286, v287, v288, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70(v348);
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v289, v290, v291);
  v202[27] = v181;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  if (BYTE4(v373))
  {
    v292 = 0;
  }

  else
  {
    v292 = v373;
  }

  OUTLINED_FUNCTION_71();
  LODWORD(v366) = v292;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70(v293);
  swift_allocObject();
  v202[28] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_112(&a14);
  v294 = v202[29];

  OUTLINED_FUNCTION_52();
  v202[29] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_297();
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70(v295);
  swift_allocObject();
  v202[30] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_76();
  v202[31] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_297();
  v296 = *(v295 + 48);
  v297 = *(v295 + 52);
  v359[1] = v295;
  swift_allocObject();
  v202[32] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  if (v373 == 3)
  {
    v298 = 0;
  }

  else
  {
    v298 = v373;
  }

  OUTLINED_FUNCTION_71();
  LOBYTE(v366) = v298;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70(v299);
  swift_allocObject();
  v202[33] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v300 = v366;
  OUTLINED_FUNCTION_71();
  v301 = v202[34];

  OUTLINED_FUNCTION_52();
  v202[34] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_185();
  v375 = &type metadata for DummyLocationProvider;
  v376 = &protocol witness table for DummyLocationProvider;
  v302 = OUTLINED_FUNCTION_264();
  outlined init with copy of SiriLocationProvider(v302, v303);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70(v304);
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v305 = OUTLINED_FUNCTION_73();
  __swift_destroy_boxed_opaque_existential_1(v305);
  v202[35] = v300;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  v306 = v202[36];

  OUTLINED_FUNCTION_52();
  v202[36] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_181(&a17);
  OUTLINED_FUNCTION_270(v307, v308, v309);
  if (v192)
  {
    v311 = v353;
    static ExecutionLocation.unknown.getter();
    OUTLINED_FUNCTION_270(v247, 1, v284);
    v312 = v355;
    v243 = v354;
    if (!v192)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v247, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_188(&v377);
    v311 = v353;
    (*(v310 + 32))(v353, v247, v284);
    v312 = v355;
  }

  OUTLINED_FUNCTION_71();
  v359[0] = *(v243 + 16);
  (v359[0])(v361, v311, v284);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70(v313);
  swift_allocObject();
  v314 = v311;
  OUTLINED_FUNCTION_118();
  v315 = MockablePublished.init(wrappedValue:)();
  v358 = *(v243 + 8);
  v358(v314, v284);
  v202[23] = v315;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();
  v316 = v362;

  OUTLINED_FUNCTION_270(v312, 1, v316);
  if (v192)
  {
    v317 = v356;
    static ExecutionLocation.unknown.getter();
    OUTLINED_FUNCTION_270(v312, 1, v316);
    if (!v192)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v312, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    }
  }

  else
  {
    v317 = v356;
    (*(v243 + 32))(v356, v312, v316);
  }

  v318 = v360;
  OUTLINED_FUNCTION_71();
  v319 = OUTLINED_FUNCTION_86(&a16);
  (v359[0])(v319, v317, v316);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v320 = OUTLINED_FUNCTION_99();
  v358(v320, v316);
  OUTLINED_FUNCTION_256();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  v321 = v318[37];

  OUTLINED_FUNCTION_52();
  v322 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v322);
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  v323 = v318[38];

  OUTLINED_FUNCTION_52();
  v324 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v324);
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_297();
  v325 = OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_70(v325);
  swift_allocObject();
  v326 = OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_255(v326);
  CurrentRequest.overrideProperties.setter();

  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_1DD359AF0(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.refId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359B1C(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.aceId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359B48(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359B74(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.peerName.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359CB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.speechPackage.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1DD359CE4(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.asrOnDevice.getter();
  *v1 = result;
  return result;
}

void sub_1DD359D0C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  CurrentRequest.asrOnDevice.setter();
}

uint64_t sub_1DD359D34(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359D60(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1DD359DDC(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *v1 = result;
  return result;
}

void sub_1DD359E04(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  CurrentRequest.isRecognizeMyVoiceEnabled.setter();
}

uint64_t sub_1DD359E2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.voiceAudioSessionId.getter();
  *v1 = result;
  return result;
}

void sub_1DD359E54(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  CurrentRequest.voiceAudioSessionId.setter();
}

uint64_t sub_1DD359E7C(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.utterance.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359EA8(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  v1 = CurrentRequest.isSystemApertureEnabled.getter();
  return OUTLINED_FUNCTION_296(v1);
}

uint64_t sub_1DD359EF4(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  v1 = CurrentRequest.isLiveActivitiesSupported.getter();
  return OUTLINED_FUNCTION_296(v1);
}

uint64_t sub_1DD359F40(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  v1 = CurrentRequest.isInAmbient.getter();
  return OUTLINED_FUNCTION_296(v1);
}

uint64_t sub_1DD359F94(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.requestLanguageVariant.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DD359FC0(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  v1 = CurrentRequest.remoteRequestWasMadeInSession.getter();
  return OUTLINED_FUNCTION_296(v1);
}

uint64_t OUTLINED_FUNCTION_31@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t getEnumTagSinglePayload for MultiUserState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 66))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double OUTLINED_FUNCTION_24@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 128) = 0;
  result = 0.0;
  *(v2 - 160) = 0u;
  *(v2 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{

  return MockablePublished.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_150(__n128 a1, __n128 a2)
{
  *(v2 - 160) = a1;
  *(v2 - 144) = a2;
  v3 = *(v2 + 48);
  *(v2 - 192) = *(v2 + 64);
  *(v2 - 176) = v3;
  v4 = *(v2 + 80);
  *(v2 - 224) = *(v2 + 96);
  *(v2 - 208) = v4;
  v12 = *(v2 + 112);
  v6 = *(v2 + 128);
  v5 = *(v2 + 136);
  v7 = *(v2 + 144);
  v11 = *(v2 + 152);
  result = *(v2 + 168);
  v9 = *(v2 + 184);
  v10 = *(v2 + 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_60()
{

  return static MockablePublished.subscript.setter();
}

void CurrentRequest.init(storage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v266 = v25;
  v26 = type metadata accessor for ExecutionLocation();
  v27 = OUTLINED_FUNCTION_4_1(v26, &a12);
  v264 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v32);
  v33 = type metadata accessor for ResponseMode();
  v34 = OUTLINED_FUNCTION_4_1(v33, &v284);
  v261 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v39);
  v40 = type metadata accessor for InteractionType();
  v41 = OUTLINED_FUNCTION_4_1(v40, &v283);
  v258 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v46);
  v47 = type metadata accessor for InputOrigin();
  v48 = OUTLINED_FUNCTION_4_1(v47, &v281);
  v254 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v55 = OUTLINED_FUNCTION_10(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v61 = OUTLINED_FUNCTION_10(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_121();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v66 = OUTLINED_FUNCTION_10(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v72 = OUTLINED_FUNCTION_10(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v239 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v79 = OUTLINED_FUNCTION_10(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_9_0();
  v83 = v82;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_191();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70(v85);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[4] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[6] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[10] = MockablePublished.init(wrappedValue:)();
  v243 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  v240 = v21;
  v242 = v83;
  outlined init with copy of AudioSource?(v21, v83, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70(v90);
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v91 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v91, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v92);
  v244 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  v241 = v77;
  OUTLINED_FUNCTION_131(&a14);
  outlined init with copy of AudioSource?(v97, v98, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70(v245);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v99 = OUTLINED_FUNCTION_104();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v99, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v100);
  v250 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_64(v250, v101, v102, v250);
  OUTLINED_FUNCTION_131(&a18);
  outlined init with copy of AudioSource?(v103, v104, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70(v251);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v105 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v105, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v106);
  v107 = OUTLINED_FUNCTION_116();
  outlined init with copy of AudioSource?(v107, v108, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70(v109);
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v110 = OUTLINED_FUNCTION_73();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v110, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v20[16] = v20;
  v111 = type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_20(v111, v112, v113, v111);
  OUTLINED_FUNCTION_137(v278);
  outlined init with copy of AudioSource?(v114, v115, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70(v116);
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v117, v118, v119);
  v20[17] = v20;
  v280 = 0;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70(v247);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v120 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v120);
  v246 = v121;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v122 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v122);
  OUTLINED_FUNCTION_144(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70(v124);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v125 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v125);
  OUTLINED_FUNCTION_141(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70(v127);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v128 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v128);
  OUTLINED_FUNCTION_205(v129);
  LOBYTE(v280) = 2;
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_73();
  v130 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v130);
  OUTLINED_FUNCTION_98(v131);
  v248 = type metadata accessor for FlowTaskMetadata();
  v132 = OUTLINED_FUNCTION_27(&a15);
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  OUTLINED_FUNCTION_159(&a17);
  outlined init with copy of AudioSource?(v136, v137, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70(v249);
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v138 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v138, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_190(v139);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v140 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v140);
  v252 = v141;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v142 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70(v143);
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[40] = MockablePublished.init(wrappedValue:)();
  v144 = *MEMORY[0x1E69D3518];
  OUTLINED_FUNCTION_175(&v279);
  v146 = v253;
  v147 = v256;
  (*(v145 + 104))(v253);
  OUTLINED_FUNCTION_71();
  v148 = v147;
  MEMORY[0x12](v255, v146, v147);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70(v149);
  swift_allocObject();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v150(v146, v147);
  OUTLINED_FUNCTION_249();
  v151 = *MEMORY[0x1E69D35B0];
  OUTLINED_FUNCTION_175(v282);
  v153 = v257;
  v154 = v259;
  (*(v152 + 104))(v257);
  OUTLINED_FUNCTION_71();
  v155 = v148;
  v156 = *(v148 + 16);
  v157 = OUTLINED_FUNCTION_284();
  v158 = v154;
  v159(v157, v153, v154);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70(v160);
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v161 = MockablePublished.init(wrappedValue:)();
  (*(v155 + 8))(v153, v158);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_158(v162, v163, v164, &v266);
  OUTLINED_FUNCTION_33(&v263);
  v165 = *v158;

  OUTLINED_FUNCTION_173(&v265);
  outlined init with copy of AudioSource?(v166, v167, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v168, v169, v170);
  *v158 = v161;
  swift_endAccess();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_158(v171, v172, v173, &v267);
  OUTLINED_FUNCTION_33(&v264);

  OUTLINED_FUNCTION_137(&a14);
  outlined init with copy of AudioSource?(v174, v175, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_70(v245);
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v176, v177, v178);
  _s13SiriUtilities11AudioSourceVSgMd = v161;
  swift_endAccess();
  v179 = v260;
  static ResponseMode.displayForward.getter();
  OUTLINED_FUNCTION_71();
  v180 = v261;
  v181 = *(v261 + 16);
  v182 = OUTLINED_FUNCTION_162();
  v183 = v262;
  v184(v182);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70(v185);
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  v186 = MockablePublished.init(wrappedValue:)();
  (*(v180 + 8))(v179, v183);
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_88();
  v187 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v187, v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70(v189);
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v190 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v190);
  OUTLINED_FUNCTION_246();
  v191 = OUTLINED_FUNCTION_27(&a16);
  OUTLINED_FUNCTION_158(v191, v192, v193, &v277);
  OUTLINED_FUNCTION_33(&v275);
  v194 = *v183;

  outlined init with copy of AudioSource?(&_s13SiriUtilities16AudioDestinationVSgMR, v270, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70(v251);
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  v195 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v195, v196, &_s13SiriUtilities14BargeInContextVSgMR);
  *v183 = v186;
  swift_endAccess();
  OUTLINED_FUNCTION_31(&v268);
  OUTLINED_FUNCTION_218();
  v271 = 0;
  OUTLINED_FUNCTION_70(v247);
  swift_allocObject();
  v197 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v197);
  OUTLINED_FUNCTION_31(&v269);
  OUTLINED_FUNCTION_218();
  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_114();
  v198 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v198);
  OUTLINED_FUNCTION_31(&v270);
  OUTLINED_FUNCTION_218();
  LOBYTE(v271) = 2;
  OUTLINED_FUNCTION_165();
  v199 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v199);
  OUTLINED_FUNCTION_71();
  v271 = 0;
  v272 = 0xE000000000000000;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70(v200);
  swift_allocObject();
  v201 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_245(v201);
  OUTLINED_FUNCTION_31(&v272);
  OUTLINED_FUNCTION_218();
  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_114();
  v202 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v202);
  OUTLINED_FUNCTION_31(&v274);
  OUTLINED_FUNCTION_218();
  LOBYTE(v271) = 2;
  OUTLINED_FUNCTION_165();
  v203 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v203);
  v204 = OUTLINED_FUNCTION_27(&a15);
  OUTLINED_FUNCTION_158(v204, v205, v206, &v276);
  OUTLINED_FUNCTION_33(&v273);
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_117(&a17);
  outlined init with copy of AudioSource?(v207, v208, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70(v249);
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v209 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v209, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_71();
  LODWORD(v271) = 0;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70(v210);
  swift_allocObject();
  v211 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v211);
  OUTLINED_FUNCTION_31(v278);
  OUTLINED_FUNCTION_218();
  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_114();
  v212 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v212);
  OUTLINED_FUNCTION_71();
  LOBYTE(v271) = 0;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70(v213);
  swift_allocObject();
  v214 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v214);
  OUTLINED_FUNCTION_71();
  LOBYTE(v271) = 0;
  OUTLINED_FUNCTION_76();
  v215 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v215);
  OUTLINED_FUNCTION_71();
  LOBYTE(v271) = 0;
  v270 = v213;
  OUTLINED_FUNCTION_76();
  v216 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v216);
  OUTLINED_FUNCTION_71();
  LOBYTE(v271) = 0;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70(v217);
  swift_allocObject();
  v218 = OUTLINED_FUNCTION_186();
  v219 = v24;
  OUTLINED_FUNCTION_239(v218);
  OUTLINED_FUNCTION_71();
  v220 = v24[34];

  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_114();
  v221 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v221);
  OUTLINED_FUNCTION_87();
  v282[0] = &type metadata for DummyLocationProvider;
  v282[1] = &protocol witness table for DummyLocationProvider;
  v222 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v222, v223);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70(v224);
  swift_allocObject();
  v225 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v225);
  OUTLINED_FUNCTION_71();
  v226 = v24[36];

  v271 = 0;
  v272 = 0;
  v239 = v85;
  OUTLINED_FUNCTION_114();
  v227 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v227);
  v228 = v263;
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71();
  v229 = v264;
  v230 = *(v264 + 16);
  v231 = OUTLINED_FUNCTION_125(&a10);
  v232 = v265;
  v230(v231, v228, v265);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70(v233);
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  v234 = MockablePublished.init(wrappedValue:)();
  v235 = *(v229 + 8);
  v235(v228, v232);
  v219[23] = v234;
  swift_endAccess();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71();
  v230(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, v228, v232);
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v236 = OUTLINED_FUNCTION_268();
  v235(v236, v232);
  v219[24] = v234;
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  v237 = v219[37];

  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_76();
  v219[37] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  v238 = v219[38];

  v271 = 0;
  v272 = 0;
  OUTLINED_FUNCTION_76();
  v219[38] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  LOBYTE(v271) = 0;
  OUTLINED_FUNCTION_70(v270);
  swift_allocObject();
  v219[39] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_170();
}

uint64_t outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_247()
{
  *(v0 + 104) = v1;

  return swift_endAccess();
}

uint64_t outlined init with copy of AudioSource?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_112@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_115()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_163@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 - 256) = a6;
  *(v7 - 696) = a5;
  *(v7 - 792) = a4;
  *(v7 - 776) = a3;
  *(v7 - 824) = a2;
  *(v7 - 816) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0(void *a1)
{
  v3 = a1[17];
  v4 = a1[18];
  v5 = a1[19];
  v6 = a1[20];
  v7 = a1[21];
  v8 = a1[22];
  v9 = a1[23];

  return outlined consume of Policy?(v3);
}

uint64_t OUTLINED_FUNCTION_249()
{
  *(v0 + 64) = v1;

  return swift_endAccess();
}

uint64_t type metadata accessor for FlowTaskMetadata()
{
  result = type metadata singleton initialization cache for FlowTaskMetadata;
  if (!type metadata singleton initialization cache for FlowTaskMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{
  result = *(v0 - 352);
  v2 = *(v0 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_43()
{
  v1 = *(*(v0 - 440) + 16);
  result = *(v0 - 448);
  v3 = *(v0 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v3 - 160) = 0;
  *(v3 - 152) = 0;
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_279()
{
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 160));
  *(v1 + 280) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_47@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_202(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_246()
{
  *(v0 + 112) = v1;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x1E12ADF20);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_189(uint64_t result)
{
  *(v1 + 304) = result;
  *(v2 - 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_33@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_220()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_253(uint64_t a1)
{
  *(v1 + 272) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_219()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_218()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_217(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_244()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return static MockablePublished.subscript.getter();
}

uint64_t outlined init with copy of SiriLocationProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v1, v2, v0);
}

double OUTLINED_FUNCTION_225()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 1;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_140@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(a1 - 256);
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45()
{
  result = *(v0 - 288);
  v2 = *(v0 - 368);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_274()
{
  *(v0 + 184) = v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_76()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_185()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of AudioSource?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_240(uint64_t a1)
{
  *(v1 + 256) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_239(uint64_t a1)
{
  *(v1 + 264) = a1;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_237()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_getKeyPath();
}

void CurrentRequest.overrideProperties.setter()
{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

{
  CurrentRequest.overrideProperties.setter();
}

uint64_t sub_1DD35BE98(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.overrideProperties.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1DD35BF18(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = CurrentRequest.sessionId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t SiriEnvironment.currentRequest.setter()
{
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_97();

  return dispatch thunk of SiriEnvironment.subscript.setter();
}

uint64_t FlowTaskMetadata.init(id:isClientInitiated:creationTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for FlowTaskMetadata() + 24);
  v11 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  outlined destroy of Date?(a5 + v10);
  (*(*(v11 - 8) + 32))(a5 + v10, a4, v11);

  return __swift_storeEnumTagSinglePayload(a5 + v10, 0, 1, v11);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CurrentRequest.flowTaskMetadata.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v6 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, v7, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t static SharedContext.current.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for internalSharedContext != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = static SharedContext.internalSharedContext;
  a1[3] = type metadata accessor for RefreshableSharedContext();
  a1[4] = &protocol witness table for RefreshableSharedContext;
  *a1 = v2;
}

uint64_t _s19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = _s19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO11stringValueAFSgSS_tcfC_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD35C508(uint64_t *a1)
{
  OUTLINED_FUNCTION_127(a1);
  result = SiriEnvironment.currentRequest.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1DD35D4AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.homeKitProvider.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD35D4DC@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_4_3(a1);
  result = (*(v4 + 120))(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1DD35D564()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[17];

  if (v0[18] != 1)
  {

    v9 = v0[19];

    v10 = v0[20];

    v11 = v0[22];
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1DD35D600()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[11] != 1)
  {

    v5 = v0[12];

    v6 = v0[13];

    v7 = v0[15];
  }

  v8 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DD35D680(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_7_2(a1);
  result = (*(v3 + 152))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1DD35D6C4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_7_2(a1);
  result = (*(v3 + 176))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1DD35D708(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_7_2(a1);
  result = (*(v3 + 200))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1DD35D74C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD35D79C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1DD35DB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initRadarComponent()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

void *__TapToRadarKitLibrary_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary_sLib = result;
  return result;
}

Class initTapToRadarService()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass = TapToRadarServiceFunction;
  return result;
}

Class initRadarDraft()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass = RadarDraftFunction;
  return result;
}

uint64_t UserSessionType.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x746E6569626D61;
  }

  if (v1 == 3)
  {
    return 0x7473657567;
  }

  _StringGuts.grow(_:)(45);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v3, v4);

  MEMORY[0x1E12ADF70](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0xE700000000000000;
    v2 = 0x746E6569626D61;
  }

  else if (a1 == 3)
  {
    v1 = 0xE500000000000000;
    v2 = 0x7473657567;
  }

  else
  {
    _StringGuts.grow(_:)(45);

    if (a1)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (a1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12ADF70](v4, v5);

    MEMORY[0x1E12ADF70](41, 0xE100000000000000);
    v2 = 0xD00000000000002ALL;
    v1 = 0x80000001DD387560;
  }

  MEMORY[0x1E12ADF70](v2, v1);
}

uint64_t static UserSessionType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if ((v3 & 0xFE) != 2)
      {
        v4 = v3 ^ v2 ^ 1;
        return v4 & 1;
      }

      goto LABEL_8;
    }

    if (v3 != 3)
    {
LABEL_8:
      v4 = 0;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionType.AmbientCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionType.AmbientCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.AmbientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.AmbientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserSessionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6569626D61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473657567 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD387610 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int UserSessionType.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](a1);
  return Hasher._finalize()();
}

uint64_t UserSessionType.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746E6569626D61;
  }

  if (a1 == 1)
  {
    return 0x7473657567;
  }

  return 0xD000000000000013;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserSessionType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](v1);
  return Hasher._finalize()();
}

uint64_t UserSessionType.EnrolledUserSessionCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001DD387630 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int UserSessionType.EnrolledUserSessionCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserSessionType.EnrolledUserSessionCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionType.EnrolledUserSessionCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionType.EnrolledUserSessionCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.EnrolledUserSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.EnrolledUserSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.GuestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.GuestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserSessionType.encode(to:)()
{
  OUTLINED_FUNCTION_9();
  v53 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  v5 = OUTLINED_FUNCTION_0(v4);
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  v12 = OUTLINED_FUNCTION_0(v11);
  v48 = v13;
  v49 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  v19 = OUTLINED_FUNCTION_0(v18);
  v45 = v20;
  v46 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v32 = *v0;
  v33 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v32 == 2)
  {
    lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();
    OUTLINED_FUNCTION_3();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v45;
    v34 = v46;
  }

  else
  {
    if (v32 != 3)
    {
      lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();
      v39 = v50;
      OUTLINED_FUNCTION_3();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v52;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v51 + 8))(v39, v40);
      v41 = *(v28 + 8);
      v42 = OUTLINED_FUNCTION_7();
      v43(v42);
      goto LABEL_7;
    }

    lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();
    v25 = v47;
    OUTLINED_FUNCTION_3();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v48;
    v34 = v49;
  }

  (*(v35 + 8))(v25, v34);
  v36 = *(v28 + 8);
  v37 = OUTLINED_FUNCTION_7();
  v38(v37);
LABEL_7:
  OUTLINED_FUNCTION_8();
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

unint64_t lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

void UserSessionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v26;
  a24 = v27;
  v99 = v24;
  v29 = v28;
  v96 = v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v92);
  v95 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v88 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  v37 = OUTLINED_FUNCTION_0(v36);
  v93 = v38;
  v94 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v42);
  v91 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v88 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v49);
  v97 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v88 - v54;
  v56 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();
  v57 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v57)
  {
    goto LABEL_10;
  }

  v89 = v42;
  v90 = v48;
  v99 = v29;
  v58 = v55;
  v59 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO_Tt1g5(v59, 0);
  if (v61 == v62 >> 1)
  {
LABEL_9:
    v74 = type metadata accessor for DecodingError();
    swift_allocError();
    v76 = v75;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v76 = &type metadata for UserSessionType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v97 + 8))(v58, v49);
    v29 = v99;
LABEL_10:
    v78 = v29;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_8();
    return;
  }

  v88 = 0;
  if (v61 < (v62 >> 1))
  {
    v64 = v55;
    v65 = *(v60 + v61);
    specialized ArraySlice.subscript.getter(v61 + 1, v62 >> 1, started, v60, v61, v62);
    v67 = v66;
    v69 = v68;
    swift_unknownObjectRelease();
    if (v67 == v69 >> 1)
    {
      if (v65)
      {
        if (v65 == 1)
        {
          a13 = 1;
          lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();
          OUTLINED_FUNCTION_4(&unk_1F58A2B20, &a13);
          v70 = v96;
          swift_unknownObjectRelease();
          (*(v93 + 8))(v25, v94);
          v71 = OUTLINED_FUNCTION_1();
          v72(v71);
          v73 = 3;
        }

        else
        {
          a14 = 2;
          lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();
          OUTLINED_FUNCTION_4(&unk_1F58A2BB0, &a14);
          v82 = v49;
          v83 = KeyedDecodingContainer.decode(_:forKey:)();
          v84 = v97;
          v85 = v83;
          swift_unknownObjectRelease();
          v86 = OUTLINED_FUNCTION_6();
          v87(v86);
          (*(v84 + 8))(v64, v82);
          v73 = v85 & 1;
          v70 = v96;
        }
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();
        v79 = v90;
        OUTLINED_FUNCTION_4(&unk_1F58A2B00, &a12);
        swift_unknownObjectRelease();
        (*(v91 + 8))(v79, v89);
        v80 = OUTLINED_FUNCTION_1();
        v81(v80);
        v73 = 2;
        v70 = v96;
      }

      *v70 = v73;
      v78 = v99;
      goto LABEL_11;
    }

    v58 = v64;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t UserSessionState.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E12ADF70](0xD000000000000011, 0x80000001DD3875C0);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v2);
  MEMORY[0x1E12ADF70](0xD000000000000022, 0x80000001DD3875E0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v3, v4);

  MEMORY[0x1E12ADF70](93, 0xE100000000000000);
  return 0;
}

uint64_t UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, __int16 *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (v15 == 2 && (a2 & 1) != 0)
  {
    static Logger.environment.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD354000, v16, v17, "#user-session: invalid state for ambient mode. isSessionActiveForRecognizedUser should be false", v18, 2u);
      MEMORY[0x1E12AE9C0](v18, -1, -1);
    }

    result = (*(v9 + 8))(v14, v6);
    v19 = 512;
  }

  else
  {
    if (a2)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v19 = v20 | v15;
  }

  *a3 = v19;
  return result;
}

uint64_t static UserSessionState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }

    return 0;
  }

  if (v2 != 3)
  {
    if ((v3 & 0xFE) != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }

    return 0;
  }

  if (v3 != 3)
  {
    return 0;
  }

  return a1[1] ^ a2[1] ^ 1u;
}

uint64_t UserSessionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655372657375 && a2 == 0xEF657079546E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DD387650 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int UserSessionState.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](a1 & 1);
  return Hasher._finalize()();
}

uint64_t UserSessionState.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0x7373655372657375;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionState.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionState.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserSessionState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = *v24;
  a10 = v24[1];
  v39 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a14 = v38;
  a13 = 0;
  lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v25)
  {
    a12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v32 + 8))(v37, v30);
  OUTLINED_FUNCTION_8();
}

void UserSessionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_9();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType();
    OUTLINED_FUNCTION_3();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = *(v20 + 8);
    v27 = OUTLINED_FUNCTION_7();
    v28(v27);
    *v17 = a13;
    v17[1] = v25 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_8();
}

uint64_t default argument 1 of InteractionTypeHelper.init(accessibilityStatusProvider:deviceClassProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MobileGestaltDeviceClassProvider();
  v3 = MEMORY[0x1E69D3660];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return static MobileGestaltDeviceClassProvider.shared.getter();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType()
{
  result = lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType;
  if (!lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType;
  if (!lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType);
  }

  return result;
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

unsigned __int8 *getEnumTagSinglePayload for UserSessionType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 3);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserSessionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for UserSessionType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for UserSessionType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserSessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserSessionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for UserSessionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for UserSessionType.EnrolledUserSessionCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for UserSessionType.EnrolledUserSessionCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t FlowTaskMetadata.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FlowTaskMetadata.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FlowTaskMetadata.creationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowTaskMetadata() + 24);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FlowTaskMetadata.creationTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowTaskMetadata() + 24);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for FlowTaskMetadata()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t InteractionTypeHelper.init(accessibilityStatusProvider:deviceClassProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SharedContextService(a1, a3);

  return outlined init with take of SharedContextService(a2, a3 + 40);
}

uint64_t one-time initialization function for shared()
{
  qword_1EE15E8A0 = &type metadata for AccessibilityStatusProviderImpl;
  unk_1EE15E8A8 = &protocol witness table for AccessibilityStatusProviderImpl;
  qword_1EE15E8C8 = type metadata accessor for MobileGestaltDeviceClassProvider();
  unk_1EE15E8D0 = MEMORY[0x1E69D3660];
  __swift_allocate_boxed_opaque_existential_1(qword_1EE15E8B0);
  return static MobileGestaltDeviceClassProvider.shared.getter();
}

uint64_t one-time initialization function for interactionForIdiom()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassO_AC15InteractionTypeOtGMd, "z5");
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassO_AA15InteractionTypeOtMd, &_s13SiriUtilities11DeviceClassO_AA15InteractionTypeOtMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD3855C0;
  v3 = v17 + v2;
  v4 = v0[14];
  v5 = *MEMORY[0x1E69D3440];
  v6 = type metadata accessor for DeviceClass();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  v8 = *MEMORY[0x1E69D35B0];
  v9 = type metadata accessor for InteractionType();
  v10 = *(*(v9 - 8) + 104);
  v16 = v8;
  v10(v3 + v4, v8, v9);
  v15 = v0[14];
  v7(v3 + v1, *MEMORY[0x1E69D3450], v6);
  v10(v3 + v1 + v15, v8, v9);
  v11 = v0[14];
  v7(v3 + 2 * v1, *MEMORY[0x1E69D3458], v6);
  v10(v3 + 2 * v1 + v11, *MEMORY[0x1E69D35A8], v9);
  v12 = v3 + 3 * v1;
  v13 = v0[14];
  v7(v12, *MEMORY[0x1E69D3430], v6);
  v10(v12 + v13, v16, v9);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3460]);
  result = Dictionary.init(dictionaryLiteral:)();
  static InteractionTypeHelper.interactionForIdiom = result;
  return result;
}

uint64_t one-time initialization function for dialogDrivenInputOrigins()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11InputOriginOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11InputOriginOGMR);
  v0 = type metadata accessor for InputOrigin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD3855C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D34D8], v0);
  v6(v5 + v2, *MEMORY[0x1E69D34E0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69D3500], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69D3510], v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11InputOriginO_Tt0g5(v4);
  static InteractionTypeHelper.dialogDrivenInputOrigins = result;
  return result;
}

uint64_t *InteractionTypeHelper.dialogDrivenInputOrigins.unsafeMutableAddressor()
{
  if (one-time initialization token for dialogDrivenInputOrigins != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  return &static InteractionTypeHelper.dialogDrivenInputOrigins;
}

uint64_t static InteractionTypeHelper.interactionType(inputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for dialogDrivenInputOrigins != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v4 = specialized Set.contains(_:)(a1, static InteractionTypeHelper.dialogDrivenInputOrigins);
  v5 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_5_0(v5);
  v8 = *(v7 + 104);
  v9 = MEMORY[0x1E69D35A8];
  if (!v4)
  {
    v9 = MEMORY[0x1E69D35B0];
  }

  v10 = *v9;

  return v8(a2, v10, v6);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520]);
  v18 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520]);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

{
  v4 = type metadata accessor for AudioDestination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0]);
  v18 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0]);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t one-time initialization function for dialogDrivenAudioDestinations()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMR);
  v0 = *(type metadata accessor for AudioDestination() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD3855D0;
  static AudioDestination.bluetoothHandsFreeDevice.getter();
  static AudioDestination.bluetoothA2DPDevice.getter();
  static AudioDestination.carAudio.getter();
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities16AudioDestinationV_Tt0g5(v3);
  static InteractionTypeHelper.dialogDrivenAudioDestinations = result;
  return result;
}

uint64_t *InteractionTypeHelper.dialogDrivenAudioDestinations.unsafeMutableAddressor()
{
  if (one-time initialization token for dialogDrivenAudioDestinations != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  return &static InteractionTypeHelper.dialogDrivenAudioDestinations;
}

uint64_t static InteractionTypeHelper.dialogDrivenInputOrigins.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t static InteractionTypeHelper.interactionType(audioDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AudioDestination();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v18 = v17 - v16;
  outlined init with copy of AudioDestination?(a1, v9, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of AudioDestination?(v9, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v19 = *MEMORY[0x1E69D35B0];
    v20 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0(v20);
    return (*(v21 + 104))(a2, v19);
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    if (one-time initialization token for dialogDrivenAudioDestinations != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v23 = specialized Set.contains(_:)(v18, static InteractionTypeHelper.dialogDrivenAudioDestinations);
    (*(v13 + 8))(v18, v10);
    v24 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0(v24);
    if (v23)
    {
      v26 = MEMORY[0x1E69D35A8];
    }

    else
    {
      v26 = MEMORY[0x1E69D35B0];
    }

    return (*(v25 + 104))(a2, *v26);
  }
}

uint64_t outlined init with copy of AudioDestination?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t getEnumTagSinglePayload for InteractionTypeHelper(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for InteractionTypeHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11InputOriginO_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for InputOrigin();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities11InputOriginOGMd, &_ss11_SetStorageCy13SiriUtilities11InputOriginOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520]);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities16AudioDestinationV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for AudioDestination();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss11_SetStorageCy13SiriUtilities16AudioDestinationVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0]);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 144);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t SiriLocationProvider.requestOrigin()()
{
  OUTLINED_FUNCTION_3_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriLocationProvider.requestOrigin(), 0, 0);
}

{
  v1 = v0[5];
  v12 = v0[3];
  v2 = type metadata accessor for DispatchTimeInterval();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = *(v12 + 8);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = SiriLocationProvider.requestOrigin();
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v6, v8, v9);
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  outlined destroy of DispatchTimeInterval?(v3);

  v6 = OUTLINED_FUNCTION_1_1();

  return v7(v6);
}

uint64_t outlined destroy of DispatchTimeInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DummyLocationProvider.requestOrigin(searchTimeout:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](DummyLocationProvider.requestOrigin(searchTimeout:), 0, 0);
}

{
  v1 = v0[4];
  static Logger.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD354000, v2, v3, "DummyLocationProvider was used; this should not happen.", v4, 2u);
    MEMORY[0x1E12AE9C0](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider;

  return DummyLocationProvider.requestOrigin(searchTimeout:)();
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_1();

  return v6(v5);
}

uint64_t dispatch thunk of SiriLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider;

  return v11(a1, a2, a3);
}

CNContact_optional __swiftcall MeCardProxy.fetchMeCard()()
{
  v3 = 0;
  v1 = (*(v0 + 8))(&v3);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions()
{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriFlowEnvironment::MeCardOptions protocol witness for RawRepresentable.init(rawValue:) in conformance MeCardOptions@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MeCardOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MeCardOptions@<X0>(uint64_t *a1@<X8>)
{
  result = MeCardOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeCardOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeCardOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t outlined init with copy of MeCardProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment11MeCardProxy_pSgMd, &_s19SiriFlowEnvironment11MeCardProxy_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MeCardProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment11MeCardProxy_pSgMd, &_s19SiriFlowEnvironment11MeCardProxy_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserContext.handoffTargetDeviceID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:)()
{
  OUTLINED_FUNCTION_0_2();
  *(v3 + 40) = 0;
  *(v3 + 24) = 0u;
  result = OUTLINED_FUNCTION_1_2(v4, v3, 0);
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  *(v2 + 64) = 512;
  return result;
}

uint64_t MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)()
{
  OUTLINED_FUNCTION_0_2();
  v4 = *v3;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0;
  result = OUTLINED_FUNCTION_1_2(v6, v5, 0);
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  *(v2 + 64) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment11MeCardProxy_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for MultiUserState(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 + 8) = a3;
  *a2 = a1;

  return outlined assign with take of MeCardProxy?(v3, a2 + 8);
}

double one-time initialization function for internalSharedContext()
{
  type metadata accessor for RefreshableSharedContext();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  static SharedContext.internalSharedContext = v0;
  return result;
}

double RefreshableSharedContext.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t RefreshableSharedContext.stateOrBail()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 88))(&v18, v6);
  if (v19)
  {
    return outlined init with take of SharedContextService(&v18, a1);
  }

  v17 = v4;
  outlined destroy of SharedContextService?(&v18);
  static Logger.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v18 = v13;
    *v12 = 136315650;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 51;
    *(v12 + 22) = 2080;
    *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DD3876D0, &v18);
    _os_log_impl(&dword_1DD354000, v10, v11, "FatalError at %s:%lu - %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AE9C0](v13, -1, -1);
    MEMORY[0x1E12AE9C0](v12, -1, -1);
  }

  (*(v17 + 8))(v8, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RefreshableSharedContext.fetchContext(for:includesNearbyDevices:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RefreshableSharedContext.stateOrBail()(v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 8))(a1, a2, a3, a4, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t RefreshableSharedContext._fetchContext(with:)(uint64_t a1, uint64_t a2)
{
  RefreshableSharedContext.stateOrBail()(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t RefreshableSharedContext.__deallocating_deinit()
{
  outlined destroy of SharedContextService?(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

double RefreshableSharedContext.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t outlined destroy of SharedContextService?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SharedContext(_BYTE *result, int a2, int a3)
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

uint64_t CurrentRequestOverrides.Field.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CurrentRequestOverrides.Field.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CurrentRequestOverrides.Field(uint64_t a1@<X8>)
{
  strcpy(a1, "responseMode");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t static CurrentRequestOverrides.OverrideError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for ResponseMode();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - v20;
  outlined init with copy of CurrentRequestOverrides.OverrideError(a1, v55);
  outlined init with copy of CurrentRequestOverrides.OverrideError(a2, &v57);
  if (!v56)
  {
    outlined init with copy of CurrentRequestOverrides.OverrideError(v55, &v52);
    if (!v60)
    {
      if (v52 == v57 && v53 == v58)
      {
        v29 = 1;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  if (v56 == 1)
  {
    outlined init with copy of CurrentRequestOverrides.OverrideError(v55, &v52);
    v22 = v53;
    if (v60 == 1)
    {
      v48 = v14;
      v23 = v52;
      v25 = v57;
      v24 = v58;
      outlined init with take of Any(v54, v51);
      outlined init with take of Any(&v59, v50);
      if (v23 == v25 && v22 == v24)
      {

        v28 = v48;
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v48;
        if ((v27 & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
LABEL_32:
          outlined destroy of CurrentRequestOverrides.OverrideError(v55);
          goto LABEL_15;
        }
      }

      outlined init with copy of Any(v51, v49);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v11);
        v35 = *(v28 + 32);
        v35(v21, v10, v11);
        outlined init with copy of Any(v50, v49);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_2_1();
          __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
          v35(v19, v8, v11);
          v29 = static ResponseMode.== infix(_:_:)();
          v39 = *(v28 + 8);
          v39(v19, v11);
          v39(v21, v11);
          OUTLINED_FUNCTION_3_2();
LABEL_29:
          outlined destroy of CurrentRequestOverrides.OverrideError(v55);
          return v29 & 1;
        }

        OUTLINED_FUNCTION_5_1();
        __swift_storeEnumTagSinglePayload(v44, v45, v46, v11);
        (*(v28 + 8))(v21, v11);
        OUTLINED_FUNCTION_3_2();
        v43 = v8;
      }

      else
      {
        OUTLINED_FUNCTION_5_1();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v11);
        OUTLINED_FUNCTION_3_2();
        v43 = v10;
      }

      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v43, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      goto LABEL_32;
    }

    __swift_destroy_boxed_opaque_existential_1(v54);
LABEL_13:
  }

  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v55, &_s19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO_AEtMd, &_s19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO_AEtMR);
LABEL_15:
  v29 = 0;
  return v29 & 1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static CurrentRequestOverrides.setOverrides(on:overrides:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v53 - v5;
  v7 = type metadata accessor for ResponseMode();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v56 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - v14;
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v59 = (v13 + 32);
  v62 = (v13 + 16);
  v54 = (v13 + 8);
  v53[2] = a2;

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v57 = v6;
  v55 = a2 + 64;
  v58 = v20;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_9:
      v19 &= v19 - 1;
      v24 = OUTLINED_FUNCTION_6_1(v23);
      outlined init with copy of Any(v24, &v64);
      outlined init with take of Any(&v64, &v66);
LABEL_10:
      v68[0] = v66;
      v68[1] = v67;
      if (!*(&v67 + 1))
      {

        CurrentRequest.overrideProperties.setter();
        return;
      }

      outlined init with take of Any(v68, &v66);
      outlined init with copy of Any(&v66, &v64);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
      (*v59)(v15, v6, v7);
      v65 = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v29 = v15;
      v30 = v15;
      v31 = v7;
      v61 = *v62;
      v61(boxed_opaque_existential_1, v30, v7);
      outlined init with take of Any(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v22;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)();
      v35 = *(v22 + 16);
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_26;
      }

      v38 = v33;
      v39 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy19SiriFlowEnvironment23CurrentRequestOverridesO5FieldOypGMd, &_ss17_NativeDictionaryVy19SiriFlowEnvironment23CurrentRequestOverridesO5FieldOypGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
      {
        v40 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v38 = v40;
      }

      v7 = v31;
      v15 = v29;
      v22 = v69;
      v20 = v58;
      if (v39)
      {
        v42 = (*(v69 + 56) + 32 * v38);
        __swift_destroy_boxed_opaque_existential_1(v42);
        outlined init with take of Any(v63, v42);
      }

      else
      {
        *(v69 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        outlined init with take of Any(v63, (*(v22 + 56) + 32 * v38));
        v43 = *(v22 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_27;
        }

        *(v22 + 16) = v45;
      }

      v61(v56, v15, v7);
      CurrentRequest.responseMode.setter();
      (*v54)(v15, v7);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v6 = v57;
      v16 = v55;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v7);
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
    v49 = swift_allocError();
    v51 = v50;
    OUTLINED_FUNCTION_0_4(v49, v50);
    outlined init with copy of Any(&v66, v52);
    *(v51 + 48) = 1;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v19 = 0;
        v66 = 0u;
        v67 = 0u;
        goto LABEL_10;
      }

      v19 = *(v16 + 8 * v23);
      ++v21;
      if (v19)
      {
        v21 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError()
{
  result = lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError;
  if (!lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError);
  }

  return result;
}

void static CurrentRequestOverrides.applyOverrides(on:overrides:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v8 = type metadata accessor for ResponseMode();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - v13;
  if (*(a2 + 16))
  {
    v34[1] = v2;
    v34[2] = a2;
    v15 = a2 + 64;
    v16 = 1 << *(a2 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a2 + 64);
    v19 = (v16 + 63) >> 6;
    v36 = (v12 + 16);
    v37 = (v12 + 32);
    v35 = (v12 + 8);

    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
LABEL_10:
        v18 &= v18 - 1;
        v22 = OUTLINED_FUNCTION_6_1(v21);
        outlined init with copy of Any(v22, v38);
        outlined init with take of Any(v38, &v39);
LABEL_11:
        v41[0] = v39;
        v41[1] = v40;
        if (!*(&v40 + 1))
        {

          CurrentRequest.overrideProperties.setter();
          return;
        }

        outlined init with take of Any(v41, &v39);
        outlined init with copy of Any(&v39, v38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
        (*v37)(v14, v7, v8);
        (*v36)(v42, v14, v8);
        CurrentRequest.responseMode.setter();
        (*v35)(v14, v8);
        __swift_destroy_boxed_opaque_existential_1(&v39);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_5_1();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v7, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
      v30 = swift_allocError();
      v32 = v31;
      OUTLINED_FUNCTION_0_4(v30, v31);
      outlined init with copy of Any(&v39, v33);
      *(v32 + 48) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v18 = 0;
          v39 = 0u;
          v40 = 0u;
          goto LABEL_11;
        }

        v18 = *(v15 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
    lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
    swift_allocError();
    *v26 = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 2;
    swift_willThrow();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
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

unint64_t lazy protocol witness table accessor for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field()
{
  result = lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field;
  if (!lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentRequestOverrides(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrentRequestOverrides.OverrideError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CurrentRequestOverrides.OverrideError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CurrentRequestOverrides.OverrideError(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 80));
}

void CurrentRequest.responseMode.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  v0 = type metadata accessor for ResponseMode();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_8_1(v3);
  v7(v6);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t key path setter for SiriEnvironment.currentRequest : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.currentRequest.setter();
}

uint64_t (*SiriEnvironment.currentRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CurrentRequest();
  a1[3] = OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *a1 = dispatch thunk of SiriEnvironment.subscript.getter();
  return SiriEnvironment.currentRequest.modify;
}

uint64_t SiriEnvironment.currentRequest.modify(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = *a1;

    dispatch thunk of SiriEnvironment.subscript.setter();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    return dispatch thunk of SiriEnvironment.subscript.setter();
  }
}

SiriFlowEnvironment::RequestPositionInSession_optional __swiftcall RequestPositionInSession.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RequestPositionInSession@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPositionInSession.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CurrentRequest.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path getter for CurrentRequest.refId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.refId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void CurrentRequest.refId.setter()
{
  CurrentRequest.refId.setter();
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  swift_getKeyPath();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.refId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$refId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 24);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$refId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 24);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$refId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$refId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.aceId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.aceId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.aceId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$aceId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 32);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$aceId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 32);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$aceId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$aceId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.executionRequestId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$executionRequestId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 40);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$executionRequestId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 40);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$executionRequestId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$executionRequestId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.sessionHandoffContinuityID : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.sessionHandoffContinuityID.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 48);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 48);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$sessionHandoffContinuityID.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.peerName : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.peerName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.peerName.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$peerName.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 56);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$peerName.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 56);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$peerName.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$peerName.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.inputOrigin.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  v0 = type metadata accessor for InputOrigin();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_8_1(v3);
  v7(v6);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.inputOrigin.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$inputOrigin.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 64);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$inputOrigin.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 64);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$inputOrigin.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$inputOrigin.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path setter for CurrentRequest.inputOrigin : CurrentRequest(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  (*(v14 + 16))(v6, a1);
  v15 = *a2;
  return a6(v6);
}

void CurrentRequest.interactionType.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  v0 = type metadata accessor for InteractionType();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_8_1(v3);
  v7(v6);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.interactionType.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$interactionType.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 72);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$interactionType.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 72);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$interactionType.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$interactionType.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.interactionId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.interactionId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.interactionId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$interactionId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 80);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$interactionId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 80);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$interactionId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$interactionId.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.audioSource.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v6 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, v7, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.audioSource.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$audioSource.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 88);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$audioSource.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 88);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$audioSource.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$audioSource.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path setter for CurrentRequest.audioSource : CurrentRequest(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  OUTLINED_FUNCTION_290();
  outlined init with copy of AudioSource?(v16, v17, v18, a6);
  v19 = *a2;
  return a7(v15);
}

void CurrentRequest.audioDestination.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v6 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, v7, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.audioDestination.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$audioDestination.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 96);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$audioDestination.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 96);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$audioDestination.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$audioDestination.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.responseMode.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$responseMode.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 104);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$responseMode.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 104);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$responseMode.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$responseMode.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path setter for CurrentRequest.multiUserState : CurrentRequest(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of MultiUserState(a1, v5);
  v3 = *a2;
  return CurrentRequest.multiUserState.setter(v5);
}

uint64_t CurrentRequest.multiUserState.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of MultiUserState(a1, v12);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  OUTLINED_FUNCTION_176(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  static MockablePublished.subscript.setter();
  return outlined destroy of MultiUserState(a1);
}

uint64_t (*CurrentRequest.multiUserState.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$multiUserState.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 112);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$multiUserState.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 112);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$multiUserState.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$multiUserState.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.bargeInContext.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v6 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, v7, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.bargeInContext.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$bargeInContext.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 120);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$bargeInContext.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 120);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$bargeInContext.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$bargeInContext.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.sharedContextService.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

uint64_t key path setter for CurrentRequest.sharedContextService : CurrentRequest(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of AudioSource?(a1, v5, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v3 = *a2;
  return CurrentRequest.sharedContextService.setter(v5);
}

uint64_t CurrentRequest.sharedContextService.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of AudioSource?(a1, v12, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  v2 = OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_176(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  static MockablePublished.subscript.setter();
  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(a1, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
}

uint64_t (*CurrentRequest.sharedContextService.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$sharedContextService.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 128);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$sharedContextService.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 128);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$sharedContextService.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$sharedContextService.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.originatingHome.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v6 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, v7, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.originatingHome.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$originatingHome.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 136);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$originatingHome.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 136);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$originatingHome.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$originatingHome.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.speechPackage : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.speechPackage.getter();
  *a2 = result;
  return result;
}

void key path setter for CurrentRequest.speechPackage : CurrentRequest(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  CurrentRequest.speechPackage.setter();
}

uint64_t (*CurrentRequest.speechPackage.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$speechPackage.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 144);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$speechPackage.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 144);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$speechPackage.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$speechPackage.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.resultCandidateId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.resultCandidateId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.resultCandidateId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$resultCandidateId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 152);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$resultCandidateId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 152);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$resultCandidateId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$resultCandidateId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.asrOnDevice.getter()
{
  return CurrentRequest.asrOnDevice.getter();
}

{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.asrOnDevice : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.asrOnDevice.getter();
  *a2 = result;
  return result;
}

void key path setter for CurrentRequest.asrOnDevice : CurrentRequest(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  CurrentRequest.asrOnDevice.setter();
}

void CurrentRequest.asrOnDevice.setter()
{
  CurrentRequest.asrOnDevice.setter();
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.asrOnDevice.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$asrOnDevice.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 160);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$asrOnDevice.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 160);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$asrOnDevice.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$asrOnDevice.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.currentDeviceAssistantId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_128();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.currentDeviceAssistantId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void key path setter for CurrentRequest.currentDeviceAssistantId : CurrentRequest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  CurrentRequest.currentDeviceAssistantId.setter();
}

void CurrentRequest.currentDeviceAssistantId.setter()
{
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  OUTLINED_FUNCTION_102();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.currentDeviceAssistantId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$currentDeviceAssistantId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 168);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$currentDeviceAssistantId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 168);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$currentDeviceAssistantId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$currentDeviceAssistantId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.voiceTriggerEventInfo : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *a2 = result;
  return result;
}

void key path setter for CurrentRequest.voiceTriggerEventInfo : CurrentRequest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CurrentRequest.voiceTriggerEventInfo.setter();
}

uint64_t (*CurrentRequest.voiceTriggerEventInfo.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 176);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 176);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$voiceTriggerEventInfo.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.asrExecutionLocation.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  v0 = type metadata accessor for ExecutionLocation();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_8_1(v3);
  v7(v6);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.asrExecutionLocation.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$asrExecutionLocation.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 184);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$asrExecutionLocation.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 184);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$asrExecutionLocation.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$asrExecutionLocation.getter();
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.nlExecutionLocation.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  v0 = type metadata accessor for ExecutionLocation();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_8_1(v3);
  v7(v6);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.nlExecutionLocation.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$nlExecutionLocation.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 192);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$nlExecutionLocation.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 192);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$nlExecutionLocation.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$nlExecutionLocation.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.companionName : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.companionName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.companionName.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$companionName.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 200);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$companionName.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 200);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$companionName.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$companionName.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.isRecognizeMyVoiceEnabled : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *a2 = result;
  return result;
}

void key path setter for CurrentRequest.isRecognizeMyVoiceEnabled : CurrentRequest(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  CurrentRequest.isRecognizeMyVoiceEnabled.setter();
}

uint64_t (*CurrentRequest.isRecognizeMyVoiceEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 208);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 208);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isRecognizeMyVoiceEnabled.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.flowTaskMetadata.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$flowTaskMetadata.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 216);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$flowTaskMetadata.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 216);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$flowTaskMetadata.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$flowTaskMetadata.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.voiceAudioSessionId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_128();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.voiceAudioSessionId : CurrentRequest@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.voiceAudioSessionId.getter();
  *a2 = result;
  return result;
}

void key path setter for CurrentRequest.voiceAudioSessionId : CurrentRequest(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  CurrentRequest.voiceAudioSessionId.setter();
}

void CurrentRequest.voiceAudioSessionId.setter()
{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.voiceAudioSessionId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$voiceAudioSessionId.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 224);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$voiceAudioSessionId.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 224);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$voiceAudioSessionId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$voiceAudioSessionId.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.utterance : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.utterance.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*CurrentRequest.utterance.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$utterance.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 232);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$utterance.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 232);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$utterance.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$utterance.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.isSystemApertureEnabled.getter()
{
  return CurrentRequest.isSystemApertureEnabled.getter();
}

{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.isSystemApertureEnabled : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isSystemApertureEnabled.getter();
  *a2 = result & 1;
  return result;
}

void key path setter for CurrentRequest.isSystemApertureEnabled : CurrentRequest(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  CurrentRequest.isSystemApertureEnabled.setter();
}

void CurrentRequest.isSystemApertureEnabled.setter()
{
  CurrentRequest.isSystemApertureEnabled.setter();
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.isSystemApertureEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isSystemApertureEnabled.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 240);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isSystemApertureEnabled.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 240);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$isSystemApertureEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isSystemApertureEnabled.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.isLiveActivitiesSupported : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isLiveActivitiesSupported.getter();
  *a2 = result & 1;
  return result;
}

void key path setter for CurrentRequest.isLiveActivitiesSupported : CurrentRequest(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  CurrentRequest.isLiveActivitiesSupported.setter();
}

uint64_t (*CurrentRequest.isLiveActivitiesSupported.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 248);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 248);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isLiveActivitiesSupported.getter();
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.isInAmbient : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isInAmbient.getter();
  *a2 = result & 1;
  return result;
}

void key path setter for CurrentRequest.isInAmbient : CurrentRequest(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  CurrentRequest.isInAmbient.setter();
}

uint64_t (*CurrentRequest.isInAmbient.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0();
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isInAmbient.getter()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 256);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isInAmbient.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92();
  v5 = *(v0 + 256);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}