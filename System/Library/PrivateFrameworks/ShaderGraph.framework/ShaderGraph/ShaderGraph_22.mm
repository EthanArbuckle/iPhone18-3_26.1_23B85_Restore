uint64_t MetalStitchingBackend.makeFunction(_:descriptor:)(void *a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static DebugConfig.debugMode;

  v14 = specialized Set.contains(_:)(9, v13);

  if (v14)
  {
    v15 = type metadata accessor for MetalStitchingBackend();
    v16 = *(v9 + 16);
    v17 = v2 + *(v15 + 24);
    v33 = v8;
    v16(v12, v17, v8);
    (*(v4 + 16))(v7, v2 + *(v15 + 28), v3);
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignposter.logHandle.getter();
    v20 = static os_signpost_type_t.begin.getter();
    v32 = v3;
    v3 = v20;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v3, v21, "buildMetalFunction", "makeFunction_d", v18, 2u);
    v36[0] = 0;
    v22 = [v34 newFunctionWithDescriptor:v35 error:v36];
    if (v22)
    {
      v3 = v22;
      v23 = v36[0];
      v24 = static os_signpost_type_t.end.getter();
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v24, v25, "buildMetalFunction", "makeFunction_d", v18, 2u);

      MEMORY[0x266773120](v18, -1, -1);
    }

    else
    {
      v28 = v36[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v4 + 8))(v7, v32);
    (*(v9 + 8))(v12, v33);
  }

  else
  {
    v36[0] = 0;
    v26 = [v34 newFunctionWithDescriptor:v35 error:v36];
    if (v26)
    {
      v3 = v26;
      v27 = v36[0];
    }

    else
    {
      v29 = v36[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MetalStitchingBackend.constantFunction(for:name:type:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v106 = *MEMORY[0x277D85DE8];
  v9 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
  v10 = MEMORY[0x266771450](a2, a3);
  [v9 setSpecializedName_];

  v11 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
  [v9 setConstantValues_];

  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 48);
  switch(*(a1 + 64))
  {
    case 1:
      LOBYTE(v104[0]) = *a1;
      v41 = [v9 constantValues];
      if (v41)
      {
        v42 = v41;
        [v41 setConstantValue:v104 type:49 atIndex:13];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEE0072616863755FLL;
      goto LABEL_113;
    case 2:
      LODWORD(v104[0]) = vmovn_s16(vzip1q_s8(v12, v12)).u32[0];
      v33 = [v9 constantValues];
      if (v33)
      {
        v34 = v33;
        [v33 setConstantValue:v104 type:29 atIndex:1];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEC000000746E695FLL;
      goto LABEL_113;
    case 3:
      LODWORD(v104[0]) = vmovn_s16(vzip1q_s8(v12, v12)).u32[0];
      v35 = [v9 constantValues];
      if (v35)
      {
        v36 = v35;
        [v35 setConstantValue:v104 type:33 atIndex:14];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED0000746E69755FLL;
      goto LABEL_113;
    case 4:
      LOWORD(v104[0]) = *a1;
      v29 = [v9 constantValues];
      if (v29)
      {
        v30 = v29;
        [v29 setConstantValue:v104 type:16 atIndex:15];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED0000666C61685FLL;
      goto LABEL_113;
    case 5:
      LODWORD(v104[0]) = vmovn_s16(vzip1q_s8(v12, v12)).u32[0];
      v63 = [v9 constantValues];
      if (v63)
      {
        v64 = v63;
        [v63 setConstantValue:v104 type:3 atIndex:2];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEE0074616F6C665FLL;
      goto LABEL_113;
    case 6:
    case 0x16:
    case 0x17:
      goto LABEL_2;
    case 7:
      v96 = *a1;
      if (one-time initialization token for float2 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)())
      {
        v23 = 0xEF3274616F6C665FLL;
      }

      else
      {
        if (one-time initialization token for half2 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)() & 1) == 0)
        {
          goto LABEL_2;
        }

        v23 = 0xEE0032666C61685FLL;
      }

      *&v104[0] = v96.i64[0];
      v84 = [v9 constantValues];
      if (!v84)
      {
        goto LABEL_112;
      }

      v83 = v84;
      [v84 setConstantValue:v104 type:4 atIndex:3];
      goto LABEL_111;
    case 8:
      v99 = *a1;
      if (one-time initialization token for float3 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)())
      {
        v62 = 0x74616F6C665FLL;
LABEL_65:
        v23 = v62 & 0xFFFFFFFFFFFFLL | 0xEF33000000000000;
        goto LABEL_109;
      }

      if (one-time initialization token for half3 != -1)
      {
        swift_once();
      }

      if ((MetalDataType.isEqual(to:)() & 1) == 0)
      {
        if (one-time initialization token for color3 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)() & 1) == 0)
        {
          goto LABEL_2;
        }

        v62 = 0x726F6C6F635FLL;
        goto LABEL_65;
      }

      v23 = 0xEE0033666C61685FLL;
LABEL_109:
      v104[0] = v99;
      v85 = [v9 constantValues];
      if (!v85)
      {
        goto LABEL_112;
      }

      v83 = v85;
      [v85 setConstantValue:v104 type:5 atIndex:4];
      goto LABEL_111;
    case 9:
      v95 = *a1;
      if (one-time initialization token for float4 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)())
      {
        v26 = 0x74616F6C665FLL;
LABEL_13:
        v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEF34000000000000;
        goto LABEL_97;
      }

      if (one-time initialization token for half4 != -1)
      {
        swift_once();
      }

      if ((MetalDataType.isEqual(to:)() & 1) == 0)
      {
        if (one-time initialization token for color4 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)() & 1) == 0)
        {
LABEL_2:
          v15 = *(a1 + 48);
          v104[2] = *(a1 + 32);
          v104[3] = v15;
          v105 = *(a1 + 64);
          v16 = *(a1 + 16);
          v104[0] = *a1;
          v104[1] = v16;
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
          v17 = swift_allocError();
          *v18 = 0;
          *(v18 + 8) = 0xE000000000000000;
          *(v18 + 16) = 3;
          v19 = v17;
          swift_willThrow();

          goto LABEL_114;
        }

        v26 = 0x726F6C6F635FLL;
        goto LABEL_13;
      }

      v23 = 0xEE0034666C61685FLL;
LABEL_97:
      v104[0] = v95;
      v82 = [v9 constantValues];
      if (v82)
      {
        v83 = v82;
        [v82 setConstantValue:v104 type:6 atIndex:5];
LABEL_111:
      }

LABEL_112:
      v22 = 0x746E6174736E6F63;
LABEL_113:
      v86 = MEMORY[0x266771450](v22, v23);

      [v9 setName_];

      v19 = MetalStitchingBackend.makeFunction(_:descriptor:)(a5, v9);
LABEL_114:
      v87 = *MEMORY[0x277D85DE8];
      return v19;
    case 0xA:
      LODWORD(v104[0]) = vmovn_s16(vzip1q_s8(v12, v12)).u32[0];
      v27 = [v9 constantValues];
      if (v27)
      {
        v28 = v27;
        [v27 setConstantValue:v104 type:17 atIndex:21];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEE0032666C61685FLL;
      goto LABEL_113;
    case 0xB:
      *&v104[0] = *a1;
      v57 = [v9 constantValues];
      if (v57)
      {
        v58 = v57;
        [v57 setConstantValue:v104 type:18 atIndex:22];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEE0033666C61685FLL;
      goto LABEL_113;
    case 0xC:
      *&v104[0] = *a1;
      v24 = [v9 constantValues];
      if (v24)
      {
        v25 = v24;
        [v24 setConstantValue:v104 type:19 atIndex:23];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xEE0034666C61685FLL;
      goto LABEL_113;
    case 0xD:
      *&v104[0] = *a1;
      v31 = [v9 constantValues];
      if (v31)
      {
        v32 = v31;
        [v31 setConstantValue:v104 type:30 atIndex:18];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED000032746E695FLL;
      goto LABEL_113;
    case 0xE:
      v104[0] = *a1;
      v20 = [v9 constantValues];
      if (v20)
      {
        v21 = v20;
        [v20 setConstantValue:v104 type:31 atIndex:19];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED000033746E695FLL;
      goto LABEL_113;
    case 0xF:
      v104[0] = *a1;
      v37 = [v9 constantValues];
      if (v37)
      {
        v38 = v37;
        [v37 setConstantValue:v104 type:32 atIndex:20];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED000034746E695FLL;
      goto LABEL_113;
    case 0x10:
      v98 = vextq_s8(v12, v12, 8uLL).u64[0];
      v23 = 0x8000000265F34340;
      *&v104[0] = v12.i64[0];
      v59 = [v9 constantValues];
      if (v59)
      {
        v60 = v59;
        [v59 setConstantValue:v104 type:4 atIndex:16];
      }

      *&v104[0] = v98;
      v61 = [v9 constantValues];
      if (!v61)
      {
        goto LABEL_82;
      }

      v50 = v61;
      [v61 setConstantValue:v104 type:4 atIndex:17];
      goto LABEL_81;
    case 0x11:
      v93 = *(a1 + 32);
      v101 = *(a1 + 16);
      v104[0] = *a1;
      v70 = [v9 constantValues];
      if (v70)
      {
        v71 = v70;
        [v70 setConstantValue:v104 type:5 atIndex:6];
      }

      v23 = 0x8000000265F34320;
      v104[0] = v101;
      v72 = [v9 constantValues];
      if (v72)
      {
        v73 = v72;
        [v72 setConstantValue:v104 type:5 atIndex:7];
      }

      v104[0] = v93;
      v74 = [v9 constantValues];
      if (!v74)
      {
        goto LABEL_82;
      }

      v50 = v74;
      [v74 setConstantValue:v104 type:5 atIndex:8];
      goto LABEL_81;
    case 0x12:
      v89 = *(a1 + 48);
      v91 = *(a1 + 32);
      v97 = *(a1 + 16);
      v104[0] = *a1;
      v43 = [v9 constantValues];
      if (v43)
      {
        v44 = v43;
        [v43 setConstantValue:v104 type:6 atIndex:9];
      }

      v104[0] = v97;
      v45 = [v9 constantValues];
      if (v45)
      {
        v46 = v45;
        [v45 setConstantValue:v104 type:6 atIndex:10];
      }

      v23 = 0x8000000265F34300;
      v104[0] = v91;
      v47 = [v9 constantValues];
      if (v47)
      {
        v48 = v47;
        [v47 setConstantValue:v104 type:6 atIndex:11];
      }

      v104[0] = v89;
      v49 = [v9 constantValues];
      if (!v49)
      {
        goto LABEL_82;
      }

      v50 = v49;
      [v49 setConstantValue:v104 type:6 atIndex:12];
LABEL_81:

LABEL_82:
      v22 = 0xD000000000000011;
      goto LABEL_113;
    case 0x13:
      v51 = vzip2_s8(*v12.i8, *v12.i8);
      v23 = 0x8000000265F342E0;
      LODWORD(v104[0]) = vmovn_s16(vzip1q_s8(v12, v12)).u32[0];
      v52 = [v9 constantValues];
      if (v52)
      {
        v54 = v52;
        [v52 setConstantValue:v104 type:4 atIndex:24];
      }

      LODWORD(v104[0]) = vuzp1_s8(v51, v53).u32[0];
      v55 = [v9 constantValues];
      if (!v55)
      {
        goto LABEL_92;
      }

      v56 = v55;
      [v55 setConstantValue:v104 type:4 atIndex:25];
      goto LABEL_91;
    case 0x14:
      v100 = *(a1 + 16);
      v92 = vextq_s8(v12, v12, 8uLL).u64[0];
      *&v104[0] = *a1;
      v65 = [v9 constantValues];
      if (v65)
      {
        v66 = v65;
        [v65 setConstantValue:v104 type:5 atIndex:26];
      }

      v23 = 0x8000000265F342C0;
      *&v104[0] = v92;
      v67 = [v9 constantValues];
      if (v67)
      {
        v68 = v67;
        [v67 setConstantValue:v104 type:5 atIndex:27];
      }

      *&v104[0] = v100;
      v69 = [v9 constantValues];
      if (!v69)
      {
        goto LABEL_92;
      }

      v56 = v69;
      [v69 setConstantValue:v104 type:5 atIndex:28];
      goto LABEL_91;
    case 0x15:
      v102 = *(a1 + 16);
      v90 = vextq_s8(v12, v12, 8uLL).u64[0];
      *&v104[0] = *a1;
      v75 = [v9 constantValues];
      if (v75)
      {
        v76 = v75;
        [v75 setConstantValue:v104 type:6 atIndex:29];
      }

      v94 = vextq_s8(v102, v102, 8uLL).u64[0];
      *&v104[0] = v90;
      v77 = [v9 constantValues];
      if (v77)
      {
        v78 = v77;
        [v77 setConstantValue:v104 type:6 atIndex:30];
      }

      v23 = 0x8000000265F342A0;
      *&v104[0] = v102.i64[0];
      v79 = [v9 constantValues];
      if (v79)
      {
        v80 = v79;
        [v79 setConstantValue:v104 type:6 atIndex:31];
      }

      *&v104[0] = v94;
      v81 = [v9 constantValues];
      if (!v81)
      {
        goto LABEL_92;
      }

      v56 = v81;
      [v81 setConstantValue:v104 type:6 atIndex:32];
LABEL_91:

LABEL_92:
      v22 = 0xD000000000000010;
      goto LABEL_113;
    default:
      v103 = *a1;
      LODWORD(v104[0]) = v12.i8[0] & 1;
      v39 = [v9 constantValues];
      if (v39)
      {
        v40 = v39;
        [v39 setConstantValue:v104 type:53 atIndex:0];
      }

      v22 = 0x746E6174736E6F63;
      v23 = 0xED00006C6F6F625FLL;
      goto LABEL_113;
  }
}

uint64_t closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t a5, void *a6, uint64_t *a7, unint64_t a8, uint64_t a9, void *a10)
{
  v205 = a8;
  v207 = a7;
  v16 = *a1;
  v17 = type metadata accessor for MetalFunctionDefinitionNode();
  v215 = v17;
  v216 = &protocol witness table for MetalFunctionDefinitionNode;
  DynamicType = v16;

  v18 = MetalShaderProgram.topologicalSort(from:)(&DynamicType);
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  }

  v210 = a2;
  v203 = v17;
  v204 = v18;
  v197 = a5;
  v198 = a3;
  v195 = a4;
  v196 = a6;
  v206 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  v20 = MEMORY[0x277D84F90];
  v21 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA14FunctionNodeIDV_So020MTLFunctionStitchingK0_pSayAI_SoAJ_ptGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v200 = v22;
  v201 = v21;
  v225 = v21;
  v226 = v22;
  v199 = v23;
  v227 = v23;
  v234 = v20;
  v24 = *(*v16 + 224);
  v202 = v16;
  v25 = v24();
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So29MTLFunctionStitchingInputNodeCTt0g5Tf4g_n(v20);
  v27 = v25;
  v224 = v26;
  v209 = *(v25 + 16);
  if (v209)
  {
    v28 = 0;
    v29 = (v25 + 48);
    v208 = v25;
    do
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:

        __swift_project_boxed_opaque_existential_1(&v220, v222);
        DynamicType = swift_getDynamicType();
        v214 = v223;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pXpMd, &_s11ShaderGraph17MetalFunctionNode_pXpMR);
        v173 = String.init<A>(describing:)();
        v175 = v174;
        lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
        swift_allocError();
        *v176 = v173;
        *(v176 + 8) = v175;
        *(v176 + 16) = 1;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v220);
        goto LABEL_139;
      }

      v33 = *(v29 - 2);
      v32 = *(v29 - 1);
      v34 = *v29;
      v35 = objc_allocWithZone(MEMORY[0x277CD6E00]);

      v211 = v34;

      v212 = [v35 initWithArgumentIndex_];
      v36 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      DynamicType = v36;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
      v40 = *(v36 + 16);
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_131;
      }

      v43 = v38;
      if (*(v36 + 24) >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = DynamicType;
          if ((v38 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v26 = DynamicType;
          if ((v43 & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
        if ((v43 & 1) != (v45 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_154:
          v184 = 0;
          v183 = 213;
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v39 = v44;
        v26 = DynamicType;
        if ((v43 & 1) == 0)
        {
LABEL_15:
          v26[(v39 >> 6) + 8] |= 1 << v39;
          v46 = (v26[6] + 16 * v39);
          *v46 = v33;
          v46[1] = v32;
          *(v26[7] + 8 * v39) = v212;
          v47 = v26[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __swift_destroy_boxed_opaque_existential_1Tm(&v220);

            outlined destroy of SGDataTypeStorage(v230);
            outlined destroy of SGDataTypeStorage(v228);

            goto LABEL_139;
          }

          v26[2] = v49;

          goto LABEL_6;
        }
      }

      v30 = v26[7];
      v31 = *(v30 + 8 * v39);
      *(v30 + 8 * v39) = v212;

LABEL_6:
      ++v28;
      v29 += 3;
      v27 = v208;
    }

    while (v209 != v28);
  }

  v224 = v26;

  v215 = v203;
  v216 = &protocol witness table for MetalFunctionDefinitionNode;
  DynamicType = v202;

  v50 = MetalShaderProgram.parameterNodes(connectedTo:)(&DynamicType);
  v51 = v206;
  if (v206)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  }

  v52 = v50;
  __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  specialized Sequence.forEach(_:)(v52, &v224);
  v53 = v204;
  v54 = *(v204 + 16);
  v192 = v26;
  v208 = v54;
  if (!v54)
  {

    v56 = MEMORY[0x277D84F90];
    goto LABEL_117;
  }

  v55 = 0;
  v201 = v204 + 32;
  v185 = v52;
  v186 = 0x8000000265F34280;
  v56 = MEMORY[0x277D84F90];
  v52 = v198;
  while (1)
  {
    if (v55 >= *(v53 + 16))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v210 = v55;
    outlined init with copy of MetalFunctionNode(v201 + 40 * v55, &v220);
    outlined init with copy of MetalFunctionNode(&v220, v219);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    type metadata accessor for MetalFunctionParameterNode();
    if (!swift_dynamicCast() && !swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v220);

LABEL_26:
    v55 = v210 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v219);
    if (v55 == v208)
    {

      v52 = v185;
LABEL_117:
      if (!(v56 >> 62))
      {
        v156 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_119;
      }

LABEL_149:
      v156 = __CocoaSet.count.getter();
LABEL_119:
      v157 = *(v227 + 16);
      if (v52 >> 62)
      {
        v158 = __CocoaSet.count.getter();
      }

      else
      {
        v158 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v157, v158))
      {
        __break(1u);
      }

      else
      {
        if (v156 != v157 - v158)
        {
          lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
          swift_allocError();
          *v164 = xmmword_265F24220;
          *(v164 + 16) = 6;
          swift_willThrow();
        }

        v26 = a10;
        if (one-time initialization token for debugMode == -1)
        {
          goto LABEL_124;
        }
      }

      swift_once();
LABEL_124:
      swift_beginAccess();
      v159 = static DebugConfig.debugMode;

      v160 = specialized Set.contains(_:)(3, v159);

      v161 = v202;
      if (v160)
      {
        v162 = *(v202 + 48);
        v220 = *(v202 + 40);
        v221 = v162;

        MEMORY[0x266771550](10, 0xE100000000000000);
        MEMORY[0x266771550](v220, v221);

        MEMORY[0x28223BE20](v163);
        v181 = v207;
        v182 = v197;
        v183 = a9;
        specialized Sequence.forEach(_:)(partial apply for closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v180, v56);
        MEMORY[0x266771550](10, 0xE100000000000000);
      }

      v165 = *(v161 + 40);
      v166 = *(v161 + 48);
      v167 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
      v168 = MEMORY[0x266771450](v165, v166);
      type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MTLFunctionStitchingAttribute_pMd, &_sSo29MTLFunctionStitchingAttribute_pMR);
      v170 = Array._bridgeToObjectiveC()().super.isa;
      v171 = [v167 initWithFunctionName:v168 nodes:isa outputNode:0 attributes:v170];

      v172 = v171;
      MEMORY[0x266771770]();
      if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v179 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  type metadata accessor for MetalLiteralValueNode();
  v57 = swift_dynamicCast();
  v193 = v56;
  if (v57)
  {
    v206 = v51;
    v58 = v218;
    v59 = *(*v218 + 192);
    v60 = v59(v228);
    v231[2] = v228[2];
    v231[3] = v228[3];
    v232 = v229;
    v231[0] = v228[0];
    v231[1] = v228[1];
    v56 = *(*v58 + 168);
    v26 = (*v58 + 168);
    v212 = (v56)(v60);
    v233 = v212;
    v61 = *v52;
    if (*(*v52 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v231), (v63 & 1) != 0))
    {
      v64 = (*(v61 + 56) + 16 * v62);
      v66 = *v64;
      v65 = v64[1];

      v26 = v192;
    }

    else
    {
      DynamicType = 0;
      v214 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      DynamicType = 0xD000000000000010;
      v214 = v186;
      v52 = v195;
      v217 = *v195;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v74);

      v76 = *v52 + 1;
      if (__OFADD__(*v52, 1))
      {
        goto LABEL_148;
      }

      v77 = v52;
      v66 = DynamicType;
      v65 = v214;
      *v77 = v76;
      v78 = (v59)(v230, v75);
      v79 = (v56)(v78);
      v80 = v206;
      MetalStitchingBackend.constantFunction(for:name:type:library:)(v230, v66, v65, v79, v196);
      v206 = v80;
      if (v80)
      {
        goto LABEL_138;
      }

      outlined destroy of SGDataTypeStorage(v230);
      swift_bridgeObjectRetain_n();
      v81 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v81, v66, v65);
      outlined init with copy of SGDataTypeStorage(v228, &DynamicType);

      v82 = v198;
      v83 = *v198;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      DynamicType = *v82;
      *v82 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v65, v231, v84);
      outlined destroy of SGDataTypeStorage(v228);

      *v82 = DynamicType;
      swift_unknownObjectRelease();
      v26 = v192;
    }

    v85 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
    v86 = MEMORY[0x266771450](v66, v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v87 = Array._bridgeToObjectiveC()().super.isa;
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
    v88 = Array._bridgeToObjectiveC()().super.isa;
    v89 = [v85 initWithName:v86 arguments:v87 controlDependencies:v88];

    v90 = (*(*v58 + 120))();
    v91 = v89;
    specialized OrderedDictionary.subscript.setter(v89, v90);
    v92 = v91;
    MEMORY[0x266771770]();
    if (*((v234 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v154 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of SGDataTypeStorage(v228);

    __swift_destroy_boxed_opaque_existential_1Tm(&v220);
    v56 = v234;
    v51 = v206;
    goto LABEL_113;
  }

  type metadata accessor for MetalFunctionCallNode();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_132;
  }

  v67 = v218;
  v56 = v218[5];
  v68 = v218[6];
  v70 = *v207;
  v69 = v207[1];
  v71 = v207[2];

  v72 = specialized OrderedDictionary.subscript.getter(v56, v68, v70, v69, v71);
  v212 = v56;
  v191 = v68;
  if (v72)
  {
    v73 = swift_unknownObjectRelease();
  }

  else
  {
    v93 = v197;
    v94 = MetalStitchingBackend.makeFunction(_:name:)(v196, v56, v68);
    if (v94)
    {
      v95 = v94;

      v96 = v95;
    }

    else
    {
      MEMORY[0x28223BE20](0);
      v181 = v93;
      v182 = v56;
      v183 = v68;
      v98 = specialized Sequence.reduce<A>(into:_:)(v97, partial apply for closure #1 in closure #3 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v180, v205);
      if (!v98)
      {
        goto LABEL_144;
      }

      v99 = v98;

      v96 = v99;
    }

    v73 = specialized OrderedDictionary.subscript.setter(v96, v56, v68);
  }

  v206 = v51;
  v100 = (*v67 + 144);
  v189 = *v100;
  v190 = v67;
  v188 = v100;
  v101 = v189(v73);
  v102 = MEMORY[0x277D84F90];
  v217 = MEMORY[0x277D84F90];
  v103 = *(v101 + 16);
  v187 = v101;
  if (!v103)
  {
    v68 = v212;
LABEL_107:

    if (v102 >> 62)
    {
      v141 = __CocoaSet.count.getter();
      v142 = v141;
    }

    else
    {
      v142 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = v190;
    v144 = v191;
    v145 = *(v189(v141) + 16);

    if (v142 != v145)
    {

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v177 = v68;
      *(v177 + 8) = v144;
      *(v177 + 16) = 5;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(&v220);
      goto LABEL_139;
    }

    v146 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
    v147 = MEMORY[0x266771450](v68, v144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v148 = Array._bridgeToObjectiveC()().super.isa;

    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
    v149 = Array._bridgeToObjectiveC()().super.isa;
    v150 = [v146 initWithName:v147 arguments:v148 controlDependencies:v149];

    v151 = (*(*v143 + 120))();
    v152 = v150;
    specialized OrderedDictionary.subscript.setter(v150, v151);
    v153 = v152;
    MEMORY[0x266771770]();
    if (*((v234 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v155 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    __swift_destroy_boxed_opaque_existential_1Tm(&v220);
    v56 = v234;
    v51 = v206;
    v26 = v192;
LABEL_113:
    v53 = v204;
    v52 = v198;
    goto LABEL_26;
  }

  v104 = 0;
  v211 = v101 + 32;
  v26 = v225;
  v199 = v227;
  v200 = v226;
  v56 = v226 + 32;
  v105 = v225 + 4;
  v194 = v227 + 32;
  v209 = v103;
  while (1)
  {
    if (v104 >= v103)
    {
      goto LABEL_141;
    }

    v52 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    v68 = *(v211 + 8 * v104++);
    if (v26)
    {
      v106 = v26[2];
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v68);
      v107 = Hasher._finalize()();
      v108 = 1 << v26[2];
      v48 = __OFSUB__(v108, 1);
      v109 = v108 - 1;
      if (v48)
      {
        goto LABEL_143;
      }

      v110 = v109 & v107;
      v111 = _HashTable.UnsafeHandle._startIterator(bucket:)(v109 & v107, v26 + 2, (v26 + 4));
      if (v111)
      {
        v114 = v26[2];
        v115 = ~(-1 << v114);
        v116 = v26[3] >> 6;
        v117 = v116 + (v111 ^ v115);
        if (v117 >= v115)
        {
          v118 = ~(-1 << v114);
        }

        else
        {
          v118 = 0;
        }

        v119 = v117 - v118;
        if (*(v56 + 8 * (v117 - v118)) != v68)
        {
          v120 = 0;
          v121 = v26[2] & 0x3FLL;
          v122 = (1 << v121) - 1;
          v123 = __OFADD__(v121 << v121, 64);
          v124 = (v121 << v121) + 126;
          if ((v121 << v121) + 64 >= 1)
          {
            v124 = (v121 << v121) + 63;
          }

          v125 = v124 >> 6;
          do
          {
            if (++v110 == 1 << v121)
            {
              if (v120)
              {
                goto LABEL_154;
              }

              v110 = 0;
              v120 = 1;
            }

            if (v113 >= v121)
            {
              v48 = __OFSUB__(v113, v121);
              v113 -= v121;
              if (v48)
              {
                goto LABEL_135;
              }

              v135 = v112 >> v121;
              v136 = v112 & v122;
              if ((v112 & v122) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v128 = (v110 * v121) >> 6;
              if (v113)
              {
                if (v123)
                {
                  __break(1u);
LABEL_141:
                  __break(1u);
                  goto LABEL_142;
                }

                if (v128 + 1 == v125)
                {
                  v128 = 0;
                }

                else
                {
                  ++v128;
                }
              }

              v129 = v121 - v113;
              if (__OFSUB__(v121, v113))
              {
                goto LABEL_136;
              }

              if (v128 == 2 && v121 == 5)
              {
                v131 = 32;
              }

              else
              {
                v131 = 64;
              }

              v48 = __OFSUB__(v131, v129);
              v132 = v131 - v129;
              if (v48)
              {
                goto LABEL_137;
              }

              v133 = v105[v128];
              v134 = (v133 << v113) | v112;
              v135 = v133 >> v129;
              v113 = v132;
              v136 = v134 & v122;
              if ((v134 & v122) == 0)
              {
                goto LABEL_50;
              }
            }

            v126 = (v136 ^ v115) + v116;
            if (v126 >= v115)
            {
              v127 = v115;
            }

            else
            {
              v127 = 0;
            }

            v119 = v126 - v127;
            v112 = v135;
          }

          while (*(v56 + 8 * v119) != v68);
        }

        v68 = v212;
        if ((v119 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        goto LABEL_101;
      }

LABEL_50:
      v103 = v209;
LABEL_51:
      v68 = v212;
      if (v52 == v103)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v137 = *(v200 + 16);
      if (!v137)
      {
        goto LABEL_51;
      }

      v119 = 0;
      while (*(v56 + 8 * v119) != v68)
      {
        if (v137 == ++v119)
        {
          goto LABEL_51;
        }
      }

      v68 = v212;
LABEL_101:
      if (v119 >= *(v199 + 16))
      {
        goto LABEL_147;
      }

      v138 = *(v194 + 8 * v119);
      v139 = swift_unknownObjectRetain();
      MEMORY[0x266771770](v139);
      if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v140 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = v212;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v102 = v217;
      v103 = v209;
      if (v52 == v209)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:

  lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
  swift_allocError();
  *v178 = v56;
  *(v178 + 8) = v68;
  *(v178 + 16) = 0;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(&v220);
LABEL_139:
  __swift_destroy_boxed_opaque_existential_1Tm(v219);
}

id MetalStitchingBackend.makeFunction(_:name:)(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static DebugConfig.debugMode;

  v16 = specialized Set.contains(_:)(9, v15);

  if (v16)
  {
    v17 = type metadata accessor for MetalStitchingBackend();
    (*(v11 + 16))(v14, v3 + *(v17 + 24), v10);
    (*(v6 + 16))(v9, v3 + *(v17 + 28), v5);
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignposter.logHandle.getter();
    v20 = static os_signpost_type_t.begin.getter();
    v29 = v5;
    v21 = v20;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v21, v22, "buildMetalFunction", "makeFunction_n", v18, 2u);
    v23 = MEMORY[0x266771450](a2, v30);
    v24 = [v31 newFunctionWithName_];

    v25 = static os_signpost_type_t.end.getter();
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v25, v26, "buildMetalFunction", "makeFunction_n", v18, 2u);

    MEMORY[0x266773120](v18, -1, -1);
    (*(v6 + 8))(v9, v29);
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v27 = MEMORY[0x266771450](a2, v30);
    v24 = [v31 newFunctionWithName_];
  }

  return v24;
}

void closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = &unk_279BBD000;
  v5 = [*a1 name];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = specialized OrderedDictionary.subscript.getter(v6, v8, *a2, a2[1], a2[2]);

  if (v9)
  {
    v10 = MetalStitchingBackend.mtlFunctionHash(_:)();
    if (!v11)
    {
      if (one-time initialization token for logger == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v12 = v10;
    v13 = v11;
    v42 = v9;
    _StringGuts.grow(_:)(18);
    v45 = [v3 hash];
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v43 = v14;
    v44 = v16;
    MEMORY[0x266771550](2128928, 0xE300000000000000);
    v17 = [v3 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v19;

    MEMORY[0x266771550](v18, v9);

    MEMORY[0x266771550](2128928, 0xE300000000000000);
    MEMORY[0x266771550](v12, v13);

    MEMORY[0x266771550](2128928, 0xE300000000000000);
    v20 = [v3 arguments];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      v22 = __CocoaSet.count.getter();
      v4 = v42;
      if (v22)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v42;
      if (v22)
      {
LABEL_5:
        v45 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
        if ((v22 & 0x8000000000000000) == 0)
        {
          v23 = 0;
          v24 = v45;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x266772030](v23, v21);
            }

            else
            {
              v25 = *(v21 + 8 * v23 + 32);
              swift_unknownObjectRetain();
            }

            v26 = [v25 hash];
            swift_unknownObjectRelease();
            v45 = v24;
            v28 = v24[2];
            v27 = v24[3];
            if (v28 >= v27 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
              v24 = v45;
            }

            ++v23;
            v24[2] = v28 + 1;
            v24[v28 + 4] = v26;
          }

          while (v22 != v23);

          goto LABEL_20;
        }

        __break(1u);
LABEL_23:
        swift_once();
LABEL_15:
        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, logger);
        swift_unknownObjectRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43 = v33;
          *v32 = 136315138;
          v34 = [v9 v4[151]];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v43);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_265D7D000, v30, v31, "Unable to obtain hash for function %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x266773120](v33, -1, -1);
          MEMORY[0x266773120](v32, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    v24 = MEMORY[0x277D84F90];
LABEL_20:
    v39 = MEMORY[0x2667717B0](v24, MEMORY[0x277D83B88]);
    v41 = v40;

    MEMORY[0x266771550](v39, v41);

    MEMORY[0x266771550](10, 0xE100000000000000);
    MEMORY[0x266771550](v43, v44);
    swift_unknownObjectRelease();
  }
}

uint64_t protocol witness for GraphCompilerBackend.programHash.getter in conformance MetalStitchingBackend()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t one-time initialization function for typeToLookupFunctionMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC_SStGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F2A4D0;
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  *(inited + 32) = static MetalDataType.BOOL;
  *(inited + 40) = 0x625F70756B6F6F6CLL;
  *(inited + 48) = 0xEB000000006C6F6FLL;
  v1 = one-time initialization token for int32;

  if (v1 != -1)
  {
    swift_once();
  }

  *(inited + 56) = static MetalDataType.int32;
  *(inited + 64) = 0x695F70756B6F6F6CLL;
  *(inited + 72) = 0xEA0000000000746ELL;
  v2 = one-time initialization token for uint32;

  if (v2 != -1)
  {
    swift_once();
  }

  *(inited + 80) = static MetalDataType.uint32;
  *(inited + 88) = 0x755F70756B6F6F6CLL;
  *(inited + 96) = 0xEB00000000746E69;
  v3 = one-time initialization token for float;

  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 104) = static MetalDataType.float;
  strcpy((inited + 112), "lookup_float");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v4 = one-time initialization token for half;

  if (v4 != -1)
  {
    swift_once();
  }

  *(inited + 128) = static MetalDataType.half;
  *(inited + 136) = 0x685F70756B6F6F6CLL;
  *(inited + 144) = 0xEB00000000666C61;
  v5 = one-time initialization token for float2;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 152) = static MetalDataType.float2;
  strcpy((inited + 160), "lookup_float2");
  *(inited + 174) = -4864;
  v6 = one-time initialization token for float3;

  if (v6 != -1)
  {
    swift_once();
  }

  *(inited + 176) = static MetalDataType.float3;
  strcpy((inited + 184), "lookup_float3");
  *(inited + 198) = -4864;
  v7 = one-time initialization token for float4;

  if (v7 != -1)
  {
    swift_once();
  }

  *(inited + 200) = static MetalDataType.float4;
  strcpy((inited + 208), "lookup_float4");
  *(inited + 222) = -4864;
  v8 = one-time initialization token for int2;

  if (v8 != -1)
  {
    swift_once();
  }

  *(inited + 224) = static MetalDataType.int2;
  *(inited + 232) = 0x695F70756B6F6F6CLL;
  *(inited + 240) = 0xEB0000000032746ELL;
  v9 = one-time initialization token for int3;

  if (v9 != -1)
  {
    swift_once();
  }

  *(inited + 248) = static MetalDataType.int3;
  *(inited + 256) = 0x695F70756B6F6F6CLL;
  *(inited + 264) = 0xEB0000000033746ELL;
  v10 = one-time initialization token for int4;

  if (v10 != -1)
  {
    swift_once();
  }

  *(inited + 272) = static MetalDataType.int4;
  *(inited + 280) = 0x695F70756B6F6F6CLL;
  *(inited + 288) = 0xEB0000000034746ELL;
  v11 = one-time initialization token for half2;

  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 296) = static MetalDataType.half2;
  strcpy((inited + 304), "lookup_half2");
  *(inited + 317) = 0;
  *(inited + 318) = -5120;
  v12 = one-time initialization token for half3;

  if (v12 != -1)
  {
    swift_once();
  }

  *(inited + 320) = static MetalDataType.half3;
  strcpy((inited + 328), "lookup_half3");
  *(inited + 341) = 0;
  *(inited + 342) = -5120;
  v13 = one-time initialization token for half4;

  if (v13 != -1)
  {
    swift_once();
  }

  *(inited + 344) = static MetalDataType.half4;
  strcpy((inited + 352), "lookup_half4");
  *(inited + 365) = 0;
  *(inited + 366) = -5120;
  v14 = one-time initialization token for color3;

  if (v14 != -1)
  {
    swift_once();
  }

  *(inited + 368) = static MetalDataType.color3;
  strcpy((inited + 376), "lookup_color3");
  *(inited + 390) = -4864;
  v15 = one-time initialization token for color4;

  if (v15 != -1)
  {
    swift_once();
  }

  *(inited + 392) = static MetalDataType.color4;
  strcpy((inited + 400), "lookup_color4");
  *(inited + 414) = -4864;
  v16 = one-time initialization token for float2x2;

  if (v16 != -1)
  {
    swift_once();
  }

  *(inited + 416) = static MetalDataType.float2x2;
  *(inited + 424) = 0x665F70756B6F6F6CLL;
  *(inited + 432) = 0xEF32783274616F6CLL;
  v17 = one-time initialization token for float3x3;

  if (v17 != -1)
  {
    swift_once();
  }

  *(inited + 440) = static MetalDataType.float3x3;
  *(inited + 448) = 0x665F70756B6F6F6CLL;
  *(inited + 456) = 0xEF33783374616F6CLL;
  v18 = one-time initialization token for float4x4;

  if (v18 != -1)
  {
    swift_once();
  }

  *(inited + 464) = static MetalDataType.float4x4;
  *(inited + 472) = 0x665F70756B6F6F6CLL;
  *(inited + 480) = 0xEF34783474616F6CLL;
  v19 = one-time initialization token for texture2d_float;

  if (v19 != -1)
  {
    swift_once();
  }

  *(inited + 488) = static MetalDataType.texture2d_float;
  *(inited + 496) = 0xD000000000000015;
  *(inited + 504) = 0x8000000265F34360;
  v20 = one-time initialization token for texture2d_half;

  if (v20 != -1)
  {
    swift_once();
  }

  *(inited + 512) = static MetalDataType.texture2d_half;
  *(inited + 520) = 0xD000000000000014;
  *(inited + 528) = 0x8000000265F34380;
  v21 = one-time initialization token for texture2darray_float;

  if (v21 != -1)
  {
    swift_once();
  }

  *(inited + 536) = static MetalDataType.texture2darray_float;
  *(inited + 544) = 0xD00000000000001ALL;
  *(inited + 552) = 0x8000000265F343A0;
  v22 = one-time initialization token for texture2darray_half;

  if (v22 != -1)
  {
    swift_once();
  }

  *(inited + 560) = static MetalDataType.texture2darray_half;
  *(inited + 568) = 0xD000000000000019;
  *(inited + 576) = 0x8000000265F343C0;
  v23 = one-time initialization token for texture3d_float;

  if (v23 != -1)
  {
    swift_once();
  }

  *(inited + 584) = static MetalDataType.texture3d_float;
  *(inited + 592) = 0xD000000000000015;
  *(inited + 600) = 0x8000000265F343E0;
  v24 = one-time initialization token for texture3d_half;

  if (v24 != -1)
  {
    swift_once();
  }

  *(inited + 608) = static MetalDataType.texture3d_half;
  *(inited + 616) = 0xD000000000000014;
  *(inited + 624) = 0x8000000265F34400;
  v25 = one-time initialization token for texturecube_float;

  if (v25 != -1)
  {
    swift_once();
  }

  *(inited + 632) = static MetalDataType.texturecube_float;
  *(inited + 640) = 0xD000000000000017;
  *(inited + 648) = 0x8000000265F34420;
  v26 = one-time initialization token for texturecube_half;

  if (v26 != -1)
  {
    swift_once();
  }

  *(inited + 656) = static MetalDataType.texturecube_half;
  *(inited + 664) = 0xD000000000000016;
  *(inited + 672) = 0x8000000265F34440;

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph13MetalDataTypeC_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13MetalDataTypeC_SStMd, &_s11ShaderGraph13MetalDataTypeC_SStMR);
  result = swift_arrayDestroy();
  static MetalStitchingBackend.typeToLookupFunctionMap = v27;
  return result;
}

uint64_t static MetalStitchingBackend.typeToLookupFunctionMap.getter()
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MetalStitchingBackend.typeToLookupFunctionMap.setter(uint64_t a1)
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MetalStitchingBackend.typeToLookupFunctionMap = a1;
}

uint64_t (*static MetalStitchingBackend.typeToLookupFunctionMap.modify())()
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11ShaderGraph6OutputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph6OutputVGMR);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySOGMd, &_ss23_ContiguousArrayStorageCySOGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for SGEdge);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for SGNode);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v7;
      v9[3] = 2 * ((v10 - 32) / 56);
      if (v6 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5(*(a3 + 16), 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MetalFunctionDefinitionNode();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = specialized Set._Variant.remove(_:)(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v5);
        v20 = Hasher._finalize()();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v42, v14, v6, v2, v52);

      MEMORY[0x266773120](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      Hasher.init(_seed:)();
      v2 = &v51;
      MEMORY[0x266772770](v5);
      v32 = Hasher._finalize()();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = specialized _NativeSet.extractSubset(using:count:)(v14, v45, v47, v6);
LABEL_43:
    outlined consume of [String : GeomPropDef].Iterator._Variant();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x266773120](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    outlined consume of [String : GeomPropDef].Iterator._Variant();
    goto LABEL_53;
  }

  result = MEMORY[0x266773120](v53, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v16);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v17;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v15 = v9;
    a1(&v16, &v15);
    if (v3)
    {
      break;
    }

    v10 = v16;
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v10 = v14;
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 16 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MetalStitchingBackend.specializeGetter(for:field:offset:library:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MetalStitchingBackend.typeToLookupFunctionMap;
  if (*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = v16[1];
    v44 = *v16;
    swift_endAccess();
    v18 = a4[4];
    v46 = a4[3];
    v19 = lazy protocol witness table accessor for type String and conformance String();

    v20 = MEMORY[0x277D837D0];
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v47 = v21;
    v42 = v19;
    v43 = v19;
    v40 = v20;
    v41 = v19;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v24 = v23;

    v25 = *(a1 + 32);
    v46 = *(a1 + 24);
    v47 = v25;

    MEMORY[0x266771550](95, 0xE100000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v26);

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v22, v24);

    a1 = v46;
    v27 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
    v28 = MEMORY[0x266771450](v46, v47);
    [v27 setSpecializedName_];

    v29 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
    [v27 setConstantValues_];

    v30 = MEMORY[0x266771450](v44, v17);

    [v27 setName_];

    LODWORD(v46) = a6;
    v31 = [v27 constantValues];
    if (v31)
    {
      v32 = v31;
      [v31 setConstantValue:&v46 type:33 atIndex:100];
    }

    MetalStitchingBackend.makeFunction(_:descriptor:)(a7, v27);

    if (v7)
    {
    }
  }

  else
  {
    swift_endAccess();
    v33 = *(a1 + 32);
    v46 = *(a1 + 24);
    v47 = v33;

    MEMORY[0x266771550](46, 0xE100000000000000);
    MEMORY[0x266771550](a2, a3);
    v34 = MEMORY[0x266771550](10272, 0xE200000000000000);
    v35 = (*(*a4 + 136))(v34);
    MEMORY[0x266771550](v35);

    MEMORY[0x266771550](41, 0xE100000000000000);
    v36 = v47;
    lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
    swift_allocError();
    *v37 = v46;
    *(v37 + 8) = v36;
    *(v37 + 16) = 4;
    swift_willThrow();
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t type metadata accessor for MetalStitchingBackend()
{
  result = type metadata singleton initialization cache for MetalStitchingBackend;
  if (!type metadata singleton initialization cache for MetalStitchingBackend)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of MetalStitchingBackend(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetalStitchingBackend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph27MetalStitchingBackendErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for MetalStitchingBackendErrors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalStitchingBackendErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MetalStitchingBackendErrors(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_265EFCD78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OSSignposter();
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
      v13 = type metadata accessor for OSSignpostID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265EFCEB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
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
      v13 = type metadata accessor for OSSignpostID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata completion function for MetalStitchingBackend()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

void partial apply for closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(a1, *(v1 + 16));
}

void *partial apply for closure #1 in closure #3 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(void *result, void **a2)
{
  if (!*result)
  {
    v3 = result;
    v4 = v2[4];
    v5 = *a2;
    v6 = v2[3];
    v7 = v2[2];
    result = MetalStitchingBackend.makeFunction(_:name:)(v5, v6, v4);
    *v3 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)()
{
  result = lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:);
  if (!lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:));
  }

  return result;
}

uint64_t OrderedSet.SubSequence._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet.SubSequence._base.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedSet.SubSequence._bounds.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OrderedSet.SubSequence._index(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (result < a4 || result >= a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  return result;
}

uint64_t OrderedSet.SubSequence._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (v9 < a5)
  {
    return (v9 >= a4) & ~v10;
  }

  else
  {
    return 0;
  }
}

uint64_t OrderedSet.SubSequence._copyToContiguousArray()(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  v5 = specialized OrderedSet.SubSequence._copyToContiguousArray()(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t OrderedSet.SubSequence._copyContents(initializing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Swift::Int a5@<X4>, Swift::Int a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v13 = 0;
  v14 = a5;
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  v17 = result;
  v27 = a3;
  specialized ContiguousArray.subscript.getter(a5, a6, a4, a7);
  v20 = v19;
  v29 = v22;
  v30 = v21;
  v28 = v23;
  v31 = &v26;
  MEMORY[0x28223BE20](v19);
  v25[2] = a7;
  v25[3] = a8;
  v25[4] = v17;
  v25[5] = a2;
  swift_unknownObjectRetain();
  _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet.SubSequence._copyContents(initializing:), v25, v20, v30, v29, v28, a7, MEMORY[0x277D83B88], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v24);
  result = swift_unknownObjectRelease();
  v13 = v32;
  v14 = a5 + v32;
  if (!__OFADD__(a5, v32))
  {
    a3 = v27;
LABEL_4:
    *a9 = a3;
    a9[1] = a4;
    a9[2] = a5;
    a9[3] = a6;
    a9[4] = v14;
    a9[5] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OrderedSet.SubSequence._copyContents(initializing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    if (a2 >= a1)
    {
      a2 = a1;
    }

    if (a2 < 1)
    {
      goto LABEL_7;
    }

    result = UnsafeBufferPointer.baseAddress.getter();
    if (result)
    {
      result = UnsafeMutablePointer.initialize(from:count:)();
LABEL_7:
      *a3 = a2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v16, v17, v18, v19, v20, v21, v22, v23, a9, v24, v15);
  if (v11)
  {
    return (*(v12 + 32))(a11, v15, a9);
  }

  return result;
}

uint64_t OrderedSet.SubSequence.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7)
{
  specialized ContiguousArray.subscript.getter(a5, a6, a4, a7);
  swift_unknownObjectRetain();
  ArraySlice.withContiguousStorageIfAvailable<A>(_:)();
  return swift_unknownObjectRelease();
}

__n128 protocol witness for Sequence.makeIterator() in conformance OrderedSet<A>.SubSequence@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u64[1];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u64[1] = v2;
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u64[0] = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedSet<A>.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedSet<A>.SubSequence(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = specialized OrderedSet.SubSequence._copyToContiguousArray()(*v1, v1[1], v1[2], v1[3], *(a1 + 16));

  return v3;
}

__n128 protocol witness for Sequence._copyContents(initializing:) in conformance OrderedSet<A>.SubSequence(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OrderedSet.SubSequence._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], v4[3], *(a4 + 16), *(a4 + 24), v9);
  v6 = v9[1];
  v7 = v11;
  result = v10;
  a1->n128_u64[0] = v9[0];
  a1->n128_u64[1] = v6;
  a1[1] = result;
  a1[2].n128_u64[0] = v7;
  return result;
}

uint64_t OrderedSet.SubSequence.indices.getter(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  specialized ContiguousArray.subscript.getter(a3, a4, a2, a5);
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  return v6;
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedSet.SubSequence.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedSet.SubSequence.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedSet.SubSequence.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  specialized ContiguousArray.subscript.getter(v4, v5, v3, v6);
  v12 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v12 > 0 || v12 <= offsetBy)
    {
LABEL_9:
      v10 = _ + offsetBy;
      if (!__OFADD__(_, offsetBy))
      {
        v11 = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v12 < 0 || v12 >= offsetBy)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 1;
LABEL_13:
  result.value = v10;
  result.is_nil = v11;
  return result;
}

Swift::Int __swiftcall OrderedSet.SubSequence.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6)
{
  specialized ContiguousArray.subscript.getter(a4, a5, a3, a6);
  swift_unknownObjectRetain();
  ArraySlice.subscript.getter();

  return swift_unknownObjectRelease();
}

uint64_t OrderedSet.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7)
{
  if (a6 < a5)
  {
    __break(1u);
  }

  else
  {
    specialized ContiguousArray.subscript.getter(a5, a6, a4, a7);

    return a3;
  }

  return result;
}

uint64_t OrderedSet.SubSequence.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.SubSequence._customIndexOfEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (result < a4 || result >= a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  return result;
}

uint64_t OrderedSet.SubSequence._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Swift::Int a6, Swift::Int a7, uint64_t a8)
{
  specialized ContiguousArray.subscript.getter(a6, a7, a5, a8);
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

void (*protocol witness for Collection.subscript.read in conformance OrderedSet<A>.SubSequence(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = *(a3 + 16);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  v10 = *a2;
  v11 = *(a3 + 24);
  specialized OrderedSet.SubSequence._slice.getter(*v3, v3[1], v3[2], v3[3], v7);
  swift_unknownObjectRetain();
  ArraySlice.subscript.getter();
  swift_unknownObjectRelease();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v3;
    v7 = *v3;
    v8 = v9[1];
    v11 = *result;
    v10 = result[1];
    v12 = *(a2 + 24);
    specialized OrderedSet.SubSequence._slice.getter(v7, v8, v4, v5, *(a2 + 16));
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v11;
    a3[3] = v10;
  }

  return result;
}

double protocol witness for Collection.indices.getter in conformance OrderedSet<A>.SubSequence@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  specialized OrderedSet.SubSequence._slice.getter(*v2, v2[1], v2[2], v2[3], *(a1 + 16));
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedSet<A>.SubSequence()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OrderedSet.SubSequence._index(of:)(a1, *v3, v3[1], v3[2], v3[3], *(a2 + 16), *(a2 + 24));
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = *(a4 + 24);
  specialized OrderedSet.SubSequence._slice.getter(*v5, v5[1], v5[2], v5[3], *(a4 + 16));
  result = specialized ContiguousArray.index(_:offsetBy:limitedBy:)(v8, a2, v9);
  *a5 = result;
  *(a5 + 8) = v12 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedSet<A>.SubSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a3 + 24);
  specialized OrderedSet.SubSequence._slice.getter(*v3, v3[1], v3[2], v3[3], *(a3 + 16));
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

uint64_t static OrderedSet.SubSequence.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for OrderedSet.SubSequence();
  swift_getWitnessTable();
  v10 = *(a10 + 8);
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t OrderedSet.SubSequence.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6)
{
  v6 = a6;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17 - v16;
  if (__OFSUB__(v17, v16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = v15;
  result = MEMORY[0x266772770](result, v13);
  if (a4 == a5)
  {
    return result;
  }

  if (a4 >= a5)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v23 = (v11 + 8);
  v24 = v6;
  v20 = a4;
  v22[0] = v19;
  v22[1] = a1;
  do
  {
    specialized ContiguousArray.subscript.getter(a4, a5, a3, v6);
    swift_unknownObjectRetain();
    v21 = v22[0];
    v6 = v24;
    ArraySlice.subscript.getter();
    swift_unknownObjectRelease();
    ++v20;
    dispatch thunk of Hashable.hash(into:)();
    result = (*v23)(v21, v6);
  }

  while (a5 != v20);
  return result;
}

Swift::Int OrderedSet.SubSequence.hashValue.getter(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  OrderedSet.SubSequence.hash(into:)(v11, v9, a2, a3, a4, a5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>.SubSequence(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 24);
  OrderedSet.SubSequence.hash(into:)(v7, v5, v2[1], v2[2], v2[3], *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](a1);
  v21 = &v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v17 >> 1, v16))
  {
    __break(1u);
  }

  else
  {
    result = v19(v15 + *(*(v18 - 8) + 72) * v16, (v17 >> 1) - v16, &v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v11)
    {
      return (*(v12 + 32))(a11, v21, a9);
    }
  }

  return result;
}

uint64_t specialized OrderedSet.SubSequence._copyToContiguousArray()(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  specialized ContiguousArray.subscript.getter(a3, a4, a2, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_unknownObjectRetain();

  return MEMORY[0x2821FCD68](v12, v7, v9, v11, a5);
}

uint64_t partial apply for closure #1 in OrderedSet.SubSequence._copyContents(initializing:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return closure #1 in OrderedSet.SubSequence._copyContents(initializing:)(a1, v2[5], a2);
}

uint64_t type metadata instantiation function for OrderedSet.SubSequence()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t MetalFunctionGraphError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 1)
  {
    if (*(v0 + 32))
    {

      _StringGuts.grow(_:)(42);
      MEMORY[0x266771550](0xD000000000000024, 0x8000000265F34520);
      MEMORY[0x266771550](v1, v2);
      outlined consume of MetalFunctionGraphError.ErrorType(v1, v2, v3, v4, 1);
      v11 = 8231;
      v12 = 0xE200000000000000;
    }

    else
    {

      _StringGuts.grow(_:)(53);
      MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F34550);
      MEMORY[0x266771550](v1, v2);

      MEMORY[0x266771550](0xD000000000000011, 0x8000000265F34570);
      MEMORY[0x266771550](v3, v4);

      v11 = 2108967;
      v12 = 0xE300000000000000;
    }

LABEL_18:
    MEMORY[0x266771550](v11, v12);
    if (*(v0 + 48))
    {
      v19 = *(v0 + 40);

      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    else
    {
      v15 = 0x3E6C696E3CLL;
      v17 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v15, v17);
    goto LABEL_22;
  }

  if (v5 == 2)
  {
    _StringGuts.grow(_:)(47);
    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F344E0);
    v13 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v13);

    v11 = 0xD000000000000013;
    v12 = 0x8000000265F34500;
    goto LABEL_18;
  }

  if (v5 != 3)
  {
    if (!(v3 | v2 | v1 | v4))
    {
      return 0xD00000000000002BLL;
    }

    if (v1 == 1 && !(v3 | v2 | v4))
    {
      return 0xD000000000000020;
    }

    _StringGuts.grow(_:)(17);
    v11 = 0x206E776F6E6B6E55;
    v12 = 0xEF203A726F727265;
    goto LABEL_18;
  }

  _StringGuts.grow(_:)(40);
  MEMORY[0x266771550](0x79747265706F7250, 0xEA00000000002720);
  MEMORY[0x266771550](v1, v2);

  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F344C0);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);

  MEMORY[0x266771550](v6, v7);

  MEMORY[0x266771550](2108967, 0xE300000000000000);
  if (*(v0 + 48))
  {
    v18 = *(v0 + 40);

    v8 = String.init<A>(describing:)();
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v8, v10);

LABEL_22:

  return 0;
}

uint64_t outlined consume of MetalFunctionGraphError.ErrorType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  else
  {
    if (a5 != 1)
    {
      if (a5)
      {
        return result;
      }
    }
  }
}

__n128 MetalFunctionGraphError.init(_:details:underlyingErrors:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LOBYTE(v6) = *(a1 + 32);
  result = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = result;
  *(a5 + 32) = v6;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t MetalFunctionGraphError.details.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t getEnumTagSinglePayload for MetalFunctionGraphError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalFunctionGraphError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetalFunctionGraphError.ErrorType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalFunctionGraphError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MetalFunctionGraphError.ErrorType(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t *realityKitGeometryGetterFuncs.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitGeometryGetterFuncs != -1)
  {
    swift_once();
  }

  return &realityKitGeometryGetterFuncs;
}

uint64_t *realityKitSurfaceGetterFuncs.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitSurfaceGetterFuncs != -1)
  {
    swift_once();
  }

  return &realityKitSurfaceGetterFuncs;
}

uint64_t one-time initialization function for realityKitGeometryGetterFuncs()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitGeometryGetterFuncs);
  result = swift_arrayDestroy();
  realityKitGeometryGetterFuncs = v0;
  return result;
}

uint64_t one-time initialization function for realityKitSurfaceGetterFuncs()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitSurfaceGetterFuncs);
  result = swift_arrayDestroy();
  realityKitSurfaceGetterFuncs = v0;
  return result;
}

uint64_t MetalShaderCompiler.__allocating_init(compiling:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for MetalShaderCompiler.Scope();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v3[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[3] = 0;
  swift_weakInit();
  v3[5] = v4;
  v3[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v4);
  v3[7] = v4;
  v3[8] = v4;
  v3[9] = v4;
  v3[10] = v4;
  swift_beginAccess();
  swift_weakAssign();
  *(v2 + 24) = v3;
  return v2;
}

uint64_t MetalLiteralValueNode.createMetalInvocation(in:)()
{
  v1 = (*(*v0 + 192))(v5);
  v2 = (*(*v0 + 168))(v1);
  v3 = SGDataTypeStorage.metalLiteralValue(type:)(v2);

  outlined destroy of SGDataTypeStorage(v5);
  return v3;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalLiteralValueNode()
{
  v1 = *v0;
  v2 = (*(*v1 + 192))(v6);
  v3 = (*(*v1 + 168))(v2);
  v4 = SGDataTypeStorage.metalLiteralValue(type:)(v3);

  outlined destroy of SGDataTypeStorage(v6);
  return v4;
}

uint64_t MetalShaderCompiler.init(compiling:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MetalShaderCompiler.Scope();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = 0;
  swift_weakInit();
  v2[5] = v3;
  v2[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v3);
  v2[7] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[10] = v3;
  swift_beginAccess();
  swift_weakAssign();
  *(v1 + 24) = v2;
  return v1;
}

void *MetalShaderCompiler.Scope.__allocating_init(enclosingScope:)()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[3] = 0;
  swift_weakInit();
  v0[5] = v1;
  v0[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v1);
  v0[7] = v1;
  v0[8] = v1;
  v0[9] = v1;
  v0[10] = v1;
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MetalShaderCompiler.compile()()
{
  v2 = v1;
  v3 = (*(*v0 + 112))();
  v4 = v0;
  v5 = v0[2];
  v6 = (*(*v5 + 264))(v4);
  if (v1)
  {

    goto LABEL_3;
  }

  v78 = v5;
  v9 = (*(*v3 + 288))(v6);
  v84 = MEMORY[0x277D84F90];
  v80 = v9;
  v77 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v3;
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    while (1)
    {
      v12 = __OFSUB__(v10--, 1);
      if (v12)
      {
        break;
      }

      if ((v80 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x266772030](v10, v80);
        v13 = v14;
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v10 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v80 + 32 + 8 * v10);
      }

      v15 = (*(*v13 + 312))(v14);

      specialized Array.append<A>(contentsOf:)(v15);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v16 = v84;
    v17 = *(v84 + 16);
    if (v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_19:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v11;
      v19 = (v16 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        MEMORY[0x266771550](v20, v21);

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = 0x6564756C636E6923;
        *(v24 + 40) = 0xE900000000000020;
        v19 += 2;
        --v17;
      }

      while (v17);

      v11 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_26:
  specialized Array.append<A>(contentsOf:)(v18);
  if (v77)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v12 = __OFSUB__(v25--, 1);
    if (v12)
    {
      break;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x266772030](v25, v80);
      v27 = v28;
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v25 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v27 = *(v80 + 32 + 8 * v25);
    }

    v29 = (*(*v27 + 360))(v28);

    specialized Array.append<A>(contentsOf:)(v29);
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  for (i = v11; ; i = v26)
  {
    specialized Array.append<A>(contentsOf:)(i);
    v85 = v26;
    v31 = v80;
    v32 = v77 ? __CocoaSet.count.getter() : *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v78;
    v34 = MEMORY[0x277D84F90];
    if (!v32)
    {
      break;
    }

    while (1)
    {
      v12 = __OFSUB__(v32, 1);
      v35 = v32 - 1;
      if (v12)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        v61 = v85;
        goto LABEL_85;
      }

      v79 = v35;
      if ((v80 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x266772030]();
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (v35 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v36 = *(v80 + 32 + 8 * v35);
      }

      v38 = (*(*v37 + 248))();
      v39 = *(v38 + 16);
      if (v39)
      {
        break;
      }

      v40 = v34;
LABEL_48:
      specialized Array.append<A>(contentsOf:)(v40);
      v32 = v79;
      if (!v79)
      {
        goto LABEL_83;
      }
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
    v40 = v34;
    v41 = v38 + 64;
    v42 = -1 << *(v38 + 32);
    v26 = _HashTable.startBucket.getter();
    v43 = 0;
    v81 = v39;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v38 + 32))
    {
      v46 = v26 >> 6;
      if ((*(v41 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_75;
      }

      v82 = v43;
      v83 = *(v38 + 36);
      v47 = closure #1 in closure #4 in MetalShaderCompiler.compile()(*(*(v38 + 48) + 16 * v26), *(*(v38 + 48) + 16 * v26 + 8), *(*(v38 + 56) + 8 * v26));
      v49 = v48;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      v52 = v40;
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v52 = v40;
      }

      *(v52 + 16) = v51 + 1;
      v53 = v52 + 16 * v51;
      *(v53 + 32) = v47;
      *(v53 + 40) = v49;
      v44 = 1 << *(v38 + 32);
      if (v26 >= v44)
      {
        goto LABEL_76;
      }

      v41 = v38 + 64;
      v54 = *(v38 + 64 + 8 * v46);
      if ((v54 & (1 << v26)) == 0)
      {
        goto LABEL_77;
      }

      v40 = v52;
      if (v83 != *(v38 + 36))
      {
        goto LABEL_78;
      }

      v55 = v54 & (-2 << (v26 & 0x3F));
      if (v55)
      {
        v44 = __clz(__rbit64(v55)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v45 = v81;
      }

      else
      {
        v56 = v46 << 6;
        v57 = v46 + 1;
        v45 = v81;
        v58 = (v38 + 72 + 8 * v46);
        while (v57 < (v44 + 63) >> 6)
        {
          v60 = *v58++;
          v59 = v60;
          v56 += 64;
          ++v57;
          if (v60)
          {
            outlined consume of [String : String].Index._Variant(v26, v83, 0);
            v44 = __clz(__rbit64(v59)) + v56;
            goto LABEL_57;
          }
        }

        outlined consume of [String : String].Index._Variant(v26, v83, 0);
      }

LABEL_57:
      v43 = v82 + 1;
      v26 = v44;
      if (v82 + 1 == v45)
      {

        v31 = v80;
        v33 = v78;
        v34 = MEMORY[0x277D84F90];
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_85:
  v62 = specialized Array.append<A>(contentsOf:)(v61);
  v63 = (*(*v33 + 192))(v62);
  specialized Array.append<A>(contentsOf:)(v63);
  v86 = v34;
  if (v77)
  {
    v64 = __CocoaSet.count.getter();
  }

  else
  {
    v64 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v64)
  {
    v65 = v31 & 0xC000000000000001;
    v66 = v31 & 0xFFFFFFFFFFFFFF8;
    v67 = v31 + 32;
    while (1)
    {
      v12 = __OFSUB__(v64--, 1);
      if (v12)
      {
        break;
      }

      if (v65)
      {
        v69 = MEMORY[0x266772030](v64, v80);
        v68 = v69;
      }

      else
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v64 >= *(v66 + 16))
        {
          goto LABEL_101;
        }

        v68 = *(v67 + 8 * v64);
      }

      v70 = (*(*v68 + 336))(v69);

      specialized Array.append<A>(contentsOf:)(v70);
      if (!v64)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v71 = v86;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v72 = specialized Array.append<A>(contentsOf:)(v71);
  v73 = (*(*v76 + 384))(v72);
  specialized Array.append<A>(contentsOf:)(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v5 = v74;

LABEL_3:
  v7 = v2;
  v8 = v5;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t closure #1 in closure #4 in MetalShaderCompiler.compile()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0x20746375727473;
  *&v25 = 0xE700000000000000;
  MEMORY[0x266771550]();
  v4 = MEMORY[0x266771550](686880, 0xE300000000000000);
  v31 = 0x20746375727473;
  v32 = 0xE700000000000000;
  v5 = (*(*a3 + 88))(v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = MEMORY[0x277D84F90];
    v23 = v5;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v23;
    v9 = 0;
    v10 = v30;
    v11 = (v23 + 72);
    while (v9 < *(v8 + 16))
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 8);
      v14 = *v11;
      v24 = *(v11 - 5);
      v25 = *(v11 - 2);
      v26 = v12;
      v27 = v13;
      v28 = v14;
      result = closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile()(&v24, v29);
      v15 = v29[0];
      v16 = v29[1];
      v30 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v23;
        v10 = v30;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v11 += 6;
      if (v6 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_9:
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x266771550](v20, v22);

    MEMORY[0x266771550](171670794, 0xE400000000000000);
    return v31;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v26 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v4 + 16);
  if (v6)
  {
    v24 = a1[2];
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x266771550](v8, v9);
      MEMORY[0x266771550](23901, 0xE200000000000000);

      v11 = *(v27 + 16);
      v10 = *(v27 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v27 + 16) = v11 + 1;
      v12 = v27 + 16 * v11;
      *(v12 + 32) = 23387;
      *(v12 + 40) = 0xE200000000000000;
      v7 += 2;
      --v6;
    }

    while (v6);
    v2 = a2;
    v5 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(*(v5 + 24), *(v5 + 32)), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
  }

  else
  {

    v22 = v5;
    v21 = *(v5 + 24);
    v20 = *(v22 + 32);
  }

  MEMORY[0x266771550](v21, v20);

  MEMORY[0x266771550](32, 0xE100000000000000);
  MEMORY[0x266771550](v3, v26);
  MEMORY[0x266771550](v13, v15);

  result = MEMORY[0x266771550](59, 0xE100000000000000);
  *v2 = 9;
  v2[1] = 0xE100000000000000;
  return result;
}

uint64_t MetalShaderCompiler.currentScope.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t MetalShaderCompiler.currentScope.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t MetalShaderCompiler.pushScope()()
{
  v4 = *(*v0 + 112);
  v1 = v4();
  v2 = (*(*v1 + 408))(v1);

  (*(*v0 + 120))(v2);

  return v4();
}

Swift::Void __swiftcall MetalShaderCompiler.popScope()()
{
  v1 = *(*v0 + 112);
  v2 = v1();
  v3 = v1();
  v4 = (*(*v3 + 200))(v3);

  if (v4)
  {
    v5 = (*(*v0 + 120))(v4);
    v6 = (v1)(v5);
    v7 = (*(*v2 + 384))();
    v8 = (*(*v6 + 400))(v9);
    specialized Array.append<A>(contentsOf:)(v7);
    v8(v9, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t MetalShaderCompiler.withChildScope<A>(_:)(uint64_t (*a1)(void))
{
  (*(*v1 + 136))();
  v3 = a1();
  (*(*v1 + 144))(v3);
}

uint64_t MetalShaderCompiler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MetalShaderCompiler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MetalShaderCompiler.Scope.nodesToResultVariableNameMap.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t key path setter for MetalShaderCompiler.Scope.childScopes : MetalShaderCompiler.Scope(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t MetalShaderCompiler.Scope.childScopes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t key path setter for MetalShaderCompiler.Scope.definedTypes : MetalShaderCompiler.Scope(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t MetalShaderCompiler.Scope.definedTypes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t MetalShaderCompiler.Scope.global.getter()
{
  v1 = (*(*v0 + 200))();
  if (v1)
  {
    return v1;
  }

  return v0;
}

void *MetalShaderCompiler.Scope.init(enclosingScope:)()
{
  v0 = specialized MetalShaderCompiler.Scope.init(enclosingScope:)();

  return v0;
}

uint64_t MetalShaderCompiler.Scope.allScopes()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265F20CD0;
  *(v1 + 32) = v0;

  v3 = 0;
  v4 = &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMd;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x266772030](v3, v1);
      v5 = v6;
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v7 = (*(*v5 + 224))(v6);
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v1 >> 62;
    if (v1 >> 62)
    {
      break;
    }

    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = result + v10;
    if (__OFADD__(result, v10))
    {
      goto LABEL_43;
    }

LABEL_9:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v13 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = v10;
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        __CocoaSet.count.getter();
        goto LABEL_17;
      }

      v13 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v13 + 16);
LABEL_17:
    v14 = v10;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v9)
    {
      v20 = v13;
      result = __CocoaSet.count.getter();
      v13 = v20;
      v18 = result;
      if (result)
      {
LABEL_20:
        if (((v17 >> 1) - v16) < v14)
        {
          goto LABEL_46;
        }

        v32 = v13;
        v19 = v13 + 8 * v16 + 32;
        if (v9)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          v31 = v3;
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [MetalShaderCompiler.Scope] and conformance [A], v4, &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMR);
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMR);
            v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v33, i, v8);
            v25 = v4;
            v27 = *v26;

            (v24)(v33, 0);
            *(v19 + 8 * i) = v27;
            v4 = v25;
          }

          v3 = v31;
        }

        else
        {
          type metadata accessor for MetalShaderCompiler.Scope();
          swift_arrayInitWithCopy();
        }

        v22 = v32;
        if (v14 > 0)
        {
          v28 = *(v32 + 16);
          v29 = __OFADD__(v28, v14);
          v30 = v28 + v14;
          if (v29)
          {
            goto LABEL_47;
          }

          *(v32 + 16) = v30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    v21 = v13;

    v22 = v21;
    if (v14 > 0)
    {
      goto LABEL_45;
    }

LABEL_33:
    if (v1 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *(v22 + 16);
    }

    if (++v3 >= result)
    {
      return v1;
    }
  }

  result = __CocoaSet.count.getter();
  v12 = result + v10;
  if (!__OFADD__(result, v10))
  {
    goto LABEL_9;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t MetalShaderCompiler.Scope.resultVariableName(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = (*(*v1 + 152))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t MetalShaderCompiler.Scope.createResultVariableName(for:)(void *a1)
{
  (*(*v1 + 176))();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v3);

  result = swift_beginAccess();
  v5 = v1[3];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[3] = v7;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 24))(v8, v9);
    swift_beginAccess();

    v11 = v1[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1[2];
    v1[2] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x746C7573657224, 0xE700000000000000, v10, isUniquelyReferenced_nonNull_native);
    v1[2] = v13;
    swift_endAccess();
    return 0x746C7573657224;
  }

  return result;
}

uint64_t MetalShaderCompiler.Scope.includePaths.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t MetalShaderCompiler.Scope.includePaths.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t MetalShaderCompiler.Scope.globalDeclarations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t MetalShaderCompiler.Scope.globalDeclarations.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t MetalShaderCompiler.Scope.topGlobalDeclarations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t MetalShaderCompiler.Scope.topGlobalDeclarations.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t MetalShaderCompiler.Scope.metalSourceSegments.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t MetalShaderCompiler.Scope.metalSourceSegments.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

void *MetalShaderCompiler.Scope.createChildScope()()
{
  v1 = v0;
  type metadata accessor for MetalShaderCompiler.Scope();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = 0;
  swift_weakInit();
  v2[5] = v3;

  v2[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v3);
  v2[7] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[10] = v3;
  swift_beginAccess();
  swift_weakAssign();

  swift_beginAccess();

  MEMORY[0x266771770](v4);
  if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v2;
}

uint64_t MetalShaderCompiler.Scope.addStructTypeDefinition(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v7 = *(v3 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 48) = v10;
  return swift_endAccess();
}

uint64_t MetalShaderCompiler.Scope.structTypeDefinition(named:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 248))();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {

    v11 = (*(*v3 + 200))(v10);
    if (v11)
    {
      v9 = (*(*v11 + 424))(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void *MetalShaderCompiler.Scope.deinit()
{
  v1 = v0[2];

  swift_weakDestroy();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return v0;
}

uint64_t MetalShaderCompiler.Scope.__deallocating_deinit()
{
  MetalShaderCompiler.Scope.deinit();

  return swift_deallocClassInstance();
}

void *specialized MetalShaderCompiler.Scope.init(enclosingScope:)()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[3] = 0;
  swift_weakInit();
  v0[5] = v1;
  v0[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v1);
  v0[7] = v1;
  v0[8] = v1;
  v0[9] = v1;
  v0[10] = v1;
  swift_beginAccess();
  swift_weakAssign();
  return v0;
}

uint64_t sub_265F013E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01434(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_265F01488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_265F014D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_265F01568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_265F015B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_265F01600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_265F016A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_265F016F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 320);

  return v3(v4);
}

uint64_t sub_265F01750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_265F017A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 344);

  return v3(v4);
}

uint64_t sub_265F01800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01854(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 368);

  return v3(v4);
}

uint64_t sub_265F018B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01904(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 392);

  return v3(v4);
}

uint64_t DataType.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DataType.properties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t DataType.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

Swift::Int DataType.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 120))(v2);
  return Hasher._finalize()();
}

uint64_t DataTypeProperty.init(label:type:attributes:index:visible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a6;
  *(a7 + 40) = a5;
  return result;
}

uint64_t DataType.hash(into:)(uint64_t a1)
{
  v3 = (*(*v1 + 88))();
  specialized Array<A>.hash(into:)(a1, v3);
}

uint64_t DataType.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = (*(*v3 + 88))();
  v6 = (v16 + 72);
  v7 = *(v16 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v9 = *(v6 - 5);
    v8 = *(v6 - 4);
    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    v12 = *(v6 - 8);
    v13 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 6;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:

LABEL_12:

  *a3 = v9;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v11;
  a3[4] = v12;
  a3[5] = v13;
  return result;
}

uint64_t DataType.__allocating_init(properties:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DataType.description.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = 0;
    v5 = (v1 + 56);
    while (v4 < *(v1 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v22 = *(v5 - 3);
      v23 = *(v5 - 2);

      v8 = MEMORY[0x266771550](8250, 0xE200000000000000);
      v9 = (*(*v7 + 136))(v8);
      MEMORY[0x266771550](v9);

      v10 = v22;
      v11 = v23;
      if (*(v6 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v12 = BidirectionalCollection<>.joined(separator:)();
        v14 = v13;

        MEMORY[0x266771550](v12, v14);

        v10 = v22;
        v11 = v23;
      }

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v4;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      v5 += 6;
      if (v2 == v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v21 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v21);

    MEMORY[0x266771550](31550, 0xE200000000000000);
    MEMORY[0x266771550](v18, v20);

    MEMORY[0x266771550](125, 0xE100000000000000);
    return 60;
  }

  return result;
}

uint64_t DataType.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataType()
{
  Hasher.init(_seed:)();
  (*(**v0 + 120))(v2);
  return Hasher._finalize()();
}

uint64_t DataTypeProperty.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataTypeProperty.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DataTypeProperty.type.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t DataTypeProperty.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t DataTypeProperty.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  (*(*v1[2] + 120))(a1);
  v6 = v1[3];
  v7 = *(v6 + 16);
  MEMORY[0x266772770](v7);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      String.hash(into:)();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(v2[4] & 1);
  return MEMORY[0x266772770](v2[5]);
}

Swift::Int DataTypeProperty.hashValue.getter()
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataTypeProperty()
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataTypeProperty()
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataTypeProperty(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static DataTypeProperty.== infix(_:_:)(v7, v8);
}

unint64_t lazy protocol witness table accessor for type DataType and conformance DataType()
{
  result = lazy protocol witness table cache variable for type DataType and conformance DataType;
  if (!lazy protocol witness table cache variable for type DataType and conformance DataType)
  {
    type metadata accessor for DataType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataType and conformance DataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataTypeProperty and conformance DataTypeProperty()
{
  result = lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty;
  if (!lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty);
  }

  return result;
}

uint64_t sub_265F02C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265F02C9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v11 = *(v5 - 1);
      v10 = *v5;
      ObjectType = swift_getObjectType();
      v13 = *(v10 + 8);
      swift_unknownObjectRetain();
      v14 = XMLNode.elements(forXPath:)(0xD000000000000015, 0x8000000265F2E120, ObjectType, v13);
      v15 = v3;
      if (v3)
      {
        v3 = 0;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, logger);
        v18 = v15;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          v8 = v15;
          v9 = _swift_stdlib_bridgeErrorToNSError();
          *(v6 + 4) = v9;
          *v7 = v9;
          _os_log_impl(&dword_265D7D000, v19, v20, "Error while loading nodedef library: %@. (Ignored.)", v6, 0xCu);
          outlined destroy of [Input](v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x266773120](v7, -1, -1);
          MEMORY[0x266773120](v6, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        specialized Sequence.forEach(_:)(v14, a2);

        v16 = XMLNode.elements(forXPath:)(0xD000000000000010, 0x8000000265F2E140, ObjectType, v13);
        specialized Sequence.forEach(_:)(v16, a2);
        v3 = 0;
        swift_unknownObjectRelease();
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t *NodeDefStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NodeDefStore.shared;
}

double NodeDefStore.nodeDef(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + 152 * v6);
    v9 = v8[1];
    v21[0] = *v8;
    v21[1] = v9;
    v10 = v8[5];
    v12 = v8[2];
    v11 = v8[3];
    v21[4] = v8[4];
    v21[5] = v10;
    v21[2] = v12;
    v21[3] = v11;
    v14 = v8[7];
    v13 = v8[8];
    v15 = v8[6];
    v22 = *(v8 + 18);
    v21[7] = v14;
    v21[8] = v13;
    v21[6] = v15;
    memmove(__dst, v8, 0x98uLL);
    destructiveProjectEnumData for NodePersonality.ShaderType(__dst);
    outlined init with copy of NodeDef(v21, &v25);
    v31 = __dst[6];
    v32 = __dst[7];
    v33 = __dst[8];
    v34 = v24;
    v27 = __dst[2];
    v28 = __dst[3];
    v29 = __dst[4];
    v30 = __dst[5];
    v25 = __dst[0];
    v26 = __dst[1];
  }

  else
  {
    _s11ShaderGraph7NodeDefVSgWOi0_(&v25);
  }

  v16 = v32;
  *(a4 + 96) = v31;
  *(a4 + 112) = v16;
  *(a4 + 128) = v33;
  *(a4 + 144) = v34;
  v17 = v28;
  *(a4 + 32) = v27;
  *(a4 + 48) = v17;
  v18 = v30;
  *(a4 + 64) = v29;
  *(a4 + 80) = v18;
  result = *&v25;
  v20 = v26;
  *a4 = v25;
  *(a4 + 16) = v20;
  return result;
}

double NodeDefStore.createNode(in:nodeDefName:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  specialized NodeDefStore.createNode(in:nodeDefName:)(a1, a2, a3, &v8);
  if (!v4)
  {
    v7 = v9[0];
    *a4 = v8;
    a4[1] = v7;
    result = *(v9 + 9);
    *(a4 + 25) = *(v9 + 9);
  }

  return result;
}

ShaderGraph::NodeDefStore __swiftcall NodeDefStore.init()()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(v0);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_n(v0);
  v4 = v1;
  v5 = v2;
  result.implementations._rawValue = v3;
  result.geomPropDefs._rawValue = v5;
  result.nodeDefs._rawValue = v4;
  return result;
}

double NodeDefStore.createNode(for:in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  specialized NodeDefStore.createNode(for:in:)(a1, a2, a3, &v8);
  if (!v4)
  {
    v7 = v9[0];
    *a4 = v8;
    a4[1] = v7;
    result = *(v9 + 9);
    *(a4 + 25) = *(v9 + 9);
  }

  return result;
}

uint64_t NodeDefStore.geomPropDef(named:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (*(a3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2);
    if (v7)
    {
      v8 = (*(a3 + 56) + (result << 6));
      v9 = *(v8 + 41);
      v11 = v8[1];
      v10 = v8[2];
      v20[0] = *v8;
      v20[1] = v11;
      *v21 = v10;
      *&v21[9] = v9;
      v17 = v11;
      v18 = v20[0];
      v16 = *v21;
      v12 = v9 >> 56;
      v13 = HIBYTE(v9);
      result = outlined init with copy of GeomPropDef(v20, v19);
      v15 = v16;
      v14 = v17;
      v5 = v18;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a4 = v5;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  return result;
}

uint64_t NodeDefStore.implementations(for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, a1[1]);
  if ((v6 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(*(a4 + 56) + 8 * v5);
}

uint64_t NodeDefStore.implementation(for:target:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v54 = a2;
  v7 = type metadata accessor for NodeDef.Implementation(0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  if (!*(a3 + 16) || (v15 = *a1, v16 = *a1, v46 = a1[1], v17 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v46), (v18 & 1) == 0))
  {
    v41 = *(v53 + 56);

    return v41(a4, 1, 1, v7);
  }

  v19 = *(*(a3 + 56) + 8 * v17);
  v47 = *(v19 + 16);
  if (!v47)
  {
    goto LABEL_30;
  }

  v43 = v15;
  v44 = v14;
  v45 = a4;
  v51 = v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80));

  v21 = 0;
  v49 = v10;
  v50 = v7;
  v48 = v19;
  while (2)
  {
    if (v21 >= *(v19 + 16))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    outlined init with copy of NodeDef.Implementation(v51 + *(v53 + 72) * v21, v10, type metadata accessor for NodeDef.Implementation);
    v22 = *&v10[*(v7 + 24)];
    if ((v22 & 0xC000000000000001) == 0)
    {
      if (*(v22 + 16))
      {
        v28 = -1 << *(v22 + 32);
        v24 = v22 + 56;
        v26 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v22 + 56);
        v31 = *&v10[*(v7 + 24)];

        v25 = 0;
        goto LABEL_16;
      }

LABEL_36:

LABEL_34:
      v14 = v44;
      outlined init with take of NodeDef.Implementation(v10, v44, type metadata accessor for NodeDef.Implementation);
      (*(v53 + 56))(v14, 0, 1, v7);
      a4 = v45;
      return outlined init with take of NodeDef.Implementation?(v14, a4, &_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
    }

    if (v22 < 0)
    {
      v23 = *&v10[*(v7 + 24)];
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for MaterialXTarget();
    _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, type metadata accessor for MaterialXTarget);
    result = Set.Iterator.init(_cocoa:)();
    v22 = v58;
    v24 = v59;
    v26 = v60;
    v25 = v61;
    v27 = v62;
LABEL_16:
    ++v21;
    v52 = v26;
    v32 = (v26 + 64) >> 6;
    while (v22 < 0)
    {
      v36 = __CocoaSet.Iterator.next()();
      if (!v36)
      {
        goto LABEL_28;
      }

      v55 = v36;
      type metadata accessor for MaterialXTarget();
      swift_dynamicCast();
      v35 = v56;
      if (!v56)
      {
        goto LABEL_28;
      }

LABEL_26:
      v37 = MaterialXTarget.conformsTo(_:)(v35);

      if (v37)
      {

        outlined consume of [String : GeomPropDef].Iterator._Variant();
        v10 = v49;
        v7 = v50;
        goto LABEL_34;
      }
    }

    v33 = v25;
    v34 = v27;
    if (!v27)
    {
      while (1)
      {
        v25 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v25 >= v32)
        {
          goto LABEL_28;
        }

        v34 = *(v24 + 8 * v25);
        ++v33;
        if (v34)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_22:
    v27 = (v34 - 1) & v34;
    v35 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v34)))));

    if (v35)
    {
      goto LABEL_26;
    }

LABEL_28:
    outlined consume of [String : GeomPropDef].Iterator._Variant();
    v10 = v49;
    result = outlined destroy of NodeDef.Implementation(v49, type metadata accessor for NodeDef.Implementation);
    v19 = v48;
    v7 = v50;
    if (v21 != v47)
    {
      continue;
    }

    break;
  }

  v14 = v44;
  a4 = v45;
  v15 = v43;
LABEL_30:
  (*(v53 + 56))(v14, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265F1F670;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  MEMORY[0x266771550](0xD000000000000024, 0x8000000265F346F0);
  MEMORY[0x266771550](v15, v46);
  MEMORY[0x266771550](0x2074656772617420, 0xE800000000000000);
  v55 = v54;
  type metadata accessor for MaterialXTarget();
  _print_unlocked<A, B>(_:_:)();
  v39 = v56;
  v40 = v57;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  print(_:separator:terminator:)();

  return outlined init with take of NodeDef.Implementation?(v14, a4, &_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
}

uint64_t one-time initialization function for shared()
{
  result = specialized static NodeDefStore.createDefault()();
  static NodeDefStore.shared = result;
  qword_280051428 = v1;
  qword_280051430 = v2;
  return result;
}

uint64_t static NodeDefStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static NodeDefStore.shared;

  return v0;
}

uint64_t NodeDefStore.nodeDefs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NodeDefStore.geomPropDefs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t NodeDefStore.implementations.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

ShaderGraph::NodeDefStore __swiftcall NodeDefStore.init(nodeDefs:geomPropDefs:implementations:)(Swift::OpaquePointer nodeDefs, Swift::OpaquePointer geomPropDefs, Swift::OpaquePointer implementations)
{
  rawValue = geomPropDefs._rawValue;
  v5 = *(nodeDefs._rawValue + 2);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v72 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v72;
    v8 = v5 - 1;
    for (i = 32; ; i += 152)
    {
      v10 = *(nodeDefs._rawValue + i + 112);
      v11 = *(nodeDefs._rawValue + i + 80);
      v59 = *(nodeDefs._rawValue + i + 96);
      v60 = v10;
      v12 = *(nodeDefs._rawValue + i + 112);
      v61 = *(nodeDefs._rawValue + i + 128);
      v13 = *(nodeDefs._rawValue + i + 48);
      v14 = *(nodeDefs._rawValue + i + 16);
      *v56 = *(nodeDefs._rawValue + i + 32);
      *&v56[16] = v13;
      v15 = *(nodeDefs._rawValue + i + 48);
      v16 = *(nodeDefs._rawValue + i + 80);
      v57 = *(nodeDefs._rawValue + i + 64);
      v58 = v16;
      v17 = *(nodeDefs._rawValue + i + 16);
      v54 = *(nodeDefs._rawValue + i);
      v55 = v17;
      v68 = v59;
      v69 = v12;
      v70 = *(nodeDefs._rawValue + i + 128);
      *v65 = *v56;
      *&v65[16] = v15;
      v66 = v57;
      v67 = v11;
      v62 = *(nodeDefs._rawValue + i + 144);
      v18 = v54;
      v71 = *(nodeDefs._rawValue + i + 144);
      v63 = v54;
      v64 = v14;
      outlined init with copy of NodeDef(&v54, v53);
      v72 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);

      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v7 = v72;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 168 * v20;
      *(v21 + 32) = v18;
      v22 = v64;
      *(v21 + 48) = v63;
      *(v21 + 64) = v22;
      v23 = *v65;
      v24 = *&v65[16];
      v25 = v67;
      *(v21 + 112) = v66;
      *(v21 + 128) = v25;
      *(v21 + 80) = v23;
      *(v21 + 96) = v24;
      v26 = v68;
      v27 = v69;
      v28 = v70;
      *(v21 + 192) = v71;
      *(v21 + 160) = v27;
      *(v21 + 176) = v28;
      *(v21 + 144) = v26;
      if (!v8)
      {
        break;
      }

      --v8;
    }

    rawValue = geomPropDefs._rawValue;
    v6 = MEMORY[0x277D84F90];
    if (*(v7 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
      v29 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_11;
    }
  }

  v29 = MEMORY[0x277D84F98];
LABEL_11:
  *&v63 = v29;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v30, 1, &v63);

  v31 = v63;
  v32 = rawValue[2];
  if (v32)
  {
    v50 = v63;
    v72 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v72;
    v34 = v32 - 1;
    for (j = 4; ; j += 8)
    {
      v36 = *&rawValue[j + 2];
      v54 = *&rawValue[j];
      v55 = v36;
      *v56 = *&rawValue[j + 4];
      v37 = *v56;
      *&v56[9] = *(&rawValue[j + 5] + 1);
      v38 = v54;
      v63 = v54;
      v64 = v36;
      *v65 = v37;
      *&v65[9] = *&v56[9];
      outlined init with copy of GeomPropDef(&v54, v53);
      v72 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);

      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v33 = v72;
      }

      *(v33 + 16) = v40 + 1;
      v41 = (v33 + 80 * v40);
      v41[2] = v38;
      v42 = v63;
      v43 = v64;
      v44 = *v65;
      *(v41 + 89) = *&v65[9];
      v41[4] = v43;
      v41[5] = v44;
      v41[3] = v42;
      if (!v34)
      {
        break;
      }

      --v34;
    }

    v31 = v50;
    if (*(v33 + 16))
    {
      goto LABEL_18;
    }

LABEL_20:
    v45 = MEMORY[0x277D84F98];
    goto LABEL_21;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_20;
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v45 = static _DictionaryStorage.allocate(capacity:)();
LABEL_21:
  *&v63 = v45;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v46, 1, &v63);

  v47 = v63;
  v48 = v31;
  v49 = implementations._rawValue;
  result.implementations._rawValue = v49;
  result.geomPropDefs._rawValue = v47;
  result.nodeDefs._rawValue = v48;
  return result;
}

uint64_t NodeDefStore.implementation(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();

  return NodeDefStore.implementation(for:target:)(a1, inited, a2, a3);
}

Swift::Int NodeDefStore.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

uint64_t static NodeDefStore.createDefault()()
{
  result = specialized static NodeDefStore.createDefault()();
  if (v0)
  {
    return v2;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.loadLibrary()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 resourceURL];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = (*(v1 + 32))(v7, v5, v0);
    MEMORY[0x28223BE20](v12);
    v14[-2] = v7;
    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Say10Foundation3URLVGs5NeverOTg5(partial apply for closure #1 in NodeDefStore.loadLibrary(), &v14[-4], &outlined read-only object #0 of NodeDefStore.loadLibrary());
    swift_arrayDestroy();
    specialized NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(v13);

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    lazy protocol witness table accessor for type NodeDefStore.Errors and conformance NodeDefStore.Errors();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.applyStandardLibraryFixes()()
{
  v1 = type metadata accessor for NodeDef.Implementation(0);
  v215 = *(v1 - 8);
  v2 = *(v215 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v208 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v249 = &v208 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v208 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v208 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v17 = (&v208 - v16);
  v218 = v0;
  v18 = *v0;
  v19 = *(v18 + 16);
  v213 = v18;
  if (!v19)
  {
LABEL_74:
    v92 = v218[2];
    v93 = v92 + 64;
    v94 = 1 << *(v92 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    *v219 = v95 & *(v92 + 64);
    v216 = (v94 + 63) >> 6;
    v212 = "n found for nodedef ";
    swift_bridgeObjectRetain_n();
    v96 = 0;
    v210 = v92;
    v211 = 0xD000000000000014;
    while (1)
    {
      while (1)
      {
        v97 = *v219;
        if (!*v219)
        {
          while (1)
          {
            v98 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              break;
            }

            if (v98 >= v216)
            {

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
              v138 = v213;
              v139 = static _DictionaryStorage.copy(original:)();
              v140 = v138;
              v141 = v139;
              v142 = 0;
              v143 = *(v140 + 64);
              v209 = v140 + 64;
              v144 = 1 << *(v140 + 32);
              v145 = -1;
              if (v144 < 64)
              {
                v145 = ~(-1 << v144);
              }

              v146 = v145 & v143;
              v147 = (v144 + 63) >> 6;
              v211 = v139 + 64;
              v212 = v139;
              v148 = 0x280041000uLL;
              v210 = v147;
              if (v146)
              {
                do
                {
                  v149 = __clz(__rbit64(v146));
                  v214 = (v146 - 1) & v146;
LABEL_113:
                  v152 = v149 | (v142 << 6);
                  v215 = v142;
                  v153 = *(v140 + 56);
                  v154 = (*(v140 + 48) + 16 * v152);
                  v155 = v154[1];
                  v217 = *v154;
                  *v219 = v152;
                  v156 = (v153 + 152 * v152);
                  v157 = *v156;
                  v231 = v156[1];
                  v158 = v156[2];
                  v159 = v156[3];
                  v160 = v156[5];
                  v233 = v156[4];
                  v234 = v160;
                  v232[0] = v158;
                  v232[1] = v159;
                  v161 = v156[6];
                  v162 = v156[7];
                  v163 = v156[8];
                  v238 = *(v156 + 18);
                  v236 = v162;
                  v237 = v163;
                  v235 = v161;
                  v230 = v157;
                  v164 = v163;
                  v165 = *(v163 + 16);
                  v216 = v155;

                  outlined init with copy of NodeDef(&v230, v228);
                  v249 = v164;
                  if (v165)
                  {
                    v166 = 0;
                    v167 = (v164 + 32);
                    v168 = (v164 + 32);
                    while (1)
                    {
                      if (v166 >= *(v164 + 16))
                      {
                        __break(1u);
                        goto LABEL_140;
                      }

                      v170 = v168[1];
                      v169 = v168[2];
                      v171 = *v168;
                      *(v229 + 9) = *(v168 + 41);
                      v228[1] = v170;
                      v229[0] = v169;
                      v228[0] = v171;
                      outlined init with copy of NodeDef.IOSpec(v228, v226);
                      if (*(v148 + 1704) != -1)
                      {
                        swift_once();
                      }

                      v172 = MaterialXDataType.isEqual(to:)();
                      outlined destroy of NodeDef.IOSpec(v228);
                      if (v172 & 1) != 0 && (BYTE8(v229[1]))
                      {
                        break;
                      }

                      v164 = v249;
                      ++v166;
                      v168 += 4;
                      if (v165 == v166)
                      {
                        goto LABEL_122;
                      }
                    }

                    v185 = *(v249 + 16);
                    if (v185)
                    {
                      v225 = MEMORY[0x277D84F90];
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v185, 0);
                      v186 = v225;
                      do
                      {
                        v249 = v186;
                        v187 = *v167;
                        v188 = v167[1];
                        v189 = v167[2];
                        *(v227 + 9) = *(v167 + 41);
                        v226[1] = v188;
                        v227[0] = v189;
                        v226[0] = v187;
                        v190 = *&v227[1];
                        *&v221 = *(&v189 + 1);
                        v191 = v189;
                        *&v220 = *(&v188 + 1);
                        v192 = *(&v187 + 1);
                        v193 = v188;
                        *&v219[8] = v187;
                        v194 = MaterialXDataType.isEqual(to:)();
                        *&v222 = v190;
                        if (v194)
                        {

                          v195 = 0;
                        }

                        else
                        {
                          v195 = BYTE8(v227[1]);
                          outlined init with copy of NodeDef.IOSpec(v226, &v224);
                        }

                        v186 = v249;
                        v196 = v191;
                        v225 = v249;
                        v198 = *(v249 + 16);
                        v197 = *(v249 + 24);
                        if (v198 >= v197 >> 1)
                        {
                          LODWORD(v208) = v195;
                          v249 = v191;
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1);
                          LOBYTE(v195) = v208;
                          v196 = v249;
                          v186 = v225;
                        }

                        *(v186 + 16) = v198 + 1;
                        v199 = v186 + (v198 << 6);
                        *(v199 + 32) = *&v219[8];
                        *(v199 + 40) = v192;
                        v200 = v220;
                        *(v199 + 48) = v193;
                        *(v199 + 56) = v200;
                        *(v199 + 64) = v196;
                        v201 = v222;
                        *(v199 + 72) = v221;
                        *(v199 + 80) = v201;
                        v167 += 4;
                        *(v199 + 88) = v195;
                        --v185;
                      }

                      while (v185);
                      v249 = v186;
                    }

                    else
                    {
                      v249 = MEMORY[0x277D84F90];
                    }

                    v184 = *(&v230 + 1);
                    v183 = v230;
                    v181 = *(&v231 + 1);
                    v182 = v231;
                    v220 = v232[1];
                    v221 = v232[0];
                    *&v219[8] = v233;
                    v177 = *(&v234 + 1);
                    v176 = *(&v237 + 1);
                    v208 = v235;
                    v222 = v236;

                    outlined copy of MaterialXAvailability(v222, *(&v222 + 1));
                    outlined destroy of NodeDef(&v230);
                    v179 = v220;
                    v180 = v221;
                    v178 = *&v219[8];
                    v175 = v222;
                    v174 = v208;
                    v173 = 0;
                  }

                  else
                  {
LABEL_122:
                    v173 = v238;
                    v174 = v235;
                    v175 = v236;
                    v176 = *(&v237 + 1);
                    v177 = *(&v234 + 1);
                    v179 = v232[1];
                    v178 = v233;
                    v180 = v232[0];
                    v181 = *(&v231 + 1);
                    v182 = v231;
                    v184 = *(&v230 + 1);
                    v183 = v230;
                  }

                  v202 = v234;
                  v203 = *v219;
                  v141 = v212;
                  *(v211 + ((*v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v219[0];
                  v204 = (v141[6] + 16 * v203);
                  *v204 = v217;
                  v204[1] = v216;
                  v205 = v141[7] + 152 * v203;
                  *v205 = v183;
                  *(v205 + 8) = v184;
                  *(v205 + 16) = v182;
                  *(v205 + 24) = v181;
                  *(v205 + 32) = v180;
                  *(v205 + 48) = v179;
                  *(v205 + 64) = v178;
                  *(v205 + 80) = v202;
                  *(v205 + 88) = v177;
                  *(v205 + 96) = v174;
                  *(v205 + 112) = v175;
                  *(v205 + 128) = v249;
                  *(v205 + 136) = v176;
                  *(v205 + 144) = v173;
                  v206 = v141[2];
                  v124 = __OFADD__(v206, 1);
                  v207 = v206 + 1;
                  if (v124)
                  {
                    goto LABEL_143;
                  }

                  v141[2] = v207;
                  v140 = v213;
                  v146 = v214;
                  v142 = v215;
                  v147 = v210;
                  v148 = 0x280041000;
                }

                while (v214);
              }

              v150 = v142;
              while (1)
              {
                v142 = v150 + 1;
                if (__OFADD__(v150, 1))
                {
                  break;
                }

                if (v142 >= v147)
                {

                  *v218 = v141;
                  return;
                }

                v151 = *(v209 + 8 * v142);
                ++v150;
                if (v151)
                {
                  v149 = __clz(__rbit64(v151));
                  v214 = (v151 - 1) & v151;
                  goto LABEL_113;
                }
              }

LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v97 = *(v93 + 8 * v98);
            ++v96;
            if (v97)
            {
              v96 = v98;
              goto LABEL_83;
            }
          }

LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

LABEL_83:
        *v219 = (v97 - 1) & v97;
        v99 = __clz(__rbit64(v97)) | (v96 << 6);
        v100 = (*(v92 + 48) + 16 * v99);
        v101 = *v100;
        v102 = v100[1];
        v103 = *(*(v92 + 56) + 8 * v99);

        v104._countAndFlagsBits = v211;
        v104._object = (v212 | 0x8000000000000000);
        v217 = v101;
        if (String.hasPrefix(_:)(v104))
        {
          break;
        }
      }

      v214 = v102;
      v105 = *(v103 + 16);
      if (v105)
      {
        break;
      }

      v114 = MEMORY[0x277D84F90];
LABEL_93:
      v115 = v214;

      v116 = v218;
      v117 = v218[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v116[2];
      *&v230 = v119;
      v120 = specialized __RawDictionaryStorage.find<A>(_:)(v217, v115);
      v122 = *(v119 + 16);
      v123 = (v121 & 1) == 0;
      v124 = __OFADD__(v122, v123);
      v125 = v122 + v123;
      if (v124)
      {
        goto LABEL_146;
      }

      v126 = v121;
      if (*(v119 + 24) >= v125)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v136 = v93;
          v137 = v120;
          specialized _NativeDictionary.copy()();
          v120 = v137;
          v93 = v136;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v125, isUniquelyReferenced_nonNull_native);
        v120 = specialized __RawDictionaryStorage.find<A>(_:)(v217, v214);
        if ((v126 & 1) != (v127 & 1))
        {
          goto LABEL_155;
        }
      }

      v128 = v93;
      v129 = v230;
      if (v126)
      {
        v130 = *(v230 + 56);
        v131 = *(v130 + 8 * v120);
        *(v130 + 8 * v120) = v114;

        swift_bridgeObjectRelease_n();
      }

      else
      {
        *(v230 + 8 * (v120 >> 6) + 64) |= 1 << v120;
        v132 = (v129[6] + 16 * v120);
        v133 = v214;
        *v132 = v217;
        v132[1] = v133;
        *(v129[7] + 8 * v120) = v114;
        v134 = v129[2];
        v124 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v124)
        {
          goto LABEL_147;
        }

        v129[2] = v135;
      }

      v218[2] = v129;
      v92 = v210;
      v93 = v128;
    }

    v209 = v93;
    *&v230 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
    v106 = 0;
    v107 = v230;
    v108 = v215;
    *&v219[8] = (*(v215 + 80) + 32) & ~*(v215 + 80);
    *&v222 = v103 + *&v219[8];
    *&v221 = v103;
    *&v220 = v105;
    while (v106 < *(v103 + 16))
    {
      v109 = *(v108 + 72);
      outlined init with copy of NodeDef.Implementation(v222 + v109 * v106, v5, type metadata accessor for NodeDef.Implementation);
      v110 = v223;
      closure #1 in closure #3 in NodeDefStore.applyStandardLibraryFixes()(v5, v249);
      if (v110)
      {
        outlined destroy of NodeDef.Implementation(v5, type metadata accessor for NodeDef.Implementation);

        return;
      }

      v223 = 0;
      v111 = v5;
      outlined destroy of NodeDef.Implementation(v5, type metadata accessor for NodeDef.Implementation);
      *&v230 = v107;
      v113 = *(v107 + 16);
      v112 = *(v107 + 24);
      if (v113 >= v112 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1);
        v108 = v215;
        v107 = v230;
      }

      ++v106;
      *(v107 + 16) = v113 + 1;
      outlined init with take of NodeDef.Implementation(v249, v107 + *&v219[8] + v113 * v109, type metadata accessor for NodeDef.Implementation);
      v5 = v111;
      v103 = v221;
      if (v220 == v106)
      {
        v114 = v107;
        v93 = v209;
        goto LABEL_93;
      }
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  *&v222 = v15;
  v20 = v18;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x8000000265F332A0);
  if ((v22 & 1) == 0)
  {
LABEL_51:
    if (*(v20 + 16))
    {
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(0x56556473555F444ELL, 0xEF65727574786554);
      if (v59)
      {
        *&v208 = v5;
        v60 = (*(v20 + 56) + 152 * v58);
        v62 = *v60;
        v61 = v60[1];
        v63 = v60[3];
        v214 = v60[2];
        v64 = v60[6];
        v65 = v60[7];
        v216 = v62;
        v217 = v64;
        v66 = v60[11];
        v68 = v60[16];
        v67 = v60[17];
        v69 = *(v68 + 16);
        if (v69)
        {
          *&v226[0] = MEMORY[0x277D84F90];
          v210 = v61;

          v211 = v65;

          v212 = v66;

          v213 = v67;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
          v70 = *&v226[0];
          *&v221 = v69 - 1;
          v71 = 32;
          v209 = v63;
          *v219 = v68;
          while (1)
          {
            *&v219[8] = v71;
            v72 = (v68 + v71);
            v74 = v72[1];
            v73 = v72[2];
            v75 = *v72;
            *(v232 + 9) = *(v72 + 41);
            v231 = v74;
            v232[0] = v73;
            v230 = v75;
            v76 = *&v232[1];
            *&v220 = *(&v74 + 1);
            v222 = v73;
            v77 = v75;
            if (v75 == __PAIR128__(0xE500000000000000, 0x5370617277) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            if (v77 == __PAIR128__(0xE500000000000000, 0x5470617277) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              outlined init with copy of NodeDef.IOSpec(&v230, v228);
              v86 = one-time initialization token for vAddressMode;

              if (v86 != -1)
              {
                swift_once();
              }

              v79 = &static MaterialXDataType.vAddressMode;
              goto LABEL_60;
            }

            v81 = BYTE8(v232[1]);
            v80 = v231;
            outlined init with copy of NodeDef.IOSpec(&v230, v228);
LABEL_61:
            *&v226[0] = v70;
            v83 = *(v70 + 16);
            v82 = *(v70 + 24);
            if (v83 >= v82 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
              v70 = *&v226[0];
            }

            *(v70 + 16) = v83 + 1;
            v84 = v70 + (v83 << 6);
            *(v84 + 32) = v77;
            v85 = v220;
            *(v84 + 48) = v80;
            *(v84 + 56) = v85;
            *(v84 + 64) = v222;
            *(v84 + 80) = v76;
            *(v84 + 88) = v81;
            if (!v221)
            {

              v5 = v208;
              v87 = v212;
              v67 = v213;
              v88 = v210;
              v65 = v211;
              v63 = v209;
              goto LABEL_73;
            }

            *&v221 = v221 - 1;
            v68 = *v219;
            v71 = *&v219[8] + 64;
          }

          outlined init with copy of NodeDef.IOSpec(&v230, v228);
          v78 = one-time initialization token for uAddressMode;

          if (v78 != -1)
          {
            swift_once();
          }

          v79 = &static MaterialXDataType.uAddressMode;
LABEL_60:
          v80 = *v79;

          outlined destroy of NodeDef.IOSpec(&v230);
          v81 = 1;
          goto LABEL_61;
        }

        v88 = v61;

        v87 = v66;
        v70 = MEMORY[0x277D84F90];
        v5 = v208;
LABEL_73:
        v239[0] = v216;
        v239[1] = v88;
        v239[2] = v214;
        v239[3] = v63;
        v239[4] = 0;
        v239[5] = 0;
        v239[6] = v217;
        v239[7] = v65;
        v239[8] = 0;
        v239[9] = 0;
        v240 = 2;
        v241 = v87;
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v245 = 1;
        v246 = v70;
        v247 = v67;
        v248 = 0;
        v89 = v218;
        v90 = *v218;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        *&v230 = *v89;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v239, 0x56556473555F444ELL, 0xEF65727574786554, v91);
        v213 = v230;
        *v89 = v230;
      }
    }

    goto LABEL_74;
  }

  v23 = *(v18 + 56) + 152 * v21;
  v24 = *(v23 + 16);
  v230 = *v23;
  v231 = v24;
  v25 = *(v23 + 80);
  v27 = *(v23 + 32);
  v26 = *(v23 + 48);
  v233 = *(v23 + 64);
  v234 = v25;
  v232[0] = v27;
  v232[1] = v26;
  v28 = *(v23 + 96);
  v29 = *(v23 + 112);
  v30 = *(v23 + 128);
  v238 = *(v23 + 144);
  v236 = v29;
  v237 = v30;
  v235 = v28;
  v31 = v218[2];
  v32 = v230;
  v33 = *(v31 + 16);
  *&v208 = v5;
  *&v220 = v10;
  *&v221 = v13;
  if (v33)
  {
    outlined init with copy of NodeDef(&v230, v228);
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32, *(&v32 + 1));
    if (v35)
    {
      v36 = *(*(v31 + 56) + 8 * v34);

      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of NodeDef(&v230, v228);
  }

  v36 = MEMORY[0x277D84F90];
LABEL_8:
  *v219 = v32;
  v37 = v36[2];
  if (v37)
  {
    v38 = 0;
    while (1)
    {
      if (v38 >= v36[2])
      {
        goto LABEL_144;
      }

      v39 = (*(v215 + 80) + 32) & ~*(v215 + 80);
      v40 = *(v215 + 72);
      outlined init with copy of NodeDef.Implementation(v36 + v39 + v40 * v38, v17, type metadata accessor for NodeDef.Implementation);
      if (*v17 == 0xD000000000000021 && 0x8000000265F34740 == v17[1])
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of NodeDef.Implementation(v17, type metadata accessor for NodeDef.Implementation);
      if (v42)
      {
        goto LABEL_20;
      }

      if (v37 == ++v38)
      {
        v43 = v36[2];
        v38 = v43;
        goto LABEL_43;
      }
    }

    outlined destroy of NodeDef.Implementation(v17, type metadata accessor for NodeDef.Implementation);
LABEL_20:
    v43 = v38 + 1;
    v44 = v36[2];
    if (v44 - 1 != v38)
    {
      v45 = v39 + v40 * v43;
      v46 = v222;
      do
      {
        if (v43 >= v44)
        {
          goto LABEL_145;
        }

        outlined init with copy of NodeDef.Implementation(v36 + v45, v46, type metadata accessor for NodeDef.Implementation);
        if (*v46 == 0xD000000000000021 && 0x8000000265F34740 == v46[1])
        {
          outlined destroy of NodeDef.Implementation(v46, type metadata accessor for NodeDef.Implementation);
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v49 = v46;
          v50 = v48;
          outlined destroy of NodeDef.Implementation(v49, type metadata accessor for NodeDef.Implementation);
          if (v50)
          {
            v46 = v222;
          }

          else
          {
            if (v43 == v38)
            {
              v46 = v222;
            }

            else
            {
              if (v38 < 0)
              {
                goto LABEL_151;
              }

              v51 = v36[2];
              if (v38 >= v51)
              {
                goto LABEL_152;
              }

              v217 = v38 * v40;
              outlined init with copy of NodeDef.Implementation(v36 + v39 + v38 * v40, v221, type metadata accessor for NodeDef.Implementation);
              if (v43 >= v51)
              {
                goto LABEL_153;
              }

              outlined init with copy of NodeDef.Implementation(v36 + v45, v220, type metadata accessor for NodeDef.Implementation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
              }

              v46 = v222;
              outlined assign with take of NodeDef.Implementation(v220, v36 + v39 + v217);
              if (v43 >= v36[2])
              {
                goto LABEL_154;
              }

              outlined assign with take of NodeDef.Implementation(v221, v36 + v45);
            }

            ++v38;
          }
        }

        ++v43;
        v44 = v36[2];
        v45 += v40;
      }

      while (v43 != v44);
      if (v43 < v38)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v38 < 0)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }
  }

  else
  {
    v43 = 0;
    v38 = 0;
  }

LABEL_43:
  if (!__OFADD__(v43, v38 - v43))
  {
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v228[0] = v36;
    if (!v52 || v38 > v36[3] >> 1)
    {
      if (v43 <= v38)
      {
        v53 = v38;
      }

      else
      {
        v53 = v43;
      }

      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v53, 1, v36);
      *&v228[0] = v36;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v38, v43, 0);
    v54 = *&v219[8];

    v55 = v218;
    v56 = v218[2];
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v226[0] = v55[2];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, *v219, v54, v57);

    outlined destroy of NodeDef(&v230);
    v55[2] = *&v226[0];
    v20 = v213;
    v5 = v208;
    goto LABEL_51;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t closure #1 in NodeDefStore.loadLibrary()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v43 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = *a1;
  v20 = a1[1];
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_265F1F670;
  v23 = *MEMORY[0x277CBE8E8];
  *(v22 + 32) = *MEMORY[0x277CBE8E8];
  v24 = v23;
  v25 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v25)
  {
    result = (*(v9 + 8))(v18, v8);
    v33 = MEMORY[0x277D84F90];
LABEL_24:
    *a2 = v33;
    return result;
  }

  v45 = v18;
  v46 = a2;
  v53 = v9;
  v58 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v26 = v58;
  v44 = v25;
  NSEnumerator.makeIterator()();
  v51 = _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178]);
  dispatch thunk of IteratorProtocol.next()();
  if (v56)
  {
    v27 = v49;
    do
    {
      outlined init with take of Any(&v55, v57);
      outlined init with take of Any(v57, &v55);
      swift_dynamicCast();
      v58 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v27 = v49;
        v26 = v58;
      }

      *(v26 + 16) = v29 + 1;
      (*(v53 + 32))(v26 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v27, v8);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v56);
  }

  (*(v50 + 8))(v7, v4);
  result = outlined destroy of [Input](&v55, &_sypSgMd, &_sypSgMR);
  v50 = *(v26 + 16);
  if (!v50)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = v53;
LABEL_23:
    (*(v32 + 8))(v45, v8);

    a2 = v46;
    goto LABEL_24;
  }

  v31 = 0;
  v32 = v53;
  v49 = (v53 + 16);
  v47 = (v53 + 8);
  v51 = (v53 + 32);
  v33 = MEMORY[0x277D84F90];
  v48 = v8;
  while (v31 < *(v26 + 16))
  {
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = *(v32 + 72);
    (*(v32 + 16))(v54, v26 + v34 + v35 * v31, v8);
    if (URL.pathExtension.getter() == 2020373613 && v36 == 0xE400000000000000)
    {

LABEL_16:
      v38 = *v51;
      (*v51)(v52, v54, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v57[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v33 = *&v57[0];
      }

      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
        v33 = *&v57[0];
      }

      *(v33 + 16) = v41 + 1;
      v42 = v33 + v34 + v41 * v35;
      v8 = v48;
      result = v38(v42, v52, v48);
      v32 = v53;
      goto LABEL_10;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_16;
    }

    result = (*v47)(v54, v8);
LABEL_10:
    if (v50 == ++v31)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = 0;
  v40 = (v4 + 56);
  v36 = v4 + 48;
  v37 = v4 + 16;
  v34 = (v4 + 32);
  v35 = (v4 + 8);
  v29 = a1 + 32;
  v30 = a1;
  v16 = MEMORY[0x277D84F90];
  v33 = v7;
  while (1)
  {
    v24 = *(v30 + 16);
    if (v15 == v24)
    {
      (*v40)(v14, 1, 1, v3);
LABEL_20:

      v26 = v28;
      specialized Sequence.forEach(_:)(v16, v28);
      specialized Sequence.forEach(_:)(v16, v26);
    }

    if (v15 >= v24)
    {
      break;
    }

    v25 = v15 + 1;
    v19 = *(v29 + 8 * v15);

    v15 = v25;
    v7 = v33;
    if (v19)
    {
      v31 = v15;
      v17 = *(v19 + 16);
      if (v17)
      {
        v18 = 0;
        v32 = v19;
        while (v18 < v17)
        {
          (*(v4 + 16))(v12, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v3);
          (*(v4 + 56))(v12, 0, 1, v3);
          outlined init with take of NodeDef.Implementation?(v12, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          if ((*(v4 + 48))(v14, 1, v3) == 1)
          {
            goto LABEL_20;
          }

          (*v34)(v7, v14, v3);
          closure #1 in NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(v7, &v39);
          if (v1)
          {
            goto LABEL_23;
          }

          (*v35)(v7, v3);
          if (v39)
          {
            v38 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
            }

            v21 = v16[2];
            v20 = v16[3];
            v22 = v38;
            if (v21 >= v20 >> 1)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v16);
              v22 = v38;
              v16 = v23;
            }

            v16[2] = v21 + 1;
            *&v16[2 * v21 + 4] = v22;
            v19 = v32;
            v7 = v33;
          }

          ++v18;
          v17 = *(v19 + 16);
          if (v18 == v17)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      (*v40)(v12, 1, 1, v3);
      outlined destroy of [Input](v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v15 = v31;
    }
  }

  __break(1u);
LABEL_23:

  (*v35)(v7, v3);

  __break(1u);
  return result;
}

uint64_t NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
  v1 = Sequence.compactMap<A>(_:)();
  specialized Sequence.forEach(_:)(v1, v0);
  specialized Sequence.forEach(_:)(v1, v0);
}

void closure #1 in NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = Data.init(contentsOf:options:)();
  if (v2)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    (*(v6 + 16))(v12, a1, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136315138;
      _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v5;
      v22 = a2;
      v24 = v23;
      (*(v6 + 8))(v12, v21);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v47);
      a2 = v22;

      *(v18 + 4) = v25;
      _os_log_impl(&dword_265D7D000, v16, v17, "Failed to load contents of %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266773120](v19, -1, -1);
      MEMORY[0x266773120](v18, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v26 = v13;
    v27 = v14;
    v46 = 0;
    outlined copy of Data._Representation(v13, v14);
    v28 = XMLDocument.rootElement()(v26, v27, 1);
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      outlined consume of Data._Representation(v26, v27);
      outlined consume of Data._Representation(v26, v27);
      *a2 = v30;
      a2[1] = v31;
    }

    else
    {
      v45 = a2;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, logger);
      (*(v6 + 16))(v10, a1, v5);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v35 = 136315138;
        _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v43 = v33;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v6 + 8))(v10, v5);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v47);

        *(v35 + 4) = v39;
        v40 = v43;
        _os_log_impl(&dword_265D7D000, v43, v34, "Failed to find root element for XML at %s", v35, 0xCu);
        v41 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x266773120](v41, -1, -1);
        MEMORY[0x266773120](v35, -1, -1);
        outlined consume of Data._Representation(v26, v27);
        outlined consume of Data._Representation(v26, v27);
      }

      else
      {
        outlined consume of Data._Representation(v26, v27);
        outlined consume of Data._Representation(v26, v27);

        (*(v6 + 8))(v10, v5);
      }

      v42 = v45;
      *v45 = 0;
      v42[1] = 0;
    }
  }
}

uint64_t closure #1 in closure #3 in NodeDefStore.applyStandardLibraryFixes()@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NodeDef.Implementation(0);
  outlined init with copy of NodeDef.Implementation(a1 + *(v9 + 20), v8, type metadata accessor for NodeDef.Implementation.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NodeDef.Implementation(v8, type metadata accessor for NodeDef.Implementation.Kind);
    return outlined init with copy of NodeDef.Implementation(a1, a2, type metadata accessor for NodeDef.Implementation);
  }

  v50 = v5;
  v51 = v9;
  v55 = a1;
  v56 = a2;
  v57 = v2;
  v11 = v8[9];
  v89 = v8[8];
  v90[0] = v11;
  *(v90 + 9) = *(v8 + 153);
  v12 = v8[5];
  v85 = v8[4];
  v86 = v12;
  v13 = v8[7];
  v87 = v8[6];
  v88 = v13;
  v14 = v8[1];
  v81 = *v8;
  v82 = v14;
  v15 = v8[3];
  v83 = v8[2];
  v84 = v15;
  v16 = v86;
  v17 = v87;
  v18 = v88;
  v19 = BYTE8(v88);
  specialized ShaderGraphNode.output(labeled:)(&v91, 0x6B6361626C6C6166, 0xE800000000000000, v87);
  if (!v92)
  {
    *&v69[0] = 0;
    *(&v69[0] + 1) = 0xE000000000000000;
    MEMORY[0x266771550](0x6B6361626C6C6166, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v71 = v16;
    v72 = v17;
    *&v73 = v18;
    BYTE8(v73) = v19;
    _print_unlocked<A, B>(_:_:)();

    goto LABEL_16;
  }

  v53 = v92;
  v52 = v93;
  v47 = v94;
  v48 = v91;
  HIDWORD(v46) = v95;
  v49 = v96;
  v20 = *(v85 + 16);
  v54 = v85;

  if (!v20)
  {
LABEL_14:

    v71 = v52;
    outlined destroy of String(&v71);
LABEL_16:
    outlined destroy of UserGraph(&v81);
    return outlined init with copy of NodeDef.Implementation(v55, v56, type metadata accessor for NodeDef.Implementation);
  }

  v21 = 0;
  v22 = v54 + 32;
  v58 = " one output for node def ";
  while (1)
  {
    if (v21 >= v20)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v24 = (v22 + 48 * v21);
    if (v24[3] == -7)
    {
      v23 = __OFADD__(v21++, 1);
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_7;
    }

    v23 = __OFADD__(v21++, 1);
    if (v23)
    {
      goto LABEL_21;
    }

    v25 = *v24;
    if (*v24 >> 61 == 5)
    {
      break;
    }

LABEL_7:
    if (v21 >= v20)
    {
      goto LABEL_14;
    }
  }

  v26 = v24[1];
  v27 = v24[2];
  v28 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v29 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  outlined copy of NodePersonality(v25);
  v114 = v26;

  v30._object = (v58 | 0x8000000000000000);
  v30._countAndFlagsBits = 0xD000000000000011;
  LOBYTE(v28) = String.hasPrefix(_:)(v30);

  if ((v28 & 1) == 0)
  {

    result = outlined consume of NodePersonality(v25);
    goto LABEL_7;
  }

  specialized ShaderGraphNode.output(labeled:)(&v97, 0x746C7561666564, 0xE700000000000000, v114);
  if (v98)
  {
    v67 = v89;
    v68[0] = v90[0];
    *(v68 + 9) = *(v90 + 9);
    v63 = v85;
    v64 = v86;
    v65 = v87;
    v66 = v88;
    v59 = v81;
    v60 = v82;
    v61 = v83;
    v62 = v84;
    v104 = v52;
    v105[0] = v99;
    v105[1] = v100;
    v106[0] = v48;
    v106[1] = v53;
    v107 = v52;
    v108 = v47;
    v109 = BYTE4(v46) & 1;
    v110 = v49;
    v111[0] = v97;
    v111[1] = v98;
    v111[2] = v99;
    v111[3] = v100;
    v111[4] = v101;
    v112 = v102 & 1;
    v113 = v103;
    outlined init with copy of UserGraph(&v81, &v71);

    outlined init with copy of String(&v104, &v71);

    outlined init with copy of String(v105, &v71);
    UserGraph.connect(_:to:)(v106, v111);

    v31 = *(v51 + 20);
    v32 = v68[0];
    v69[8] = v67;
    v70[0] = v68[0];
    *(v70 + 9) = *(v68 + 9);
    v33 = v63;
    v34 = v64;
    v69[4] = v63;
    v69[5] = v64;
    v36 = v65;
    v35 = v66;
    v69[6] = v65;
    v69[7] = v66;
    v37 = v59;
    v38 = v60;
    v69[0] = v59;
    v69[1] = v60;
    v40 = v61;
    v39 = v62;
    v69[2] = v61;
    v69[3] = v62;
    v41 = v56;
    v42 = (v56 + v31);
    v42[8] = v67;
    v42[9] = v32;
    *(v42 + 153) = *(v68 + 9);
    v42[4] = v33;
    v42[5] = v34;
    v42[6] = v36;
    v42[7] = v35;
    *v42 = v37;
    v42[1] = v38;
    v43 = v55[1];
    v58 = *v55;
    v42[2] = v40;
    v42[3] = v39;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_265F20CD0;
    type metadata accessor for MaterialXTarget();
    *(v44 + 32) = swift_initStaticObject();

    outlined init with copy of UserGraph(v69, &v71);
    v45 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v44);

    outlined destroy of String(&v104);
    outlined consume of NodePersonality(v25);

    outlined destroy of String(v105);
    outlined destroy of UserGraph(&v81);
    v79 = v67;
    v80[0] = v68[0];
    *(v80 + 9) = *(v68 + 9);
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    result = outlined destroy of UserGraph(&v71);
    *v41 = v58;
    v41[1] = v43;
    *(v41 + *(v51 + 24)) = v45;
  }

  else
  {
    outlined init with copy of NodeDef.Implementation(v55, v56, type metadata accessor for NodeDef.Implementation);
    outlined consume of NodePersonality(v25);

    v71 = v52;
    outlined destroy of String(&v71);
    return outlined destroy of UserGraph(&v81);
  }

  return result;
}

uint64_t NodeDefStore.load(materialXFile:)()
{
  result = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    outlined copy of Data._Representation(result, v3);
    v6 = XMLDocument.rootElement()(v4, v5, 1);
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      collectNodeDefs(_:into:)(v6, v7, v0);
      collectGeomPropDefs(_:into:)(v8, v9, v0);
      collectImplementations(_:into:)(v8, v9, v0);
      swift_unknownObjectRelease();
    }

    else
    {
      _StringGuts.grow(_:)(41);

      v22[0] = 0xD000000000000027;
      v22[1] = 0x8000000265F34770;
      type metadata accessor for URL();
      _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v10);

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000265F34770, v22);
        _os_log_impl(&dword_265D7D000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x266773120](v15, -1, -1);
        MEMORY[0x266773120](v14, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F1F670;
      v17 = *MEMORY[0x277CCA450];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v18;
      *(inited + 48) = 0xD000000000000027;
      *(inited + 56) = 0x8000000265F34770;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of [Input](inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v20 = MEMORY[0x266771450](0, 0xE000000000000000);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 initWithDomain:v20 code:0 userInfo:isa];

      swift_willThrow();
    }

    outlined consume of Data._Representation(v4, v5);
    return outlined consume of Data._Representation(v4, v5);
  }

  return result;
}

double NodeDefStore.createNode(in:from:)@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  specialized NodeDefStore.createNode(in:from:)(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t closure #6 in NodeDefStore.createNode(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v9 = *(a1 + 112);
  v47[6] = *(a1 + 96);
  v47[7] = v9;
  v48 = *(a1 + 128);
  v49 = *(a1 + 144);
  v10 = *(a1 + 48);
  v47[2] = *(a1 + 32);
  v47[3] = v10;
  v11 = *(a1 + 80);
  v47[4] = *(a1 + 64);
  v47[5] = v11;
  v12 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 48);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v44 = *(v14 - 2);
      v45 = v16;
      v46 = v15;

      v17 = closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(&v44, v47, a3, a4, NodeDef.subscript.getter, "Nodedef '%s' cannot instantiate element '%s' because it does not have input '%s'");

      if ((v17 & 1) == 0)
      {
        goto LABEL_30;
      }

      v14 += 3;
    }

    while (--v13);
  }

  v18 = *(v50 + 16);
  if (v18)
  {
    v19 = v18 - 1;
    v20 = (v50 + 48);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v44 = *(v20 - 2);
      v45 = v22;
      v46 = v21;

      v23 = closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(&v44, v47, a3, a4, NodeDef.subscript.getter, "Nodedef '%s' cannot instantiate element '%s because it does not have output '%s'");

      v25 = v19-- != 0;
      if ((v23 & 1) == 0)
      {
        break;
      }

      v20 += 3;
    }

    while (v25);
    return v23 & 1;
  }

  swift_getObjectType();
  v26 = *(a7 + 8);
  v27 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
  if (!v28)
  {
LABEL_30:
    v23 = 0;
    return v23 & 1;
  }

  v29 = v28;
  if (v27 == 0x74756F69746C756DLL && v28 == 0xEB00000000747570)
  {
    goto LABEL_19;
  }

  v30 = v27;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_19;
  }

  if (!*(*(&v48 + 1) + 16))
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, logger);
    outlined init with copy of NodeDef(v47, &v44);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    outlined destroy of NodeDef(v47);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v47[0], *(&v47[0] + 1), &v44);
      _os_log_impl(&dword_265D7D000, v37, v38, "Could not use nodedef '%s' because it has no <output> elements.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266773120](v40, -1, -1);
      MEMORY[0x266773120](v39, -1, -1);
    }

    goto LABEL_30;
  }

  v31 = *(*(&v48 + 1) + 40);
  v32 = *(*(&v48 + 1) + 48);
  v33 = *(*(&v48 + 1) + 64);
  v34 = *(*(&v48 + 1) + 80);
  type metadata accessor for MaterialXDataType();
  inited = swift_initStackObject();
  inited[4] = v30;
  inited[5] = v29;
  inited[2] = MEMORY[0x277D84F90];
  inited[3] = 0;
  if (MaterialXDataType.isEqual(to:)())
  {
LABEL_19:

    v23 = 1;
    return v23 & 1;
  }

  if (!*(v32 + 24))
  {

    goto LABEL_30;
  }

  v41 = one-time initialization token for string;

  if (v41 != -1)
  {
    swift_once();
  }

  v23 = MaterialXDataType.isEqual(to:)();

  return v23 & 1;
}

uint64_t closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, uint64_t, unint64_t), char *a6)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  a5(v25, *a1, v11);
  if (v25[1])
  {
    v14 = v25[2];
    if (MaterialXDataType.isEqual(to:)())
    {
      outlined destroy of [Input](v25, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
      return 1;
    }

    if (*(v14 + 24))
    {
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v22 = MaterialXDataType.isEqual(to:)();
      outlined destroy of [Input](v25, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
      if (v22)
      {
        return 1;
      }
    }

    else
    {
      outlined destroy of [Input](v25, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
    }

    return 0;
  }

  else
  {
    v25[10] = v6;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    outlined init with copy of NodeDef(a2, v24);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    outlined destroy of NodeDef(a2);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      format = a6;
      v24[0] = swift_slowAlloc();
      v20 = v24[0];
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a2, *(a2 + 8), v24);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v24);
      *(v19 + 22) = 2080;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v24);

      *(v19 + 24) = v21;
      _os_log_impl(&dword_265D7D000, v17, v18, format, v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v20, -1, -1);
      MEMORY[0x266773120](v19, -1, -1);
    }

    return 0;
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v79 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v45 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  _sSS_11ShaderGraph7NodeDefVtSgWOi0_(&v57);
  v76 = v65;
  v77 = v66;
  v78 = v67;
  v72 = v61;
  v73 = v62;
  v74 = v63;
  v75 = v64;
  v68 = v57;
  v69 = v58;
  v4 = v5;
  v70 = v59;
  v71 = v60;
  while (1)
  {
    v65 = v76;
    v66 = v77;
    v67 = v78;
    v61 = v72;
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v57 = v68;
    v58 = v69;
    v59 = v70;
    v60 = v71;
    if (getEnumTag for IOAttachment(&v57) == 1)
    {

      return;
    }

    v18 = v5;
    v19 = v68;
    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    v47 = v69;
    v48 = v70;
    v20 = *v79;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v68, *(&v68 + 1));
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_26;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_18;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v26)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v31 = *v79;
    v31[(v22 >> 6) + 8] |= 1 << v22;
    *(v31[6] + 16 * v22) = v19;
    v32 = v31[7] + 152 * v22;
    v33 = v48;
    *v32 = v47;
    *(v32 + 16) = v33;
    v34 = v49;
    v35 = v50;
    v36 = v52;
    *(v32 + 64) = v51;
    *(v32 + 80) = v36;
    *(v32 + 32) = v34;
    *(v32 + 48) = v35;
    v37 = v53;
    v38 = v54;
    v39 = v55;
    *(v32 + 144) = v56;
    *(v32 + 112) = v38;
    *(v32 + 128) = v39;
    *(v32 + 96) = v37;
    v40 = v31[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_22;
    }

    v31[2] = v42;
    a2 = 1;
    v5 = v18;
    if (v4 == v18)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v45 + 168 * v4);
    v7 = v6[7];
    v8 = v6[9];
    v65 = v6[8];
    v66 = v8;
    v9 = v6[3];
    v10 = v6[5];
    v61 = v6[4];
    v62 = v10;
    v11 = v6[5];
    v12 = v6[7];
    v63 = v6[6];
    v64 = v12;
    v13 = v6[1];
    v57 = *v6;
    v58 = v13;
    v14 = v6[3];
    v16 = *v6;
    v15 = v6[1];
    v59 = v6[2];
    v60 = v14;
    v17 = v6[9];
    v76 = v65;
    v77 = v17;
    v72 = v61;
    v73 = v11;
    v74 = v63;
    v75 = v7;
    v68 = v16;
    v69 = v15;
    v67 = *(v6 + 20);
    v78 = *(v6 + 20);
    ++v4;
    v70 = v59;
    v71 = v9;
    destructiveProjectEnumData for NodePersonality.ShaderType(&v68);
    outlined init with copy of [Input](&v57, &v47, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
  }

  v27 = v79;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
  v28 = *v27;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v19, *(&v19 + 1));
  if ((v26 & 1) != (v30 & 1))
  {
    goto LABEL_25;
  }

  v22 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v43 = swift_allocError();
  swift_willThrow();
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of NodeDef(&v47);

    return;
  }

LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = v10 + 56 * a3;
  v15 = (v9 + 32 + 56 * a2);
  if (result != v15 || result >= v15 + 56 * v14)
  {
    result = memmove(result, v15, 56 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *a4;
    result = a4[1];
    v21 = *(a4 + 2);
    v24 = *(a4 + 1);
    v20 = v24;
    *v10 = v19;
    *(v10 + 8) = result;
    *(v10 + 48) = a4[6];
    *(v10 + 16) = v20;
    *(v10 + 32) = v21;
    if (a3 == 1)
    {
      return result;
    }

    outlined init with copy of String(&v24, &v23);
    __break(1u);
  }

  v22 = a4[1];
  v24 = *(a4 + 1);

  return outlined destroy of String(&v24);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double specialized NodeDefStore.createNode(in:from:)@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v2 = a1[16];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    *&v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v29;
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      *&v29 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);

      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v4 = v29;
      }

      *(v4 + 16) = v10 + 1;
      v11 = (v4 + 24 * v10);
      v11[4] = v6;
      v11[5] = v7;
      v11[6] = v8;
      v5 += 8;
      --v3;
    }

    while (v3);
    v12 = a1;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12[17];
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    *&v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v29;
    v16 = (v13 + 48);
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      *&v29 = v15;
      v20 = *(v15 + 16);
      v21 = *(v15 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v20 + 1;
      v22 = (v15 + 24 * v20);
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v16 += 8;
      --v14;
    }

    while (v14);
    v12 = a1;
  }

  v23 = swift_allocObject();
  v24 = v12[1];
  *(v23 + 16) = *v12;
  *(v23 + 24) = v24;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v4, v15, v23 | 0xA000000000000000, &v29);

  v25 = v30[0];
  *a2 = v29;
  a2[1] = v25;
  result = *(v30 + 9);
  *(a2 + 25) = *(v30 + 9);
  return result;
}

uint64_t specialized NodeDefStore.createNode(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v10 = *(v9 + 16);
  v11 = v10(ObjectType, v9);
  if (!v12)
  {
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x266771550](0xD000000000000037, 0x8000000265F34B00);
    *&v216[0] = a1;
    *(&v216[0] + 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
    _print_unlocked<A, B>(_:_:)();
    v34 = 62;
LABEL_17:
    v35 = 0xE100000000000000;
    goto LABEL_18;
  }

  v198 = v11;
  v193 = a4;
  v204 = v12;
  v205 = ObjectType;
  v13 = *(a2 + 16);
  v202 = v9;
  v203 = a2;
  if (!v13(1701869940, 0xE400000000000000, ObjectType))
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = swift_getObjectType();
  v17 = (*(v15 + 32))(v16, v15);
  v19 = v18;
  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_9:

    if (!(v13)(1701667182, 0xE400000000000000, v205, a2) || (v26 = v25, v27 = swift_getObjectType(), v28 = (*(v26 + 32))(v27, v26), v30 = v29, swift_unknownObjectRelease(), !v30))
    {

      v30 = 0xE600000000000000;
      v28 = 0x3E656E6F6E3CLL;
    }

    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    MEMORY[0x266771550](0x20746E656D656C45, 0xE90000000000003CLL);
    v31 = v10(v205, v202);
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 0x3E656E6F6E3CLL;
      v33 = 0xE600000000000000;
    }

    MEMORY[0x266771550](v31, v33);

    MEMORY[0x266771550](0x656D616E202E2E2ELL, 0xEA0000000000223DLL);
    MEMORY[0x266771550](v28, v30);

    v34 = 0xD000000000000028;
    v35 = 0x8000000265F34B40;
LABEL_18:
    MEMORY[0x266771550](v34, v35);
    v36 = __dst;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v37 = 47;
    *(v37 + 8) = v36;
    return swift_willThrow();
  }

  v21 = v202;
  v22 = *(v202 + 48);
  v23 = v22(0x7475706E692F2ELL, 0xE700000000000000, v205, v202);
  v194 = v4;
  if (v4)
  {
  }

  v38 = v23;
  v39 = 0;
  v40 = *(v23 + 16);
  v41 = MEMORY[0x277D84F90];
  v188 = v22;
LABEL_20:
  v42 = 16 * v39 + 32;
  v191 = v41;
  while (v40 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    ++v39;
    v43 = v42 + 16;
    v44 = *(v38 + v42);
    swift_getObjectType();
    v45 = swift_conformsToProtocol2();
    v42 = v43;
    if (v45)
    {
      v42 = v43;
      if (v44)
      {
        v46 = v45;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191[2] + 1, 1, v191);
        }

        v48 = v191[2];
        v47 = v191[3];
        if (v48 >= v47 >> 1)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v191);
        }

        v49 = v46;
        v41 = v191;
        v191[2] = v48 + 1;
        v50 = &v191[2 * v48];
        v50[4] = v44;
        v50[5] = v49;
        goto LABEL_20;
      }
    }
  }

  v51 = v41[2];
  v190 = a1;
  if (v51)
  {
    *&v206 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
    v52 = 0;
    v53 = v206;
    v54 = v41 + 5;
    v189 = v51;
    while (v52 < v41[2])
    {
      v56 = *(v54 - 1);
      v55 = *v54;
      swift_getObjectType();
      v57 = *(v55 + 8);
      swift_unknownObjectRetain();
      v195 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (!v58)
      {
        goto LABEL_44;
      }

      v59 = v58;
      v199 = v53;
      v60 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
      if (!v61)
      {

LABEL_44:
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v73 = 47;
        *(v73 + 8) = 0xD000000000000020;
        *(v73 + 16) = 0x8000000265F34B70;
        swift_willThrow();

        return swift_unknownObjectRelease();
      }

      v62 = v60;
      v63 = v61;
      v64 = XMLNode.subscript.getter(1836412517, 0xE400000000000000);
      if (v65)
      {
        v66 = v64;
        v67 = v65;

        *&__dst = v66;
        *(&__dst + 1) = v67;
        *&v216[0] = 44;
        *(&v216[0] + 1) = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v68 = StringProtocol.components<A>(separatedBy:)();

        type metadata accessor for MaterialXDataType();
        v69 = swift_allocObject();
        v69[4] = v195;
        v69[5] = v59;
        v69[3] = v68;
        v69[2] = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MaterialXDataType();
        v69 = swift_allocObject();
        v69[4] = v62;
        v69[5] = v63;
        v69[3] = 0;
        v69[2] = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();
      v53 = v199;
      *&v206 = v199;
      v71 = *(v199 + 16);
      v70 = *(v199 + 24);
      if (v71 >= v70 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
        v53 = v206;
      }

      ++v52;
      *(v53 + 16) = v71 + 1;
      v72 = (v53 + 24 * v71);
      v72[4] = v195;
      v72[5] = v59;
      v72[6] = v69;
      v54 += 2;
      a1 = v190;
      v41 = v191;
      if (v189 == v52)
      {

        v74 = v205;
        v21 = v202;
        goto LABEL_45;
      }
    }

    goto LABEL_114;
  }

  v53 = MEMORY[0x277D84F90];
  v74 = v205;
LABEL_45:
  v75 = v188(0x74757074756F2F2ELL, 0xE800000000000000, v74, v21);
  v76 = 0;
  v77 = *(v75 + 16);
  v78 = MEMORY[0x277D84F90];
  v200 = v53;
LABEL_46:
  v79 = 16 * v76 + 32;
  v196 = v78;
  while (v77 != v76)
  {
    if (v76 >= *(v75 + 16))
    {
      goto LABEL_116;
    }

    ++v76;
    v80 = v79 + 16;
    v81 = *(v75 + v79);
    swift_getObjectType();
    v82 = swift_conformsToProtocol2();
    v79 = v80;
    if (v82)
    {
      v79 = v80;
      if (v81)
      {
        v83 = v82;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v196[2] + 1, 1, v196);
        }

        v85 = v196[2];
        v84 = v196[3];
        if (v85 >= v84 >> 1)
        {
          v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v196);
        }

        v86 = v83;
        v78 = v196;
        v196[2] = v85 + 1;
        v87 = &v196[2 * v85];
        v87[4] = v81;
        v87[5] = v86;
        goto LABEL_46;
      }
    }
  }

  v194 = 0;

  v88 = v78[2];
  if (v88)
  {
    *&__dst = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
    v89 = 0;
    v90 = __dst;
    v91 = v78 + 5;
    v192 = v88;
    while (v89 < v78[2])
    {
      v92 = *(v91 - 1);
      v93 = *v91;
      swift_getObjectType();
      v94 = *(v93 + 8);
      swift_unknownObjectRetain();
      v95 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (!v96)
      {
        goto LABEL_120;
      }

      v97 = v95;
      v98 = v96;
      v99 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
      if (!v100)
      {
        goto LABEL_121;
      }

      v101 = v99;
      v102 = v100;
      type metadata accessor for MaterialXDataType();
      v103 = swift_allocObject();
      v103[3] = 0;
      v103[4] = v101;
      v103[5] = v102;
      swift_unknownObjectRelease();
      v103[2] = MEMORY[0x277D84F90];
      *&__dst = v90;
      v105 = *(v90 + 16);
      v104 = *(v90 + 24);
      if (v105 >= v104 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
        v90 = __dst;
      }

      ++v89;
      *(v90 + 16) = v105 + 1;
      v106 = (v90 + 24 * v105);
      v106[4] = v97;
      v106[5] = v98;
      v106[6] = v103;
      v91 += 2;
      v78 = v196;
      if (v192 == v89)
      {

        a1 = v190;
        goto LABEL_66;
      }
    }

    goto LABEL_117;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_66:
  v107 = a3;
  v108 = 1 << *(a3 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & *(a3 + 64);
  v111 = (v108 + 63) >> 6;

  v112 = 0;
  v197 = MEMORY[0x277D84F90];
  v113 = v204;
  v114 = v198;
  while (v110)
  {
    v115 = v112;
LABEL_74:
    v116 = __clz(__rbit64(v110));
    v110 &= v110 - 1;
    v117 = *(v107 + 56) + 152 * (v116 | (v115 << 6));
    v118 = *(v117 + 16);
    __dst = *v117;
    v219 = v118;
    v119 = *(v117 + 80);
    v121 = *(v117 + 32);
    v120 = *(v117 + 48);
    v222 = *(v117 + 64);
    v223 = v119;
    v220 = v121;
    v221 = v120;
    v123 = *(v117 + 112);
    v122 = *(v117 + 128);
    v124 = *(v117 + 96);
    v227 = *(v117 + 144);
    v225 = v123;
    v226 = v122;
    v224 = v124;
    if (__PAIR128__(v113, v114) == v219 || (v125 = _stringCompareWithSmolCheck(_:_:expecting:)(), v114 = v198, (v125 & 1) != 0))
    {
      outlined init with copy of NodeDef(&__dst, v216);
      v126 = v197;
      *&v206 = v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v197 + 16) + 1, 1);
        v113 = v204;
        v126 = v206;
      }

      v128 = *(v126 + 16);
      v127 = *(v126 + 24);
      v129 = v126;
      v114 = v198;
      if (v128 >= v127 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1);
        v114 = v198;
        v113 = v204;
        v129 = v206;
      }

      *(v129 + 16) = v128 + 1;
      v197 = v129;
      v130 = v129 + 152 * v128;
      v131 = v219;
      *(v130 + 32) = __dst;
      *(v130 + 48) = v131;
      v132 = v220;
      v133 = v221;
      v134 = v223;
      *(v130 + 96) = v222;
      *(v130 + 112) = v134;
      *(v130 + 64) = v132;
      *(v130 + 80) = v133;
      v135 = v224;
      v136 = v225;
      v137 = v226;
      *(v130 + 176) = v227;
      *(v130 + 144) = v136;
      *(v130 + 160) = v137;
      *(v130 + 128) = v135;
      v112 = v115;
      a1 = v190;
      v107 = a3;
    }

    else
    {
      v112 = v115;
    }
  }

  while (1)
  {
    v115 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      break;
    }

    if (v115 >= v111)
    {

      v138 = v197;
      v139 = *(v197 + 16);
      if (!v139)
      {

        *&__dst = 0;
        *(&__dst + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(60);
        MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F34BD0);
        MEMORY[0x266771550](v198, v204);

        MEMORY[0x266771550](0x223D656D616E20, 0xE700000000000000);
        v168 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
        if (v169)
        {
          v170 = v169;
        }

        else
        {
          v168 = 0x3E6C696E3CLL;
          v170 = 0xE500000000000000;
        }

        MEMORY[0x266771550](v168, v170);

        v34 = 0x2E3E2E2E2E22;
        v35 = 0xE600000000000000;
        goto LABEL_18;
      }

      v140 = 0;
      v141 = MEMORY[0x277D84F90];
      v142 = 32;
      v143 = MEMORY[0x277D84F90];
      while (v140 < *(v138 + 16))
      {
        v144 = *(v138 + v142 + 16);
        v216[0] = *(v138 + v142);
        v216[1] = v144;
        v145 = *(v138 + v142 + 32);
        v146 = *(v138 + v142 + 48);
        v147 = *(v138 + v142 + 80);
        v216[4] = *(v138 + v142 + 64);
        v216[5] = v147;
        v216[2] = v145;
        v216[3] = v146;
        v148 = *(v138 + v142 + 96);
        v149 = *(v138 + v142 + 112);
        v150 = *(v138 + v142 + 128);
        v217 = *(v138 + v142 + 144);
        v216[7] = v149;
        v216[8] = v150;
        v216[6] = v148;
        memmove(&__dst, (v138 + v142), 0x98uLL);
        outlined init with copy of NodeDef(v216, &v206);
        if (closure #6 in NodeDefStore.createNode(for:in:)(&__dst, v200, v198, v204, v90, a1, v203))
        {
          v212 = v224;
          v213 = v225;
          v214 = v226;
          v215 = v227;
          v208 = v220;
          v209 = v221;
          v210 = v222;
          v211 = v223;
          v206 = __dst;
          v207 = v219;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v232 = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 16) + 1, 1);
            v143 = v232;
          }

          v153 = *(v143 + 16);
          v152 = *(v143 + 24);
          if (v153 >= v152 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1);
            v143 = v232;
          }

          *(v143 + 16) = v153 + 1;
          v154 = v143 + 152 * v153;
          v155 = v207;
          *(v154 + 32) = v206;
          *(v154 + 48) = v155;
          v156 = v208;
          v157 = v209;
          v158 = v211;
          *(v154 + 96) = v210;
          *(v154 + 112) = v158;
          *(v154 + 64) = v156;
          *(v154 + 80) = v157;
          v159 = v212;
          v160 = v213;
          v161 = v214;
          *(v154 + 176) = v215;
          *(v154 + 144) = v160;
          *(v154 + 160) = v161;
          *(v154 + 128) = v159;
          a1 = v190;
          v138 = v197;
        }

        else
        {
          v212 = v224;
          v213 = v225;
          v214 = v226;
          v215 = v227;
          v208 = v220;
          v209 = v221;
          v210 = v222;
          v211 = v223;
          v206 = __dst;
          v207 = v219;
          outlined destroy of NodeDef(&v206);
        }

        ++v140;
        v142 += 152;
        if (v139 == v140)
        {

          if (!*(v143 + 16))
          {

            *&__dst = 0;
            *(&__dst + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(88);
            MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F34BA0);
            MEMORY[0x266771550](v198, v204);

            MEMORY[0x266771550](0x223D656D616E20, 0xE700000000000000);
            v171 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
            if (v172)
            {
              v173 = v172;
            }

            else
            {
              v171 = 0x3E6C696E3CLL;
              v173 = 0xE500000000000000;
            }

            MEMORY[0x266771550](v171, v173);

            MEMORY[0x266771550](0x756F203E2E2E2E22, 0xED000020666F2074);
            *&v216[0] = *(v138 + 16);
            v174 = *&v216[0];
            v175 = dispatch thunk of CustomStringConvertible.description.getter();
            v176 = v138;
            MEMORY[0x266771550](v175);

            MEMORY[0x266771550](0x616469646E616320, 0xEE005B202E736574);
            if (v174)
            {
              *&v216[0] = v141;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174, 0);
              v177 = *&v216[0];
              v178 = (v176 + 40);
              do
              {
                v180 = *(v178 - 1);
                v179 = *v178;
                *&v216[0] = v177;
                v182 = *(v177 + 16);
                v181 = *(v177 + 24);

                if (v182 >= v181 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v182 + 1, 1);
                  v177 = *&v216[0];
                }

                *(v177 + 16) = v182 + 1;
                v183 = v177 + 16 * v182;
                *(v183 + 32) = v180;
                *(v183 + 40) = v179;
                v178 += 19;
                --v174;
              }

              while (v174);
            }

            else
            {

              v177 = MEMORY[0x277D84F90];
            }

            *&v216[0] = v177;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v185 = BidirectionalCollection<>.joined(separator:)();
            v187 = v186;

            MEMORY[0x266771550](v185, v187);

            v34 = 93;
            goto LABEL_17;
          }

          if (!*(v143 + 16))
          {
            goto LABEL_119;
          }

          v162 = *(v143 + 144);
          v230[6] = *(v143 + 128);
          v230[7] = v162;
          v230[8] = *(v143 + 160);
          v231 = *(v143 + 176);
          v163 = *(v143 + 80);
          v230[2] = *(v143 + 64);
          v230[3] = v163;
          v164 = *(v143 + 112);
          v230[4] = *(v143 + 96);
          v230[5] = v164;
          v165 = *(v143 + 48);
          v230[0] = *(v143 + 32);
          v230[1] = v165;
          outlined init with copy of NodeDef(v230, &__dst);

          v166._countAndFlagsBits = 1701667182;
          v166._object = 0xE400000000000000;
          XMLElement.getRequiredAttribute(_:)(v166);
          if (v167)
          {
            return outlined destroy of NodeDef(v230);
          }

          specialized NodeDefStore.createNode(in:from:)(v230, &v228);
          result = outlined destroy of NodeDef(v230);
          v184 = v229[0];
          *v193 = v228;
          v193[1] = v184;
          *(v193 + 25) = *(v229 + 9);
          return result;
        }
      }

      goto LABEL_118;
    }

    v110 = *(a3 + 64 + 8 * v115);
    ++v112;
    if (v110)
    {
      goto LABEL_74;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);

  v212 = v224;
  v213 = v225;
  v214 = v226;
  v215 = v227;
  v208 = v220;
  v209 = v221;
  v210 = v222;
  v211 = v223;
  v206 = __dst;
  v207 = v219;
  outlined destroy of NodeDef(&v206);

  __break(1u);
  return result;
}

uint64_t specialized NodeDefStore.createNode(in:nodeDefName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(a3 + 56) + 152 * v8;
    v11 = *(v10 + 16);
    v24[0] = *v10;
    v24[1] = v11;
    v12 = *(v10 + 80);
    v14 = *(v10 + 32);
    v13 = *(v10 + 48);
    v24[4] = *(v10 + 64);
    v24[5] = v12;
    v24[2] = v14;
    v24[3] = v13;
    v16 = *(v10 + 112);
    v15 = *(v10 + 128);
    v17 = *(v10 + 96);
    v25 = *(v10 + 144);
    v24[7] = v16;
    v24[8] = v15;
    v24[6] = v17;
    outlined init with copy of NodeDef(v24, v21);
    specialized NodeDefStore.createNode(in:from:)(v24, &v22);
    result = outlined destroy of NodeDef(v24);
    v19 = v23[0];
    *a4 = v22;
    a4[1] = v19;
    *(a4 + 25) = *(v23 + 9);
  }

  else
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v20 = 28;
    *(v20 + 8) = a1;
    *(v20 + 16) = a2;
    swift_willThrow();
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NodeDef.Implementation(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t specialized static NodeDefStore.createDefault()()
{
  v301 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v0 = *(*(v301 - 8) + 64);
  MEMORY[0x28223BE20](v301);
  v292 = (&v282 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(v2);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_n(v2);
  v305 = v3;
  v306 = v4;
  v307 = v5;
  v300 = 0x8000000265F347A0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV6IOSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV6IOSpecVGMR);
  v7 = swift_allocObject();
  v291 = xmmword_265F21D90;
  *(v7 + 16) = xmmword_265F21D90;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v8 = static MaterialXDataType.float;
  *(v7 + 32) = 0x7974696361706FLL;
  *(v7 + 40) = 0xE700000000000000;
  *(v7 + 48) = v8;
  *(v7 + 56) = xmmword_265F2B0C0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0xD000000000000010;
  *(v7 + 104) = 0x8000000265F2E2F0;
  *(v7 + 112) = v8;
  *(v7 + 120) = xmmword_265F2B0D0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  v9 = swift_allocObject();
  v304 = xmmword_265F1F670;
  *(v9 + 16) = xmmword_265F1F670;
  *(v9 + 32) = 7632239;
  *(v9 + 40) = 0xE300000000000000;
  *(v9 + 48) = v8;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0;
  v546[0] = 0xD000000000000023;
  v546[1] = 0x8000000265F2E2C0;
  v546[2] = 0xD00000000000001ALL;
  v546[3] = v300;
  v546[4] = 0;
  v546[5] = 0;
  v546[6] = 0xD000000000000013;
  v546[7] = 0x8000000265F33A90;
  v546[8] = 0;
  v546[9] = 0;
  v547 = 2;
  v548 = v2;
  v549 = 0;
  v550 = 0;
  v551 = 0;
  v552 = 1;
  v553 = v7;
  v554 = v9;
  v555 = 0;
  v290 = v8;
  swift_retain_n();
  v10 = v305;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v556 = v10;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v546, 0xD000000000000023, 0x8000000265F2E2C0, isUniquelyReferenced_nonNull_native);
  v286 = v556;
  v305 = v556;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_265F24120;
  v13 = v6;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  v14 = static MaterialXDataType.realitykit.coord;
  *(v12 + 32) = 0x64726F6F63;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 48) = v14;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 1;
  v15 = one-time initialization token for u_wrap_mode;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static MaterialXDataType.realitykit.u_wrap_mode;
  *(v12 + 96) = 0x6D5F706172775F75;
  *(v12 + 104) = 0xEB0000000065646FLL;
  *(v12 + 112) = v16;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 1;
  v17 = one-time initialization token for v_wrap_mode;
  v293 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = static MaterialXDataType.realitykit.v_wrap_mode;
  *(v12 + 160) = 0x6D5F706172775F76;
  *(v12 + 168) = 0xEB0000000065646FLL;
  *(v12 + 176) = v18;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 1;
  v19 = one-time initialization token for borderColor;
  v287 = v18;

  if (v19 != -1)
  {
    swift_once();
  }

  v303 = 0x8000000265F33A90;
  v20 = static MaterialXDataType.realitykit.borderColor;
  *(v12 + 248) = 0u;
  strcpy((v12 + 224), "border_color");
  *(v12 + 237) = 0;
  *(v12 + 238) = -5120;
  *(v12 + 240) = v20;
  *(v12 + 264) = 0u;
  *(v12 + 280) = 1;
  v21 = one-time initialization token for magFilter;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static MaterialXDataType.realitykit.magFilter;
  *(v12 + 288) = 0x746C69665F67616DLL;
  *(v12 + 296) = 0xEA00000000007265;
  *(v12 + 304) = v22;
  *(v12 + 312) = 0u;
  *(v12 + 328) = 0u;
  *(v12 + 344) = 1;
  v23 = one-time initialization token for minFilter;
  *&v295 = v22;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = static MaterialXDataType.realitykit.minFilter;
  *(v12 + 352) = 0x746C69665F6E696DLL;
  *(v12 + 360) = 0xEA00000000007265;
  *(v12 + 368) = v24;
  *(v12 + 376) = 0u;
  *(v12 + 392) = 0u;
  *(v12 + 408) = 1;
  v25 = one-time initialization token for mipFilter;
  *&v294 = v24;

  if (v25 != -1)
  {
    swift_once();
  }

  v299 = v20;
  v26 = static MaterialXDataType.realitykit.mipFilter;
  *(v12 + 416) = 0x746C69665F70696DLL;
  *(v12 + 424) = 0xEA00000000007265;
  *(v12 + 432) = v26;
  *(v12 + 440) = 0u;
  *(v12 + 456) = 0u;
  *(v12 + 472) = 1;
  v27 = one-time initialization token for max_anisotropy;
  v288 = v26;

  if (v27 != -1)
  {
    swift_once();
  }

  v298 = v14;
  v28 = static MaterialXDataType.max_anisotropy;
  strcpy((v12 + 480), "max_anisotropy");
  *(v12 + 495) = -18;
  *(v12 + 496) = v28;
  *(v12 + 504) = 0u;
  *(v12 + 520) = 0u;
  *(v12 + 536) = 1;
  v29 = one-time initialization token for lod_clamp;
  v297 = v28;

  v30 = v13;
  v31 = MEMORY[0x277D84F90];
  if (v29 != -1)
  {
    swift_once();
  }

  v32 = static MaterialXDataType.lod_clamp;
  *(v12 + 544) = 0x6D616C635F646F6CLL;
  *(v12 + 552) = 0xE900000000000070;
  *(v12 + 560) = v32;
  *(v12 + 568) = 0u;
  *(v12 + 584) = 0u;
  *(v12 + 600) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = v304;
  v300 = type metadata accessor for MaterialXDataType();
  v34 = swift_allocObject();
  v296 = xmmword_265F23670;
  *(v34 + 24) = xmmword_265F23670;
  *(v34 + 40) = 0xE700000000000000;
  *(v34 + 16) = v31;
  *(v33 + 32) = 7632239;
  *(v33 + 40) = 0xE300000000000000;
  *(v33 + 48) = v34;
  *(v33 + 56) = 0u;
  *(v33 + 72) = 0u;
  *(v33 + 88) = 0;
  v536[0] = 0xD000000000000013;
  v536[1] = 0x8000000265F347C0;
  v536[2] = 0xD000000000000013;
  v536[3] = 0x8000000265F347C0;
  v536[5] = 0;
  v536[4] = 0;
  v536[6] = 0xD000000000000013;
  v536[7] = v303;
  v536[9] = 0;
  v536[8] = 0;
  v537 = 2;
  v538 = v31;
  v539 = 0;
  v541 = 0;
  v540 = 0;
  v542 = 2;
  v543 = v12;
  v544 = v33;
  v545 = 0;
  v289 = v32;

  v35 = v286;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v536, 0xD000000000000013, 0x8000000265F347C0, v36);
  v305 = v556;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_265F2B0E0;
  *(v37 + 32) = 0x64726F6F63;
  *(v37 + 40) = 0xE500000000000000;
  *(v37 + 48) = v298;
  *(v37 + 56) = 0u;
  *(v37 + 72) = 0u;
  *(v37 + 88) = 1;
  v38 = one-time initialization token for u_pixel_wrap_mode;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = static MaterialXDataType.realitykit.u_pixel_wrap_mode;
  *(v37 + 96) = 0x6D5F706172775F75;
  *(v37 + 104) = 0xEB0000000065646FLL;
  *(v37 + 112) = v39;
  *(v37 + 120) = 0u;
  *(v37 + 136) = 0u;
  *(v37 + 152) = 1;
  v40 = one-time initialization token for v_pixel_wrap_mode;
  v285 = v39;

  v41 = v299;
  if (v40 != -1)
  {
    v281 = v299;
    swift_once();
    v41 = v281;
  }

  v42 = static MaterialXDataType.realitykit.v_pixel_wrap_mode;
  *(v37 + 248) = 0u;
  v282 = 0x6D5F706172775F76;
  *(v37 + 160) = 0x6D5F706172775F76;
  *(v37 + 168) = 0xEB0000000065646FLL;
  *(v37 + 176) = v42;
  *(v37 + 184) = 0u;
  *(v37 + 200) = 0u;
  *(v37 + 216) = 1;
  strcpy((v37 + 224), "border_color");
  *(v37 + 237) = 0;
  *(v37 + 238) = -5120;
  *(v37 + 240) = v41;
  *(v37 + 264) = 0u;
  *(v37 + 280) = 1;
  v43 = one-time initialization token for filter;

  v284 = v42;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = static MaterialXDataType.realitykit.filter;
  *(v37 + 288) = 0x7265746C6966;
  *(v37 + 296) = 0xE600000000000000;
  *(v37 + 304) = v44;
  *(v37 + 312) = 0u;
  *(v37 + 328) = 0u;
  *(v37 + 344) = 1;
  strcpy((v37 + 352), "max_anisotropy");
  *(v37 + 367) = -18;
  *(v37 + 368) = v297;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 1;
  *(v37 + 416) = 0x6D616C635F646F6CLL;
  v45 = v289;
  *(v37 + 424) = 0xE900000000000070;
  *(v37 + 432) = v45;
  *(v37 + 440) = 0u;
  *(v37 + 456) = 0u;
  *(v37 + 472) = 1;
  v46 = swift_allocObject();
  *(v46 + 16) = v304;
  v47 = swift_allocObject();
  *(v47 + 24) = v296;
  *(v47 + 40) = 0xE700000000000000;
  v48 = v30;
  v49 = MEMORY[0x277D84F90];
  *(v47 + 16) = MEMORY[0x277D84F90];
  *(v46 + 32) = 7632239;
  *(v46 + 40) = 0xE300000000000000;
  *(v46 + 48) = v47;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0;
  strcpy(v519, "SamplerPixel2D");
  v519[15] = -18;
  strcpy(v520, "SamplerPixel2D");
  v520[15] = -18;
  v521 = 0;
  v522 = 0;
  v523 = 0xD000000000000013;
  v524 = v303;
  v526 = 0;
  v525 = 0;
  v527 = 2;
  v528 = v49;
  v529 = 0;
  v531 = 0;
  v530 = 0;
  v532 = 2;
  v533 = v37;
  v534 = v46;
  v535 = 0;

  v286 = v44;

  v50 = v305;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v519, 0x5072656C706D6153, 0xEE0044326C657869, v51);
  v305 = v556;
  v283 = 0x8000000265F347E0;
  v302 = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_265F26B30;
  *(v52 + 32) = 0x64726F6F63;
  *(v52 + 40) = 0xE500000000000000;
  *(v52 + 48) = v298;
  *(v52 + 56) = 0u;
  *(v52 + 72) = 0u;
  *(v52 + 88) = 1;
  *(v52 + 96) = 0x6D5F706172775F75;
  *(v52 + 104) = 0xEB0000000065646FLL;
  *(v52 + 112) = v293;
  *(v52 + 120) = 0u;
  *(v52 + 136) = 0u;
  *(v52 + 152) = 1;
  *(v52 + 160) = v282;
  *(v52 + 168) = 0xEB0000000065646FLL;
  *(v52 + 176) = v287;
  *(v52 + 184) = 0u;
  *(v52 + 200) = 0u;
  *(v52 + 216) = 1;
  v53 = one-time initialization token for w_wrap_mode;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = static MaterialXDataType.realitykit.w_wrap_mode;
  v287 = static MaterialXDataType.realitykit.w_wrap_mode;
  v293 = 0x6D5F706172775F77;
  *(v52 + 224) = 0x6D5F706172775F77;
  *(v52 + 232) = 0xEB0000000065646FLL;
  *(v52 + 240) = v54;
  *(v52 + 248) = 0u;
  *(v52 + 264) = 0u;
  *(v52 + 280) = 1;
  strcpy((v52 + 288), "border_color");
  v55 = v299;
  *(v52 + 301) = 0;
  *(v52 + 302) = -5120;
  *(v52 + 304) = v55;
  *(v52 + 312) = 0u;
  *(v52 + 328) = 0u;
  *(v52 + 344) = 1;
  *(v52 + 352) = 0x746C69665F67616DLL;
  *(v52 + 360) = 0xEA00000000007265;
  *(v52 + 368) = v295;
  *(v52 + 376) = 0u;
  *(v52 + 392) = 0u;
  *(v52 + 408) = 1;
  *(v52 + 416) = 0x746C69665F6E696DLL;
  *(v52 + 424) = 0xEA00000000007265;
  *(v52 + 432) = v294;
  *(v52 + 440) = 0u;
  *(v52 + 456) = 0u;
  *(v52 + 472) = 1;
  *(v52 + 480) = 0x746C69665F70696DLL;
  *(v52 + 488) = 0xEA00000000007265;
  *(v52 + 496) = v288;
  *(v52 + 504) = 0u;
  *(v52 + 520) = 0u;
  *(v52 + 536) = 1;
  strcpy((v52 + 544), "max_anisotropy");
  *(v52 + 559) = -18;
  v56 = v297;
  *(v52 + 560) = v297;
  *(v52 + 568) = 0u;
  *(v52 + 584) = 0u;
  *(v52 + 600) = 1;
  *(v52 + 608) = 0x6D616C635F646F6CLL;
  *(v52 + 616) = 0xE900000000000070;
  *(v52 + 624) = v289;
  *(v52 + 632) = 0u;
  *(v52 + 648) = 0u;
  *(v52 + 664) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = v304;
  v58 = swift_allocObject();
  *(v58 + 24) = v296;
  *(v58 + 40) = 0xE700000000000000;
  v59 = MEMORY[0x277D84F90];
  *(v58 + 16) = MEMORY[0x277D84F90];
  *(v57 + 32) = 7632239;
  *(v57 + 40) = 0xE300000000000000;
  *(v57 + 48) = v58;
  *(v57 + 56) = 0u;
  *(v57 + 72) = 0u;
  *(v57 + 88) = 0;
  v509[0] = 0xD000000000000013;
  v60 = v283;
  v509[1] = v283;
  v509[2] = 0xD000000000000013;
  v509[3] = v283;
  v509[5] = 0;
  v509[4] = 0;
  v509[6] = 0xD000000000000013;
  v509[7] = v303;
  v509[9] = 0;
  v509[8] = 0;
  v510 = 2;
  v511 = v59;
  v512 = 0;
  v514 = 0;
  v513 = 0;
  v515 = 2;
  v516 = v52;
  v517 = v57;
  v518 = 0;

  v61 = v56;

  v62 = v289;

  v63 = v305;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v63;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v509, 0xD000000000000013, v60, v64);
  v305 = v556;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_265F26B50;
  *(v65 + 32) = 0x64726F6F63;
  *(v65 + 40) = 0xE500000000000000;
  *(v65 + 48) = v298;
  *(v65 + 56) = 0u;
  *(v65 + 72) = 0u;
  *(v65 + 88) = 1;
  *(v65 + 96) = 0x6D5F706172775F75;
  *(v65 + 104) = 0xEB0000000065646FLL;
  v66 = v284;
  *(v65 + 112) = v285;
  *(v65 + 120) = 0u;
  *(v65 + 136) = 0u;
  *(v65 + 152) = 1;
  *(v65 + 160) = 0x6D5F706172775F76;
  *(v65 + 168) = 0xEB0000000065646FLL;
  *(v65 + 176) = v66;
  *(v65 + 184) = 0u;
  *(v65 + 200) = 0u;
  *(v65 + 216) = 1;
  v67 = one-time initialization token for w_pixel_wrap_mode;

  v68 = v62;
  if (v67 != -1)
  {
    swift_once();
    v68 = v62;
  }

  v69 = static MaterialXDataType.realitykit.w_pixel_wrap_mode;
  v298 = static MaterialXDataType.realitykit.w_pixel_wrap_mode;
  *(v65 + 224) = v293;
  *(v65 + 232) = 0xEB0000000065646FLL;
  *(v65 + 240) = v69;
  *(v65 + 248) = 0u;
  *(v65 + 264) = 0u;
  *(v65 + 280) = 1;
  strcpy((v65 + 288), "border_color");
  *(v65 + 301) = 0;
  *(v65 + 302) = -5120;
  *(v65 + 304) = v55;
  *(v65 + 312) = 0u;
  *(v65 + 328) = 0u;
  *(v65 + 344) = 1;
  *(v65 + 352) = 0x7265746C6966;
  *(v65 + 360) = 0xE600000000000000;
  *(v65 + 368) = v286;
  *(v65 + 376) = 0u;
  *(v65 + 392) = 0u;
  *(v65 + 408) = 1;
  strcpy((v65 + 416), "max_anisotropy");
  *(v65 + 431) = -18;
  *(v65 + 432) = v61;
  *(v65 + 440) = 0u;
  *(v65 + 456) = 0u;
  *(v65 + 472) = 1;
  *(v65 + 480) = 0x6D616C635F646F6CLL;
  *(v65 + 488) = 0xE900000000000070;
  *(v65 + 496) = v68;
  *(v65 + 504) = 0u;
  *(v65 + 520) = 0u;
  *(v65 + 536) = 1;
  v70 = swift_allocObject();
  *(v70 + 16) = v304;
  v71 = swift_allocObject();
  *(v71 + 24) = v296;
  *(v71 + 40) = 0xE700000000000000;
  v72 = MEMORY[0x277D84F90];
  *(v71 + 16) = MEMORY[0x277D84F90];
  *(v70 + 32) = 7632239;
  *(v70 + 40) = 0xE300000000000000;
  *(v70 + 48) = v71;
  *(v70 + 56) = 0u;
  *(v70 + 72) = 0u;
  *(v70 + 88) = 0;
  strcpy(v492, "SamplerPixel3D");
  v492[15] = -18;
  strcpy(v493, "SamplerPixel3D");
  v493[15] = -18;
  v495 = 0;
  v494 = 0;
  v496 = 0xD000000000000013;
  v497 = v303;
  v499 = 0;
  v498 = 0;
  v500 = 2;
  v501 = v72;
  v502 = 0;
  v504 = 0;
  v503 = 0;
  v505 = 2;
  v506 = v65;
  v507 = v70;
  v508 = 0;
  swift_retain_n();
  swift_retain_n();

  v73 = v305;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v73;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v492, 0x5072656C706D6153, 0xEE0044336C657869, v74);
  v75 = v556;
  v305 = v556;
  v299 = 0x8000000265F2D870;
  v76 = swift_allocObject();
  *(v76 + 16) = v304;
  v77 = MEMORY[0x277D84F90];
  if (one-time initialization token for filename != -1)
  {
    swift_once();
  }

  v78 = static MaterialXDataType.filename;
  *(v76 + 32) = 1701603686;
  *(v76 + 40) = 0xE400000000000000;
  *(v76 + 48) = v78;
  *(v76 + 56) = 0u;
  *(v76 + 72) = 0u;
  *(v76 + 88) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v304;
  v80 = swift_allocObject();
  v296 = xmmword_265F23620;
  *(v80 + 24) = xmmword_265F23620;
  *(v80 + 40) = 0xED0000666C616864;
  *(v80 + 16) = v77;
  *(v79 + 32) = 7632239;
  *(v79 + 40) = 0xE300000000000000;
  *(v79 + 48) = v80;
  *(v79 + 56) = 0u;
  *(v79 + 72) = 0u;
  *(v79 + 88) = 0;
  v482[0] = 0xD00000000000001ALL;
  v482[1] = 0x8000000265F34800;
  v482[2] = 0xD000000000000013;
  v81 = v299;
  v482[3] = v299;
  v482[5] = 0;
  v482[4] = 0;
  v482[6] = 0xD000000000000013;
  v482[7] = v303;
  v482[9] = 0;
  v482[8] = 0;
  v483 = 2;
  v484 = v77;
  v485 = 0;
  v487 = 0;
  v486 = 0;
  v488 = 2;
  v489 = v76;
  v490 = v79;
  v491 = 0;
  swift_retain_n();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v75;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v482, 0xD00000000000001ALL, 0x8000000265F34800, v82);
  v305 = v556;
  v83 = swift_allocObject();
  *(v83 + 16) = v304;
  *(v83 + 32) = 1701603686;
  *(v83 + 40) = 0xE400000000000000;
  *(v83 + 48) = v78;
  *(v83 + 56) = 0u;
  *(v83 + 72) = 0u;
  *(v83 + 88) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v304;
  v85 = swift_allocObject();
  *(v85 + 24) = xmmword_265F23590;
  *(v85 + 40) = 0x8000000265F30380;
  v86 = MEMORY[0x277D84F90];
  *(v85 + 16) = MEMORY[0x277D84F90];
  *(v84 + 32) = 7632239;
  *(v84 + 40) = 0xE300000000000000;
  *(v84 + 48) = v85;
  *(v84 + 56) = 0u;
  *(v84 + 72) = 0u;
  *(v84 + 88) = 0;
  v472[0] = 0xD000000000000021;
  v472[1] = 0x8000000265F34820;
  v472[2] = 0xD000000000000013;
  v472[3] = v81;
  v472[5] = 0;
  v472[4] = 0;
  v472[6] = 0xD000000000000013;
  v472[7] = v303;
  v472[9] = 0;
  v472[8] = 0;
  v473 = 2;
  v474 = v86;
  v475 = 0;
  v477 = 0;
  v476 = 0;
  v478 = 2;
  v479 = v83;
  v480 = v84;
  v481 = 0;

  v87 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v472, 0xD000000000000021, 0x8000000265F34820, v87);
  v88 = v556;
  v305 = v556;
  v89 = swift_allocObject();
  *(v89 + 16) = v304;
  *(v89 + 32) = 1701603686;
  *(v89 + 40) = 0xE400000000000000;
  *(v89 + 48) = v78;
  *(v89 + 56) = 0u;
  *(v89 + 72) = 0u;
  *(v89 + 88) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v304;
  v91 = swift_allocObject();
  *(v91 + 24) = v296;
  *(v91 + 40) = 0xEE0074616F6C6664;
  *(v91 + 16) = MEMORY[0x277D84F90];
  *(v90 + 32) = 7632239;
  *(v90 + 40) = 0xE300000000000000;
  *(v90 + 48) = v91;
  *(v90 + 56) = 0u;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0;
  v462[0] = 0xD00000000000001BLL;
  v462[1] = 0x8000000265F34850;
  v462[2] = 0xD000000000000013;
  v92 = v299;
  v462[3] = v299;
  v462[5] = 0;
  v462[4] = 0;
  v462[6] = 0xD000000000000013;
  v93 = v303;
  v462[7] = v303;
  v462[9] = 0;
  v462[8] = 0;
  v463 = 2;
  v464 = MEMORY[0x277D84F90];
  v465 = 0;
  v467 = 0;
  v466 = 0;
  v468 = 2;
  v469 = v89;
  v470 = v90;
  v471 = 0;
  v298 = v78;

  v94 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v88;
  v288 = 0xD00000000000001BLL;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v462, 0xD00000000000001BLL, 0x8000000265F34850, v94);
  v305 = v556;
  v95 = swift_allocObject();
  *(v95 + 16) = v304;
  *(v95 + 32) = 1701603686;
  *(v95 + 40) = 0xE400000000000000;
  *(v95 + 48) = v78;
  *(v95 + 56) = 0u;
  *(v95 + 72) = 0u;
  *(v95 + 88) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v304;
  v97 = swift_allocObject();
  *(v97 + 24) = xmmword_265F23630;
  *(v97 + 40) = 0x8000000265F30360;
  *(v97 + 16) = MEMORY[0x277D84F90];
  *(v96 + 32) = 7632239;
  *(v96 + 40) = 0xE300000000000000;
  *(v96 + 48) = v97;
  *(v96 + 56) = 0u;
  *(v96 + 72) = 0u;
  *(v96 + 88) = 0;
  v452[0] = 0xD000000000000022;
  v452[1] = 0x8000000265F34870;
  v452[2] = 0xD000000000000013;
  v452[3] = v92;
  v452[5] = 0;
  v452[4] = 0;
  v452[6] = 0xD000000000000013;
  v452[7] = v93;
  v452[9] = 0;
  v452[8] = 0;
  v453 = 2;
  v454 = MEMORY[0x277D84F90];
  v455 = 0;
  v457 = 0;
  v456 = 0;
  v458 = 2;
  v459 = v95;
  v460 = v96;
  v461 = 0;
  v98 = v298;

  v99 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v452, 0xD000000000000022, 0x8000000265F34870, v99);
  v100 = v556;
  v305 = v556;
  v101 = swift_allocObject();
  *(v101 + 16) = v304;
  *(v101 + 32) = 1701603686;
  *(v101 + 40) = 0xE400000000000000;
  *(v101 + 48) = v98;
  *(v101 + 56) = 0u;
  *(v101 + 72) = 0u;
  *(v101 + 88) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v304;
  v103 = swift_allocObject();
  v294 = xmmword_265F23650;
  *(v103 + 24) = xmmword_265F23650;
  *(v103 + 40) = 0xED0000666C616864;
  *(v103 + 16) = MEMORY[0x277D84F90];
  *(v102 + 32) = 7632239;
  *(v102 + 40) = 0xE300000000000000;
  *(v102 + 48) = v103;
  *(v102 + 56) = 0u;
  *(v102 + 72) = 0u;
  *(v102 + 88) = 0;
  v442[0] = 0xD00000000000001CLL;
  *&v295 = 0xD00000000000001CLL;
  v442[1] = 0x8000000265F348A0;
  v442[2] = 0xD000000000000013;
  v104 = v299;
  v442[3] = v299;
  v442[5] = 0;
  v442[4] = 0;
  v442[6] = 0xD000000000000013;
  v105 = v303;
  v442[7] = v303;
  v442[9] = 0;
  v442[8] = 0;
  v443 = 2;
  v444 = MEMORY[0x277D84F90];
  v445 = 0;
  v447 = 0;
  v446 = 0;
  v448 = 2;
  v449 = v101;
  v450 = v102;
  v451 = 0;
  v106 = v298;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v100;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v442, 0xD00000000000001CLL, 0x8000000265F348A0, v107);
  v108 = v556;
  v305 = v556;
  v109 = swift_allocObject();
  *(v109 + 16) = v304;
  *(v109 + 32) = 1701603686;
  *(v109 + 40) = 0xE400000000000000;
  *(v109 + 48) = v106;
  *(v109 + 56) = 0u;
  *(v109 + 72) = 0u;
  *(v109 + 88) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v304;
  v111 = swift_allocObject();
  *(v111 + 24) = v294;
  *(v111 + 40) = 0xEE0074616F6C6664;
  *(v111 + 16) = MEMORY[0x277D84F90];
  *(v110 + 32) = 7632239;
  *(v110 + 40) = 0xE300000000000000;
  *(v110 + 48) = v111;
  *(v110 + 56) = 0u;
  *(v110 + 72) = 0u;
  *(v110 + 88) = 0;
  v432[0] = 0xD00000000000001DLL;
  v432[1] = 0x8000000265F348C0;
  v432[2] = 0xD000000000000013;
  v432[3] = v104;
  v432[5] = 0;
  v432[4] = 0;
  v432[6] = 0xD000000000000013;
  v432[7] = v105;
  v432[9] = 0;
  v432[8] = 0;
  v433 = 2;
  v434 = MEMORY[0x277D84F90];
  v435 = 0;
  v437 = 0;
  v436 = 0;
  v438 = 2;
  v439 = v109;
  v440 = v110;
  v441 = 0;
  v112 = v298;

  v113 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v108;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v432, 0xD00000000000001DLL, 0x8000000265F348C0, v113);
  v114 = v556;
  v305 = v556;
  v115 = swift_allocObject();
  *(v115 + 16) = v304;
  *(v115 + 32) = 1701603686;
  *(v115 + 40) = 0xE400000000000000;
  *(v115 + 48) = v112;
  *(v115 + 56) = 0u;
  *(v115 + 72) = 0u;
  *(v115 + 88) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v304;
  v117 = swift_allocObject();
  *(v117 + 24) = xmmword_265F23660;
  *(v117 + 40) = 0xEF666C6168656275;
  *(v117 + 16) = MEMORY[0x277D84F90];
  *(v116 + 32) = 7632239;
  *(v116 + 40) = 0xE300000000000000;
  *(v116 + 48) = v117;
  *(v116 + 56) = 0u;
  *(v116 + 72) = 0u;
  *(v116 + 88) = 0;
  v422[0] = 0xD00000000000001ELL;
  v422[1] = 0x8000000265F348E0;
  v422[2] = 0xD000000000000013;
  v118 = v299;
  v422[3] = v299;
  v422[5] = 0;
  v422[4] = 0;
  v422[6] = 0xD000000000000013;
  v422[7] = v303;
  v422[9] = 0;
  v422[8] = 0;
  v423 = 2;
  v424 = MEMORY[0x277D84F90];
  v425 = 0;
  v427 = 0;
  v426 = 0;
  v428 = 2;
  v429 = v115;
  v430 = v116;
  v431 = 0;
  v119 = v298;

  v120 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v114;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v422, 0xD00000000000001ELL, 0x8000000265F348E0, v120);
  *&v294 = v556;
  v305 = v556;
  v293 = 0x8000000265F34900;
  v121 = swift_allocObject();
  *(v121 + 16) = v304;
  *(v121 + 32) = 1701603686;
  *(v121 + 40) = 0xE400000000000000;
  *(v121 + 48) = v119;
  *(v121 + 56) = 0u;
  *(v121 + 72) = 0u;
  *(v121 + 88) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v304;
  v123 = swift_allocObject();
  *(v123 + 24) = xmmword_265F235D0;
  *(v123 + 40) = 0x8000000265F30320;
  *(v123 + 16) = MEMORY[0x277D84F90];
  *(v122 + 32) = 7632239;
  *(v122 + 40) = 0xE300000000000000;
  *(v122 + 48) = v123;
  *(v122 + 56) = 0u;
  *(v122 + 72) = 0u;
  *(v122 + 88) = 0;
  v412[0] = 0xD00000000000001FLL;
  v124 = v293;
  v412[1] = v293;
  v412[2] = 0xD000000000000013;
  v412[3] = v118;
  v412[5] = 0;
  v412[4] = 0;
  v412[6] = 0xD000000000000013;
  v125 = v303;
  v412[7] = v303;
  v412[9] = 0;
  v412[8] = 0;
  v413 = 2;
  v414 = MEMORY[0x277D84F90];
  v415 = 0;
  v417 = 0;
  v416 = 0;
  v418 = 2;
  v419 = v121;
  v420 = v122;
  v421 = 0;

  v126 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v127 = MEMORY[0x277D84F90];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v412, 0xD00000000000001FLL, v124, v126);
  v128 = v556;
  v305 = v556;
  v129 = swift_allocObject();
  *(v129 + 16) = v304;
  *(v129 + 32) = 1701603686;
  *(v129 + 40) = 0xE400000000000000;
  *(v129 + 48) = v119;
  *(v129 + 56) = 0u;
  *(v129 + 72) = 0u;
  *(v129 + 88) = 0;
  v130 = swift_allocObject();
  *(v130 + 16) = v304;
  v131 = swift_allocObject();
  *(v131 + 24) = v296;
  *(v131 + 40) = 0xEC000000746E6964;
  *(v131 + 16) = v127;
  *(v130 + 32) = 7632239;
  *(v130 + 40) = 0xE300000000000000;
  *(v130 + 48) = v131;
  *(v130 + 56) = 0u;
  *(v130 + 72) = 0u;
  *(v130 + 88) = 0;
  v132 = v295;
  v402[0] = v295;
  v402[1] = 0x8000000265F34920;
  v402[2] = 0xD000000000000013;
  v402[3] = v299;
  v402[4] = 0;
  v402[5] = 0;
  v402[6] = 0xD000000000000013;
  v402[7] = v125;
  v402[9] = 0;
  v402[8] = 0;
  v403 = 2;
  v404 = v127;
  v405 = 0;
  v407 = 0;
  v406 = 0;
  v408 = 2;
  v409 = v129;
  v410 = v130;
  v411 = 0;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v128;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v402, v132, 0x8000000265F34920, v133);
  v134 = v556;
  v305 = v556;
  v135 = swift_allocObject();
  *(v135 + 16) = v304;
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  v136 = static MaterialXDataType.integer;
  *(v135 + 32) = 28265;
  *(v135 + 40) = 0xE200000000000000;
  *(v135 + 48) = v136;
  *(v135 + 56) = 0u;
  *(v135 + 72) = 0u;
  *(v135 + 88) = 1;
  v137 = swift_allocObject();
  *(v137 + 16) = v304;
  *(v137 + 32) = 7632239;
  *(v137 + 40) = 0xE300000000000000;
  *(v137 + 48) = v297;
  *(v137 + 56) = 0u;
  *(v137 + 72) = 0u;
  *(v137 + 88) = 0;
  v392[0] = 0xD000000000000017;
  v392[1] = 0x8000000265F34940;
  v392[2] = 0xD000000000000017;
  v287 = 0xD000000000000017;
  v392[3] = 0x8000000265F34940;
  v392[5] = 0;
  v392[4] = 0;
  v392[6] = 0xD000000000000013;
  v392[7] = v125;
  v392[9] = 0;
  v392[8] = 0;
  v393 = 2;
  v394 = MEMORY[0x277D84F90];
  v395 = 0;
  v396 = 0;
  v397 = 0;
  v398 = 2;
  v399 = v135;
  v400 = v137;
  v401 = 0;

  v138 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v134;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v392, 0xD000000000000017, 0x8000000265F34940, v138);
  v305 = v556;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV14ImplementationVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV14ImplementationVGMR);
  v140 = type metadata accessor for NodeDef.Implementation(0);
  v141 = *(v140 - 8);
  v142 = *(v141 + 72);
  v143 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v297 = *(v141 + 80);
  v298 = v142;
  v299 = v139;
  v144 = swift_allocObject();
  *(v144 + 16) = v304;
  v293 = v143;
  v145 = (v144 + v143);
  v285 = 0x8000000265F34960;
  v286 = 0x8000000265F34940;
  v146 = v292;
  *v292 = 0x73696E615F78616DLL;
  v146[1] = 0xEE0079706F72746FLL;
  swift_storeEnumTagMultiPayload();
  *&v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v147 = swift_allocObject();
  v295 = xmmword_265F20CD0;
  *(v147 + 16) = xmmword_265F20CD0;
  type metadata accessor for MaterialXTarget();
  *&v294 = swift_initStaticObject();
  *(v147 + 32) = v294;
  v148 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v147);
  swift_setDeallocating();
  v149 = *(v147 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v150 = v285;
  *v145 = v288;
  v145[1] = v150;
  outlined init with take of NodeDef.Implementation(v146, v145 + *(v140 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  v300 = v140;
  *(v145 + *(v140 + 24)) = v148;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, v287, v286, v151);
  v307 = v556;
  v152 = swift_allocObject();
  *(v152 + 16) = v304;
  *(v152 + 32) = 28265;
  v153 = v290;
  *(v152 + 40) = 0xE200000000000000;
  *(v152 + 48) = v153;
  *(v152 + 56) = 0u;
  *(v152 + 72) = 0u;
  *(v152 + 88) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v304;
  v155 = one-time initialization token for bias;

  if (v155 != -1)
  {
    swift_once();
  }

  v156 = static MaterialXDataType.bias;
  *(v154 + 32) = 7632239;
  *(v154 + 40) = 0xE300000000000000;
  *(v154 + 48) = v156;
  *(v154 + 56) = 0u;
  *(v154 + 72) = 0u;
  *(v154 + 88) = 0;
  strcpy(v375, "INTERNAL_bias");
  v375[7] = -4864;
  strcpy(v376, "INTERNAL_bias");
  v376[7] = -4864;
  v377 = 0;
  v378 = 0;
  v379 = 0xD000000000000013;
  v380 = v303;
  v382 = 0;
  v381 = 0;
  v383 = 2;
  v384 = MEMORY[0x277D84F90];
  v385 = 0;
  v386 = 0;
  v387 = 0;
  v388 = 2;
  v389 = v152;
  v390 = v154;
  v391 = 0;

  v157 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v375, 0x4C414E5245544E49, 0xED0000736169625FLL, v157);
  v305 = v556;
  v158 = v293;
  v159 = swift_allocObject();
  *(v159 + 16) = v304;
  v160 = (v159 + v158);
  v288 = 0xD000000000000012;
  *v146 = 0xD000000000000012;
  v146[1] = 0x8000000265F30950;
  swift_storeEnumTagMultiPayload();
  v161 = swift_allocObject();
  *(v161 + 16) = v295;
  *(v161 + 32) = v294;
  v162 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v161);
  swift_setDeallocating();
  v163 = *(v161 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v160 = 0xD000000000000011;
  v160[1] = 0x8000000265F34980;
  v164 = v300;
  outlined init with take of NodeDef.Implementation(v146, v160 + *(v300 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v160 + *(v164 + 24)) = v162;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, 0x4C414E5245544E49, 0xED0000736169625FLL, v165);
  v307 = v556;
  v166 = swift_allocObject();
  *(v166 + 16) = v304;
  *(v166 + 32) = 28265;
  v167 = v290;
  *(v166 + 40) = 0xE200000000000000;
  *(v166 + 48) = v167;
  *(v166 + 56) = 0u;
  *(v166 + 72) = 0u;
  *(v166 + 88) = 0;
  v168 = swift_allocObject();
  *(v168 + 16) = v304;
  v169 = one-time initialization token for level;

  if (v169 != -1)
  {
    swift_once();
  }

  v170 = static MaterialXDataType.level;
  *(v168 + 32) = 7632239;
  *(v168 + 40) = 0xE300000000000000;
  *(v168 + 48) = v170;
  *(v168 + 56) = 0u;
  *(v168 + 72) = 0u;
  *(v168 + 88) = 0;
  strcpy(v358, "INTERNAL_level");
  v358[15] = -18;
  strcpy(v359, "INTERNAL_level");
  v359[15] = -18;
  v361 = 0;
  v360 = 0;
  v362 = 0xD000000000000013;
  v363 = v303;
  v365 = 0;
  v364 = 0;
  v366 = 2;
  v367 = MEMORY[0x277D84F90];
  v368 = 0;
  v369 = 0;
  v370 = 0;
  v371 = 2;
  v372 = v166;
  v373 = v168;
  v374 = 0;

  v171 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v358, 0x4C414E5245544E49, 0xEE006C6576656C5FLL, v171);
  v305 = v556;
  v172 = v293;
  v173 = swift_allocObject();
  *(v173 + 16) = v304;
  v174 = (v173 + v172);
  *v146 = 0xD000000000000013;
  v146[1] = 0x8000000265F30910;
  swift_storeEnumTagMultiPayload();
  v175 = swift_allocObject();
  *(v175 + 16) = v295;
  *(v175 + 32) = v294;
  v176 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v175);
  swift_setDeallocating();
  v177 = *(v175 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v174 = v288;
  v174[1] = 0x8000000265F349A0;
  v178 = v300;
  outlined init with take of NodeDef.Implementation(v146, v174 + *(v300 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v174 + *(v178 + 24)) = v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v173, 0x4C414E5245544E49, 0xEE006C6576656C5FLL, v179);
  v307 = v556;
  v180 = swift_allocObject();
  *(v180 + 16) = v304;
  *(v180 + 32) = 28265;
  *(v180 + 40) = 0xE200000000000000;
  *(v180 + 48) = v290;
  *(v180 + 56) = 0u;
  *(v180 + 72) = 0u;
  *(v180 + 88) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = v304;
  v182 = one-time initialization token for min_lod_clamp;

  if (v182 != -1)
  {
    swift_once();
  }

  v183 = static MaterialXDataType.min_lod_clamp;
  *(v181 + 32) = 7632239;
  *(v181 + 40) = 0xE300000000000000;
  *(v181 + 48) = v183;
  *(v181 + 56) = 0u;
  *(v181 + 72) = 0u;
  *(v181 + 88) = 0;
  v348[0] = 0xD000000000000016;
  v348[1] = 0x8000000265F349C0;
  v348[2] = 0xD000000000000016;
  v287 = 0xD000000000000016;
  v348[3] = 0x8000000265F349C0;
  v348[5] = 0;
  v348[4] = 0;
  v348[6] = 0xD000000000000013;
  v348[7] = v303;
  v348[9] = 0;
  v348[8] = 0;
  v349 = 2;
  v350 = MEMORY[0x277D84F90];
  v351 = 0;
  v352 = 0;
  v353 = 0;
  v354 = 2;
  v355 = v180;
  v356 = v181;
  v357 = 0;

  v184 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v305 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v348, 0xD000000000000016, 0x8000000265F349C0, v184);
  v305 = v556;
  v185 = v293;
  v186 = swift_allocObject();
  *(v186 + 16) = v304;
  v187 = (v186 + v185);
  *v146 = 0xD00000000000001BLL;
  v146[1] = 0x8000000265F30930;
  swift_storeEnumTagMultiPayload();
  v188 = swift_allocObject();
  *(v188 + 16) = v295;
  v285 = 0x8000000265F349C0;
  *(v188 + 32) = v294;
  v189 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v188);
  swift_setDeallocating();
  v190 = *(v188 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v187 = 0xD00000000000001ALL;
  v187[1] = 0x8000000265F349E0;
  v191 = *(v300 + 20);
  v192 = v300;
  v286 = type metadata accessor for NodeDef.Implementation.Kind;
  outlined init with take of NodeDef.Implementation(v146, v186 + v185 + v191, type metadata accessor for NodeDef.Implementation.Kind);
  *(v187 + *(v192 + 24)) = v189;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v186, v287, v285, v193);
  v307 = v556;
  v194 = swift_allocObject();
  *(v194 + 16) = v291;
  *(v194 + 32) = 7235949;
  *(v194 + 40) = 0xE300000000000000;
  v195 = v290;
  *(v194 + 48) = v290;
  *(v194 + 56) = 0u;
  *(v194 + 72) = 0u;
  *(v194 + 88) = 1;
  *(v194 + 96) = 7889261;
  *(v194 + 104) = 0xE300000000000000;
  *(v194 + 112) = v195;
  *(v194 + 120) = 0u;
  *(v194 + 136) = 0u;
  *(v194 + 152) = 1;
  v196 = swift_allocObject();
  *(v196 + 16) = v304;
  *(v196 + 32) = 7632239;
  *(v196 + 40) = 0xE300000000000000;
  v197 = v288;
  *(v196 + 48) = v289;
  *(v196 + 56) = 0u;
  *(v196 + 72) = 0u;
  *(v196 + 88) = 0;
  v338[0] = v197;
  v338[1] = 0x8000000265F34A00;
  v338[2] = v197;
  v338[3] = 0x8000000265F34A00;
  v285 = 0x8000000265F34A00;
  v338[5] = 0;
  v338[4] = 0;
  v338[6] = 0xD000000000000013;
  v338[7] = v303;
  v338[9] = 0;
  v338[8] = 0;
  v339 = 2;
  v340 = MEMORY[0x277D84F90];
  v341 = 0;
  v342 = 0;
  v343 = 0;
  v344 = 2;
  v345 = v194;
  v346 = v196;
  v347 = 0;

  v198 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v305 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v338, v197, 0x8000000265F34A00, v198);
  v305 = v556;
  v199 = swift_allocObject();
  *(v199 + 16) = v304;
  v200 = (v199 + v185);
  v201 = v292;
  *v292 = 0x6D616C635F646F6CLL;
  *(v201 + 8) = 0xE900000000000070;
  swift_storeEnumTagMultiPayload();
  v202 = swift_allocObject();
  *(v202 + 16) = v295;
  *(v202 + 32) = v294;
  v203 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v202);
  swift_setDeallocating();
  v204 = *(v202 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v200 = v287;
  v200[1] = 0x8000000265F34A20;
  v205 = v300;
  outlined init with take of NodeDef.Implementation(v201, v199 + v185 + *(v300 + 20), v286);
  *(v200 + *(v205 + 24)) = v203;
  v206 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v199, v197, v285, v206);
  v307 = v556;
  v207 = swift_allocObject();
  *(v207 + 16) = v291;
  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  v208 = static MaterialXDataType.vector2;
  *(v207 + 32) = 2019840100;
  *(v207 + 40) = 0xE400000000000000;
  *(v207 + 48) = v208;
  *(v207 + 56) = 0u;
  *(v207 + 72) = 0u;
  *(v207 + 88) = 0;
  *(v207 + 96) = 2036617316;
  *(v207 + 104) = 0xE400000000000000;
  *(v207 + 112) = v208;
  *(v207 + 120) = 0u;
  *(v207 + 136) = 0u;
  *(v207 + 152) = 0;
  v209 = swift_allocObject();
  *(v209 + 16) = v304;
  v210 = one-time initialization token for gradient2d;
  swift_retain_n();
  if (v210 != -1)
  {
    swift_once();
  }

  v211 = static MaterialXDataType.gradient2d;
  *(v209 + 32) = 7632239;
  *(v209 + 40) = 0xE300000000000000;
  *(v209 + 48) = v211;
  *(v209 + 56) = 0u;
  *(v209 + 72) = 0u;
  *(v209 + 88) = 0;
  v328[0] = 0xD000000000000013;
  v328[1] = 0x8000000265F34A40;
  v328[2] = 0xD000000000000013;
  v328[3] = 0x8000000265F34A40;
  v328[5] = 0;
  v328[4] = 0;
  v328[6] = 0xD000000000000013;
  v328[7] = v303;
  v328[9] = 0;
  v328[8] = 0;
  v329 = 2;
  v330 = MEMORY[0x277D84F90];
  v331 = 0;
  v332 = 0;
  v333 = 0;
  v334 = 2;
  v335 = v207;
  v336 = v209;
  v337 = 0;

  v212 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v305 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v328, 0xD000000000000013, 0x8000000265F34A40, v212);
  v305 = v556;
  v213 = v293;
  v214 = swift_allocObject();
  *(v214 + 16) = v304;
  v290 = 0x8000000265F34A40;
  v215 = (v214 + v213);
  v216 = v292;
  *v292 = 0xD000000000000018;
  *(v216 + 8) = 0x8000000265F308F0;
  swift_storeEnumTagMultiPayload();
  v217 = swift_allocObject();
  *(v217 + 16) = v295;
  *(v217 + 32) = v294;
  v218 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v217);
  swift_setDeallocating();
  v219 = *(v217 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v215 = 0xD000000000000017;
  v215[1] = 0x8000000265F34A60;
  v220 = v300;
  outlined init with take of NodeDef.Implementation(v216, v215 + *(v300 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v215 + *(v220 + 24)) = v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v214, 0xD000000000000013, v290, v221);
  v307 = v556;
  v222 = swift_allocObject();
  *(v222 + 16) = v291;
  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  v223 = static MaterialXDataType.vector3;
  *(v222 + 32) = 2019840100;
  *(v222 + 40) = 0xE400000000000000;
  *(v222 + 48) = v223;
  *(v222 + 56) = 0u;
  *(v222 + 72) = 0u;
  *(v222 + 88) = 0;
  *(v222 + 96) = 2036617316;
  *(v222 + 104) = 0xE400000000000000;
  *(v222 + 112) = v223;
  *(v222 + 120) = 0u;
  *(v222 + 136) = 0u;
  *(v222 + 152) = 0;
  v224 = swift_allocObject();
  *(v224 + 16) = v304;
  v225 = one-time initialization token for gradient3d;
  swift_retain_n();
  if (v225 != -1)
  {
    swift_once();
  }

  v226 = static MaterialXDataType.gradient3d;
  *(v224 + 32) = 7632239;
  *(v224 + 40) = 0xE300000000000000;
  *(v224 + 48) = v226;
  *(v224 + 56) = 0u;
  *(v224 + 72) = 0u;
  *(v224 + 88) = 0;
  v318[0] = 0xD000000000000013;
  v318[1] = 0x8000000265F34A80;
  v318[2] = 0xD000000000000013;
  v318[3] = 0x8000000265F34A80;
  v318[4] = 0;
  v318[5] = 0;
  v318[6] = 0xD000000000000013;
  v318[7] = v303;
  v318[8] = 0;
  v318[9] = 0;
  v319 = 2;
  v320 = MEMORY[0x277D84F90];
  v321 = 0;
  v322 = 0;
  v323 = 0;
  v324 = 2;
  v325 = v222;
  v326 = v224;
  v327 = 0;

  v227 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v305 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v318, 0xD000000000000013, 0x8000000265F34A80, v227);
  v305 = v556;
  v228 = v293;
  v229 = swift_allocObject();
  *(v229 + 16) = v304;
  v230 = (v229 + v228);
  v290 = 0x8000000265F34A80;
  v231 = v292;
  *v292 = 0xD000000000000018;
  v231[1] = 0x8000000265F308D0;
  swift_storeEnumTagMultiPayload();
  v232 = swift_allocObject();
  *(v232 + 16) = v295;
  *(v232 + 32) = v294;
  v233 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v232);
  swift_setDeallocating();
  v234 = *(v232 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v230 = 0xD000000000000017;
  v230[1] = 0x8000000265F34AA0;
  v235 = v300;
  outlined init with take of NodeDef.Implementation(v231, v230 + *(v300 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v230 + *(v235 + 24)) = v233;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v229, 0xD000000000000013, v290, v236);
  v307 = v556;
  v237 = swift_allocObject();
  *(v237 + 16) = v291;
  *(v237 + 32) = 2019840100;
  *(v237 + 40) = 0xE400000000000000;
  *(v237 + 48) = v223;
  *(v237 + 56) = 0u;
  *(v237 + 72) = 0u;
  *(v237 + 88) = 0;
  *(v237 + 96) = 2036617316;
  *(v237 + 104) = 0xE400000000000000;
  *(v237 + 112) = v223;
  *(v237 + 120) = 0u;
  *(v237 + 136) = 0u;
  *(v237 + 152) = 0;
  v238 = swift_allocObject();
  *(v238 + 16) = v304;
  v239 = one-time initialization token for gradientcube;

  if (v239 != -1)
  {
    swift_once();
  }

  v240 = static MaterialXDataType.gradientcube;
  *(v238 + 32) = 7632239;
  *(v238 + 40) = 0xE300000000000000;
  *(v238 + 48) = v240;
  *(v238 + 56) = 0u;
  *(v238 + 72) = 0u;
  *(v238 + 88) = 0;
  v308[0] = 0xD000000000000015;
  v308[1] = 0x8000000265F34AC0;
  v308[2] = 0xD000000000000015;
  v308[3] = 0x8000000265F34AC0;
  v308[4] = 0;
  v308[5] = 0;
  v308[6] = 0xD000000000000013;
  v308[7] = v303;
  v308[8] = 0;
  v308[9] = 0;
  v309 = 2;
  v310 = MEMORY[0x277D84F90];
  v311 = 0;
  v312 = 0;
  v313 = 0;
  v314 = 2;
  v315 = v237;
  v316 = v238;
  v317 = 0;

  v241 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v305;
  v305 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v308, 0xD000000000000015, 0x8000000265F34AC0, v241);
  v305 = v556;
  v242 = v293;
  v243 = swift_allocObject();
  *(v243 + 16) = v304;
  v244 = (v243 + v242);
  *v231 = 0xD00000000000001ALL;
  v231[1] = 0x8000000265F308B0;
  swift_storeEnumTagMultiPayload();
  v245 = swift_allocObject();
  *(v245 + 16) = v295;
  *(v245 + 32) = v294;
  v246 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v245);
  *&v304 = 0x8000000265F34AC0;
  v247 = v246;
  swift_setDeallocating();
  v248 = *(v245 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v244 = 0xD000000000000019;
  v244[1] = 0x8000000265F34AE0;
  v249 = v300;
  outlined init with take of NodeDef.Implementation(v231, v244 + *(v300 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v244 + *(v249 + 24)) = v247;
  v250 = swift_isUniquelyReferenced_nonNull_native();
  v556 = v307;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v243, 0xD000000000000015, v304, v250);
  v307 = v556;
  NodeDefStore.loadLibrary()();
  if (v251 || (NodeDefStore.applyStandardLibraryFixes()(), v252))
  {
  }

  else
  {
    v254 = qword_287794F68;
    v255 = off_287794F70;

    v256 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
    if (v257)
    {
      v258 = v256;
      v259 = swift_isUniquelyReferenced_nonNull_native();
      v260 = v307;
      v556 = v307;
      v307 = 0x8000000000000000;
      if ((v259 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v260 = v556;
      }

      v261 = *(*(v260 + 48) + 16 * v258 + 8);

      v262 = *(*(v260 + 56) + 8 * v258);

      specialized _NativeDictionary._delete(at:)(v258, v260);

      v307 = v260;
    }

    else
    {
    }

    v263 = qword_287794F78;
    v264 = off_287794F80;

    v265 = specialized __RawDictionaryStorage.find<A>(_:)(v263, v264);
    if (v266)
    {
      v267 = v265;
      v268 = swift_isUniquelyReferenced_nonNull_native();
      v269 = v307;
      v556 = v307;
      v307 = 0x8000000000000000;
      if ((v268 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v269 = v556;
      }

      v270 = *(*(v269 + 48) + 16 * v267 + 8);

      v271 = *(*(v269 + 56) + 8 * v267);

      specialized _NativeDictionary._delete(at:)(v267, v269);

      v307 = v269;
    }

    else
    {
    }

    v272 = qword_287794F88;
    v273 = off_287794F90;

    v274 = specialized __RawDictionaryStorage.find<A>(_:)(v272, v273);
    if (v275)
    {
      v276 = v274;
      v277 = swift_isUniquelyReferenced_nonNull_native();
      v278 = v307;
      v556 = v307;
      v307 = 0x8000000000000000;
      if ((v277 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v278 = v556;
      }

      v279 = *(*(v278 + 48) + 16 * v276 + 8);

      v280 = *(*(v278 + 56) + 8 * v276);

      specialized _NativeDictionary._delete(at:)(v276, v278);

      v307 = v278;
    }

    else
    {
    }

    swift_arrayDestroy();
    return v305;
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10MTLLibrary_pMd, &_sSo10MTLLibrary_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized static NodeDefStore.inferLibraryFunctionName(forNodeDefName:)(uint64_t a1, uint64_t a2)
{
  v4._countAndFlagsBits = 6243406;
  v4._object = 0xE300000000000000;
  if (!String.hasPrefix(_:)(v4))
  {
    goto LABEL_11;
  }

  v10 = String.Iterator.next()();
  countAndFlagsBits = v10.value._countAndFlagsBits;
  if (v10.value._object)
  {
    object = v10.value._object;
    do
    {
      if (countAndFlagsBits == 95 && object == 0xE100000000000000 || (v13 = countAndFlagsBits, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), countAndFlagsBits = v13, (v14 & 1) != 0))
      {
        MEMORY[0x266771540](countAndFlagsBits, object, v6, v7, v8, v9);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
  }

  v15 = String.count.getter();

  if (v15 >= 2)
  {
  }

  else
  {
LABEL_11:
    MEMORY[0x266771550](a1, a2);
    return 0x3A3A786C746DLL;
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type NodeDefStore.Errors and conformance NodeDefStore.Errors()
{
  result = lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors;
  if (!lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors;
  if (!lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors);
  }

  return result;
}

uint64_t outlined assign with take of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F0D9A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of NodeDef.Implementation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NodeDef.Implementation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NodeDef.Implementation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

double _sSS_11ShaderGraph7NodeDefVtSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined init with take of NodeDef.Implementation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall OrderedSet._ensureUnique()()
{
  if (!*v0 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    return;
  }

  v1 = *v0;
  if (!*v0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v2 = v1[2];
  v3 = (v2 & 0x3F) << v2;
  v4 = __OFADD__(v3, 64);
  v5 = v3 + 64;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v5 - 1;
  v6 = v5 < 1;
  v8 = v5 + 62;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = v8 >> 6;
  type metadata accessor for _HashTable.Storage();
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[2] = v2;
  v10[3] = v11;
  memcpy(v10 + 4, v1 + 4, 8 * v9);

  *v0 = v10;
}

Swift::Void __swiftcall OrderedSet._regenerateExistingHashTable()()
{
  if (*v1)
  {
    v2 = v0;
    OrderedSet._ensureUnique()();
    v3 = *v1;
    if (*v1)
    {
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      v6 = *v1;

      closure #1 in OrderedSet._regenerateExistingHashTable()((v3 + 16), v3 + 32, v1, v5, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall OrderedSet._regenerateHashTable()()
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v0 + 16);
  if (*v1)
  {
    swift_beginAccess();
    v5 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v5 = 0;
  }

  if (ContiguousArray.count.getter() <= 15 && v5 == 0)
  {

    *v1 = 0;
  }

  else
  {
    v7 = ContiguousArray.count.getter();
    v8 = specialized static _HashTable.scale(forCapacity:)(v7);
    OrderedSet._regenerateHashTable(scale:reservedScale:)(v8, v5);
  }
}

uint64_t OrderedSet._table.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t OrderedSet.elements.getter()
{
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t OrderedSet._bucket(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  closure #1 in OrderedSet._bucket(for:)((a2 + 16), a2 + 32, a1, a4, &v9);
  v7 = v9;

  return v7;
}

void OrderedSet._removeExistingMember(at:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = *(a3 + 16);
  v10 = ContiguousArray.count.getter();
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v3;
  v12 = *(a3 + 24);
  if (v10 - 1 >= OrderedSet._minimumCapacity.getter(*v3))
  {
    if (!v11)
    {
      type metadata accessor for ContiguousArray();
      goto LABEL_10;
    }

    OrderedSet._ensureUnique()();
    v13 = *v3;
    if (*v4)
    {
      v14 = *v4;

      closure #1 in OrderedSet._removeExistingMember(at:in:)((v13 + 16), v13 + 32, a2, v4, a1, v9, v12);

      type metadata accessor for ContiguousArray();
LABEL_10:
      ContiguousArray.remove(at:)();
      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray.remove(at:)();

  OrderedSet._regenerateHashTable()();
}

uint64_t OrderedSet._minimumCapacity.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 16);
    swift_beginAccess();
    if (((*(v1 + 24) ^ v2) & 0x3FLL) == 0)
    {
      return 0;
    }

    result = swift_beginAccess();
    v3 = *(v1 + 16) & 0x3FLL;
    if (v3 < 5)
    {
      return 0;
    }

    v4 = vcvtd_n_f64_s64(1 << v3, 2uLL);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t OrderedSet._find(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a6, v12, a3, a4, v9, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v10);
  return v12[9];
}

uint64_t OrderedSet._scale.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 16) & 0x3FLL;
  }

  return result;
}

uint64_t OrderedSet._reservedScale.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 24) & 0x3FLL;
  }

  return result;
}

Swift::Void __swiftcall OrderedSet._regenerateHashTable(scale:reservedScale:)(Swift::Int scale, Swift::Int reservedScale)
{
  v4 = v2;
  v12 = v3[1];
  if (reservedScale <= scale)
  {
    v6 = scale;
  }

  else
  {
    v6 = reservedScale;
  }

  v7 = *(v2 + 16);
  v8 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v10 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v12, v6, 0, reservedScale, v8, WitnessTable, *(v4 + 24));
  v11 = *v3;

  *v3 = v10;
}

Swift::Int OrderedSet._extractSubset(using:extraCapacity:)(uint64_t *a1, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v20)
  {
    v24 = OrderedSet.init(minimumCapacity:persistent:)(a4, 0, a7);

    return v24;
  }

  if (ContiguousArray.count.getter() != a3)
  {
    result = a3 + a4;
    if (__OFADD__(a3, a4))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v32[1] = a8;
    result = OrderedSet.init(minimumCapacity:persistent:)(result, 0, a7);
    v33 = result;
    v34 = v25;
    if (a2 < 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a1;
    }

    v27 = 0;
    for (i = (v16 + 8); v26; result = (*i)(v19, a7))
    {
      v26 &= v26 - 1;
LABEL_21:
      ContiguousArray.subscript.getter();
      v31 = type metadata accessor for OrderedSet();
      OrderedSet._appendNew(_:)(v19, v31);
    }

    v29 = v27;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= a2)
      {
        goto LABEL_7;
      }

      v30 = a1[v27];
      ++v29;
      if (v30)
      {
        v26 = (v30 - 1) & v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = OrderedSet._capacity.getter(a5);
  result = ContiguousArray.count.getter();
  if (__OFSUB__(v21, result))
  {
    goto LABEL_24;
  }

  if (v21 - result >= a4)
  {
    return a5;
  }

  v33 = a5;
  v34 = a6;

  result = ContiguousArray.count.getter();
  v23 = result + a4;
  if (!__OFADD__(result, a4))
  {
    type metadata accessor for OrderedSet();
    OrderedSet.reserveCapacity(_:)(v23);
LABEL_7:

    return v33;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t OrderedSet._elements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*OrderedSet._table.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return OrderedSet._table.modify;
}

uint64_t OrderedSet._table.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

uint64_t key path setter for OrderedSet.elements : <A>OrderedSet<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = type metadata accessor for OrderedSet();

  return OrderedSet.elements.setter(v8, v7);
}

uint64_t OrderedSet.elements.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  v13 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for Array();
  v9 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable();
  result = OrderedSet.init<A>(_:)(&v13, v7, v8, v9, WitnessTable);
  *v2 = result;
  v2[1] = v12;
  return result;
}

void (*OrderedSet.elements.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v5[1] = *(v2 + 8);
  v7 = *(a2 + 16);
  v5[4] = v7;
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  *v6 = Array.init<A>(_:)();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = MEMORY[0x266772110](v8, v7);

  *(v2 + 8) = v9;
  return OrderedSet.elements.modify;
}

void OrderedSet.elements.modify(uint64_t **a1)
{
  v1 = *a1;
  $defer #1 <A>() in OrderedSet.elements.modify((*a1)[3], v1, v1[4], *(v1[2] + 24));
  v2 = *v1;

  free(v1);
}

uint64_t $defer #1 <A>() in OrderedSet.elements.modify(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v14 = *a2;
  v7 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v9 = OrderedSet.init<A>(_:)(&v14, a3, v7, a4, WitnessTable);
  v11 = *a1;
  v10 = a1[1];
  *a1 = v9;
  a1[1] = v12;
}

uint64_t OrderedSet._capacity.getter(uint64_t a1)
{
  if (!a1)
  {
    return 15;
  }

  result = swift_beginAccess();
  v3 = *(a1 + 16) & 0x3FLL;
  if (v3 < 5)
  {
    return 15;
  }

  v4 = (1 << v3) * 0.75;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t OrderedSet._bias.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 24) >> 6;
  }

  return result;
}

uint64_t closure #1 in OrderedSet._regenerateExistingHashTable()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _HashTable.UnsafeHandle.clear()();
  v12 = *(a3 + 8);
  v9 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(&v12, a1, a2, v9, WitnessTable, a5);
}

uint64_t closure #1 in OrderedSet._find_inlined(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v16 = a1;
    v17 = a2;
    v10 = type metadata accessor for UnsafeBufferPointer();

    WitnessTable = swift_getWitnessTable();
    *a6 = _HashTable.UnsafeHandle._find<A>(_:in:)(a4, &v16, (a3 + 16), a3 + 32, v10, WitnessTable, a5);
    *(a6 + 8) = v12 & 1;
    *(a6 + 16) = v13;
  }

  else
  {
    v16 = a1;
    v17 = a2;
    type metadata accessor for UnsafeBufferPointer();
    swift_getWitnessTable();
    v15 = *(a5 + 8);
    result = Collection<>.firstIndex(of:)();
    *(a6 + 16) = 0;
  }

  return result;
}

void closure #1 in OrderedSet._bucket(for:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContiguousArray.subscript.getter();
  v14 = *a1;
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = 1 << *a1;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v34 = a5;
    v19 = v18 & v15;
    v20 = _HashTable.UnsafeHandle._startIterator(bucket:)(v18 & v15, a1, a2);
    v27 = a1;
    v28 = a2;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = 0;
    (*(v10 + 8))(v13, a4);
    if (v20)
    {
      while (1)
      {
        v23 = -1 << *v27;
        v24 = (v23 ^ ~v20) + (v27[1] >> 6);
        v25 = v24 >= ~v23 ? ~v23 : 0;
        if (v24 - v25 == a3)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v20 = v30;
        if (!v30)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    *v34 = v29;
  }
}

void closure #1 in OrderedSet._removeExistingMember(at:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a3, partial apply for closure #1 in closure #1 in OrderedSet._removeExistingMember(at:in:), v14, a1, a2);
  v16 = *(a4 + 8);
  if (__OFADD__(a5, 1))
  {
    __break(1u);
  }

  else if (a5 + 1 >= a5)
  {
    v15[0] = a5;
    v15[1] = a5 + 1;
    v12 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v15, &v16, a1, a2, v12, WitnessTable, a7);
    return;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in OrderedSet._removeExistingMember(at:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  ContiguousArray.subscript.getter();
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  (*(v5 + 8))(v8, a4);
  return v11;
}

uint64_t sub_265F0F298(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

__n128 sub_265F0F2E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_265F0F2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a1 + 8);
  result = OrderedSet.elements.getter();
  *a4 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v30 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v19 = *(v27 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v26 - v21;
  (*(v13 + 16))(v17, v30, a3, v20);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v29 = v22;
  v30 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) != 1)
  {
    v24 = *(v5 + 32);
    do
    {
      v24(v8, v12, v4);
      OrderedSet._append(_:)(v8, v28);
      (*(v5 + 8))(v8, v4);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v23(v12, 1, v4) != 1);
  }

  return (*(v27 + 8))(v29, v30);
}

void OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*(*(a3 + 16) - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  type metadata accessor for ContiguousArray();
  ContiguousArray.append(_:)();
  v11 = v3[1];
  v12 = ContiguousArray.count.getter();
  v13 = *v3;
  v14 = *(a3 + 24);
  if (OrderedSet._capacity.getter(v13) >= v12)
  {
    if (v13)
    {
      OrderedSet._ensureUnique()();
      v15 = *v4;
      if (*v4)
      {
        v16 = *v4;

        closure #1 in OrderedSet._appendNew(_:in:)((v15 + 16), v15 + 32, a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    OrderedSet._regenerateHashTable()();
  }
}

uint64_t OrderedSet.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OrderedSet._find(_:)(a1, *v3, v3[1], *(a3 + 16), *(a3 + 24));
  v9 = v8;
  if (v8)
  {
    OrderedSet._insertNew(_:at:in:)(a1, a2, v7, a3);
  }

  return v9 & 1;
}

void OrderedSet._insertNew(_:at:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20 = a3;
  v21 = a1;
  v22 = a2;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[1];
  v13 = ContiguousArray.count.getter();
  v14 = *v4;
  v15 = *(a4 + 24);
  if (v13 >= OrderedSet._capacity.getter(*v4))
  {
    (*(v8 + 16))(v11, v21, v7);
    type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    OrderedSet._regenerateHashTable()();
    return;
  }

  v17 = v21;
  v16 = v22;
  if (v14)
  {
    OrderedSet._ensureUnique()();
    v18 = *v4;
    if (!*v5)
    {
      __break(1u);
      return;
    }

    v19 = *v5;

    closure #1 in OrderedSet._insertNew(_:at:in:)((v18 + 16), v18 + 32, v20, v16, v5, v7, v15);

    (*(v8 + 16))(v11, v17, v7);
    type metadata accessor for ContiguousArray();
  }

  else
  {
    (*(v8 + 16))(v11, v21, v7);
    type metadata accessor for ContiguousArray();
  }

  ContiguousArray.insert(_:at:)();
}

void OrderedSet._appendNew(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v8);
  type metadata accessor for ContiguousArray();
  ContiguousArray.append(_:)();
  v11 = v2[1];
  v12 = ContiguousArray.count.getter();
  v13 = *v2;
  v14 = *(a2 + 24);
  if (OrderedSet._capacity.getter(v13) >= v12)
  {
    if (v13)
    {
      OrderedSet._ensureUnique()();
      v15 = *v3;
      if (*v3)
      {
        v16 = *v3;

        closure #1 in OrderedSet._appendNew(_:)((v15 + 16), v15 + 32, a1, v3);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    OrderedSet._regenerateHashTable()();
  }
}

uint64_t OrderedSet._append(_:)(uint64_t a1, uint64_t a2)
{
  OrderedSet._find(_:)(a1, *v2, v2[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;
  if (v6)
  {
    OrderedSet._appendNew(_:in:)(a1, v5, a2);
    v8 = *(v2[1] + 16) - 1;
  }

  return v7 & 1;
}

uint64_t closure #1 in OrderedSet._appendNew(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = 1 << *a1;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v11 & result, a1, a2))
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
      }
    }

    v12 = *(a4 + 8);

    v13 = ContiguousArray.count.getter();

    result = v13 - 1;
    if (!__OFSUB__(v13, 1))
    {
      return _HashTable.BucketIterator.currentValue.setter(result, 0);
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #1 in OrderedSet._appendNew(_:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);

  v8 = ContiguousArray.count.getter();

  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8 - 1 - (a1[1] >> 6);
    return _HashTable.UnsafeHandle.subscript.setter((-1 << *a1) ^ ~(((v10 >> 63) & ~(-1 << *a1)) + v10), a3, a1, a2);
  }

  return result;
}

unint64_t closure #1 in OrderedSet._insertNew(_:at:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a5 + 8);
  v12 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  _HashTable.UnsafeHandle.adjustContents<A>(preparingForInsertionOfElementAtOffset:in:)(a4, &v15, a1, a2, v12, WitnessTable, a7);
  return _HashTable.UnsafeHandle.subscript.setter((-1 << *a1) ^ ~((((a4 - (a1[1] >> 6)) >> 63) & ~(-1 << *a1)) + a4 - (a1[1] >> 6)), a3, a1, a2);
}

uint64_t OrderedSet.update(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v10 = *(v4 + 8);
  v9 = (v4 + 8);
  ContiguousArray.subscript.getter();
  v11 = *(*(a3 + 24) + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v13 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v14 = *v9;
    ContiguousArray._checkSubscript_mutating(_:)(a2);
    (*(*(v8 - 8) + 24))(v14 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * a2, a1, v8);
    return destructiveProjectEnumData for NodePersonality.ShaderType(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.updateOrAppend(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (OrderedSet._append(_:)(a1, a2))
  {
    v8 = *(*(*(a2 + 16) - 8) + 56);
    v9 = a3;
    v10 = 1;
  }

  else
  {
    v11 = v7;
    v12 = *(v3 + 8);
    v13 = *(a2 + 16);
    ContiguousArray.subscript.getter();
    v14 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v15 = *(v3 + 8);
    ContiguousArray._checkSubscript_mutating(_:)(v11);
    v17 = *(v13 - 8);
    (*(v17 + 24))(v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, a1, v13);
    destructiveProjectEnumData for NodePersonality.ShaderType(v14);
    v8 = *(v17 + 56);
    v9 = a3;
    v10 = 0;
  }

  return v8(v9, v10, 1);
}

uint64_t OrderedSet.updateOrInsert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = v4[1];
  v10 = v4 + 1;
  v12 = *(a4 + 16);
  v13 = OrderedSet._find(_:)(a2, v9, v11, v12, *(a4 + 24));
  if (v15)
  {
    OrderedSet._insertNew(_:at:in:)(a2, a3, v14, a4);
    v16 = *(v12 - 8);
    v17 = 1;
  }

  else
  {
    a3 = v13;
    ContiguousArray.subscript.getter();
    v18 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v19 = *v10;
    ContiguousArray._checkSubscript_mutating(_:)(a3);
    v16 = *(v12 - 8);
    (*(v16 + 24))(v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a3, a2, v12);
    destructiveProjectEnumData for NodePersonality.ShaderType(v18);
    v17 = 0;
  }

  (*(v16 + 56))(a1, v17, 1, v12);
  return a3;
}

uint8_t *static ShaderGraphService.createLibrary(from:device:)(NSObject *a1, void *a2)
{
  v4 = type metadata accessor for SGREMaterialCompilationOptions();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v5[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v5[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = [&v9 init];
  v7 = specialized static ShaderGraphService.createLibrary(from:device:options:)(a1, a2, v6);

  return v7;
}

id @objc static ShaderGraphService.createMaterialFromArchive(data:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a3;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = a5(v7, v9);
  outlined consume of Data?(v7, v9);

  return v10;
}

void *specialized static ShaderGraphService.archiveMaterial(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OSSignposter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init(subsystem:category:)();
  if (a1)
  {
    v8 = type metadata accessor for PropertyListEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v11 = *(a1 + OBJC_IVAR___SGREMaterial_graph);
    v12 = *(a1 + OBJC_IVAR___SGREMaterial_config);
    v28[1] = 1;
    v28[2] = v11;
    v28[3] = v12;
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    v13 = v11;
    v14 = v12;
    v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v1)
    {
      v16 = v15;
      (*(v4 + 8))(v7, v3);

      return v16;
    }

    (*(v4 + 8))(v7, v3);

    v16 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v16 = swift_allocError();
    *v17 = xmmword_265F2B270;
    *(v17 + 16) = 1;
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = v16;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v16;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_265D7D000, v20, v21, "%@", v22, 0xCu);
    outlined destroy of [Input](v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v23, -1, -1);
    MEMORY[0x266773120](v22, -1, -1);
  }

  type metadata accessor for SGError();
  v26 = v16;
  SGError.__allocating_init(_:)(v16);
  swift_willThrow();

  return v16;
}

_DWORD *specialized static ShaderGraphService.createMaterial(from:config:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v85 - v8);
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    v23 = xmmword_265F21A90;
LABEL_9:
    *v22 = v23;
    *(v22 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    v23 = xmmword_265F21A80;
    goto LABEL_9;
  }

  objc_allocWithZone(type metadata accessor for SGREMaterialSource());
  v10 = a1;
  v11 = SGREMaterialSource.init(graph:configuration:)(v10, a2);
  if (!v2)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR___SGREMaterialSource_config);
    v14 = one-time initialization token for empty;
    v15 = *(v11 + OBJC_IVAR___SGREMaterialSource_graph);
    v16 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v17 = static SGREMaterialFunctionConstantValues.empty;
    v18 = type metadata accessor for SHA512Digest();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    objc_allocWithZone(type metadata accessor for SGREMaterial());
    SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v15, v16, v17, v9);
    v9 = v19;
    v20 = *(v19 + OBJC_IVAR___SGREMaterial_graph);
    v95 = 0;
    v21 = v20;
    specialized SGDataTypeGraph.init(_:idSequence:constants:)(v21, &v95, MEMORY[0x277D84F90], &v97);
    mapInternalGraphToUserGraph(_:)(&v97, v102);
    v107 = v98;
    outlined destroy of String(&v107);
    v106 = v99;
    outlined destroy of [Input](&v106, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v105 = v100;
    outlined destroy of [Input](&v105, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v104 = v101;
    outlined destroy of [Input](&v104, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v34 = static NodeDefStore.shared;
    v33 = qword_280051428;
    v35 = qword_280051430;
    v36 = (*((*MEMORY[0x277D85000] & **(v9 + OBJC_IVAR___SGREMaterial_config)) + 0x60))();
    v95 = v33;
    swift_bridgeObjectRetain_n();

    specialized Sequence.forEach(_:)(v36, v33, &v95);

    v37 = *(v9 + OBJC_IVAR___SGREMaterial_textureAssignments);
    v38 = *(v9 + OBJC_IVAR___SGREMaterial_customUniformsType);
    v90 = v95;
    v89 = *&v38[OBJC_IVAR___SGPropertyDescription_type];
    v39 = v34;
    v41 = *&v38[OBJC_IVAR___SGPropertyDescription_name];
    v40 = *&v38[OBJC_IVAR___SGPropertyDescription_name + 8];
    v108 = v39;

    v91 = v35;

    v92 = v37;

    v42 = v38;
    specialized static MetalDataType.create(_:name:)(v89, v41, v40);
    v44 = v43;

    outlined init with copy of UserGraph(v102, &v95);

    v45 = SHA512Digest.description.getter();
    v47 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v45, v46);
    v88 = v48;
    v89 = v44;
    v50 = v49;
    v52 = v51;

    v53 = MEMORY[0x2667714E0](v47, v50, v88, v52);
    v55 = v54;

    v95 = v53;
    v96 = v55;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v56 = v96;
    v88 = v95;
    v85 = OBJC_IVAR___SGREMaterial_edgeDigest;
    v57 = SHA512Digest.description.getter();
    v59 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v57, v58);
    v86 = v61;
    v87 = v60;
    v63 = v62;

    v87 = MEMORY[0x2667714E0](v59, v87, v86, v63);
    v65 = v64;

    v95 = v88;
    v96 = v56;

    MEMORY[0x266771550](v87, v65);

    specialized Dictionary<>.init(_:)(v92);
    specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v102);
    outlined destroy of RESurfaceShaderMaterial(&v103);
    if (one-time initialization token for debugMode != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v66 = static DebugConfig.debugMode;

    v67 = specialized Set.contains(_:)(2, v66);

    if (v67)
    {
      v68 = v9;
      v92 = specialized static ShaderGraphService.archiveMaterial(_:)(v9);
      v108 = v69;

      v70 = *&v10[OBJC_IVAR___SGGraph_name + 8];
      v93 = *&v10[OBJC_IVAR___SGGraph_name];
      v94 = v70;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v71 = SHA512Digest.description.getter();
      v73 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v71, v72);
      v75 = v74;
      v77 = v76;
      v79 = v78;

      v80 = MEMORY[0x2667714E0](v73, v75, v77, v79);
      v82 = v81;

      MEMORY[0x266771550](v80, v82);

      MEMORY[0x266771550](0x657669686372615FLL, 0xE800000000000000);
      v83 = v92;
      v84 = v108;
      specialized static FileLogger.saveDebugFile(_:name:extension:)(v92, v108, v93, v94, 0x7473696C70, 0xE500000000000000);
      outlined destroy of UserGraph(v102);

      outlined consume of Data._Representation(v83, v84);
    }

    else
    {
      outlined destroy of UserGraph(v102);
    }

    return v9;
  }

LABEL_10:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  v25 = v3;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 138412290;
    v29 = v3;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 1) = v30;
    *v28 = v30;
    _os_log_impl(&dword_265D7D000, v26, v27, "%@", v9, 0xCu);
    outlined destroy of [Input](v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v28, -1, -1);
    MEMORY[0x266773120](v9, -1, -1);
  }

  type metadata accessor for SGError();
  v31 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  return v9;
}

void specialized static ShaderGraphService.createMaterial(from:)(void *a1)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v2 = swift_allocError();
    *v3 = xmmword_265F21A90;
    *(v3 + 16) = 1;
    swift_willThrow();
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_265D7D000, v6, v7, "%@", v8, 0xCu);
      outlined destroy of [Input](v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v9, -1, -1);
      MEMORY[0x266773120](v8, -1, -1);
    }

    type metadata accessor for SGError();
    v12 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    return;
  }

  if (one-time initialization token for default != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  specialized static ShaderGraphService.createMaterial(from:config:)(a1, static SGMaterialConfiguration.default);
  v2 = v1;
  if (v1)
  {
    goto LABEL_7;
  }
}

void *specialized static ShaderGraphService.createMaterialFromArchive(data:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - v7;
  if (v6 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v2 = swift_allocError();
    *v9 = xmmword_265F21AB0;
    *(v9 + 16) = 1;
    swift_willThrow();
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = v2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_265D7D000, v20, v21, "%@", v22, 0xCu);
      outlined destroy of [Input](v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v23, -1, -1);
      MEMORY[0x266773120](v22, -1, -1);
    }

    type metadata accessor for SGError();
    v26 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    return v2;
  }

  v10 = specialized static ShaderGraphService.sourceFromArchive(data:)(a1, v6);
  if (v1)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = *&v10[OBJC_IVAR___SGREMaterialSource_config];
  v13 = one-time initialization token for empty;
  v14 = *&v10[OBJC_IVAR___SGREMaterialSource_graph];
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = static SGREMaterialFunctionConstantValues.empty;
  v17 = type metadata accessor for SHA512Digest();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  objc_allocWithZone(type metadata accessor for SGREMaterial());
  SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v14, v15, v16, v8);
  v2 = v28;

  return v2;
}

void *specialized static SGGraph.create(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    *v4 = xmmword_265F21AB0;
    *(v4 + 16) = 1;
    swift_willThrow();
    type metadata accessor for SGError();
    v11 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();
  }

  else
  {
    v5 = type metadata accessor for PropertyListDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      v8 = type metadata accessor for JSONDecoder();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for SGGraph();
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      return v13;
    }

    else
    {

      v3 = v14;
    }
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type SGGraph and conformance SGGraph()
{
  result = lazy protocol witness table cache variable for type SGGraph and conformance SGGraph;
  if (!lazy protocol witness table cache variable for type SGGraph and conformance SGGraph)
  {
    type metadata accessor for SGGraph();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph and conformance SGGraph);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v3, v4);
}

uint64_t Character.isStringDelimiter.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 34 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = a1 == 39 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = String.init<A>(describing:)();
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t String.camelCaseToCapitalized.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  v21 = a1;
  v22 = a2;
  v20[6] = 0x295D5A2D415B28;
  v20[7] = 0xE700000000000000;
  v20[4] = 3220512;
  v20[5] = 0xE300000000000000;
  v20[2] = a1;
  v20[3] = a2;
  v20[0] = a1;
  v20[1] = a2;
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of Locale?(v12);
  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v22 = v14;
  static CharacterSet.whitespacesAndNewlines.getter();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  (*(v5 + 8))(v8, v4);

  v21 = v15;
  v22 = v17;
  v18 = StringProtocol.capitalized.getter();

  return v18;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserGraphCompiler.CompileContext.setSource(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 192);
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 192) = v8;
  return result;
}

{
  v5 = *(v2 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 184);
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 184) = v8;
  return result;
}

Swift::Void __swiftcall UserGraphCompiler.CompileContext.setSource(_:for:)(ShaderGraph::ShaderGraphNode::ID _, ShaderGraph::FunctionNodeID a2)
{
  v5 = *(v2 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 176);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2.value, _.value, isUniquelyReferenced_nonNull_native);
  *(v2 + 176) = v7;
}

double UserGraphCompiler.CompileContext.compiledNode(for:in:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 184);
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    (*(*a2 + 272))(*(*(v5 + 56) + 8 * v7));
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

{
  v5 = *(v3 + 192);
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    (*(*a2 + 272))(*(*(v5 + 56) + 8 * v7));
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t UserGraphCompiler.__allocating_init()()
{
  v0 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v8);
  v1 = v8[11];
  *(v0 + 176) = v8[10];
  *(v0 + 192) = v1;
  *(v0 + 208) = v9;
  v2 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v2;
  v3 = v8[9];
  *(v0 + 144) = v8[8];
  *(v0 + 160) = v3;
  v4 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v4;
  v5 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v5;
  v6 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v6;
  return v0;
}

uint64_t UserGraphCompiler.CompileContext.compiledNodeID(for:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(v1 + 184);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

__n128 UserGraphCompiler.context.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  v26 = *(v1 + 176);
  v27 = v3;
  v28 = *(v1 + 208);
  v4 = *(v1 + 128);
  v22 = *(v1 + 112);
  v23 = v4;
  v5 = *(v1 + 160);
  v24 = *(v1 + 144);
  v25 = v5;
  v6 = *(v1 + 64);
  v18 = *(v1 + 48);
  v19 = v6;
  v7 = *(v1 + 96);
  v20 = *(v1 + 80);
  v21 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 16);
  v17 = v8;
  outlined init with copy of [Input](&v16, &v15, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  v9 = v27;
  *(a1 + 160) = v26;
  *(a1 + 176) = v9;
  *(a1 + 192) = v28;
  v10 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v10;
  v11 = v25;
  *(a1 + 128) = v24;
  *(a1 + 144) = v11;
  v12 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v12;
  v13 = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v13;
  result = v17;
  *a1 = v16;
  *(a1 + 16) = result;
  return result;
}

uint64_t UserGraphCompiler.context.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v5 = *(v1 + 144);
  v18[9] = *(v1 + 160);
  v18[10] = v3;
  v18[11] = v4;
  v7 = *(v1 + 112);
  v6 = *(v1 + 128);
  v19 = *(v1 + 208);
  v18[7] = v6;
  v18[8] = v5;
  v8 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v8;
  v9 = *(v1 + 80);
  v18[5] = *(v1 + 96);
  v18[6] = v7;
  v18[4] = v9;
  v10 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v10;
  v11 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v11;
  *(v1 + 208) = *(a1 + 192);
  v12 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v12;
  v13 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v13;
  v14 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v14;
  v15 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v15;
  v16 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v16;
  return outlined destroy of [Input](v18, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
}

uint64_t UserGraphCompiler.init()()
{
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v8);
  v1 = v8[11];
  *(v0 + 176) = v8[10];
  *(v0 + 192) = v1;
  *(v0 + 208) = v9;
  v2 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v2;
  v3 = v8[9];
  *(v0 + 144) = v8[8];
  *(v0 + 160) = v3;
  v4 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v4;
  v5 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v5;
  v6 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v6;
  return v0;
}

uint64_t UserGraphCompiler.compile(sourceProgram:into:)(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v6 = a1[9];
  v72 = a1[8];
  v73[0] = v6;
  *(v73 + 9) = *(a1 + 153);
  v7 = a1[5];
  v68 = a1[4];
  v69 = v7;
  v8 = a1[6];
  v71 = a1[7];
  v70 = v8;
  v9 = a1[1];
  v64 = *a1;
  v65 = v9;
  v10 = a1[2];
  v67 = a1[3];
  v66 = v10;
  outlined init with copy of UserGraph(a1, &v52);
  UserGraph.flatten()();
  v92 = v72;
  v93[0] = v73[0];
  *(v93 + 9) = *(v73 + 9);
  v88 = v68;
  v89 = v69;
  v91 = v71;
  v90 = v70;
  v84 = v64;
  v85 = v65;
  v87 = v67;
  v86 = v66;
  v11 = MEMORY[0x277D84F90];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AC08FunctioneF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined init with copy of UserGraph(&v84, &v40);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v11);
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph6OutputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v11);
  v60 = v92;
  *v61 = v93[0];
  *&v61[9] = *(v93 + 9);
  v56 = v88;
  v57 = v89;
  v58 = v90;
  v59 = v91;
  v52 = v84;
  v53 = v85;
  v54 = v86;
  v55 = v87;
  *&v62 = v12;
  *(&v62 + 1) = v13;
  v63 = v14;
  v15 = specialized UserGraphCompiler.emitFunctionNodes(context:into:)(&v52, a2);
  if (v3)
  {
    v48 = v72;
    *v49 = v73[0];
    *&v49[9] = *(v73 + 9);
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v40 = v64;
    v41 = v65;
    v42 = v66;
    v43 = v67;
    outlined destroy of UserGraph(&v40);
    *&v49[16] = *&v61[16];
    v50 = v62;
    v51 = v63;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    *v49 = *v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v40 = v52;
    v41 = v53;
    outlined destroy of UserGraphCompiler.CompileContext(&v40);
  }

  else
  {
    v16 = v15;
    v82[8] = v60;
    v83[0] = *v61;
    *(v83 + 9) = *&v61[9];
    v82[4] = v56;
    v82[5] = v57;
    v82[7] = v59;
    v82[6] = v58;
    v82[0] = v52;
    v82[1] = v53;
    v82[3] = v55;
    v82[2] = v54;

    outlined init with copy of UserGraph(v82, &v40);
    v17 = UserGraph.sinkNodes()();
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v82, v17, v74);
    outlined destroy of UserGraph(v82);

    specialized Sequence.forEach(_:)(v74, &v52, v16);

    v18 = v74[1];
    v19 = v74[2];
    v79 = v74[0];
    outlined destroy of [Input](&v79, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v78 = v18;
    outlined destroy of [Input](&v78, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    v77 = v19;
    outlined destroy of [Input](&v77, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    v76 = v74[3];
    outlined destroy of [Input](&v76, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v75 = v74[4];
    outlined destroy of [Input](&v75, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    v20 = specialized UserGraphCompiler.applyConstExpr(context:into:)(&v52, v16);

    a2 = specialized UserGraphCompiler.removePassthroughNodes(context:into:)(&v52, v20);

    v23[10] = *&v61[16];
    v23[11] = v62;
    v23[6] = v58;
    v23[7] = v59;
    v23[8] = v60;
    v23[9] = *v61;
    v23[2] = v54;
    v23[3] = v55;
    v23[4] = v56;
    v23[5] = v57;
    v23[0] = v52;
    v23[1] = v53;
    v35 = *&v61[16];
    v36 = v62;
    v31 = v58;
    v32 = v59;
    v33 = v60;
    v34 = *v61;
    v27 = v54;
    v28 = v55;
    v29 = v56;
    v30 = v57;
    v24 = v63;
    v37 = v63;
    v25 = v52;
    v26 = v53;
    destructiveProjectEnumData for NodePersonality.ShaderType(&v25);
    v80[10] = v35;
    v80[11] = v36;
    v81 = v37;
    v80[6] = v31;
    v80[7] = v32;
    v80[9] = v34;
    v80[8] = v33;
    v80[2] = v27;
    v80[3] = v28;
    v80[5] = v30;
    v80[4] = v29;
    v80[1] = v26;
    v80[0] = v25;
    v22 = *(*v4 + 96);

    outlined init with copy of UserGraphCompiler.CompileContext(v23, &v40);
    v22(v80);

    v38[8] = v72;
    v39[0] = v73[0];
    *(v39 + 9) = *(v73 + 9);
    v38[4] = v68;
    v38[5] = v69;
    v38[6] = v70;
    v38[7] = v71;
    v38[0] = v64;
    v38[1] = v65;
    v38[2] = v66;
    v38[3] = v67;
    outlined destroy of UserGraph(v38);
    *&v49[16] = *&v61[16];
    v50 = v62;
    v51 = v63;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    *v49 = *v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v40 = v52;
    v41 = v53;
    outlined destroy of UserGraphCompiler.CompileContext(&v40);
  }

  return a2;
}

__n128 UserGraphCompiler.CompileContext.init(sourceProgram:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AC08FunctioneF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v4);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph6OutputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v4);
  *v17 = a1[9];
  *&v17[9] = *(a1 + 153);
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 3);
  *(a2 + 128) = a1[8];
  *(a2 + 144) = *v17;
  *(a2 + 160) = *&v17[16];
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *a2 = v9;
  *(a2 + 16) = v10;
  result = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  return result;
}

uint64_t closure #1 in UserGraphCompiler.emitFunctionNodes(context:into:)(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v6 = a1[1];
  v28 = *a1;
  v29[0] = v6;
  *(v29 + 9) = *(a1 + 25);
  v7 = v28;
  v8 = *a2;

  v9 = NodePersonality.emitFunctionNodes(node:context:into:)(&v28, a3, v8, v28);
  if (v3)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v30 = *(&v28 + 1);
    v31 = *&v29[0];
    v11 = v3;
    outlined copy of NodePersonality(v7);
    outlined init with copy of [Input](&v30, &v25, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v31, &v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    outlined consume of NodePersonality(v7);
    outlined destroy of [Input](&v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v31, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315650;
      v25 = v3;
      v16 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000265F34CA0, &v27);
      *(v14 + 22) = 2080;
      v25 = 1701080942;
      v26 = 0xE400000000000000;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v20);

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v27);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_265D7D000, v12, v13, "Got error:\n    %s\nIn '%s'\n    Node: '%s'", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v15, -1, -1);
      MEMORY[0x266773120](v14, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v23 = v9;

    v24 = *a2;
    *a2 = v23;
  }
}

uint64_t closure #1 in UserGraphCompiler.emitEdges(context:into:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v5 = a1[1];
  v50 = *a1;
  v51 = v5;
  v52 = a1[2];
  v53 = *(a1 + 6);
  v6 = *(a1 + 72);
  v44 = *(a1 + 56);
  v45 = v6;
  v46 = *(a1 + 88);
  v47 = *(a1 + 13);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  v54[2] = a2[2];
  v54[3] = v9;
  v54[0] = v7;
  v54[1] = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v54[6] = a2[6];
  v54[7] = v12;
  v54[4] = v10;
  v54[5] = v11;
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v55 = *(a2 + 24);
  v54[10] = v15;
  v54[11] = v16;
  v54[8] = v13;
  v54[9] = v14;
  outlined init with copy of UserGraphCompiler.CompileContext(v54, &v35);
  UserGraphCompiler.CompileContext.compiledNode(for:in:)(&v50, a3, &v39);
  outlined destroy of UserGraphCompiler.CompileContext(v54);
  if (v40)
  {
    outlined init with take of MetalFunctionNode(&v39, &v42);
    v17 = a2[11];
    v48[10] = a2[10];
    v48[11] = v17;
    v49 = *(a2 + 24);
    v18 = a2[7];
    v48[6] = a2[6];
    v48[7] = v18;
    v19 = a2[9];
    v48[8] = a2[8];
    v48[9] = v19;
    v20 = a2[3];
    v48[2] = a2[2];
    v48[3] = v20;
    v21 = a2[5];
    v48[4] = a2[4];
    v48[5] = v21;
    v22 = a2[1];
    v48[0] = *a2;
    v48[1] = v22;
    outlined init with copy of UserGraphCompiler.CompileContext(v48, &v35);
    UserGraphCompiler.CompileContext.compiledNode(for:in:)(&v44, a3, &v33);
    outlined destroy of UserGraphCompiler.CompileContext(v48);
    if (v34)
    {
      outlined init with take of MetalFunctionNode(&v33, &v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F1F670;
      outlined init with copy of MetalFunctionNode(&v42, inited + 32);
      v24 = v40;
      v25 = v41;
      __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
      MetalFunctionNode.setInputs(_:)(inited, v24, v25);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      v26 = &v39;
    }

    else
    {
      outlined destroy of [Input](&v33, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      _print_unlocked<A, B>(_:_:)();
      v31 = v39;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v32 = 33;
      *(v32 + 8) = v31;
      swift_willThrow();
      v26 = &v42;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    outlined destroy of [Input](&v39, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
    v42 = 0;
    v43 = 0xE000000000000000;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v53;
    _print_unlocked<A, B>(_:_:)();
    v27 = v42;
    v28 = v43;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v29 = 34;
    *(v29 + 8) = v27;
    *(v29 + 16) = v28;
    return swift_willThrow();
  }
}

uint64_t applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  swift_beginAccess();
  v7 = *(a2 + 16);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = *(v8 + 8);
  v11 = *(v10 + 24);

  v12 = v11(v9, v10);
  v13 = specialized Set.contains(_:)(v12, v7);

  if ((v13 & 1) == 0)
  {
    outlined init with copy of MetalFunctionNode(a1, v39);
    v16 = v40;
    v15 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v17 = (*(*(v15 + 8) + 24))(v16);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v37, v17);
    swift_endAccess();
    v18 = v40;
    v19 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    (*(v19 + 24))(1, v18, v19);
    v21 = v40;
    v20 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v22 = (*(*(v20 + 8) + 48))(v21);
    v23 = *(v22 + 16);
    v24 = a2;
    if (v23)
    {
      v37[0] = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v25 = 0;
      v26 = v37[0];
      v27 = *(*v42 + 272);
      do
      {
        if (v25 >= *(v22 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v27(v38, *(v22 + 8 * v25 + 32));
        if (v4)
        {

          goto LABEL_19;
        }

        v37[0] = v26;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v26 = v37[0];
        }

        ++v25;
        *(v26 + 16) = v29 + 1;
        result = outlined init with take of MetalFunctionNode(v38, v26 + 40 * v29 + 32);
      }

      while (v23 != v25);

      v24 = a2;
      v30 = *(v26 + 16);
      if (v30)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
      v30 = *(MEMORY[0x277D84F90] + 16);
      if (v30)
      {
LABEL_14:
        v31 = 0;
        v32 = v26 + 32;
        while (1)
        {
          if (v31 >= *(v26 + 16))
          {
            goto LABEL_26;
          }

          outlined init with copy of MetalFunctionNode(v32, v38);
          outlined init with copy of MetalFunctionNode(v38, v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
          if (!swift_dynamicCast())
          {
            break;
          }

          outlined init with take of MetalFunctionNode(v34, v37);
          applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v37, v24, v42);
          if (v4)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v37);
            goto LABEL_22;
          }

          ++v31;
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v38);
          v32 += 40;
          if (v30 == v31)
          {
            goto LABEL_19;
          }
        }

        v35 = 0;
        memset(v34, 0, sizeof(v34));
        outlined destroy of [Input](v34, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v33 = 47;
        *(v33 + 8) = 0xD00000000000005CLL;
        *(v33 + 16) = 0x8000000265F34C40;
        swift_willThrow();
LABEL_22:
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        return __swift_destroy_boxed_opaque_existential_1Tm(v39);
      }
    }

LABEL_19:

    return __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  return result;
}

uint64_t closure #2 in applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MetalFunctionNode(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of MetalFunctionNode(v7, v10);
    applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v10, a2, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    outlined destroy of [Input](v7, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v6 = 47;
    *(v6 + 8) = 0xD00000000000005CLL;
    *(v6 + 16) = 0x8000000265F34C40;
    return swift_willThrow();
  }
}

void *closure #4 in UserGraphCompiler.removePassthroughNodes(context:into:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 48))(v7, v8);
  if (!result[2])
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = result[4];

  result = (*(*a2 + 272))(v38, v10);
  if (v3)
  {
    return result;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (*(a3 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v15)
    {
      outlined init with copy of MetalFunctionNode(*(a3 + 56) + 40 * v14, v34);
      outlined init with take of MetalFunctionNode(v34, v35);
      v16 = v36;
      v17 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v18 = (*(v17 + 48))(v16, v17);
      v19 = a1[3];
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v21 = (*(v20 + 24))(v19, v20);
      v22 = *(v18 + 16);
      if (!v22)
      {
LABEL_9:

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      v23 = 0;
      while (*(v18 + 8 * v23 + 32) != v21)
      {
        if (v22 == ++v23)
        {
          goto LABEL_9;
        }
      }

      v24 = v36;
      v25 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v26 = (*(v25 + 64))(v34, v24, v25);
      specialized Array.remove(at:)(v23);
      v26(v34, 0);
      v27 = v39;
      v28 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v29 = (*(v28 + 24))(v27, v28);
      v30 = v36;
      v31 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      result = (*(v31 + 64))(v34, v30, v31);
      if (*(*v32 + 16) >= v23)
      {
        v33 = result;
        specialized Array.replaceSubrange<A>(_:with:)(v23, v23, v29);
        v33(v34, 0);
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t closure #5 in UserGraphCompiler.removePassthroughNodes(context:into:)(uint64_t a1)
{
  outlined init with copy of MetalFunctionNode(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  type metadata accessor for MetalPassthroughNode();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t UserGraphCompiler.deinit()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v9 = *(v0 + 208);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  outlined destroy of [Input](v8, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return v0;
}

uint64_t UserGraphCompiler.__deallocating_deinit()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v9 = *(v0 + 208);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  outlined destroy of [Input](v8, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return swift_deallocClassInstance();
}

uint64_t UserGraphCompiler.CompileContext.compiledNodeID(for:)(uint64_t a1)
{
  v2 = *(v1 + 176);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 24)), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x266772750](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v4;
  v13 = *(a1 + 64);
  v5 = *(a1 + 16);
  v9 = *a1;
  v10 = v5;
  SGDataTypeStorage.hash(into:)();
  (*(**(a1 + 72) + 120))(v8);
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v6);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*a1);
  (*(*a1[1] + 120))(v9);
  v4 = a1[2];
  v5 = a1[3];
  String.hash(into:)();
  if (*(a1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = a1[4];
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v6);
  }

  MEMORY[0x266772770](a1[6]);
  v7 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v8);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  MEMORY[0x266772770](*a1);
  MEMORY[0x266772770](v4);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      MEMORY[0x266772770](1);
      SGDataTypeGraph.hash(into:)(v15);
    }

    else
    {
      v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v18 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v19 = v11;
      v20 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v12 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v16 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v17 = v12;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v10);
      SGDataTypeStorage.hash(into:)();
    }
  }

  else
  {
    v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = v9;
    v18 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    MEMORY[0x266772770](0);
    BuiltInDefinition.hash(into:)();
  }

  String.hash(into:)();

  v13 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v13);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266771F40](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(**(*(v6 + 48) + 8 * v5) + 128);

      v10 = v9(a1);

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v17 = *a1;
    v18 = ~v3;
    do
    {
      v8 = *(v2 + 48) + 56 * v4;
      if (*v8 == v7)
      {
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v21 = *(v8 + 40);
        v19 = *(v8 + 32);
        v20 = *(v8 + 48);
        v11 = a1[1];
        v12 = *(**(v8 + 8) + 128);

        if (v12(v11))
        {
          if (v9 == a1[2] && v10 == a1[3])
          {

            v7 = v17;
            v6 = v18;
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v7 = v17;
            v6 = v18;
            if ((v14 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v15 = *(a1 + 40);
          if (v21)
          {
            if (!*(a1 + 40))
            {
              goto LABEL_4;
            }
          }

          else
          {
            if (v19 != a1[4])
            {
              v15 = 1;
            }

            if (v15)
            {
              goto LABEL_4;
            }
          }

          if (v20 == a1[6])
          {
            return v4;
          }
        }

        else
        {

          v7 = v17;
          v6 = v18;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*(v13 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (a3)
      {
        goto LABEL_3;
      }

      v14 = *v13 == a1 && *(v13 + 8) == a2;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_3:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = ~v4;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v286 = a1[3];
  v292 = v9;
  v294 = v9 >> 62;
  v295 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  v281 = a1[4];
  v298 = v6;
  v299 = v2 + 64;
  v296 = v8;
  v297 = *a1;
  while (1)
  {
    v11 = (*(v2 + 48) + 40 * v5);
    if (*v11 != v7 || v11[1] != v8)
    {
      goto LABEL_4;
    }

    v13 = v11[2];
    v302 = v11[3];
    v303 = v11[4];
    if (!(v13 >> 62))
    {
      if (!v294)
      {
        result = *(v13 + 16);
        v165 = *(v13 + 32);
        v293 = *(v13 + 40);
        v285 = *(v13 + 48);
        v166 = v292[4];
        v167 = v292[5];
        v283 = v292[6];
        v288 = *(v13 + 56);
        v291 = v292[7];
        if (result == v292[2] && *(v13 + 24) == v292[3])
        {
          goto LABEL_349;
        }

        v169 = v11[2];
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v169;
        v8 = v296;
        v7 = v297;
        v6 = v298;
        v3 = v299;
        v2 = v300;
        if (result)
        {
LABEL_349:
          v170 = *(v165 + 16);
          if (v170 == *(v166 + 16))
          {
            if (v170)
            {
              v171 = v165 == v166;
            }

            else
            {
              v171 = 1;
            }

            if (!v171)
            {
              v186 = (v165 + 56);
              v187 = (v166 + 56);
              while (v170)
              {
                result = *(v186 - 3);
                v188 = *(v186 - 1);
                v189 = *v186;
                v190 = *(v187 - 1);
                v191 = *v187;
                if (result != *(v187 - 3) || *(v186 - 2) != *(v187 - 2))
                {
                  v193 = v13;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v13 = v193;
                  v8 = v296;
                  v7 = v297;
                  v6 = v298;
                  v3 = v299;
                  v2 = v300;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (v188 != v190 || ((v189 ^ v191) & 1) != 0)
                {
                  goto LABEL_4;
                }

                v186 += 32;
                v187 += 32;
                if (!--v170)
                {
                  goto LABEL_234;
                }
              }

              __break(1u);
LABEL_342:
              __break(1u);
              __break(1u);
              __break(1u);
LABEL_343:
              __break(1u);
LABEL_344:
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              goto LABEL_345;
            }

LABEL_234:
            v172 = *(v293 + 16);
            if (v172 == *(v167 + 16))
            {
              if (v172 && v293 != v167)
              {
                v173 = (v293 + 48);
                v174 = (v167 + 48);
                do
                {
                  v175 = *v173;
                  v176 = *v174;
                  if (*(v173 - 2) != *(v174 - 2) || *(v173 - 1) != *(v174 - 1))
                  {
                    v178 = v13;
                    v179 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v13 = v178;
                    v8 = v296;
                    v7 = v297;
                    v6 = v298;
                    v3 = v299;
                    v2 = v300;
                    if ((v179 & 1) == 0)
                    {
                      goto LABEL_4;
                    }
                  }

                  if (v175 != v176)
                  {
                    goto LABEL_4;
                  }

                  v173 += 3;
                  v174 += 3;
                }

                while (--v172);
              }

              switch(v288)
              {
                case 3:
                  if (v291 == 3)
                  {
                    goto LABEL_280;
                  }

                  break;
                case 2:
                  if (v291 == 2)
                  {
                    goto LABEL_280;
                  }

                  break;
                case 1:
                  if (v291 == 1)
                  {
                    goto LABEL_280;
                  }

                  break;
                default:
                  if ((v291 - 1) < 3)
                  {
                    goto LABEL_4;
                  }

                  if (v288)
                  {
                    if (!v291)
                    {
                      goto LABEL_4;
                    }

                    if (v285 != v283 || v288 != v291)
                    {
                      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v8 = v296;
                      v7 = v297;
                      v6 = v298;
                      v3 = v299;
                      v2 = v300;
                      if ((v202 & 1) == 0)
                      {
                        goto LABEL_4;
                      }
                    }

LABEL_280:
                    v32 = v303;

LABEL_253:
                    if (v302 != v286 || v32 != v281)
                    {
                      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v3 = v299;
                      v2 = v300;
                      v7 = v297;
                      v6 = v298;
                      v8 = v296;
                      if (v10)
                      {
                        return v5;
                      }

                      goto LABEL_4;
                    }

                    return v5;
                  }

                  if (!v291)
                  {
                    goto LABEL_280;
                  }

                  break;
              }
            }
          }
        }
      }

      goto LABEL_4;
    }

    if (v13 >> 62 == 1)
    {
      break;
    }

    v180 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v181 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v339[2] = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v339[3] = v181;
    v340 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
    v182 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v339[0] = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v339[1] = v182;
    if (v301 != 0x8000000000000000)
    {
      goto LABEL_4;
    }

    v183 = *(v295 + 16);
    v184 = *(v295 + 80);
    v341[2] = *(v295 + 64);
    v341[3] = v184;
    v342 = *(v295 + 96);
    v185 = *(v295 + 48);
    v341[0] = *(v295 + 32);
    v341[1] = v185;
    if (v180 != v183)
    {
      goto LABEL_4;
    }

    v32 = v303;

    if (specialized static SGDataTypeStorage.== infix(_:_:)(v339, v341))
    {
      goto LABEL_253;
    }

LABEL_256:

    v3 = v299;
    v2 = v300;
    v7 = v297;
    v6 = v298;
    v8 = v296;
LABEL_4:
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (v301 != 0x4000000000000000 || *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *(v295 + 16))
  {
    goto LABEL_4;
  }

  result = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v284 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  v17 = *(v295 + 40);
  v16 = *(v295 + 48);
  v18 = *(v295 + 56);
  v287 = v18;
  v289 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  if (result != *(v295 + 24) || *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *(v295 + 32))
  {
    v20 = v13;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v20;
    v8 = v296;
    v7 = v297;
    v6 = v298;
    v3 = v299;
    v2 = v300;
    if ((result & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21 = *(v15 + 16);
  if (v21 != *(v17 + 16))
  {
    goto LABEL_4;
  }

  if (v21)
  {
    v22 = v15 == v17;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v194 = (v15 + 56);
    v195 = (v17 + 56);
    while (v21)
    {
      result = *(v194 - 3);
      v196 = *(v194 - 1);
      v197 = *v194;
      v198 = *(v195 - 1);
      v199 = *v195;
      if (result != *(v195 - 3) || *(v194 - 2) != *(v195 - 2))
      {
        v201 = v13;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v201;
        v8 = v296;
        v7 = v297;
        v6 = v298;
        v3 = v299;
        v2 = v300;
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v196 != v198 || ((v197 ^ v199) & 1) != 0)
      {
        goto LABEL_4;
      }

      v194 += 32;
      v195 += 32;
      if (!--v21)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_342;
  }

LABEL_25:
  v23 = *(v289 + 16);
  if (v23 != *(v16 + 16))
  {
    goto LABEL_4;
  }

  if (v23 && v289 != v16)
  {
    v24 = (v289 + 48);
    v25 = (v16 + 48);
    do
    {
      v26 = *v24;
      v27 = *v25;
      if (*(v24 - 2) != *(v25 - 2) || *(v24 - 1) != *(v25 - 1))
      {
        v29 = v13;
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v29;
        v8 = v296;
        v7 = v297;
        v6 = v298;
        v3 = v299;
        v2 = v300;
        if ((v30 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v26 != v27)
      {
        goto LABEL_4;
      }

      v24 += 3;
      v25 += 3;
    }

    while (--v23);
  }

  v31 = *(v284 + 16);
  if (v31 != *(v287 + 16))
  {
    goto LABEL_4;
  }

  if (!v31)
  {
    goto LABEL_280;
  }

  v32 = v303;

  if (v284 == v287)
  {
    goto LABEL_253;
  }

  if (!*(v284 + 16))
  {
    goto LABEL_343;
  }

  v33 = 0;
  v34 = v284 + 32;
  v35 = 1;
  v274 = v31;
  while (2)
  {
    v36 = v35;
    v37 = (v34 + 88 * v33);
    v38 = v37[1];
    v319 = *v37;
    v320 = v38;
    v40 = v37[3];
    v39 = v37[4];
    v41 = v37[2];
    v324 = *(v37 + 10);
    v322 = v40;
    v323 = v39;
    v321 = v41;
    if (v33 >= *(v287 + 16))
    {
      goto LABEL_344;
    }

    v42 = *(&v319 + 1);
    v43 = *(&v320 + 1);
    v44 = v320;
    v45 = v321;
    v46 = v287 + 32 + 88 * v33;
    v47 = *(v46 + 16);
    v325 = *v46;
    v326 = v47;
    v49 = *(v46 + 48);
    v48 = *(v46 + 64);
    v50 = *(v46 + 32);
    v330 = *(v46 + 80);
    v328 = v49;
    v329 = v48;
    v327 = v50;
    v51 = v325;
    v52 = v326;
    v278 = v36;
    if (!v321)
    {
      if (!v327)
      {
        outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_215:
        v158 = *(&v322 + 1);
        v159 = *(&v323 + 1);
        v160 = v324;
        v161 = *(&v328 + 1);
        v162 = *(&v329 + 1);
        v163 = v330;
        if ((specialized Sequence<>.elementsEqual<A>(_:)(v328, v322) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(v158, v161) & 1) == 0 || (specialized Sequence<>.elementsEqual<A>(_:)(v162, v159) & 1) == 0)
        {
          goto LABEL_335;
        }

        v164 = _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(v160, v163);
        outlined destroy of [Input](&v325, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        result = outlined destroy of [Input](&v319, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        if ((v164 & 1) == 0)
        {
          goto LABEL_256;
        }

        if (v278 == v274)
        {
          goto LABEL_253;
        }

        v35 = v278 + 1;
        v33 = v278;
        v34 = v284 + 32;
        if (v278 >= *(v284 + 16))
        {
          goto LABEL_343;
        }

        continue;
      }

LABEL_293:
      v315 = v319;
      v316 = v320;
      *v317 = v321;
      *&v317[8] = v325;
      *&v317[24] = v326;
      *&v317[40] = v327;
      v209 = v319;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v325, *(&v325 + 1), v326, *(&v326 + 1), v50);
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v209, v42, v44, v43, v45);
      v210 = &v315;
      v211 = &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMd;
      v212 = &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMR;
LABEL_336:
      outlined destroy of [Input](v210, v211, v212);
      goto LABEL_256;
    }

    break;
  }

  if (!v327)
  {
    goto LABEL_293;
  }

  v275 = *(&v320 + 1);
  v276 = v321;
  v282 = v319;
  v280 = v327;
  if (v319 != v325)
  {
    v215 = v327;
    v272 = *(&v326 + 1);
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v51, *(&v51 + 1), v52, v272, v215);
    v216 = v282;
LABEL_309:
    v219 = v42;
    v228 = v44;
    v234 = v43;
LABEL_315:
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v216, v219, v228, v234, v45);
LABEL_334:

    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v44, v43, v45);
LABEL_335:
    outlined destroy of [Input](&v325, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v210 = &v319;
    v211 = &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd;
    v212 = &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR;
    goto LABEL_336;
  }

  if (*(&v319 + 1) != *(&v325 + 1))
  {
    v217 = v319;
    v218 = v327;
    v273 = *(&v326 + 1);
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v217, *(&v51 + 1), v52, v273, v218);
    v216 = v217;
    goto LABEL_309;
  }

  v277 = v320;
  v279 = *(&v319 + 1);
  v290 = v326;
  if (!(v320 >> 62))
  {
    if (v326 >> 62)
    {
      v225 = v319;
      v226 = v327;
      v227 = *(&v326 + 1);
      outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v225, v42, v52, v227, v226);
      v216 = v225;
      v219 = v42;
      v228 = v44;
LABEL_314:
      v234 = v43;
      v45 = v276;
      goto LABEL_315;
    }

    v132 = *(v320 + 32);
    v270 = *(v320 + 40);
    v271 = *(&v326 + 1);
    v133 = *(v320 + 48);
    v268 = *(v320 + 56);
    v135 = *(v326 + 32);
    v134 = *(v326 + 40);
    v136 = *(v326 + 56);
    v264 = *(v326 + 48);
    if ((*(v320 + 16) != *(v326 + 16) || *(v320 + 24) != *(v326 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v137 = *(v132 + 16), v137 != *(v135 + 16)))
    {
LABEL_301:
      outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v42 = v279;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v279, v52, v271, v280);
      v216 = v282;
      v219 = v279;
      v44 = v277;
LABEL_313:
      v228 = v44;
      v43 = v275;
      goto LABEL_314;
    }

    v262 = v133;
    v266 = v136;
    if (v137 && v132 != v135)
    {
      v138 = (v132 + 56);
      v139 = (v135 + 56);
      while (1)
      {
        v140 = *(v138 - 1);
        v141 = *v138;
        v142 = *(v139 - 1);
        v143 = *v139;
        v144 = *(v138 - 3) == *(v139 - 3) && *(v138 - 2) == *(v139 - 2);
        if (!v144 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v140 != v142)
        {
          break;
        }

        v52 = v290;
        if (v141 != v143)
        {
          outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          v206 = v282;
          v207 = v282;
          v42 = v279;
          v208 = v279;
          goto LABEL_295;
        }

        v138 += 32;
        v139 += 32;
        if (!--v137)
        {
          goto LABEL_178;
        }
      }

LABEL_292:
      outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v206 = v282;
      v207 = v282;
      v42 = v279;
      v208 = v279;
      v52 = v290;
LABEL_295:
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v207, v208, v52, v271, v280);
      v213 = v206;
      v214 = v42;
      v44 = v277;
      goto LABEL_299;
    }

LABEL_178:
    v145 = *(v270 + 16);
    if (v145 != *(v134 + 16))
    {
      goto LABEL_301;
    }

    v44 = v277;
    if (v145 && v270 != v134)
    {
      v146 = (v270 + 48);
      v147 = (v134 + 48);
      while (1)
      {
        v148 = *v146;
        v149 = *v147;
        v150 = *(v146 - 2) == *(v147 - 2) && *(v146 - 1) == *(v147 - 1);
        v42 = v279;
        if (!v150 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        if (v148 != v149)
        {
          break;
        }

        v146 += 3;
        v147 += 3;
        if (!--v145)
        {
          goto LABEL_189;
        }
      }

LABEL_290:
      outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v203 = v282;
      v204 = v282;
      goto LABEL_291;
    }

LABEL_189:
    if (v268 == 1)
    {
      v32 = v303;
      v42 = v279;
      if (v266 != 1)
      {
        goto LABEL_302;
      }
    }

    else
    {
      v32 = v303;
      v42 = v279;
      if (v268 == 2)
      {
        if (v266 != 2)
        {
          goto LABEL_302;
        }
      }

      else if (v268 == 3)
      {
        if (v266 != 3)
        {
          goto LABEL_302;
        }
      }

      else
      {
        if ((v266 - 1) < 3)
        {
          goto LABEL_302;
        }

        if (v268)
        {
          if (!v266 || (v262 != v264 || v268 != v266) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_302:
            outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v220 = v282;
            v221 = v282;
LABEL_304:
            v222 = v42;
            v223 = v52;
            v224 = v271;
LABEL_312:
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v221, v222, v223, v224, v280);
            v216 = v220;
            v219 = v42;
            goto LABEL_313;
          }
        }

        else if (v266)
        {
          goto LABEL_302;
        }
      }
    }

LABEL_210:
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v131 = v271;
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v52, v271, v280);
    v43 = v275;
    v45 = v276;
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v44, v275, v276);
    goto LABEL_211;
  }

  if (v320 >> 62 != 1)
  {
    v131 = *(&v326 + 1);
    v151 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v152 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v335[2] = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v335[3] = v152;
    v336 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
    v153 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v335[0] = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v335[1] = v153;
    if (v326 >> 62 == 2)
    {
      v154 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v155 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v337[2] = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v337[3] = v155;
      v338 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v156 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v337[0] = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v337[1] = v156;
      if (v151 == v154)
      {
        outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v52, v131, v280);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v44, v43, v45);
        if ((specialized static SGDataTypeStorage.== infix(_:_:)(v335, v337) & 1) == 0)
        {
          goto LABEL_334;
        }

LABEL_211:
        if (v43 == v131 && v45 == v280)
        {

          outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v44, v43, v45);
        }

        else
        {
          v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v282, v42, v44, v43, v45);
          if ((v157 & 1) == 0)
          {
            goto LABEL_335;
          }
        }

        goto LABEL_215;
      }

      outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v220 = v282;
      v221 = v282;
      v222 = v42;
      v223 = v52;
      v224 = v131;
      goto LABEL_312;
    }

    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v229 = v282;
    v230 = v282;
    v231 = v42;
    v232 = v52;
    v233 = v131;
    goto LABEL_308;
  }

  v271 = *(&v326 + 1);
  if (v326 >> 62 != 1)
  {
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v229 = v282;
    v230 = v282;
    v231 = v42;
    v232 = v52;
    v233 = v271;
LABEL_308:
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v230, v231, v232, v233, v280);
    v216 = v229;
    goto LABEL_309;
  }

  if (*((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
  {
    goto LABEL_302;
  }

  v53 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v265 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v54 = *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  v56 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v55 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v269 = *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  if ((*((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) || *((v320 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *((v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x20)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v57 = *(v53 + 16), v57 != *(v56 + 16)))
  {
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v220 = v282;
    v221 = v282;
    v42 = v279;
    goto LABEL_304;
  }

  v267 = v54;
  if (v57 && v53 != v56)
  {
    v58 = (v53 + 56);
    v59 = (v56 + 56);
    do
    {
      v60 = *(v58 - 1);
      v61 = *v58;
      v62 = *(v59 - 1);
      v63 = *v59;
      v64 = *(v58 - 3) == *(v59 - 3) && *(v58 - 2) == *(v59 - 2);
      if (!v64 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v60 != v62)
      {
        goto LABEL_292;
      }

      v44 = v277;
      if (v61 != v63)
      {
        outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v203 = v282;
        v204 = v282;
        v42 = v279;
        v205 = v279;
        v52 = v290;
        goto LABEL_298;
      }

      v58 += 32;
      v59 += 32;
      --v57;
      v52 = v290;
    }

    while (v57);
  }

  v65 = *(v265 + 16);
  if (v65 != *(v55 + 16))
  {
    outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v203 = v282;
    v204 = v282;
    v42 = v279;
LABEL_291:
    v205 = v42;
LABEL_298:
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v204, v205, v52, v271, v280);
    v213 = v203;
    v214 = v42;
LABEL_299:
    v43 = v275;
    v45 = v276;
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v213, v214, v44, v275, v276);
    goto LABEL_334;
  }

  v42 = v279;
  if (v65 && v265 != v55)
  {
    v66 = (v265 + 48);
    v67 = (v55 + 48);
    do
    {
      v68 = *v66;
      v69 = *v67;
      v70 = *(v66 - 2) == *(v67 - 2) && *(v66 - 1) == *(v67 - 1);
      if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v68 != v69)
      {
        goto LABEL_290;
      }

      v66 += 3;
      v67 += 3;
    }

    while (--v65);
  }

  v71 = v269;
  v72 = *(v267 + 16);
  if (v72 != *(v269 + 16))
  {
    goto LABEL_290;
  }

  v32 = v303;
  if (!v72 || v267 == v269)
  {
    goto LABEL_210;
  }

  v255 = *(v267 + 16);
  outlined init with copy of [Input](&v319, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  outlined init with copy of [Input](&v325, &v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v279, v52, v271, v280);
  v43 = v275;
  v45 = v276;
  result = outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v282, v279, v44, v275, v276);
  if (*(v267 + 16))
  {
    v73 = 0;
    v74 = 1;
    do
    {
      v75 = v74;
      v76 = v267 + 32 + 88 * v73;
      v77 = *(v76 + 16);
      v309 = *v76;
      v310 = v77;
      v79 = *(v76 + 48);
      v78 = *(v76 + 64);
      v80 = *(v76 + 80);
      v311 = *(v76 + 32);
      v314 = v80;
      v312 = v79;
      v313 = v78;
      if (v73 >= *(v71 + 16))
      {
        goto LABEL_346;
      }

      v81 = v310;
      v82 = v269 + 32 + 88 * v73;
      v83 = *(v82 + 16);
      v315 = *v82;
      v316 = v83;
      v85 = *(v82 + 48);
      v84 = *(v82 + 64);
      v86 = *(v82 + 32);
      v318 = *(v82 + 80);
      *&v317[16] = v85;
      *&v317[32] = v84;
      *v317 = v86;
      v87 = v315;
      v258 = v311;
      v259 = v75;
      if (!v311)
      {
        if (*v317)
        {
LABEL_317:
          v304[0] = v309;
          v304[1] = v310;
          v305 = v311;
          v306 = v315;
          v307 = v316;
          v308 = *v317;
          v263 = v309;
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v315, *(&v315 + 1), v316, *(&v316 + 1), v86);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v263, *(&v263 + 1), v81, *(&v81 + 1), v258);
          outlined destroy of [Input](v304, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMR);
          goto LABEL_334;
        }

        outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        goto LABEL_153;
      }

      if (!*v317)
      {
        goto LABEL_317;
      }

      v261 = v309;
      v257 = v316;
      v260 = *v317;
      if (v309 != v315)
      {
        v235 = *(&v309 + 1);
        v236 = v309;
        v240 = v316;
        v241 = *v317;
        v242 = *(&v316 + 1);
        outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v244 = *(&v87 + 1);
        v243 = v87;
        v245 = v240;
        v246 = v242;
        v247 = v241;
LABEL_329:
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v243, v244, v245, v246, v247);
        goto LABEL_330;
      }

      v256 = *(&v316 + 1);
      v88 = v310;
      if (*(&v309 + 1) != *(&v315 + 1))
      {
        v235 = *(&v309 + 1);
        v236 = v309;
        v248 = v316;
        outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v237 = v236;
        v238 = *(&v87 + 1);
        v239 = v248;
        goto LABEL_327;
      }

      if (v310 >> 62)
      {
        if (v310 >> 62 == 1)
        {
          if (v316 >> 62 != 1)
          {
            goto LABEL_323;
          }

          if (*((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
          {
            outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v235 = *(&v261 + 1);
            v244 = *(&v261 + 1);
            v236 = v261;
            v243 = v261;
            v245 = v257;
            v246 = v256;
            v247 = v260;
            goto LABEL_329;
          }

          v89 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v251 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          v253 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v91 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v90 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v249 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          if ((*((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) || *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x20)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_310;
          }

          v92 = *(v89 + 16);
          if (v92 != *(v91 + 16))
          {
            goto LABEL_310;
          }

          if (v92 && v89 != v91)
          {
            v93 = (v89 + 56);
            v94 = (v91 + 56);
            while (1)
            {
              v95 = *(v93 - 1);
              v96 = *v93;
              v97 = *(v94 - 1);
              v98 = *v94;
              v99 = *(v93 - 3) == *(v94 - 3) && *(v93 - 2) == *(v94 - 2);
              if (!v99 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v95 != v97 || v96 != v98)
              {
                break;
              }

              v93 += 32;
              v94 += 32;
              if (!--v92)
              {
                goto LABEL_105;
              }
            }

LABEL_310:
            outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v235 = *(&v261 + 1);
            v236 = v261;
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v257, v256, v260);
            v44 = v277;
LABEL_330:
            v88 = v81;
LABEL_331:
            v107 = v258;
            v108 = *(&v81 + 1);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v236, v235, v88, *(&v81 + 1), v258);
LABEL_332:

            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v88, v108, v107);
LABEL_333:
            outlined destroy of [Input](&v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined destroy of [Input](&v309, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v43 = v275;
            v45 = v276;
            v42 = v279;
            goto LABEL_334;
          }

LABEL_105:
          v100 = *(v253 + 16);
          if (v100 != *(v90 + 16))
          {
            goto LABEL_310;
          }

          v44 = v277;
          v88 = v81;
          if (v100 && v253 != v90)
          {
            v101 = (v253 + 48);
            v102 = (v90 + 48);
            while (1)
            {
              v103 = *v101;
              v104 = *v102;
              v105 = *(v101 - 2) == *(v102 - 2) && *(v101 - 1) == *(v102 - 1);
              if (!v105 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v103 != v104)
              {
                break;
              }

              v101 += 3;
              v102 += 3;
              if (!--v100)
              {
                goto LABEL_116;
              }
            }

            outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v235 = *(&v261 + 1);
            v236 = v261;
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v257, v256, v260);
            goto LABEL_331;
          }

LABEL_116:
          outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          v106 = v256;
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v257, v256, v260);
          v107 = v258;
          v108 = *(&v81 + 1);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v81, *(&v81 + 1), v258);
          v32 = v303;
          if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v251, v249) & 1) == 0)
          {
            goto LABEL_332;
          }
        }

        else
        {
          v115 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v116 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
          v331[2] = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          v331[3] = v116;
          v332 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
          v117 = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v331[0] = *((v310 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v331[1] = v117;
          if (v316 >> 62 != 2)
          {
LABEL_323:
            v235 = *(&v309 + 1);
            v236 = v309;
            v120 = v316;
            outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_326:
            v237 = v236;
            v238 = v235;
            v239 = v120;
            goto LABEL_327;
          }

          v118 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v119 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
          v333[2] = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          v333[3] = v119;
          v120 = v316;
          v334 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
          v121 = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v333[0] = *((v316 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v333[1] = v121;
          if (v115 != v118)
          {
            goto LABEL_325;
          }

          outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          v122 = v120;
          v106 = v256;
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v122, v256, v260);
          v107 = v258;
          v108 = *(&v81 + 1);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v81, *(&v81 + 1), v258);
          if ((specialized static SGDataTypeStorage.== infix(_:_:)(v331, v333) & 1) == 0)
          {
            goto LABEL_332;
          }
        }

        goto LABEL_149;
      }

      if (v316 >> 62)
      {
        v120 = v316;
LABEL_325:
        outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v235 = *(&v261 + 1);
        v236 = v261;
        goto LABEL_326;
      }

      v109 = *(v310 + 32);
      v110 = *(v310 + 56);
      v250 = *(v310 + 48);
      v112 = *(v316 + 32);
      v111 = *(v316 + 40);
      v252 = v111;
      v254 = *(v310 + 40);
      v114 = *(v316 + 48);
      v113 = *(v316 + 56);
      if ((*(v310 + 16) != *(v316 + 16) || *(v310 + 24) != *(v316 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v109, v112) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v254, v252) & 1) == 0)
      {
LABEL_320:
        outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v235 = *(&v261 + 1);
        v238 = *(&v261 + 1);
        v236 = v261;
        v237 = v261;
        v239 = v257;
LABEL_327:
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v237, v238, v239, v256, v260);
        goto LABEL_331;
      }

      switch(v110)
      {
        case 1:
          if (v113 != 1)
          {
            goto LABEL_320;
          }

          break;
        case 2:
          if (v113 != 2)
          {
            goto LABEL_320;
          }

          break;
        case 3:
          if (v113 != 3)
          {
            goto LABEL_320;
          }

          break;
        default:
          if ((v113 - 1) < 3)
          {
            goto LABEL_320;
          }

          if (v110)
          {
            if (!v113 || (v250 != v114 || v110 != v113) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_310;
            }

            outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v32 = v303;
            v44 = v277;
            v88 = v81;
            goto LABEL_148;
          }

          if (v113)
          {
            goto LABEL_320;
          }

          break;
      }

      outlined init with copy of [Input](&v309, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v315, v304, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_148:
      v106 = v256;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v257, v256, v260);
      v107 = v258;
      v108 = *(&v81 + 1);
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v88, *(&v81 + 1), v258);
LABEL_149:
      if (v108 == v106 && v107 == v260)
      {

        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v88, v108, v107);
      }

      else
      {
        v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v261, *(&v261 + 1), v88, v108, v107);
        if ((v123 & 1) == 0)
        {
          goto LABEL_333;
        }
      }

LABEL_153:
      v124 = *(&v312 + 1);
      v125 = *(&v313 + 1);
      v126 = v314;
      v127 = *&v317[24];
      v128 = *&v317[40];
      v129 = v318;
      if ((specialized Sequence<>.elementsEqual<A>(_:)(*&v317[16], v312) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(v124, v127) & 1) == 0 || (specialized Sequence<>.elementsEqual<A>(_:)(v128, v125) & 1) == 0)
      {
        goto LABEL_333;
      }

      v130 = _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(v126, v129);
      outlined destroy of [Input](&v315, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      result = outlined destroy of [Input](&v309, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v42 = v279;
      if ((v130 & 1) == 0)
      {
        v43 = v275;
        v45 = v276;
        goto LABEL_334;
      }

      v43 = v275;
      v45 = v276;
      v131 = v271;
      if (v259 == v255)
      {
        goto LABEL_211;
      }

      v74 = v259 + 1;
      v71 = v269;
      v73 = v259;
    }

    while (v259 < *(v267 + 16));
  }

LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(float32x4_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = a1[3];
    v19[2] = a1[2];
    v19[3] = v9;
    v20 = a1[4].i8[0];
    v10 = a1[1];
    v19[0] = *a1;
    v19[1] = v10;
    do
    {
      v11 = *(v6 + 48) + 80 * v5;
      v21[0] = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      v22 = *(v11 + 64);
      v21[2] = v13;
      v21[3] = v12;
      v21[1] = v14;
      v15 = *(v11 + 72);
      outlined init with copy of SGDataTypeStorage(v21, &v18);

      if (specialized static SGDataTypeStorage.== infix(_:_:)(v21, v19))
      {
        v16 = (*(*v15 + 128))(a1[4].i64[1]);
        outlined destroy of SGDataTypeStorage(v21);

        if (v16)
        {
          return v5;
        }
      }

      else
      {
        outlined destroy of SGDataTypeStorage(v21);
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1397716596;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x534F6E6F69736976;
          }

          else
          {
            v8 = 0x4B7974696C616572;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xEA00000000007469;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x534F63616DLL;
        }

        else
        {
          v8 = 0x534F6863746177;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 5459817;
      }

      v10 = 0x534F6E6F69736976;
      if (v6 != 4)
      {
        v10 = 0x4B7974696C616572;
      }

      v11 = 0xEA00000000007469;
      if (v6 == 4)
      {
        v11 = 0xE800000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1397716596;
        v11 = 0xE400000000000000;
      }

      v12 = 0x534F6863746177;
      if (v6 == 1)
      {
        v12 = 0x534F63616DLL;
      }

      v13 = 0xE500000000000000;
      if (v6 != 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!v6)
      {
        v12 = 5459817;
        v13 = 0xE300000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized UserGraphCompiler.CompileContext.setOutput(_:for:)(void *a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v3 = *(a2 + 40);
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    v6 = *(a2 + 64);
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    v19[0] = *(a2 + 32);
    v19[1] = v3;
    v19[2] = v4;
    v19[3] = v5;
    v19[4] = v6;
    v20 = v7;
    v21 = v8;
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = *(v10 + 24);

    v12 = v11(v9, v10);
    v13 = *(v2 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 192);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v19, isUniquelyReferenced_nonNull_native);

    *(v2 + 192) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v16);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](41, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v17 = 40;
    *(v17 + 8) = 0xD000000000000027;
    *(v17 + 16) = 0x8000000265F34CD0;
    return swift_willThrow();
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized Sequence.forEach(_:)(void *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[2];
  v39 = a1[1];
  v40 = v6;
  v8 = a1[4];
  v37 = a1[3];
  v38 = v7;
  v36 = v8;
  v9 = *(a1 + 1);
  v32 = *a1;
  v33 = v9;
  v34 = v8;
  outlined init with copy of [Input](&v40, &v25, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v39, &v25, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v38, &v25, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v37, &v25, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v36, &v25, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  while (1)
  {
    UserGraph.DepthFirstEdgeIterator.next()(v35);
    v29 = v35[4];
    v30 = v35[5];
    v31 = v35[6];
    v25 = v35[0];
    v26 = v35[1];
    v27 = v35[2];
    v28 = v35[3];
    if (!*(&v35[0] + 1))
    {
      break;
    }

    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    closure #1 in UserGraphCompiler.emitEdges(context:into:)(&v18, a2, a3);
    if (v3)
    {
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v11 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      outlined destroy of Edge(&v11);
      break;
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    outlined destroy of Edge(&v11);
  }
}

uint64_t specialized UserGraphCompiler.emitFunctionNodes(context:into:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < v6)
    {
      v10 = v5 + 32 + 48 * v8;
      v11 = *(v10 + 24);
      if (v11 == -7)
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_13;
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_14;
        }

        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *v10;
        v15 = *(v10 + 40);
        v16 = *(v10 + 32);
        *&v17 = v14;
        *(&v17 + 1) = v12;
        v18 = v13;
        v19 = v11;
        v20 = v16;
        v21 = v15;
        outlined copy of NodePersonality(v14);

        closure #1 in UserGraphCompiler.emitFunctionNodes(context:into:)(&v17, &v22, a1);
        outlined consume of NodePersonality(v14);
        if (v3)
        {
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:

    return v22;
  }

  return result;
}

uint64_t specialized UserGraphCompiler.applyConstExpr(context:into:)(uint64_t a1, uint64_t a2)
{
  v123 = swift_allocObject();
  *(v123 + 16) = MEMORY[0x277D84FA0];
  v3 = *(*a2 + 120);
  v149 = a2;
  v4 = v3();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of MetalFunctionNode(v6, &v140);
      outlined init with take of MetalFunctionNode(&v140, &v146);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
      if (swift_dynamicCast())
      {
        if (*(&v144 + 1))
        {
          outlined init with take of MetalFunctionNode(&v143, &v146);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
          }

          v9 = v7[2];
          v8 = v7[3];
          if (v9 >= v8 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
          }

          v7[2] = v9 + 1;
          outlined init with take of MetalFunctionNode(&v146, &v7[5 * v9 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v145 = 0;
        v143 = 0u;
        v144 = 0u;
      }

      outlined destroy of [Input](&v143, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
LABEL_5:
      v6 += 40;
      if (!--v5)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:
  v11 = v7[2];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v14 = (v7 + 4);
    v15 = (v123 + 16);
    while (v13 < v7[2])
    {
      outlined init with copy of MetalFunctionNode(v14, &v140);
      v16 = v141;
      v17 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      if ((*(v17 + 16))(v16, v17))
      {
        outlined init with take of MetalFunctionNode(&v140, &v146);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v143 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v143;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v12 = v143;
        }

        *(v12 + 16) = v20 + 1;
        result = outlined init with take of MetalFunctionNode(&v146, v12 + 40 * v20 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v140);
      }

      ++v13;
      v14 += 40;
      if (v11 == v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
  }

  else
  {
    v15 = (v123 + 16);
LABEL_27:

    v119 = *(v12 + 16);
    if (!v119)
    {

      v22 = v149;
LABEL_95:

LABEL_105:

      return v22;
    }

    v122 = v12 + 32;
    result = swift_beginAccess();
    v21 = 0;
    v22 = v149;
    v23 = v123;
    v24 = v124;
    v121 = v12;
    while (v21 < *(v12 + 16))
    {
      v120 = v21;
      outlined init with copy of MetalFunctionNode(v122 + 40 * v21, &v146);
      v25 = *v15;
      v26 = v147;
      v27 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v28 = (*(*(v27 + 8) + 24))(v26);
      if (*(v25 + 16) && (v29 = v28, v30 = *(v25 + 40), Hasher.init(_seed:)(), MEMORY[0x266772770](v29), v31 = Hasher._finalize()(), v32 = -1 << *(v25 + 32), v33 = v31 & ~v32, ((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (*(*(v25 + 48) + 8 * v33) != v29)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
LABEL_35:
        outlined init with copy of MetalFunctionNode(&v146, &v143);
        v35 = *(&v144 + 1);
        v36 = v145;
        __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
        v37 = (*(*(v36 + 8) + 24))(v35);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v139, v37);
        swift_endAccess();
        v38 = *(&v144 + 1);
        v39 = v145;
        __swift_mutable_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
        (*(v39 + 24))(1, v38, v39);
        v40 = *(&v144 + 1);
        v41 = v145;
        __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
        v42 = (*(*(v41 + 8) + 48))(v40);
        v43 = *(v42 + 16);
        if (v43)
        {
          v139[0] = MEMORY[0x277D84F90];
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
          v44 = 0;
          v45 = v139[0];
          v46 = *(*v22 + 272);
          while (v44 < *(v42 + 16))
          {
            v46(&v140, *(v42 + 8 * v44 + 32));
            if (v24)
            {

              v22 = v149;
LABEL_104:
              __swift_destroy_boxed_opaque_existential_1Tm(&v143);
              __swift_destroy_boxed_opaque_existential_1Tm(&v146);
              goto LABEL_105;
            }

            v139[0] = v45;
            v48 = *(v45 + 16);
            v47 = *(v45 + 24);
            v49 = v45;
            if (v48 >= v47 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
              v49 = v139[0];
            }

            ++v44;
            *(v49 + 16) = v48 + 1;
            result = outlined init with take of MetalFunctionNode(&v140, v49 + 40 * v48 + 32);
            v45 = v49;
            if (v43 == v44)
            {

              v22 = v149;
              v15 = (v123 + 16);
              v23 = v123;
              goto LABEL_44;
            }
          }

          goto LABEL_109;
        }

        v45 = MEMORY[0x277D84F90];
LABEL_44:
        v116 = *(v45 + 16);
        if (v116)
        {
          v50 = 0;
          v51 = v45 + 32;
          v118 = v45;
          v113 = v45 + 32;
          while (v50 < *(v45 + 16))
          {
            v117 = v50;
            outlined init with copy of MetalFunctionNode(v51 + 40 * v50, v139);
            outlined init with copy of MetalFunctionNode(v139, &v140);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
            if (!swift_dynamicCast())
            {

              v135 = 0;
              v133 = 0u;
              v134 = 0u;
              outlined destroy of [Input](&v133, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v109 = 47;
              *(v109 + 8) = 0xD00000000000005CLL;
              *(v109 + 16) = 0x8000000265F34C40;
              swift_willThrow();
              v108 = v139;
LABEL_103:
              __swift_destroy_boxed_opaque_existential_1Tm(v108);
              goto LABEL_104;
            }

            outlined init with take of MetalFunctionNode(&v133, v136);
            v52 = *v15;
            v53 = v137;
            v54 = v138;
            __swift_project_boxed_opaque_existential_1(v136, v137);
            v55 = (*(*(v54 + 8) + 24))(v53);
            if (*(v52 + 16) && (v56 = v55, v57 = *(v52 + 40), Hasher.init(_seed:)(), MEMORY[0x266772770](v56), v58 = Hasher._finalize()(), v59 = -1 << *(v52 + 32), v60 = v58 & ~v59, ((*(v52 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
            {
              v61 = ~v59;
              while (*(*(v52 + 48) + 8 * v60) != v56)
              {
                v60 = (v60 + 1) & v61;
                if (((*(v52 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_53;
                }
              }

              v106 = v139;
            }

            else
            {
LABEL_53:
              outlined init with copy of MetalFunctionNode(v136, &v133);
              v62 = *(&v134 + 1);
              v63 = v135;
              __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
              v64 = (*(*(v63 + 8) + 24))(v62);
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v132, v64);
              swift_endAccess();
              v65 = *(&v134 + 1);
              v66 = v135;
              __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
              (*(v66 + 24))(1, v65, v66);
              v67 = *(&v134 + 1);
              v68 = v135;
              __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
              v69 = (*(*(v68 + 8) + 48))(v67);
              v70 = *(v69 + 16);
              if (v70)
              {
                v132[0] = MEMORY[0x277D84F90];
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
                v71 = 0;
                v72 = v132[0];
                v73 = *(*v22 + 272);
                while (v71 < *(v69 + 16))
                {
                  v73(&v140, *(v69 + 8 * v71 + 32));
                  if (v24)
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(v139);

                    v22 = v149;
LABEL_102:
                    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
                    v108 = v136;
                    goto LABEL_103;
                  }

                  v132[0] = v72;
                  v75 = *(v72 + 16);
                  v74 = *(v72 + 24);
                  v76 = v72;
                  if (v75 >= v74 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
                    v76 = v132[0];
                  }

                  ++v71;
                  *(v76 + 16) = v75 + 1;
                  result = outlined init with take of MetalFunctionNode(&v140, v76 + 40 * v75 + 32);
                  v72 = v76;
                  if (v70 == v71)
                  {

                    v22 = v149;
                    v15 = (v123 + 16);
                    v23 = v123;
                    goto LABEL_62;
                  }
                }

                goto LABEL_110;
              }

              v72 = MEMORY[0x277D84F90];
LABEL_62:
              v45 = v118;
              v112 = *(v72 + 16);
              if (v112)
              {
                v77 = 0;
                v114 = v72 + 32;
                v111 = v72;
                while (v77 < *(v72 + 16))
                {
                  outlined init with copy of MetalFunctionNode(v114 + 40 * v77, v132);
                  outlined init with copy of MetalFunctionNode(v132, &v140);
                  if (!swift_dynamicCast())
                  {

                    v128 = 0;
                    memset(v127, 0, sizeof(v127));
                    outlined destroy of [Input](v127, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v110 = 47;
                    *(v110 + 8) = 0xD00000000000005CLL;
                    *(v110 + 16) = 0x8000000265F34C40;
                    swift_willThrow();
                    __swift_destroy_boxed_opaque_existential_1Tm(v132);
                    v107 = v139;
LABEL_101:
                    __swift_destroy_boxed_opaque_existential_1Tm(v107);
                    goto LABEL_102;
                  }

                  v115 = v77;
                  outlined init with take of MetalFunctionNode(v127, v129);
                  v78 = *v15;
                  v79 = v130;
                  v80 = v131;
                  __swift_project_boxed_opaque_existential_1(v129, v130);
                  v81 = (*(*(v80 + 8) + 24))(v79);
                  if (*(v78 + 16) && (v82 = v81, v83 = *(v78 + 40), Hasher.init(_seed:)(), MEMORY[0x266772770](v82), v84 = Hasher._finalize()(), v85 = -1 << *(v78 + 32), v86 = v84 & ~v85, ((*(v78 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) != 0))
                  {
                    v87 = ~v85;
                    while (*(*(v78 + 48) + 8 * v86) != v82)
                    {
                      v86 = (v86 + 1) & v87;
                      if (((*(v78 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
                      {
                        goto LABEL_71;
                      }
                    }

                    __swift_destroy_boxed_opaque_existential_1Tm(v132);
                  }

                  else
                  {
LABEL_71:
                    outlined init with copy of MetalFunctionNode(v129, &v140);
                    v88 = v141;
                    v89 = v142;
                    __swift_project_boxed_opaque_existential_1(&v140, v141);
                    v90 = (*(*(v89 + 8) + 24))(v88);
                    swift_beginAccess();
                    specialized Set._Variant.insert(_:)(&v126, v90);
                    swift_endAccess();
                    v91 = v141;
                    v92 = v142;
                    __swift_mutable_project_boxed_opaque_existential_1(&v140, v141);
                    (*(v92 + 24))(1, v91, v92);
                    v93 = v141;
                    v94 = v142;
                    __swift_project_boxed_opaque_existential_1(&v140, v141);
                    v95 = (*(*(v94 + 8) + 48))(v93);
                    v96 = v95;
                    v97 = *(v95 + 16);
                    if (v97)
                    {
                      v125 = *(v95 + 16);
                      v126 = MEMORY[0x277D84F90];
                      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
                      v98 = 0;
                      v99 = v126;
                      v100 = *(*v22 + 272);
                      while (v98 < *(v96 + 16))
                      {
                        v100(v127, *(v96 + 8 * v98 + 32));
                        if (v24)
                        {

                          __swift_destroy_boxed_opaque_existential_1Tm(v132);
                          __swift_destroy_boxed_opaque_existential_1Tm(v139);

                          v22 = v149;
LABEL_100:
                          __swift_destroy_boxed_opaque_existential_1Tm(&v140);
                          v107 = v129;
                          goto LABEL_101;
                        }

                        v126 = v99;
                        v102 = *(v99 + 16);
                        v101 = *(v99 + 24);
                        if (v102 >= v101 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
                          v99 = v126;
                        }

                        ++v98;
                        *(v99 + 16) = v102 + 1;
                        result = outlined init with take of MetalFunctionNode(v127, v99 + 40 * v102 + 32);
                        if (v125 == v98)
                        {

                          v22 = v149;
                          v15 = (v123 + 16);
                          v23 = v123;
                          goto LABEL_80;
                        }
                      }

                      goto LABEL_111;
                    }

                    v99 = MEMORY[0x277D84F90];
LABEL_80:
                    v103 = *(v99 + 16);
                    v45 = v118;
                    if (v103)
                    {
                      v104 = 0;
                      v105 = v99 + 32;
                      while (v104 < *(v99 + 16))
                      {
                        outlined init with copy of MetalFunctionNode(v105, v127);
                        closure #2 in applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v127, v23, v22);
                        if (v24)
                        {

                          __swift_destroy_boxed_opaque_existential_1Tm(v127);
                          __swift_destroy_boxed_opaque_existential_1Tm(v132);
                          __swift_destroy_boxed_opaque_existential_1Tm(v139);
                          goto LABEL_100;
                        }

                        ++v104;
                        result = __swift_destroy_boxed_opaque_existential_1Tm(v127);
                        v105 += 40;
                        if (v103 == v104)
                        {
                          goto LABEL_85;
                        }
                      }

                      goto LABEL_112;
                    }

LABEL_85:
                    __swift_destroy_boxed_opaque_existential_1Tm(v132);

                    __swift_destroy_boxed_opaque_existential_1Tm(&v140);
                    v72 = v111;
                  }

                  v77 = v115 + 1;
                  result = __swift_destroy_boxed_opaque_existential_1Tm(v129);
                  if (v115 + 1 == v112)
                  {
                    goto LABEL_88;
                  }
                }

                goto LABEL_115;
              }

LABEL_88:
              __swift_destroy_boxed_opaque_existential_1Tm(v139);

              v106 = &v133;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v106);
            result = __swift_destroy_boxed_opaque_existential_1Tm(v136);
            v50 = v117 + 1;
            v51 = v113;
            if (v117 + 1 == v116)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_114;
        }

LABEL_91:

        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v146);
      v21 = v120 + 1;
      v12 = v121;
      if (v120 + 1 == v119)
      {

        goto LABEL_95;
      }
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t specialized UserGraphCompiler.removePassthroughNodes(context:into:)(uint64_t a1, uint64_t a2)
{
  v46 = *(*a2 + 120);
  v2 = v46();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = v2 + 32;
    while (v6 < *(v3 + 16))
    {
      outlined init with copy of MetalFunctionNode(v7, v54);
      outlined init with copy of MetalFunctionNode(v54, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalPassthroughNode();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      else
      {
        outlined init with take of MetalFunctionNode(v54, &v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
          v5 = v59;
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        v11 = v5;
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v11 = v59;
        }

        *(v11 + 16) = v10 + 1;
        outlined init with take of MetalFunctionNode(&v56, v11 + 40 * v10 + 32);
        v5 = v11;
      }

      ++v6;
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_12:

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v59;
    v48 = v5;
    v49 = v5 + 32;
    v50 = v12;
    while (v14 < *(v5 + 16))
    {
      v51 = v14;
      v52 = v15;
      outlined init with copy of MetalFunctionNode(v49 + 40 * v14, &v56);
      v16 = v57;
      v17 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, v57);
      v18 = (*(v17 + 48))(v16, v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        v55 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v20 = v55;
        v21 = 32;
        do
        {
          *&v54[0] = *(v18 + v21);
          outlined init with copy of MetalFunctionNode(&v56, v54 + 8);
          v55 = v20;
          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
            v20 = v55;
          }

          *(v20 + 16) = v23 + 1;
          v24 = (v20 + 48 * v23);
          v25 = v54[0];
          v26 = v54[2];
          v24[3] = v54[1];
          v24[4] = v26;
          v24[2] = v25;
          v21 += 8;
          --v19;
        }

        while (v19);

        v13 = MEMORY[0x277D84F90];
        v5 = v48;
      }

      else
      {

        v20 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      v15 = v52;
      v59 = v52;
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v15 = v59;
      }

      v14 = v51 + 1;
      *(v15 + 16) = v28 + 1;
      *(v15 + 8 * v28 + 32) = v20;
      if (v51 + 1 == v50)
      {
        goto LABEL_25;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_25:

  *&v54[0] = MEMORY[0x277D84F98];

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v29, 1, v54);
  if (v45)
  {
LABEL_49:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v53 = *&v54[0];
  v31 = (v46)(v30);
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = MEMORY[0x277D84F90];
    v36 = v31 + 32;
    while (v34 < *(v32 + 16))
    {
      outlined init with copy of MetalFunctionNode(v36, v54);
      outlined init with copy of MetalFunctionNode(v54, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalPassthroughNode();
      if (swift_dynamicCast())
      {

        outlined init with take of MetalFunctionNode(v54, &v56);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v35;
        if ((v37 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1);
          v35 = v59;
        }

        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v35 = v59;
        }

        *(v35 + 16) = v39 + 1;
        outlined init with take of MetalFunctionNode(&v56, v35 + 40 * v39 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      ++v34;
      v36 += 40;
      if (v33 == v34)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_47;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_38:

  v40 = *(v35 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = v35 + 32;
    v43 = a2;
    while (v41 < *(v35 + 16))
    {
      outlined init with copy of MetalFunctionNode(v42, v54);
      closure #4 in UserGraphCompiler.removePassthroughNodes(context:into:)(v54, a2, v53);
      ++v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v42 += 40;
      if (v40 == v41)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_48;
  }

  v43 = a2;
LABEL_44:

  (*(*v43 + 288))(closure #5 in UserGraphCompiler.removePassthroughNodes(context:into:), 0);

  return v43;
}

__n128 sub_265F194C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 88))(v9);
  v3 = v9[11];
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v3;
  *(a2 + 192) = v10;
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  v5 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v5;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_265F19568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v2;
  v3 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v12 = *(a1 + 192);
  v5 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = *(**a2 + 96);
  outlined init with copy of [Input](v11, v10, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return v8(v11);
}

uint64_t dispatch thunk of FunctionGraphInsertable.emitFunctionNodes(node:context:into:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(a5 + 8);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 3);
  v11 = v5;
  return v6(&v8);
}

uint64_t dispatch thunk of UserGraphCompiler.context.setter(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = *(*v1 + 96);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v5;
  v6 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v6;
  v7 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v7;
  v8 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v8;
  v9 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v9;
  v12 = v2;
  return v3(v11);
}

uint64_t dispatch thunk of UserGraphCompiler.compile(sourceProgram:into:)(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v3 = a1[5];
  v4 = a1[8];
  v5 = *(a1 + 120);
  v6 = a1[16];
  v7 = *(a1 + 168);
  v8 = *(*v1 + 120);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = v2;
  v13 = v3;
  v14 = *(a1 + 3);
  v15 = v4;
  v16 = *(a1 + 9);
  v17 = *(a1 + 11);
  v18 = *(a1 + 13);
  v19 = v5;
  v20 = v6;
  v21 = *(a1 + 17);
  v22 = *(a1 + 19);
  v23 = v7;
  return v8(&v10);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphCompiler.CompileContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t storeEnumTagSinglePayload for UserGraphCompiler.CompileContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265F19944()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeData(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v10 = a2[5].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static NodeData.== infix(_:_:)(v7, v9) & 1;
}

Swift::String __swiftcall NodeData.operationalDescription(replacements:)(Swift::OpaquePointer replacements)
{
  v2 = *v1;
  v3 = *(v1 + 80);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = 0xE800000000000000;
      v2 = 0x6870617267627573;
    }

    else
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
      v8 = v3 & 0x3F;
      v31 = v7;
      v32 = v6;
      v9 = *(v1 + 48);
      v33 = *(v1 + 32);
      v34 = v9;
      v35 = *(v1 + 64);
      v36 = v8;
      if (v8 == 6)
      {
        if (*(replacements._rawValue + 2))
        {
          v10 = *(v1 + 48);
          v27 = *(v1 + 32);
          v28 = v10;
          v29 = *(v1 + 64);
          v11 = *(v1 + 16);
          v25 = *v1;
          v26 = v11;
          v12 = v1;
          v30 = *(v1 + 80) & 0x3F;
          outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(&v25, v24);
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
          if (v15)
          {
            v16 = (*(replacements._rawValue + 7) + 16 * v14);
            v7 = *v16;
            v6 = v16[1];

            outlined destroy of NodeData(v12);
          }
        }

        else
        {
          v19 = *(v1 + 48);
          v27 = *(v1 + 32);
          v28 = v19;
          v29 = *(v1 + 64);
          v20 = *(v1 + 16);
          v25 = *v1;
          v26 = v20;
          v30 = *(v1 + 80) & 0x3F;
          outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(&v25, v24);
        }

        *&v25 = 24419;
        *(&v25 + 1) = 0xE200000000000000;
        v21 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v21);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v7, v6);
      }

      else
      {
        *&v25 = 24419;
        *(&v25 + 1) = 0xE200000000000000;
        v17 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v17);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v18 = SGDataTypeStorage.valueString.getter();
        MEMORY[0x266771550](v18);
      }

      v4 = *(&v25 + 1);
      v2 = v25;
    }
  }

  else
  {
    v5 = *(v1 + 8);
  }

  v22 = v2;
  result._object = v4;
  result._countAndFlagsBits = v22;
  return result;
}

ShaderGraph::NodeData::CodingKeys_optional __swiftcall NodeData.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeData.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t NodeData.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656D614E65736163;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1701869940;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeData.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656D614E65736163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D614E65736163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeData.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NodeData.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeData.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NodeData.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeData.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NodeData.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D614E65736163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NodeData.CodingKeys()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E65736163;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance NodeData.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeData.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double NodeData.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized NodeData.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

void NodeData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 80);
  if (v12 >> 6)
  {
    if (v12 >> 6 == 1)
    {
      LOBYTE(v21) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v21 = v11;
        v26 = 1;
        type metadata accessor for SGGraph();
        _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph);
LABEL_11:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        goto LABEL_7;
      }
    }

    else
    {
      v14 = *(v3 + 1);
      v19 = *(v3 + 2);
      v20 = v14;
      v15 = *(v3 + 3);
      v17 = *(v3 + 4);
      v18 = v15;
      LOBYTE(v21) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v21 = v11;
        v26 = 2;
        type metadata accessor for SGDataType(0);
        _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, type metadata accessor for SGDataType);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v21 = v20;
        v22 = v19;
        v23 = v18;
        v24 = v17;
        v25 = v12 & 0x3F;
        v26 = 1;
        lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = v3[1];
    LOBYTE(v21) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v21) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
LABEL_7:
      (*(v6 + 8))(v9, v5);
      return;
    }
  }

  (*(v6 + 8))(v9, v5);
  type metadata accessor for SGError();
  v16 = v2;
  SGError.__allocating_init(_:)(v2);
  swift_willThrow();
}

double protocol witness for Decodable.init(from:) in conformance NodeData@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized NodeData.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t specialized static NodeData.== infix(_:_:)(uint64_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 5);
  v7 = *(a1 + 80);
  if (!(v7 >> 6))
  {
    if (a2[5].u8[0] > 0x3Fu)
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 5);
    v11 = a2[2].i64[0];
    v10 = a2[2].i64[1];
    v13 = a2[1].i64[0];
    v12 = a2[1].i64[1];
    if ((v2 != a2->i64[0] || a1[1] != a2->i64[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_24;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v4, v13) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v3, v12) & 1) == 0)
    {
      goto LABEL_24;
    }

    switch(v22)
    {
      case 3:
        if (v10 != 3)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        if (v10 != 2)
        {
          goto LABEL_24;
        }

        break;
      case 1:
        if (v10 != 1)
        {
          goto LABEL_24;
        }

        break;
      default:
        if ((v10 - 1) < 3)
        {
          goto LABEL_24;
        }

        if (v22)
        {
          if (!v10 || (v5 != v11 || v22 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v10)
        {
          goto LABEL_24;
        }

        break;
    }

    v9 = 1;
    return v9 & 1;
  }

  if (v7 >> 6 != 1)
  {
    v14 = a2[5].i8[0];
    if ((v14 & 0xC0) == 0x80 && v2 == a2->i64[0])
    {
      v15 = *(a1 + 7);
      v16 = a1[9];
      v17 = a2[1];
      v18 = a2[2];
      v19 = a2[3];
      v20 = a2[4];
      v23.i64[0] = a1[2];
      v23.i64[1] = v3;
      v24 = v5;
      v25 = v6;
      v26 = v15;
      v27 = v16;
      v28 = v7 & 0x3F;
      v29[0] = v17;
      v29[1] = v18;
      v29[2] = v19;
      v29[3] = v20;
      v30 = v14 & 0x3F;
      v9 = specialized static SGDataTypeStorage.== infix(_:_:)(&v23, v29);
      return v9 & 1;
    }

LABEL_24:
    v9 = 0;
    return v9 & 1;
  }

  if ((a2[5].i8[0] & 0xC0) != 0x40)
  {
    goto LABEL_24;
  }

  v8 = a2->i64[0];
  type metadata accessor for NSObject();
  v9 = static NSObject.== infix(_:_:)();
  return v9 & 1;
}

uint64_t outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized NodeData.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeData.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized NodeData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v12 = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v13;
  v16 = v14 == 0x6E49746C697562 && v13 == 0xE700000000000000;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v26 = v14 == 0x6870617267 && v15 == 0xE500000000000000;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      type metadata accessor for SGGraph();
      LOBYTE(v40) = 1;
      _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v27 = *(v7 + 8);
      v24 = v7 + 8;
      v27(v10, v6);
      v23 = v46;
      v25 = 64;
      goto LABEL_19;
    }

    if (v14 == 0x746E6174736E6F63 && v15 == 0xE800000000000000)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        v3 = swift_allocError();
        *v33 = 2;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0x8000000000000000;
        *(v33 + 40) = 0u;
        *(v33 + 56) = 0u;
        *(v33 + 72) = 0;
        goto LABEL_21;
      }
    }

    v45 = 1;
    lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v41 = v47;
    v40 = v46;
    type metadata accessor for SGDataType(0);
    v38 = 2;
    _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, type metadata accessor for SGDataType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    v23 = v39;
    v12 = *(&v40 + 1);
    v24 = v40;
    v35 = v42;
    v37 = v41;
    v14 = *(&v43 + 1);
    v10 = v43;
    v25 = v44 & 0x1F | 0x80;
    goto LABEL_19;
  }

  LOBYTE(v46) = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v18;
  if (one-time initialization token for shared != -1)
  {
    v34 = v17;
    swift_once();
    v17 = v34;
  }

  v21 = v17;
  specialized OrderedDictionary.subscript.getter(v17, v14, *(static BuiltInDefinitionStore.shared + 40), *(static BuiltInDefinitionStore.shared + 48), *(static BuiltInDefinitionStore.shared + 56), &v52);
  if (!v53)
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    v3 = swift_allocError();
    *v30 = 1;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = 0x8000000000000000;
    v30[5] = 0;
    v30[6] = 0;
    v30[7] = 0;
    v30[8] = v21;
    v30[9] = v14;
LABEL_21:
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
LABEL_8:
    type metadata accessor for SGError();
    v19 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v57 = v53;
  v37 = v56;
  v22 = v54;
  v36 = v55;
  v23 = v52;
  (*(v7 + 8))(v10, v6);
  v24 = v22;
  v12 = v36;

  v25 = 0;
LABEL_19:
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28 = v57;
  *a2 = v23;
  *(a2 + 8) = v28;
  *(a2 + 16) = v24;
  *(a2 + 24) = v12;
  v29 = v35;
  *(a2 + 32) = v37;
  *(a2 + 48) = v29;
  *(a2 + 64) = v10;
  *(a2 + 72) = v14;
  *(a2 + 80) = v25;
  return result;
}

unint64_t lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy81_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 6 && *(a1 + 81))
  {
    return (*a1 + 6);
  }

  v3 = ((*(a1 + 80) >> 3) & 4 | (*(a1 + 80) >> 6)) ^ 7;
  if (v3 >= 5)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for NodeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 6;
    if (a3 >= 6)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 6)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 32 * (((-a2 & 4) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OrderedSet<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6[6] = a3;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance <> OrderedSet<A>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return OrderedSet<>.encode(to:)(a1, a2, *(v3 + 8));
}

uint64_t OrderedSet<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a2;
  v7 = type metadata accessor for DecodingError.Context();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v4)
  {
    goto LABEL_8;
  }

  v28 = v11;
  v29 = v8;
  v30 = v7;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v14 = type metadata accessor for ContiguousArray();
  v37 = v31;
  swift_getWitnessTable();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v15 = v33[0];
  v34 = v33[0];
  v16 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  WitnessTable = swift_getWitnessTable();
  v18 = static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(v33, &v34, 0, 1, v16, v14, WitnessTable, a4);
  v19 = v33[0];
  if (v33[0] != *(v15 + 16))
  {

    __swift_project_boxed_opaque_existential_1(v35, v36);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    MEMORY[0x266771550](0xD00000000000003ALL, 0x8000000265F34D00);
    v34 = v19;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](41, 0xE100000000000000);
    v21 = v28;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    v25 = v29;
    v24 = v30;
    (*(v29 + 16))(v22, v21, v30);
    (*(*(v13 - 8) + 104))(v23, *MEMORY[0x277D84168], v13);
    swift_willThrow();

    (*(v25 + 8))(v21, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v13;
  }

  if (ContiguousArray.count.getter() < 16)
  {
    v20 = 0;
  }

  else
  {

    v20 = v18;
  }

  v13 = OrderedSet.init(_uniqueElements:_:)(v15, v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> OrderedSet<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OrderedSet<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x2821FBF50](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

{
  v2 = MEMORY[0x2821FBF58](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t Substring.subscript.getter()
{
  return MEMORY[0x2821FCB80]();
}

{
  return MEMORY[0x2821FCB90]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA40]();
}

{
  return MEMORY[0x2821FDA50]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB80]();
}

{
  return MEMORY[0x2821FDB90]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA0]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}