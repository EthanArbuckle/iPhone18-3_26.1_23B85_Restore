uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TokenGenerator.init(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[1];
  v20 = a1[2];
  v21 = v2;
  v4 = a1[3];
  v22 = a1[4];
  v5 = a1[1];
  v18 = *a1;
  v19 = v5;
  v16[1] = v3;
  v16[2] = v20;
  v6 = a1[4];
  v16[3] = v4;
  v16[4] = v6;
  v23 = *(a1 + 80);
  v17 = *(a1 + 80);
  v16[0] = v18;
  outlined init with copy of SessionConfiguration(&v18, v15);
  v7 = specialized ModelManagerSession.init(configuration:)(v16);
  *(v1 + 128) = &type metadata for ModelManagerSession;
  *(v1 + 136) = &protocol witness table for ModelManagerSession;
  *(v1 + 104) = v7;
  v8 = v21;
  *(v1 + 48) = v20;
  *(v1 + 64) = v8;
  *(v1 + 80) = v22;
  v9 = v23;
  *(v1 + 96) = v23;
  v10 = v19;
  *(v1 + 16) = v18;
  *(v1 + 32) = v10;
  if (v9 == 1 && __PAIR128__(0x80000001ABA42A70, 0xD00000000000001ALL) != v20)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = type metadata accessor for EventReporter();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  LOBYTE(v16[0]) = 1;
  *(v1 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v1;
}

uint64_t specialized ModelManagerSession.init(configuration:)(uint64_t *a1)
{
  v170 = type metadata accessor for Version();
  v169 = *(v170 - 1);
  v2 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v175 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Insecure.MD5();
  v162 = *(v163 - 8);
  v4 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for Insecure.MD5Digest();
  v165 = *(v166 - 8);
  v6 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v167 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v168 = &v145 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v145 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v160 = &v145 - v19;
  v20 = type metadata accessor for XPCCodableObject();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v148 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for CustomAssetConfiguration();
  v157 = *(v158 - 8);
  v23 = *(v157 + 64);
  v24 = MEMORY[0x1EEE9AC00](v158);
  v152 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v151 = &v145 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v149 = &v145 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v145 - v30;
  v31 = type metadata accessor for ModelBundle();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v177 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v145 - v36;
  v188 = type metadata accessor for URL();
  v38 = *(v188 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v188);
  v156 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v182 = &v145 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v145 - v44;
  v46 = a1[1];
  v174 = *a1;
  v47 = a1[2];
  v48 = a1[5];
  v172 = a1[4];
  v49 = a1[7];
  v159 = a1[6];
  v181 = v49;
  v50 = a1[9];
  v171 = a1[8];
  v173 = v50;
  v51 = *(v47 + 16);
  v187 = v38;
  v178 = v46;
  v179 = v48;
  v180 = v47;
  v176 = v32;
  if (v51)
  {
    v190 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
    v52 = v190;
    v53 = v32 + 16;
    v54 = *(v32 + 16);
    v55 = v47 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v184 = *(v53 + 56);
    v185 = v54;
    v186 = v53;
    v56 = (v53 - 8);
    v183 = (v38 + 32);
    do
    {
      v185(v37, v55, v31);
      ModelBundle.resourceURI.getter();
      v57 = v31;
      (*v56)(v37, v31);
      v190 = v52;
      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        v52 = v190;
      }

      *(v52 + 16) = v59 + 1;
      (*(v187 + 32))(v52 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v59, v45, v188);
      v55 += v184;
      --v51;
      v31 = v57;
    }

    while (v51);
    v184 = v52;
    v32 = v176;
  }

  else
  {
    v184 = MEMORY[0x1E69E7CC0];
  }

  v60 = v177;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.inference);
  v62 = v184;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v180;
  if (v65)
  {
    LODWORD(v183) = v64;
    v67 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v190 = v146;
    v147 = v67;
    *v67 = 136315138;
    v68 = *(v62 + 16);
    v69 = MEMORY[0x1E69E7CC0];
    if (v68)
    {
      v145 = v63;
      v153 = v31;
      v189 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
      v69 = v189;
      v70 = *(v187 + 16);
      v71 = v62 + ((*(v187 + 80) + 32) & ~*(v187 + 80));
      v185 = *(v187 + 72);
      v186 = v70;
      v72 = (v187 + 8);
      do
      {
        v73 = v182;
        v74 = v188;
        v186(v182, v71, v188);
        v75 = URL.absoluteString.getter();
        v77 = v76;
        (*v72)(v73, v74);
        v189 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v69 = v189;
        }

        *(v69 + 16) = v79 + 1;
        v80 = v69 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v71 += v185;
        --v68;
      }

      while (v68);
      v60 = v177;
      v66 = v180;
      v31 = v153;
      v32 = v176;
      v63 = v145;
    }

    v189 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v81 = BidirectionalCollection<>.joined(separator:)();
    v83 = v82;

    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v190);

    v85 = v147;
    *(v147 + 1) = v84;
    _os_log_impl(&dword_1AB828000, v63, v183, "Creating ModelManagerSession with asset bundle URIs: %s", v85, 0xCu);
    v86 = v146;
    __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x1AC5A6CD0](v86, -1, -1);
    MEMORY[0x1AC5A6CD0](v85, -1, -1);
  }

  if (!*(v66 + 16))
  {
    goto LABEL_22;
  }

  (*(v32 + 16))(v60, v66 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v31);
  if ((ModelBundle.isFileBased.getter() & 1) == 0)
  {
    (*(v32 + 8))(v60, v31);
LABEL_22:
    if (v181)
    {
      v91 = v181;
      swift_bridgeObjectRetain_n();

      v92 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v159, v91);
      v94 = v93;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      v95 = v161;
      v96 = v163;
      dispatch thunk of HashFunction.init()();
      outlined copy of Data._Representation(v92, v94);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v92, v94);
      outlined consume of Data._Representation(v92, v94);
      v97 = v164;
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v92, v94);
      (*(v162 + 8))(v95, v96);
      v98 = type metadata accessor for UUID();
      v99 = v167;
      Insecure.MD5Digest.withUnsafeBytes<A>(_:)();
      (*(v165 + 8))(v97, v166);

      v100 = *(v98 - 8);
      (*(v100 + 56))(v99, 0, 1, v98);
      v101 = v168;
      (*(v100 + 32))(v168, v99, v98);
    }

    else
    {
      v98 = type metadata accessor for UUID();
      v102 = *(v98 - 8);
      v103 = v167;
      (*(v102 + 56))(v167, 1, 1, v98);

      v101 = v168;
      UUID.init()();
      if ((*(v102 + 48))(v103, 1, v98) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    v104 = v170;
    v105 = v169;
    type metadata accessor for Session();
    type metadata accessor for UUID();
    (*(*(v98 - 8) + 56))(v101, 0, 1, v98);
    if (one-time initialization token for currentInterfaceVersion != -1)
    {
      swift_once();
    }

    v106 = __swift_project_value_buffer(v104, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
    (*(v105 + 16))(v175, v106, v104);
    v107 = Session.__allocating_init(assetBundleURIs:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)();

    return v107;
  }

  ModelBundle.resourceURI.getter();
  v87 = type metadata accessor for FoundationModelsExtensionInfo();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  v90 = FoundationModelsExtensionInfo.init(fileURL:)();
  v153 = v31;
  v108 = v90;
  v185 = 0;
  v109 = v182;
  ModelBundle.resourceURI.getter();
  URL.lastPathComponent.getter();
  v183 = *(v187 + 8);
  v183(v109, v188);
  v186 = v108;
  FoundationModelsExtensionInfo.toXPCObject()();
  v110 = v150;
  CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
  v169 = *(v157 + 16);
  (v169)(v149, v110, v158);
  v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v112 = v111;
  v114 = v111[2];
  v113 = v111[3];
  if (v114 >= v113 >> 1)
  {
    v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1, v111);
  }

  *(v112 + 16) = v114 + 1;
  v115 = *(v157 + 32);
  v168 = ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v167 = *(v157 + 72);
  v116 = v158;
  v170 = v115;
  v115(&v168[v112 + v167 * v114], v149, v158);
  v117 = v182;
  ModelBundle.resourceURI.getter();
  URL.lastPathComponent.getter();
  v118 = v117;
  v119 = v112;
  v183(v118, v188);
  FoundationModelsExtensionInfo.toXPCObject()();
  v120 = v151;
  CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
  (v169)(v152, v120, v116);
  v122 = *(v112 + 16);
  v121 = *(v112 + 24);
  if (v122 >= v121 >> 1)
  {
    v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121 > 1, v122 + 1, 1, v112);
  }

  v123 = v176;

  v124 = *(v157 + 8);
  v125 = v158;
  v124(v151, v158);
  v124(v150, v125);
  *(v119 + 16) = v122 + 1;
  v170(&v168[v119 + v122 * v167], v152, v125);
  v126 = v153;
  v127 = v187;
  v187 = v119;
  v128 = v160;
  URL.init(string:)();
  result = (*(v127 + 48))(v128, 1, v188);
  if (result != 1)
  {

    if (v181)
    {
      v130 = v181;
      swift_bridgeObjectRetain_n();

      v131 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v159, v130);
      v133 = v132;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      v134 = v161;
      v135 = v163;
      dispatch thunk of HashFunction.init()();
      outlined copy of Data._Representation(v131, v133);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v131, v133);
      outlined consume of Data._Representation(v131, v133);
      v136 = v164;
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v131, v133);
      v137 = v134;
      v126 = v153;
      (*(v162 + 8))(v137, v135);
      v138 = type metadata accessor for UUID();
      v139 = v154;
      Insecure.MD5Digest.withUnsafeBytes<A>(_:)();
      (*(v165 + 8))(v136, v166);

      v140 = *(v138 - 8);
      (*(v140 + 56))(v139, 0, 1, v138);
      v141 = v155;
      v142 = v139;
      v123 = v176;
      (*(v140 + 32))(v155, v142, v138);
    }

    else
    {
      v138 = type metadata accessor for UUID();
      v143 = *(v138 - 8);
      v144 = v154;
      (*(v143 + 56))(v154, 1, 1, v138);

      v141 = v155;
      UUID.init()();
      if ((*(v143 + 48))(v144, 1, v138) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v144, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    type metadata accessor for Session();
    type metadata accessor for UUID();
    (*(*(v138 - 8) + 56))(v141, 0, 1, v138);
    Version.init(major:minor:patch:)();
    v107 = Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)();

    (*(v123 + 8))(v177, v126);
    return v107;
  }

  __break(1u);
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR, type metadata accessor for PromptCompletion.Segment);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VGMR, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0VGMR, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMR, type metadata accessor for Prompt.TokenGenerationNonStringContent);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x1E69C61C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDescriptionEnvelopeVGMR, type metadata accessor for ToolDescriptionEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMR, type metadata accessor for ToolDescription);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR, type metadata accessor for PromptCompletion.Content);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV16ModelInformationV5AssetVGMR, MEMORY[0x1E69C64B0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV9CandidateVGMR, MEMORY[0x1E69C64E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryV_AG11ProbabilityOtGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryV_AG11ProbabilityOtGMR, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10AnnotationVGMR, MEMORY[0x1E69C6450]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMR, type metadata accessor for PromptCompletion.Annotation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, MEMORY[0x1E69DA700]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, MEMORY[0x1E69DA828]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR, type metadata accessor for DocumentResourceEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR, MEMORY[0x1E69DA810]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, MEMORY[0x1E69DA800]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMR, MEMORY[0x1E69C62C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV7SegmentVGMR, MEMORY[0x1E69C64D8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR, type metadata accessor for AnnotationEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0OGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0OGMR, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMR, MEMORY[0x1E69A0DF0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR, MEMORY[0x1E69C63A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0VGMR, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR, MEMORY[0x1E69DA8B8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GGMd, &_ss23_ContiguousArrayStorageCyScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GGMR, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMR, MEMORY[0x1E69A0E80]);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(Swift::Bool usesGuidedGeneration, TokenGeneration::PrewarmUrgency urgency)
{
  v3 = v2;
  v6 = *urgency.rawValue._countAndFlagsBits;
  v5 = *(urgency.rawValue._countAndFlagsBits + 8);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.generator);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v19);
    _os_log_impl(&dword_1AB828000, v8, v9, "Requesting prewarm with urgency: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1AC5A6CD0](v11, -1, -1);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
  }

  v12 = v3[16];
  v13 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  v15 = inited;
  strcpy((inited + 32), "prewarmUrgency");
  *(inited + 47) = -18;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 0xD000000000000025;
  v16 = 1702195828;
  if (!usesGuidedGeneration)
  {
    v16 = 0x65736C6166;
  }

  v17 = 0xE500000000000000;
  if (usesGuidedGeneration)
  {
    v17 = 0xE400000000000000;
  }

  *(inited + 16) = xmmword_1ABA1D890;
  *(inited + 72) = 0x80000001ABA414E0;
  *(inited + 80) = v16;
  *(inited + 88) = v17;

  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  (*(v13 + 16))(v18, v12, v13);
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
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

uint64_t TokenGenerator.__deallocating_deinit()
{
  TokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TokenGenerator.deinit()
{
  v1 = v0;
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AB828000, v3, v4, "Deinitializing and cancelling session", v5, 2u);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  outlined init with copy of PromptCompletionEvent(v1 + 104, v19);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v7 + 24))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v19);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v18 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = *(v1 + 88);
  outlined consume of SessionConfiguration?(*(v1 + 16), *(v1 + 24));
  __swift_destroy_boxed_opaque_existential_0((v1 + 104));
  v14 = *(v1 + 144);

  return v1;
}

uint64_t outlined init with copy of PromptCompletionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateTextDelta(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void protocol witness for InferenceSessionProtocol.requestPrewarm(metadata:) in conformance ModelManagerSession(Swift::OpaquePointer a1)
{
  v2 = *v1;
  Session.requestPrewarm(metadata:)(a1);
  if (v3)
  {
    specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v3);
    swift_willThrow();
  }
}

uint64_t getEnumTagSinglePayload for FinishReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateTextDelta(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope and conformance PromptCompletionEnvelope.SegmentEnvelope, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope and conformance PromptCompletionEnvelope.SegmentEnvelope, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t specialized PromptCompletionEnvelope.CandidateEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v29 = 0;
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  v29 = 1;
  lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v27;
  v29 = 2;
  lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v27;
  v29 = 3;
  lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v27;
  v26 = v28;
  v29 = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v27;
  v21 = v28;
  v22 = v27;
  v13 = v24;

  v14 = v25;

  v15 = v23;
  v16 = v26;
  outlined copy of FinishReason(v23, v26);
  v17 = v12;
  v18 = v21;
  outlined copy of Data._Representation(v17, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);

  outlined consume of FinishReason(v15, v16);
  v19 = v22;
  result = outlined consume of Data._Representation(v22, v18);
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v18;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionEnvelope.CandidateEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionEnvelope.CandidateEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t PromptCompletionEnvelope.SegmentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMR);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v63 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMR);
  v73 = *(v72 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v81 = &v63 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMR);
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v80 = &v63 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMR);
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - v15;
  v77 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v17 = *(*(v77 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v77);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v63 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v63 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v63 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v63 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();
  v34 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v64 = v29;
    v65 = v26;
    v66 = v23;
    v67 = v20;
    v36 = v80;
    v35 = v81;
    v84 = v31;
    v38 = v78;
    v37 = v79;
    v40 = v82;
    v39 = v83;
    v41 = KeyedDecodingContainer.allKeys.getter();
    v42 = (2 * *(v41 + 16)) | 1;
    v85[5] = v41;
    v85[6] = v41 + 32;
    v86 = 0;
    v87 = v42;
    v43 = specialized Collection<>.popFirst()();
    if (v43 == 4 || v86 != v87 >> 1)
    {
      v48 = type metadata accessor for DecodingError();
      swift_allocError();
      v49 = v37;
      v51 = v50;
      v52 = v16;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v51 = v77;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v48 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v38 + 8))(v52, v49);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {
          LOBYTE(v85[0]) = 2;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();
          v54 = v35;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
          v55 = v72;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v73 + 8))(v54, v55);
          (*(v38 + 8))(v16, v37);
          swift_unknownObjectRelease();
          v60 = v66;
          *v66 = *v85;
        }

        else
        {
          LOBYTE(v85[0]) = 3;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();
          v57 = v40;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for FileContentEnvelope(0);
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope);
          v60 = v67;
          v58 = v74;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v75 + 8))(v57, v58);
          (*(v38 + 8))(v16, v37);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v62 = v84;
        outlined init with take of DocumentRegistrationEnvelope(v60, v84, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
        v44 = v39;
      }

      else
      {
        v44 = v39;
        if (v43)
        {
          LOBYTE(v85[0]) = 1;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
          v56 = v71;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v70 + 8))(v36, v56);
          (*(v38 + 8))(v16, v37);
          swift_unknownObjectRelease();
          v47 = v65;
          *v65 = *v85;
        }

        else
        {
          LOBYTE(v85[0]) = 0;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();
          v45 = v76;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope();
          v46 = v69;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v68 + 8))(v45, v46);
          (*(v38 + 8))(v16, v37);
          swift_unknownObjectRelease();
          v47 = v64;
          *v64 = v85[0];
          *(v47 + 1) = *&v85[1];
          *(v47 + 3) = *&v85[3];
        }

        swift_storeEnumTagMultiPayload();
        v61 = v47;
        v62 = v84;
        outlined init with take of DocumentRegistrationEnvelope(v61, v84, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      }

      outlined init with take of DocumentRegistrationEnvelope(v62, v44, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v88);
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionEnvelope.SegmentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateToolCallDelta(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateToolCallDelta(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModelCatalogStub.AssetKey()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t PromptCompletionEnvelope.CandidateEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = *v3;
  v13[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = *(v3 + 8);
    v13[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + 16);
    v13[0] = 2;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 24);
    v13[0] = 3;
    lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 40);
    v15 = v14;
    v13[23] = 4;
    outlined init with copy of Data(&v15, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionEnvelope.CandidateEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return PromptCompletionEnvelope.CandidateEnvelope.encode(to:)(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x73746E656D676573;
  v3 = 0x6974617265646F6DLL;
  v4 = 0x65526873696E6966;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6C61436C6F6F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized PromptCompletionEnvelope.SegmentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys()
{
  v1 = 1954047348;
  v2 = 0x6F69647561;
  if (*v0 != 2)
  {
    v2 = 1701603686;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope()
{
  result = lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for CachePolicy(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CachePolicy(unsigned int *a1, int a2)
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

uint64_t specialized TextContentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v21) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v19 = a2;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    v23 = 1;
    lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v21;
    v23 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    v16 = v22;
    outlined consume of Data?(0, 0xF000000000000000);

    outlined copy of Data?(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = outlined consume of Data?(v15, v16);
    v18 = v19;
    *v19 = v20;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = v16;
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance TextContentEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TextContentEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextContentEnvelope.CodingKeys()
{
  v1 = 0x697461746F6E6E61;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

unint64_t lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of DocumentRegistrationEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope);
  }

  return result;
}

uint64_t specialized FinishReasonEnvelope.init(from:)(uint64_t *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMR);
  v41 = *(v47 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v40 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMR);
  v46 = *(v44 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v40 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMR);
  v45 = *(v43 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMR);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v51 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v12;
    v40 = v9;
    v23 = v8;
    v24 = v48;
    v25 = v49;
    v50 = v14;
    v26 = KeyedDecodingContainer.allKeys.getter();
    v27 = (2 * *(v26 + 16)) | 1;
    v52 = v26;
    v53 = v26 + 32;
    v54 = 0;
    v55 = v27;
    v28 = specialized Collection<>.popFirst()();
    v20 = v17;
    if (v28 == 4 || v54 != v55 >> 1)
    {
      v29 = v13;
      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v32 = &unk_1F206CD18;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v50 + 8))(v20, v29);
      swift_unknownObjectRelease();
    }

    else if (v28 > 1u)
    {
      if (v28 == 2)
      {
        v56 = 2;
        lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v50;
        (*(v46 + 8))(v24, v44);
        (*(v35 + 8))(v17, v13);
      }

      else
      {
        v56 = 3;
        lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v50;
        (*(v41 + 8))(v25, v47);
        (*(v36 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      v20 = 0;
    }

    else if (v28)
    {
      v56 = 1;
      lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v13;
      v38 = v20;
      v39 = v43;
      v20 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v45 + 8))(v23, v39);
      (*(v50 + 8))(v38, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0;
      lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v22, v40);
      (*(v50 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v20 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v51);
  return v20;
}

uint64_t protocol witness for Decodable.init(from:) in conformance FinishReasonEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized FinishReasonEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FinishReasonEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized FinishReasonEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t specialized FinishReasonEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001ABA41D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001ABA41D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001ABA41DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5464656B6F766E69 && a2 == 0xEB000000006C6F6FLL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationShapeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FinishReasonEnvelope.CodingKeys()
{
  v1 = 0x5464656B6F766E69;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationShapeEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined copy of FinishReason(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
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

uint64_t outlined consume of FinishReason(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t PromptCompletionEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v12 = v6;
  v39 = a2;
  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v46;
  v37 = v45;
  v38 = v47;
  LOBYTE(v40) = 1;
  lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v13;
  v36 = v45;
  LOBYTE(v40) = 2;
  lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v46;
  v34 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  LOBYTE(v40) = 3;
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v14;
  v33 = v45;
  LOBYTE(v40) = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v45;
  v31 = v46;
  v61 = 5;
  lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v12 + 8))(v9, v5);
  v73 = v66;
  v74 = v67;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  v72 = v65;
  *(&v44[2] + 8) = v64;
  v75 = v68;
  v17 = v37;
  v16 = v38;
  v18 = v36;
  *&v40 = v37;
  *(&v40 + 1) = v35;
  *&v41 = v38;
  *(&v41 + 1) = v36;
  v19 = v33;
  *&v42 = v34;
  *(&v42 + 1) = v32;
  *&v43 = v33;
  *(&v43 + 1) = v15;
  *&v44[0] = v31;
  *(&v44[1] + 8) = v63;
  *(v44 + 8) = v62;
  *(&v44[6] + 1) = v68;
  *(&v44[5] + 8) = v67;
  *(&v44[4] + 8) = v66;
  *(&v44[3] + 8) = v65;
  v20 = v41;
  v21 = v39;
  *v39 = v40;
  v21[1] = v20;
  v22 = v42;
  v23 = v43;
  v24 = v44[1];
  v21[4] = v44[0];
  v21[5] = v24;
  v21[2] = v22;
  v21[3] = v23;
  v25 = v44[2];
  v26 = v44[3];
  v27 = v44[6];
  v21[9] = v44[5];
  v21[10] = v27;
  v28 = v44[4];
  v21[7] = v26;
  v21[8] = v28;
  v21[6] = v25;
  outlined init with copy of PromptCompletionEnvelope(&v40, &v45);
  __swift_destroy_boxed_opaque_existential_0(v76);
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v54 = v69;
  v55 = v70;
  v45 = v17;
  v46 = v35;
  v47 = v16;
  v48 = v18;
  v49 = v34;
  v50 = v32;
  v51 = v19;
  v52 = v15;
  v53 = v31;
  v60 = v75;
  v56 = v71;
  return outlined destroy of PromptCompletionEnvelope(&v45);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x666E496C65646F6DLL;
  v3 = 0x74616469646E6163;
  v4 = 0x617461646174656DLL;
  if (v1 != 4)
  {
    v4 = 0x64657265646E6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6974617265646F6DLL;
  if (v1 != 1)
  {
    v5 = 0x6567617375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized PromptRenderingEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v47;
  v39 = v48;
  v12 = v49;
  v38 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v40) = 1;
  lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v12;
  v33 = v11;
  v37 = v47;
  LOBYTE(v47) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v14;
  LOBYTE(v47) = 3;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  LOBYTE(v40) = 4;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v40) = 5;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v13;
  v16 = v47;
  v60 = 6;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v40 = v33;
  *(&v40 + 1) = v39;
  *&v41 = v32;
  v20 = v16;
  v29 = v16;
  v21 = v38;
  *(&v41 + 1) = v38;
  v22 = v37;
  *&v42 = v37;
  v23 = v36;
  *(&v42 + 1) = v30;
  *&v43 = v36;
  v24 = v35;
  *(&v43 + 1) = v31;
  *&v44 = v35;
  *(&v44 + 1) = v34;
  *&v45 = v20;
  *(&v45 + 1) = v17;
  v46 = v19;
  outlined init with copy of PromptRenderingEnvelope(&v40, &v47);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v47 = v33;
  v48 = v39;
  v49 = v32;
  v50 = v21;
  v51 = v22;
  v52 = v30;
  v53 = v23;
  v54 = v31;
  v55 = v24;
  v56 = v34;
  v57 = v29;
  v58 = v17;
  v59 = v19;
  result = outlined destroy of PromptRenderingEnvelope(&v47);
  v26 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v26;
  *(a2 + 96) = v46;
  v27 = v41;
  *a2 = v40;
  *(a2 + 16) = v27;
  v28 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v28;
  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PromptRenderingEnvelope@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptRenderingEnvelope.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptRenderingEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6F666E4972657375;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6C616E696769726FLL;
  if (v1 != 3)
  {
    v4 = 0x7344496E656B6F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73746E656D676573;
  if (v1 != 1)
  {
    v5 = 0x64657265646E6572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaTypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized PromptRenderingEnvelope.SourceEnvelope.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptRenderingEnvelope.SourceEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = specialized PromptRenderingEnvelope.SourceEnvelope.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

void *destructiveInjectEnumTag for ClassificationParameters.ThresholdConfiguration(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageEmbeddingEncoding(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PromptRenderingEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for ClassificationParameters.ThresholdConfiguration(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CompletePromptResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for CompletePromptResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v18 = v28;
  v19 = v7;
  v43 = 0;
  lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope();
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v40;
  v15[8] = v39;
  v15[9] = v21;
  v15[10] = v41;
  v22 = v36;
  v15[4] = v35;
  v15[5] = v22;
  v23 = v38;
  v15[6] = v37;
  v15[7] = v23;
  v24 = v32;
  *v15 = v31;
  v15[1] = v24;
  v25 = v34;
  v15[2] = v33;
  v15[3] = v25;
  type metadata accessor for InferenceResponseEnvelope();
  v42 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type InferenceResponseEnvelope and conformance InferenceResponseEnvelope, MEMORY[0x1E69C6508]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v11, v20);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v19, v15 + *(v12 + 20), &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  outlined init with copy of DocumentResourceEnvelope(v15, v27, type metadata accessor for CompletePromptResponse);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for CompletePromptResponse);
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[2];
  static WireFormat.decode<A>(_:from:)();
  outlined consume of Data._Representation(v2, v1);
  v7 = v0[17];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  type metadata accessor for OneShotRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type OneShotRequest and conformance OneShotRequest, type metadata accessor for OneShotRequest);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v24 = v0[9];
  v8 = v0[5];
  v0[18] = v9;
  v0[19] = v2;
  v10 = v2;
  v11 = v9;
  OneShotRequest.xpcData.getter(v5);
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  (*(v7 + 8))(v5, v6);
  v12 = *(v24 + 40);
  v23 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  v15 = v0[17];
  v16 = v0[11];
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[4];
  v21 = v0[3];

  return v23(v21, v20, v10, v11, v15, v18, v19, v17);
}

{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v6 = *v1;
  *(*v1 + 632) = v0;

  outlined destroy of ToolType(*(v2 + 600), type metadata accessor for OneShotRequest);
  if (v0)
  {
    v4 = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  }

  else
  {
    v4 = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  v3 = *(v0 + 544);
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 192) = *v1;
  *(v0 + 208) = v5;
  *(v0 + 224) = v4;
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  *(v0 + 272) = v1[5];
  *(v0 + 288) = v6;
  *(v0 + 240) = v8;
  *(v0 + 256) = v7;
  v9 = v1[10];
  v11 = v1[7];
  v10 = v1[8];
  *(v0 + 336) = v1[9];
  *(v0 + 352) = v9;
  *(v0 + 304) = v11;
  *(v0 + 320) = v10;
  v22 = v1[8];
  v23 = v1[9];
  v24 = v1[10];
  v18 = v1[4];
  v19 = v1[5];
  v20 = v1[6];
  v21 = v1[7];
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  outlined init with copy of PromptCompletionEnvelope(v0 + 192, v0 + 368);
  PromptCompletionEnvelope.unseal()(v3);
  outlined destroy of ToolType(v1, type metadata accessor for CompletePromptResponse);
  *(v0 + 144) = v22;
  *(v0 + 160) = v23;
  *(v0 + 176) = v24;
  *(v0 + 80) = v18;
  *(v0 + 96) = v19;
  *(v0 + 112) = v20;
  *(v0 + 128) = v21;
  *(v0 + 16) = v14;
  *(v0 + 32) = v15;
  *(v0 + 48) = v16;
  *(v0 + 64) = v17;
  outlined destroy of PromptCompletionEnvelope(v0 + 16);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[69];
  v5 = *(v4 + 128);
  __swift_project_boxed_opaque_existential_1((v4 + 104), v5);
  outlined init with copy of ToolDescription(v3, v1, type metadata accessor for CompletePromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[78] = v6;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  *v6 = v0;
  v6[1] = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[73];
  v10 = v0[71];
  v11 = v0[70];
  v12 = v0[77];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v12, v11, v10, v8, v9, v7, v5, v7);
}

{
  v1 = v0[77];
  v2 = v0[75];

  v3 = v0[1];
  v4 = v0[79];

  return v3();
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventUsage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t PromptCompletionEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v186 = a1;
  v2 = type metadata accessor for Prompt.Rendering.Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v178[13] = v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Prompt.ToolCall.Kind();
  v5 = *(v221 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v220 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Prompt.ToolCall();
  v222 = *(v219 - 8);
  v8 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v10 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for FileContentEnvelope(0);
  v11 = *(*(v204 - 1) + 64);
  MEMORY[0x1EEE9AC00](v204);
  v203 = v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v233 = v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  v16 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v231 = (v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v18 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  v234 = v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v20 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v22 = (v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v239 = type metadata accessor for AnnotationEnvelope(0);
  v200 = *(v239 - 8);
  v23 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v238 = (v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for PromptCompletion.Annotation(0);
  v236 = *(v25 - 8);
  v237 = v25;
  v26 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for PromptCompletion.Content(0);
  v29 = *(*(v214 - 8) + 64);
  MEMORY[0x1EEE9AC00](v214);
  v202 = (v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v213 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v223 = *(v213 - 8);
  v31 = *(v223 + 64);
  v32 = (MEMORY[0x1EEE9AC00])(v213);
  v208 = (v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v35 = v178 - v34;
  v36 = type metadata accessor for PromptCompletion.Segment(0);
  v212 = *(v36 - 8);
  v37 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v227 = (v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v188 = v178 - v42;
  v43 = *v1;
  v44 = v1[1];
  v45 = v1[2];
  v46 = v1[3];
  v41.n128_u64[0] = v1[4];
  v185 = v41;
  v47 = v1[6];
  v184 = v1[5];
  v193 = v47;
  v48 = v1[7];
  v189 = v1[8];
  v49 = v1[10];
  v178[3] = v1[9];
  v179 = v49;
  v50 = v1[12];
  v178[2] = v1[11];
  v178[1] = v50;
  v51 = v1[14];
  v178[12] = v1[13];
  v178[11] = v51;
  v52 = v1[16];
  v178[10] = v1[15];
  v178[9] = v52;
  v53 = v1[18];
  v178[8] = v1[17];
  v178[7] = v53;
  v54 = v1[20];
  v178[6] = v1[19];
  v178[5] = v54;
  v178[4] = v1[21];
  ModelInformationEnvelope.unseal()(v43, v44, v45, v246);
  v183 = v246[0];
  v182 = v246[1];
  v181 = v246[2];
  v187 = v48;
  if (v46)
  {
    v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v46);
    if (*(v55 + 16))
    {
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
      v57 = static _DictionaryStorage.allocate(capacity:)();
      v55 = v56;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC8];
    }

    v245 = v57;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v55, 1, &v245);
    v180 = v245;
  }

  else
  {
    v180 = 0;
  }

  v58 = v189;
  v59 = *(v193 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    v192 = 0;
    v245 = MEMORY[0x1E69E7CC0];
    v190 = v59;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v61 = v193;
    v62 = 0;
    v60 = v245;
    v191 = v193 + 32;
    v217 = (v5 + 104);
    v216 = v222 + 32;
    v215 = *MEMORY[0x1E69DA808];
    v218 = v10;
    v63 = v234;
    v242 = v22;
    v235 = v28;
    v211 = v35;
    while (1)
    {
      if (v62 >= *(v61 + 16))
      {
        goto LABEL_89;
      }

      v198 = v60;
      v196 = v62;
      v64 = (v191 + 56 * v62);
      v65 = *v64;
      v201 = v64[1];
      v66 = v64[2];
      v67 = v64[3];
      v68 = v64[4];
      v69 = v64[5];
      v70 = v64[6];
      v71 = *(v65 + 16);
      v199 = v68;
      v224 = v69;
      v195 = v70;
      v209 = v65;
      v194 = v67;
      v197 = v66;
      if (v71)
      {
        break;
      }

      v121 = v201;

      outlined copy of FinishReason(v67, v68);
      outlined copy of Data._Representation(v69, v70);
      v120 = MEMORY[0x1E69E7CC0];
      v122 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v123 = *(v121 + 16);
      v230 = v122;
      if (v123)
      {
        v244 = v120;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
        v124 = v244;
        v125 = (v121 + 48);
        do
        {
          v229 = v123;
          v126 = *(v125 - 1);
          v228 = *(v125 - 2);
          v128 = *v125;
          v127 = v125[1];
          v130 = v125[2];
          v129 = v125[3];
          v132 = v125[4];
          v131 = v125[5];

          outlined copy of Data?(v132, v131);

          v133 = v220;
          v134 = v218;
          Prompt.ToolCall.Function.init(name:arguments:)();
          (*v217)(v133, v215, v221);
          MEMORY[0x1AC5A36E0](v228, v126, v133);
          outlined copy of Data?(v132, v131);
          Prompt.ToolCall._userInfo.setter();

          outlined consume of Data?(v132, v131);
          v244 = v124;
          v136 = *(v124 + 16);
          v135 = *(v124 + 24);
          if (v136 >= v135 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v135 > 1, v136 + 1, 1);
            v124 = v244;
          }

          *(v124 + 16) = v136 + 1;
          (*(v222 + 32))(v124 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v136, v134, v219);
          v125 += 8;
          v123 = v229 - 1;
        }

        while (v229 != 1);
        v206 = v124;
        v63 = v234;
        v28 = v235;
        v22 = v242;
        v35 = v211;
        v120 = MEMORY[0x1E69E7CC0];
        v68 = v199;
        v69 = v224;
      }

      else
      {
        v206 = v120;
      }

      v137 = v197;
      if (v197)
      {
        v138 = *(v197 + 16);
        if (v138)
        {
          v244 = v120;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
          v139 = v244;
          v140 = -1 << *(v137 + 32);
          v229 = v137 + 64;
          v141 = _HashTable.startBucket.getter();
          v142 = 0;
          v207 = v137 + 72;
          v210 = v138;
          while ((v141 & 0x8000000000000000) == 0 && v141 < 1 << *(v137 + 32))
          {
            v144 = v141 >> 6;
            if ((*(v229 + 8 * (v141 >> 6)) & (1 << v141)) == 0)
            {
              goto LABEL_85;
            }

            v225 = *(v137 + 36);
            v145 = *(v137 + 56);
            v146 = (*(v137 + 48) + 16 * v141);
            v147 = v146[1];
            v228 = *v146;
            LODWORD(v226) = *(v145 + v141);
            v244 = v139;
            v149 = *(v139 + 16);
            v148 = *(v139 + 24);

            if (v149 >= v148 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 1, 1);
              v139 = v244;
            }

            *(v139 + 16) = v149 + 1;
            v150 = v139 + 24 * v149;
            *(v150 + 32) = v228;
            *(v150 + 40) = v147;
            *(v150 + 48) = v226;
            v143 = 1 << *(v137 + 32);
            if (v141 >= v143)
            {
              goto LABEL_86;
            }

            v151 = *(v229 + 8 * v144);
            if ((v151 & (1 << v141)) == 0)
            {
              goto LABEL_87;
            }

            if (v225 != *(v137 + 36))
            {
              goto LABEL_88;
            }

            v152 = v151 & (-2 << (v141 & 0x3F));
            if (v152)
            {
              v143 = __clz(__rbit64(v152)) | v141 & 0x7FFFFFFFFFFFFFC0;
              v28 = v235;
              v35 = v211;
              v69 = v224;
            }

            else
            {
              v153 = v139;
              v154 = v144 << 6;
              v155 = v144 + 1;
              v156 = (v207 + 8 * v144);
              v28 = v235;
              v35 = v211;
              v69 = v224;
              while (v155 < (v143 + 63) >> 6)
              {
                v158 = *v156++;
                v157 = v158;
                v154 += 64;
                ++v155;
                if (v158)
                {
                  outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v141, v225, 0);
                  v143 = __clz(__rbit64(v157)) + v154;
                  goto LABEL_62;
                }
              }

              outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v141, v225, 0);
LABEL_62:
              v139 = v153;
            }

            ++v142;
            v141 = v143;
            if (v142 == v210)
            {
              v63 = v234;
              v22 = v242;
              v68 = v199;
              goto LABEL_66;
            }
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v139 = v120;
LABEL_66:
        if (*(v139 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
          v159 = static _DictionaryStorage.allocate(capacity:)();
          v68 = v199;
        }

        else
        {
          v159 = MEMORY[0x1E69E7CC8];
        }

        v244 = v159;
        v160 = v192;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v139, 1, &v244);
        if (v160)
        {
          goto LABEL_90;
        }

        v192 = 0;
        v229 = v244;
      }

      else
      {
        v229 = 0;
      }

      v161 = v194;
      if (v68 >= 3)
      {
        v162 = v194;
      }

      else
      {
        v162 = 0;
      }

      outlined copy of FinishReason(v194, v68);
      v163 = v195;
      outlined copy of Data._Representation(v69, v195);

      outlined consume of FinishReason(v161, v68);
      outlined consume of Data._Representation(v69, v163);

      v60 = v198;
      v245 = v198;
      v165 = *(v198 + 16);
      v164 = *(v198 + 24);
      if (v165 >= v164 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1);
        v68 = v199;
        v60 = v245;
      }

      v62 = v196 + 1;
      *(v60 + 16) = v165 + 1;
      v166 = (v60 + 56 * v165);
      v166[4] = v230;
      v166[5] = v206;
      v166[6] = v229;
      v166[7] = v162;
      v166[8] = v68;
      v166[9] = v69;
      v166[10] = v163;
      v61 = v193;
      if (v62 == v190)
      {
        v167 = v188;
        v58 = v189;
        goto LABEL_79;
      }
    }

    outlined copy of FinishReason(v67, v68);
    outlined copy of Data._Representation(v69, v70);
    v244 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
    v72 = v208;
    v73 = 0;
    v230 = v244;
    v226 = v65 + ((*(v223 + 80) + 32) & ~*(v223 + 80));
    v228 = v71;
    while (1)
    {
      if (v73 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v74 = *(v223 + 72);
      v229 = v73;
      outlined init with copy of DocumentResourceEnvelope(v226 + v74 * v73, v35, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v35, v72, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          outlined destroy of DocumentResourceEnvelope(v35, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v96 = v203;
          outlined init with take of DocumentRegistrationEnvelope(v72, v203, type metadata accessor for FileContentEnvelope);
          v97 = type metadata accessor for URL();
          v98 = v227;
          (*(*(v97 - 8) + 16))(v227, v96, v97);
          v99 = v204[6];
          v100 = (v96 + v204[5]);
          v102 = *v100;
          v101 = v100[1];
          v104 = *(v96 + v99);
          v103 = *(v96 + v99 + 8);
          v105 = *(v96 + v204[7]);

          v106 = v96;
          v22 = v242;
          outlined destroy of DocumentResourceEnvelope(v106, type metadata accessor for FileContentEnvelope);
          v107 = type metadata accessor for PromptCompletion.FileContent(0);
          v108 = (v98 + v107[5]);
          *v108 = v102;
          v108[1] = v101;
          v109 = (v98 + v107[6]);
          *v109 = v104;
          v109[1] = v103;
          v65 = v209;
          v72 = v208;
          *(v98 + v107[7]) = v105;
          v69 = v224;
          goto LABEL_28;
        }
      }

      else if (!EnumCaseMultiPayload)
      {
        v76 = v72[1];
        v225 = *v72;
        v77 = v72[2];
        v210 = v72[3];
        v207 = v72[4];
        v78 = *(v77 + 16);
        v206 = v77;
        if (v78)
        {
          v243 = MEMORY[0x1E69E7CC0];
          v205 = v76;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
          v79 = v243;
          v80 = v77 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
          v81 = *(v200 + 72);
          do
          {
            v82 = v238;
            outlined init with copy of DocumentResourceEnvelope(v80, v238, type metadata accessor for AnnotationEnvelope);
            v83 = *v82;
            outlined init with take of DocumentRegistrationEnvelope(v82 + *(v239 + 20), v63, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v84 = v233;
              outlined init with take of DocumentRegistrationEnvelope(v63, v233, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
              v85 = type metadata accessor for DocumentResourceIdentifier();
              (*(*(v85 - 8) + 32))(v22, v84, v85);
            }

            else
            {
              v86 = v231;
              outlined init with take of DocumentRegistrationEnvelope(v63, v231, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
              v87 = *v86;
              v88 = v86[1];
              v89 = *(v232 + 20);
              v90 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
              v91 = type metadata accessor for URL();
              v92 = v242 + v90;
              v22 = v242;
              v93 = v86 + v89;
              v63 = v234;
              (*(*(v91 - 8) + 32))(v92, v93, v91);
              *v22 = v87;
              v22[1] = v88;
              v28 = v235;
            }

            swift_storeEnumTagMultiPayload();
            *v28 = v83;
            outlined init with take of DocumentRegistrationEnvelope(v22, v28 + *(v237 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
            v243 = v79;
            v95 = *(v79 + 16);
            v94 = *(v79 + 24);
            if (v95 >= v94 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1);
              v79 = v243;
            }

            *(v79 + 16) = v95 + 1;
            outlined init with take of DocumentRegistrationEnvelope(v28, v79 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v95, type metadata accessor for PromptCompletion.Annotation);
            v80 += v81;
            --v78;
          }

          while (v78);
          v35 = v211;
          outlined destroy of DocumentResourceEnvelope(v211, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v110 = v224;
          v111 = v205;
        }

        else
        {
          v110 = v69;
          v111 = v76;

          outlined destroy of DocumentResourceEnvelope(v35, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v79 = MEMORY[0x1E69E7CC0];
        }

        v112 = v210;
        v113 = v207;
        outlined copy of Data?(v210, v207);
        outlined consume of Data?(0, 0xF000000000000000);

        outlined consume of Data?(v112, v113);
        v114 = v202;
        *v202 = v225;
        v114[1] = v111;
        v114[2] = v79;
        v114[3] = v112;
        v114[4] = v113;
        swift_storeEnumTagMultiPayload();
        outlined init with take of DocumentRegistrationEnvelope(v114, v227, type metadata accessor for PromptCompletion.Content);
        v72 = v208;
        v69 = v110;
        v65 = v209;
        goto LABEL_31;
      }

      outlined destroy of DocumentResourceEnvelope(v35, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      *v227 = *v72;
LABEL_28:
      swift_storeEnumTagMultiPayload();
LABEL_31:
      v115 = v230;
      v244 = v230;
      v117 = *(v230 + 16);
      v116 = *(v230 + 24);
      if (v117 >= v116 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v116 > 1, v117 + 1, 1);
        v72 = v208;
        v115 = v244;
      }

      v118 = v229 + 1;
      *(v115 + 16) = v117 + 1;
      v119 = (*(v212 + 80) + 32) & ~*(v212 + 80);
      v230 = v115;
      outlined init with take of DocumentRegistrationEnvelope(v227, v115 + v119 + *(v212 + 72) * v117, type metadata accessor for PromptCompletion.Segment);
      v73 = v118;
      if (v118 == v228)
      {
        v120 = MEMORY[0x1E69E7CC0];
        v68 = v199;
        v121 = v201;
        v122 = v230;
        goto LABEL_36;
      }
    }
  }

  v167 = v188;
LABEL_79:
  v198 = v60;
  if (v179)
  {
    v168 = v187;
    outlined copy of Data._Representation(v187, v58);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v169 = type metadata accessor for Prompt.Rendering();
    (*(*(v169 - 8) + 56))(v167, 0, 1, v169);
  }

  else
  {
    v169 = type metadata accessor for Prompt.Rendering();
    (*(*(v169 - 8) + 56))(v167, 1, 1, v169);
    v168 = v187;
    outlined copy of Data._Representation(v187, v58);
  }

  v170 = v186;
  *(v186 + 24) = 0;
  v171 = *(type metadata accessor for PromptCompletion(0) + 36);
  type metadata accessor for Prompt.Rendering();
  (*(*(v169 - 8) + 56))(v170 + v171, 1, 1, v169);
  v172 = v182;
  *v170 = v183;
  *(v170 + 8) = v172;
  *(v170 + 16) = v181;
  v173 = *(v170 + 24);

  *&v174 = v185.n128_u64[0];
  *(&v174 + 1) = v184;
  v175 = v198;
  *(v170 + 24) = v180;
  *(v170 + 32) = v175;
  *&v176 = v168;
  *(&v176 + 1) = v58;
  *(v170 + 56) = v176;
  *(v170 + 40) = v174;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v167, v170 + v171, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

uint64_t ModelInformationEnvelope.unseal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = a4;
    v18 = a2;
    v19 = a3;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v7 = (a1 + 72);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 2);
      v20 = *(v7 - 3);
      v11 = *(v7 - 1);
      v12 = *v7;

      outlined copy of Data._Representation(v11, v12);
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v7 += 6;
      *(v21 + 16) = v14 + 1;
      v15 = (v21 + 48 * v14);
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v20;
      v15[7] = v10;
      v15[8] = v11;
      v15[9] = v12;
      --v4;
    }

    while (v4);
    a2 = v18;
    a3 = v19;
    a4 = v17;
  }

  *a4 = v5;
  a4[1] = a2;
  a4[2] = a3;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t outlined init with copy of DocumentResourceEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DocumentResourceEnvelope(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of Prompt.Rendering?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {
    v3 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[3];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[16], v0[2], type metadata accessor for PromptCompletion);

  v7 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6 + *(v7 + 20), v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
LABEL_22:
    v58 = v0[15];
    v57 = v0[16];
    v60 = v0[11];
    v59 = v0[12];
    v62 = v0[9];
    v61 = v0[10];
    v64 = v0[5];
    v63 = v0[6];

    v65 = v0[1];

    return v65();
  }

  v8 = v0[2];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v9 = *(v8 + 32);
  v0[21] = v9;
  v10 = *(v9 + 16);
  v68 = v9;

  if (!v10)
  {
LABEL_21:
    v55 = v0[14];
    v54 = v0[15];
    v56 = v0[13];

    (*(v55 + 8))(v54, v56);
    goto LABEL_22;
  }

  v11 = 0;
  v0[22] = 0;
  while (2)
  {
    v12 = (v0[21] + 56 * v11);
    v13 = v12[4];
    v0[23] = v13;
    v0[24] = v12[5];
    v14 = v12[7];
    v0[25] = v14;
    v15 = v12[8];
    v0[26] = v15;
    v16 = v12[9];
    v0[27] = v16;
    v17 = v12[10];
    v0[28] = v17;
    v0[29] = v12[6];
    v0[30] = *(v13 + 16);

    outlined copy of FinishReason(v14, v15);
    outlined copy of Data._Representation(v16, v17);
    v0[31] = v68;

    v20 = 0;
    while (1)
    {
      if (v20 == v0[30])
      {
        v21 = 1;
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return MEMORY[0x1EEE0B778](v18, v19);
        }

        v22 = v0[23];
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_26;
        }

        v24 = v0[9];
        v23 = v0[10];
        v25 = v0[7];
        v26 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
        v27 = v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20;
        v28 = *(v25 + 48);
        *v24 = v20;
        outlined init with copy of PromptCompletion(v27, v24 + v28, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v24, v23, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
        v21 = 0;
        ++v20;
      }

      v0[32] = v20;
      v30 = v0[10];
      v29 = v0[11];
      v31 = v0[7];
      v32 = v0[8];
      (*(v32 + 56))(v30, v21, 1, v31);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v30, v29, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR);
      if ((*(v32 + 48))(v29, 1, v31) == 1)
      {
        break;
      }

      v33 = v0[11];
      v35 = v0[6];
      v34 = v0[7];
      v36 = v0[4];
      v0[33] = *v33;
      v37 = *(v34 + 48);
      outlined init with copy of PromptCompletion(v33 + v37, v35, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v33 + v37, type metadata accessor for PromptCompletion.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v39 = v0[6];
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_17;
      }

      v18 = outlined destroy of TokenGeneratorCompletionResponseStringStream(v39, type metadata accessor for PromptCompletion.Content);
    }

    v40 = v0[29];
    v67 = v0[28];
    v42 = v0[26];
    v41 = v0[27];
    v44 = v0[24];
    v43 = v0[25];
    v46 = v0[22];
    v45 = v0[23];
    v47 = v0[21];
    swift_bridgeObjectRelease_n();

    outlined consume of FinishReason(v43, v42);
    v39 = outlined consume of Data._Representation(v41, v67);
    v48 = *(v47 + 16);
    if (v46 + 1 == v48)
    {
      v69 = v0[21];
      goto LABEL_21;
    }

    v11 = v0[22] + 1;
    v0[22] = v11;
    if (v11 < v48)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_17:
  v50 = *v39;
  v49 = v39[1];
  v0[34] = v49;
  v0[35] = v39[2];
  v0[36] = v39[3];
  v0[37] = v39[4];
  v51 = *(MEMORY[0x1E69A1548] + 4);
  v52 = swift_task_alloc();
  v0[38] = v52;
  *v52 = v0;
  v52[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  v53 = v0[15];
  v18 = v50;
  v19 = v49;

  return MEMORY[0x1EEE0B778](v18, v19);
}

{
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v6 = v0[4];
  v5 = v0[5];
  *v5 = v0[41];
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 24) = xmmword_1ABA1D8C0;
  swift_storeEnumTagMultiPayload();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v0[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  v9 = v0[22];
  if (v9 >= *(v8 + 2))
  {
    __break(1u);
  }

  else
  {
    v10 = &v8[56 * v9];
    v11 = *(v10 + 4);
    v1 = (v10 + 32);
    v4 = v11;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v11;
    if (v12)
    {
      goto LABEL_4;
    }
  }

  *v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_4:
  v13 = v0[36];
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[33];

  v18 = outlined consume of Data?(v13, v14);
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v20 = *v1;
  v21 = v0[33];
  if (v21 >= *(*v1 + 16))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return MEMORY[0x1EEE0B778](v18, v19);
  }

  v22 = v0[5];
  v1 = v0[2];
  v23 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = *(v23 + 72);
  outlined assign with take of PromptCompletion.Content(v22, v20 + v24 + v25 * v21);
  v1[4] = v8;
  v26 = v0[32];
  v4 = &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd;
  v72 = v8;
  for (v0[31] = v8; ; v0[31] = v72)
  {
    while (1)
    {
      if (v26 == v0[30])
      {
        v27 = 1;
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v28 = v0[23];
        if (v26 >= *(v28 + 16))
        {
          goto LABEL_25;
        }

        v30 = v0[9];
        v29 = v0[10];
        v31 = v28 + v24 + v26 * v25;
        v32 = *(v0[7] + 48);
        *v30 = v26;
        outlined init with copy of PromptCompletion(v31, v30 + v32, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v30, v29, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
        v27 = 0;
        ++v26;
      }

      v0[32] = v26;
      v34 = v0[10];
      v33 = v0[11];
      v35 = v0[7];
      v36 = v0[8];
      (*(v36 + 56))(v34, v27, 1, v35);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v34, v33, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR);
      if ((*(v36 + 48))(v33, 1, v35) == 1)
      {
        break;
      }

      v8 = v0[11];
      v38 = v0[6];
      v37 = v0[7];
      v1 = v0[4];
      v0[33] = *v8;
      v39 = *(v37 + 48);
      outlined init with copy of PromptCompletion(&v8[v39], v38, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(&v8[v39], type metadata accessor for PromptCompletion.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v0[6];
      if (!EnumCaseMultiPayload)
      {
        v54 = *v41;
        v53 = v41[1];
        v0[34] = v53;
        v0[35] = v41[2];
        v0[36] = v41[3];
        v0[37] = v41[4];
        v55 = *(MEMORY[0x1E69A1548] + 4);
        v56 = swift_task_alloc();
        v0[38] = v56;
        *v56 = v0;
        v56[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
        v57 = v0[15];
        v18 = v54;
        v19 = v53;

        return MEMORY[0x1EEE0B778](v18, v19);
      }

      outlined destroy of TokenGeneratorCompletionResponseStringStream(v41, type metadata accessor for PromptCompletion.Content);
    }

    v42 = v0[29];
    v43 = v0[26];
    v74 = v0[27];
    v75 = v0[28];
    v45 = v0[24];
    v44 = v0[25];
    v47 = v0[22];
    v46 = v0[23];
    v73 = v0[21];
    swift_bridgeObjectRelease_n();

    outlined consume of FinishReason(v44, v43);
    v18 = outlined consume of Data._Representation(v74, v75);
    v48 = *(v73 + 16);
    if (v47 + 1 == v48)
    {
      break;
    }

    v49 = v0[22] + 1;
    v0[22] = v49;
    if (v49 >= v48)
    {
      goto LABEL_31;
    }

    v50 = (v0[21] + 56 * v49);
    v8 = v50[4];
    v0[23] = v8;
    v0[24] = v50[5];
    v51 = v50[7];
    v0[25] = v51;
    v52 = v50[8];
    v0[26] = v52;
    v76 = v50[9];
    v0[27] = v76;
    v1 = v50[10];
    v0[28] = v1;
    v0[29] = v50[6];
    v0[30] = *(v8 + 2);

    outlined copy of FinishReason(v51, v52);
    outlined copy of Data._Representation(v76, v1);

    v26 = 0;
  }

  v58 = v0[21];
  v60 = v0[14];
  v59 = v0[15];
  v61 = v0[13];

  (*(v60 + 8))(v59, v61);
  v63 = v0[15];
  v62 = v0[16];
  v65 = v0[11];
  v64 = v0[12];
  v67 = v0[9];
  v66 = v0[10];
  v69 = v0[5];
  v68 = v0[6];

  v70 = v0[1];

  return v70();
}

{
  v1 = v0[3];
  v0[17] = v1[1];
  v2 = v1[2];
  v0[18] = v1[3];

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  v5 = v0[16];

  return v7(v5);
}

{
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[29];
  v6 = v0[26];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[14];
  v24 = v0[15];
  v25 = v0[28];
  v22 = v0[27];
  v23 = v0[13];
  v26 = v0[2];

  outlined consume of Data?(v1, v2);

  outlined consume of FinishReason(v7, v6);
  outlined consume of Data._Representation(v22, v25);
  (*(v10 + 8))(v24, v23);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v26, type metadata accessor for PromptCompletion);
  v11 = v0[39];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[11];
  v14 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v19 = v0[5];
  v18 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t outlined init with take of PromptCompletion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of PromptCompletion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TokenGeneratorCompletionResponseStringStream(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 304);
  v8 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {
    v9 = v6[23];
    v10 = v6[21];

    v11 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {
    v6[40] = a2;
    v6[41] = a1;
    v11 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for PromptCompletion.Content(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect(), 0, 0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO7Segment33_A0DC35A8846644F872318E44A8B14F8DLLOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO7Segment33_A0DC35A8846644F872318E44A8B14F8DLLOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration12FinishReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR, type metadata accessor for PromptCompletion.Segment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR, MEMORY[0x1E69DA8B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMR, type metadata accessor for Prompt.TokenGenerationNonStringContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, MEMORY[0x1E69DA700]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, MEMORY[0x1E69DA828]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration15PromptScrubbingO012IntermediateF5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AC0F0V0dE16NonStringContentOGGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15PromptScrubbingO012IntermediateF5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AC0F0V0dE16NonStringContentOGGMR, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, MEMORY[0x1E69DA800]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR, MEMORY[0x1E69DA7F8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR, MEMORY[0x1E69DA6C0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR, MEMORY[0x1E69C6178]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy20ModelManagerServices24CustomAssetConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ModelManagerServices24CustomAssetConfigurationVGMR, MEMORY[0x1E69B26A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMR, type metadata accessor for PromptCompletion.Annotation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMR, type metadata accessor for ToolDescription);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t outlined assign with take of PromptCompletion.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_store_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

void *sub_1AB834140(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v2 = v0[21];
  if ((*(*&v0[23] + 48))(v2, 1, *&v0[22]) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0[26];
  v4 = v1[24];
  v5 = v1[3];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v4, type metadata accessor for PromptCompletion);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMd, &_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMR) + 48);
  outlined init with copy of PromptCompletion(v4, v5, type metadata accessor for PromptCompletion);
  v7 = mach_absolute_time();
  v8 = v7 - *&v3;
  if (v7 < *&v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v1[24];
  v10 = v1[25];
  v11 = v1[21];
  v12 = v1[22];
  v23 = v1[20];
  v24 = v1[17];
  v25 = v1[16];
  v26 = v1[13];
  v27 = v1[10];
  v14 = v1[3];
  v13 = v1[4];
  v1[29].denom = 0;
  v1[29].numer = 0;
  mach_timebase_info(v1 + 29);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for PromptCompletion);
  v15.i64[0] = *&v1[29];
  v15.i64[1] = HIDWORD(*&v1[29]);
  v16 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v16.f64[0] = v8;
  v17 = vmulq_f64(v16, vcvtq_f64_u64(v15));
  *(*&v14 + v6) = *&vdivq_f64(v17, vdupq_laneq_s64(v17, 1));
  v18 = *v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  (MEMORY[0x1AC5A5DB0])(v18, v12, v19, MEMORY[0x1E69E7288]);

  v20 = v1[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

{
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v0[26] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumenterts5Error_pGMd, &_sScgy15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumenterts5Error_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[21];
  v14 = v0[4];
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v12);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v2 = v0[21];
  if ((*(*&v0[23] + 48))(v2, 1, *&v0[22]) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0[26];
  v4 = v1[24];
  v5 = v1[3];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v4, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v7 = mach_absolute_time();
  v8 = v7 - *&v3;
  if (v7 < *&v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v1[24];
  v10 = v1[25];
  v11 = v1[21];
  v12 = v1[22];
  v23 = v1[20];
  v24 = v1[17];
  v25 = v1[16];
  v26 = v1[13];
  v27 = v1[10];
  v14 = v1[3];
  v13 = v1[4];
  v1[29].denom = 0;
  v1[29].numer = 0;
  mach_timebase_info(v1 + 29);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v15.i64[0] = *&v1[29];
  v15.i64[1] = HIDWORD(*&v1[29]);
  v16 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v16.f64[0] = v8;
  v17 = vmulq_f64(v16, vcvtq_f64_u64(v15));
  *(*&v14 + v6) = *&vdivq_f64(v17, vdupq_laneq_s64(v17, 1));
  v18 = *v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  (MEMORY[0x1AC5A5DB0])(v18, v12, v19, MEMORY[0x1E69E7288]);

  v20 = v1[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

{
  v66 = *MEMORY[0x1E69E9840];
  *(v0 + 16) = *(v0 + 224);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  MEMORY[0x1AC5A6AE0]();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (v5)
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v6(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    GenerativeError.type.getter();
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69A0A60])
    {
      v14 = *(v0 + 128);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = *(v0 + 96);
      v19 = *(v0 + 72);
      v18 = *(v0 + 80);
      v20 = *(v0 + 64);
      (*(*(v0 + 120) + 96))(v14, *(v0 + 112));
      (*(v17 + 32))(v15, v14, v16);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v19 + 88))(v18, v20) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.generator);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1AB828000, v22, v23, "Aborting execution as closure exceeded maxiumum allotted time.", v24, 2u);
          MEMORY[0x1AC5A6CD0](v24, -1, -1);
        }

        v25 = *(v0 + 224);
        v26 = *(v0 + 152);
        v27 = *(v0 + 144);
        v28 = *(v0 + 96);
        v29 = *(v0 + 104);
        v30 = *(v0 + 88);
        v62 = *(v0 + 160);
        v64 = *(v0 + 80);
        v31 = *(v0 + 72);
        v61 = *(v0 + 64);

        swift_willThrow();
        (*(v28 + 8))(v29, v30);
        (*(v26 + 8))(v62, v27);
        (*(v31 + 8))(v64, v61);
      }

      else
      {
        v41 = *(v0 + 224);
        v42 = *(v0 + 152);
        v43 = *(v0 + 144);
        v45 = *(v0 + 96);
        v44 = *(v0 + 104);
        v46 = *(v0 + 88);
        v63 = *(v0 + 160);
        v65 = *(v0 + 80);
        v48 = *(v0 + 64);
        v47 = *(v0 + 72);
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        (*(v42 + 8))(v63, v43);
        (*(v47 + 8))(v65, v48);
      }
    }

    else
    {
      v34 = *(v0 + 224);
      v36 = *(v0 + 152);
      v35 = *(v0 + 160);
      v37 = *(v0 + 144);
      v39 = *(v0 + 120);
      v38 = *(v0 + 128);
      v40 = *(v0 + 112);
      swift_willThrow();
      (*(v36 + 8))(v35, v37);
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    v32 = *(v0 + 224);
    v33 = *(v0 + 136);
    v6(v33, 1, 1, *(v0 + 144));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v50 = *(v0 + 192);
  v49 = *(v0 + 200);
  v51 = *(v0 + 168);
  v52 = *(v0 + 160);
  v54 = *(v0 + 128);
  v53 = *(v0 + 136);
  v55 = *(v0 + 104);
  v56 = *(v0 + 80);
  MEMORY[0x1AC5A5DB0](**(v0 + 32), *(v0 + 176), v4, MEMORY[0x1E69E7288]);

  v57 = *(v0 + 8);
  v58 = *(v0 + 224);
  v59 = *MEMORY[0x1E69E9840];

  return v57();
}

{
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[23];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[24] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9, &_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySS7content_SaySSG6tokensts5Error_pGMd, &_sScgySS7content_SaySSG6tokensts5Error_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[6];
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v12);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v28 = *MEMORY[0x1E69E9840];
  v2 = v0[2];
  v1 = v0[3];
  if (!*&v1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0;
  v4 = v0[24];
  v5 = v3[4];
  v6 = mach_absolute_time();
  if (v6 < v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = v6 - v4;
  v26 = v5;
  v27 = v2;
  v8 = v3[22];
  v7 = v3[23];
  v10 = v3[18];
  v9 = v3[19];
  v11 = v3[15];
  v12 = v3[12];
  v13 = v3[6];
  v3[27].denom = 0;
  v3[27].numer = 0;
  mach_timebase_info(v3 + 27);
  v14 = v3[27];
  v15 = *v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v15, v16, v17, MEMORY[0x1E69E7288]);

  v18 = v3[1];
  v19 = *MEMORY[0x1E69E9840];
  v20.i64[0] = v14.numer;
  v20.i64[1] = v14.denom;
  v21 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v21.f64[0] = v25;
  v22 = vmulq_f64(v21, vcvtq_f64_u64(v20));
  v23 = vdivq_f64(v22, vdupq_laneq_s64(v22, 1));

  return (v18)(v27, v1, v26, v23);
}

{
  v66 = *MEMORY[0x1E69E9840];
  *(v0 + 40) = *(v0 + 208);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  MEMORY[0x1AC5A6AE0]();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (v5)
  {
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v6(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    GenerativeError.type.getter();
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69A0A60])
    {
      v14 = *(v0 + 144);
      v15 = *(v0 + 120);
      v16 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = *(v0 + 80);
      (*(*(v0 + 136) + 96))(v14, *(v0 + 128));
      (*(v17 + 32))(v15, v14, v16);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v19 + 88))(v18, v20) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.generator);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1AB828000, v22, v23, "Aborting execution as closure exceeded maxiumum allotted time.", v24, 2u);
          MEMORY[0x1AC5A6CD0](v24, -1, -1);
        }

        v25 = *(v0 + 208);
        v26 = *(v0 + 168);
        v27 = *(v0 + 160);
        v28 = *(v0 + 112);
        v29 = *(v0 + 120);
        v30 = *(v0 + 104);
        v62 = *(v0 + 176);
        v64 = *(v0 + 96);
        v31 = *(v0 + 88);
        v61 = *(v0 + 80);

        swift_willThrow();
        (*(v28 + 8))(v29, v30);
        (*(v26 + 8))(v62, v27);
        (*(v31 + 8))(v64, v61);
      }

      else
      {
        v41 = *(v0 + 208);
        v42 = *(v0 + 168);
        v43 = *(v0 + 160);
        v45 = *(v0 + 112);
        v44 = *(v0 + 120);
        v46 = *(v0 + 104);
        v63 = *(v0 + 176);
        v65 = *(v0 + 96);
        v48 = *(v0 + 80);
        v47 = *(v0 + 88);
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        (*(v42 + 8))(v63, v43);
        (*(v47 + 8))(v65, v48);
      }
    }

    else
    {
      v34 = *(v0 + 208);
      v36 = *(v0 + 168);
      v35 = *(v0 + 176);
      v37 = *(v0 + 160);
      v39 = *(v0 + 136);
      v38 = *(v0 + 144);
      v40 = *(v0 + 128);
      swift_willThrow();
      (*(v36 + 8))(v35, v37);
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    v32 = *(v0 + 208);
    v33 = *(v0 + 152);
    v6(v33, 1, 1, *(v0 + 160));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v50 = *(v0 + 176);
  v49 = *(v0 + 184);
  v52 = *(v0 + 144);
  v51 = *(v0 + 152);
  v53 = *(v0 + 120);
  v54 = *(v0 + 96);
  v55 = **(v0 + 48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  MEMORY[0x1AC5A5DB0](v55, v56, v4, MEMORY[0x1E69E7288]);

  v57 = *(v0 + 8);
  v58 = *(v0 + 208);
  v59 = *MEMORY[0x1E69E9840];

  return v57();
}

{
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v0[26] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration16PromptCompletionVs5Error_pGMd, &_sScgy15TokenGeneration16PromptCompletionVs5Error_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[21];
  v14 = v0[4];
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v12);
}

{
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[23] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sSSSgMd, &_sSSSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9, &_sSSSgMd, &_sSSSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[24] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySSSgs5Error_pGMd, &_sScgySSSgs5Error_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[5];
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v12);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = *(v0 + 184);
  v4 = mach_absolute_time();
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v23 = v4 - v3;
  v24 = v2;
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 40);
  *(v0 + 212) = 0;
  *(v0 + 208) = 0;
  mach_timebase_info((v0 + 208));
  v12 = *(v0 + 208);
  v13 = *v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v13, v14, v15, MEMORY[0x1E69E7288]);

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x1E69E9840];
  v18.i64[0] = v12;
  v18.i64[1] = HIDWORD(v12);
  v19 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v19.f64[0] = v23;
  v20 = vmulq_f64(v19, vcvtq_f64_u64(v18));
  v21 = vdivq_f64(v20, vdupq_laneq_s64(v20, 1));

  return v16(v24, v1, v21);
}

{
  v66 = *MEMORY[0x1E69E9840];
  *(v0 + 32) = *(v0 + 200);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  MEMORY[0x1AC5A6AE0]();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (v5)
  {
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    v6(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    GenerativeError.type.getter();
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69A0A60])
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 112);
      v16 = *(v0 + 96);
      v17 = *(v0 + 104);
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 72);
      (*(*(v0 + 128) + 96))(v14, *(v0 + 120));
      (*(v17 + 32))(v15, v14, v16);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v19 + 88))(v18, v20) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.generator);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1AB828000, v22, v23, "Aborting execution as closure exceeded maxiumum allotted time.", v24, 2u);
          MEMORY[0x1AC5A6CD0](v24, -1, -1);
        }

        v25 = *(v0 + 200);
        v26 = *(v0 + 160);
        v27 = *(v0 + 152);
        v28 = *(v0 + 104);
        v29 = *(v0 + 112);
        v30 = *(v0 + 96);
        v62 = *(v0 + 168);
        v64 = *(v0 + 88);
        v31 = *(v0 + 80);
        v61 = *(v0 + 72);

        swift_willThrow();
        (*(v28 + 8))(v29, v30);
        (*(v26 + 8))(v62, v27);
        (*(v31 + 8))(v64, v61);
      }

      else
      {
        v41 = *(v0 + 200);
        v42 = *(v0 + 160);
        v43 = *(v0 + 152);
        v45 = *(v0 + 104);
        v44 = *(v0 + 112);
        v46 = *(v0 + 96);
        v63 = *(v0 + 168);
        v65 = *(v0 + 88);
        v48 = *(v0 + 72);
        v47 = *(v0 + 80);
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        (*(v42 + 8))(v63, v43);
        (*(v47 + 8))(v65, v48);
      }
    }

    else
    {
      v34 = *(v0 + 200);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 152);
      v39 = *(v0 + 128);
      v38 = *(v0 + 136);
      v40 = *(v0 + 120);
      swift_willThrow();
      (*(v36 + 8))(v35, v37);
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    v32 = *(v0 + 200);
    v33 = *(v0 + 144);
    v6(v33, 1, 1, *(v0 + 152));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v50 = *(v0 + 168);
  v49 = *(v0 + 176);
  v52 = *(v0 + 136);
  v51 = *(v0 + 144);
  v53 = *(v0 + 112);
  v54 = *(v0 + 88);
  v55 = **(v0 + 40);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  MEMORY[0x1AC5A5DB0](v55, v56, v4, MEMORY[0x1E69E7288]);

  v57 = *(v0 + 8);
  v58 = *(v0 + 200);
  v59 = *MEMORY[0x1E69E9840];

  return v57();
}

{
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v0[26] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyScsySSs5Error_pGsAA_pGMd, &_sScgyScsySSs5Error_pGsAA_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[21];
  v14 = v0[4];
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v12);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0;
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 184);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v5 = *(v1 + 208);
  v6 = *(v1 + 192);
  v7 = *(v1 + 24);
  (*(v2 + 32))(v6, v3, v4);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR) + 48);
  (*(v2 + 16))(v7, v6, v4);
  v9 = mach_absolute_time();
  v10 = v9 - v5;
  if (v9 < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v1 + 192);
  v12 = *(v1 + 200);
  v14 = *(v1 + 176);
  v13 = *(v1 + 184);
  v25 = *(v1 + 168);
  v26 = *(v1 + 160);
  v27 = *(v1 + 136);
  v28 = *(v1 + 128);
  v29 = *(v1 + 104);
  v30 = *(v1 + 80);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  *(v1 + 236) = 0;
  *(v1 + 232) = 0;
  mach_timebase_info((v1 + 232));
  (*(v13 + 8))(v11, v14);
  v17.i64[0] = *(v1 + 232);
  v17.i64[1] = HIDWORD(*(v1 + 232));
  v18 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v18.f64[0] = v10;
  v19 = vmulq_f64(v18, vcvtq_f64_u64(v17));
  *(v16 + v8) = *&vdivq_f64(v19, vdupq_laneq_s64(v19, 1));
  v20 = *v15;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v20, v14, v21, MEMORY[0x1E69E7288]);

  v22 = *(v1 + 8);
  v23 = *MEMORY[0x1E69E9840];

  return v22();
}

{
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[31];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v0[32] = mach_absolute_time();
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v8, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v9, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[33] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration21PromptCompletionEvent_pSgs5Error_pGMd, &_sScgy15TokenGeneration21PromptCompletionEvent_pSgs5Error_pGMR);
  *v11 = v0;
  v11[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v13 = v0[14];
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DAC8](v0 + 7, 0, 0, v12);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v24 = *MEMORY[0x1E69E9840];
  if (*(v0 + 80) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v3;
  *(v0 + 48) = *(v0 + 88);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v2, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v4 = mach_absolute_time();
  v5 = v4 - v1;
  if (v4 < v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  *(v0 + 280) = 0;
  mach_timebase_info((v0 + 280));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v12 = *(v0 + 280);
  v13.i64[0] = v12;
  v13.i64[1] = HIDWORD(v12);
  v14 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v14.f64[0] = v5;
  v15 = vmulq_f64(v14, vcvtq_f64_u64(v13));
  *(v10 + 40) = *&vdivq_f64(v15, vdupq_laneq_s64(v15, 1));
  v16 = *v11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v16, v17, v18, MEMORY[0x1E69E7288]);

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19();
}

{
  v66 = *MEMORY[0x1E69E9840];
  *(v0 + 96) = *(v0 + 272);
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  MEMORY[0x1AC5A6AE0]();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (v5)
  {
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 192);
    v6(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    GenerativeError.type.getter();
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69A0A60])
    {
      v14 = *(v0 + 208);
      v15 = *(v0 + 184);
      v16 = *(v0 + 168);
      v17 = *(v0 + 176);
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = *(v0 + 144);
      (*(*(v0 + 200) + 96))(v14, *(v0 + 192));
      (*(v17 + 32))(v15, v14, v16);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v19 + 88))(v18, v20) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.generator);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1AB828000, v22, v23, "Aborting execution as closure exceeded maxiumum allotted time.", v24, 2u);
          MEMORY[0x1AC5A6CD0](v24, -1, -1);
        }

        v25 = *(v0 + 272);
        v26 = *(v0 + 232);
        v27 = *(v0 + 224);
        v28 = *(v0 + 176);
        v29 = *(v0 + 184);
        v30 = *(v0 + 168);
        v62 = *(v0 + 240);
        v64 = *(v0 + 160);
        v31 = *(v0 + 152);
        v61 = *(v0 + 144);

        swift_willThrow();
        (*(v28 + 8))(v29, v30);
        (*(v26 + 8))(v62, v27);
        (*(v31 + 8))(v64, v61);
      }

      else
      {
        v41 = *(v0 + 272);
        v42 = *(v0 + 232);
        v43 = *(v0 + 224);
        v45 = *(v0 + 176);
        v44 = *(v0 + 184);
        v46 = *(v0 + 168);
        v63 = *(v0 + 240);
        v65 = *(v0 + 160);
        v48 = *(v0 + 144);
        v47 = *(v0 + 152);
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        (*(v42 + 8))(v63, v43);
        (*(v47 + 8))(v65, v48);
      }
    }

    else
    {
      v34 = *(v0 + 272);
      v36 = *(v0 + 232);
      v35 = *(v0 + 240);
      v37 = *(v0 + 224);
      v39 = *(v0 + 200);
      v38 = *(v0 + 208);
      v40 = *(v0 + 192);
      swift_willThrow();
      (*(v36 + 8))(v35, v37);
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    v32 = *(v0 + 272);
    v33 = *(v0 + 216);
    v6(v33, 1, 1, *(v0 + 224));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  v52 = *(v0 + 208);
  v51 = *(v0 + 216);
  v53 = *(v0 + 184);
  v54 = *(v0 + 160);
  v55 = **(v0 + 112);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  MEMORY[0x1AC5A5DB0](v55, v56, v4, MEMORY[0x1E69E7288]);

  v57 = *(v0 + 8);
  v58 = *(v0 + 272);
  v59 = *MEMORY[0x1E69E9840];

  return v57();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized closure #1 in withTimeout<A>(timeout:_:)();
}

uint64_t sub_1AB834590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t outlined init with copy of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s15TokenGeneration28Promptkit_Wireformat_PromptsV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t _s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  v5 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v5;
  return result;
}

uint64_t _s15TokenGeneration46Promptkit_Wireformat_PromptComponentCustomDataV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xF000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration31Promptkit_Wireformat_JSONSchemaV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xF000000000000007;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration46Promptkit_Wireformat_RecursiveSchemaKindObjectV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  v3 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AB834B34()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t _s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 4;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t sub_1AB834CB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB834EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for UnknownStorage();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1AB834FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AB835130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB8351E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = type metadata accessor for UnknownStorage();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1AB8353C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1AB835500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
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
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB8355B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83565C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB83570C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8357EC(uint64_t a1, uint64_t a2, int *a3)
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for UnknownStorage();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1AB83597C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UnknownStorage();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AB835C10(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 119)
  {
    v4 = *a1 >> 57;
    v5 = v4 & 8 | *a1 & 7;
    if (v5)
    {
      return ((v4 >> 4) | (8 * v5)) ^ 0x7F;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

unint64_t *sub_1AB835CC8(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 119)
  {
    v6 = (~a2 >> 3) & 0xF | (16 * (~a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AB835DA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB835EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB83605C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB836198(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB8362F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 116)
  {
    v4 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v4 >= 0x75)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t *sub_1AB83639C(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 116)
  {
    v6 = (~a2 >> 4) & 7 | (8 * (~a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AB83644C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB8364FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8365AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB8366DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB83680C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB836948(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836A78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB836BA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836CD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB836E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836F38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = type metadata accessor for UnknownStorage();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1AB83717C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v18 = type metadata accessor for UnknownStorage();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1AB8373B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 5;
    if (v4 >= 5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB837464(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AB837584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AB8376D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB837804(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s16GenerativeModels44TokenGeneratorCompletionResponseStringStreamVAA0cdfgH13AsyncSequenceA2aDP7timeoutSdSgvgTW_0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1AB837B2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB837B78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB837D40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB837D7C()
{
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB837DB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB837DEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB837E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AB837ECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AB837FB4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838148()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1AB838258(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB838314(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8383D0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1AB83847C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB8384B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB83852C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB838564()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB83859C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838630()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB8387B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t _s15TokenGeneration16PromptCompletionV12ImageContentVSHAASH4hash4intoys6HasherVz_tFTW_0()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.hash(into:)();
}

uint64_t sub_1AB838920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    result = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_1AB838964(uint64_t a1)
{
  v1 = *(a1 + 8);

  return ModelInformation.identifier.setter(v2, v2);
}

uint64_t sub_1AB838988@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  result = ModelInformation.version.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AB8389CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AB838A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AB838AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB838B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB838C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB838D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB838DC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB838E80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB838F5C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838FDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB8390C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Prompt.Rendering();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB839174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prompt.Rendering();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOs0E3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized OneShotRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB839428()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB8398B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}