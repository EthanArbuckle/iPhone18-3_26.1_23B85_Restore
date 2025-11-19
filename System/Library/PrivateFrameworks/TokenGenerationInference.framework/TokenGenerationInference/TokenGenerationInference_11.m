uint64_t specialized ClassifierMetadata.init(from:)(uint64_t a1)
{
  v88 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierOutputClass();
  v2 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierDefaultOutputClass();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x223D8C500](v7);
  v72 = MEMORY[0x223D8C770](v10);
  v11 = (*(v6 + 8))(v9, v5);
  v12 = MEMORY[0x223D8C4F0](v11);
  v13 = *(v12 + 16);
  v77 = v2;
  v78 = a1;
  if (v13)
  {
    v89 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v89;
    v16 = *(v2 + 16);
    v15 = v2 + 16;
    v17 = *(v15 + 64);
    v84 = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v85 = *(v15 + 56);
    v86 = v16;
    v87 = v15;
    v19 = (v15 - 8);
    do
    {
      v20 = v88;
      v21 = v86(v4, v18, v88);
      v22 = MEMORY[0x223D8C6A0](v21);
      v23 = MEMORY[0x223D8C690]();
      (*v19)(v4, v20);
      v89 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v14 = v89;
      }

      v26 = v23;
      *(v14 + 16) = v25 + 1;
      v27 = v14 + 16 * v25;
      *(v27 + 32) = v22;
      *(v27 + 40) = v26;
      v18 += v85;
      --v13;
    }

    while (v13);
    v71 = v14;

    v2 = v77;
    a1 = v78;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v29 = MEMORY[0x223D8C510](v28);
  if (v29)
  {
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd);
    result = static _DictionaryStorage.copy(original:)();
    v32 = result;
    v33 = 0;
    v34 = *(v30 + 64);
    v70 = v30 + 64;
    v35 = 1 << *(v30 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v85 = (v2 + 8);
    v86 = (v2 + 16);
    v76 = result + 64;
    v39 = MEMORY[0x277D84F90];
    v74 = v30;
    v75 = result;
    v73 = v38;
    if (v37)
    {
      while (1)
      {
        v40 = __clz(__rbit64(v37));
        v41 = (v37 - 1) & v37;
LABEL_18:
        v44 = v40 | (v33 << 6);
        v82 = v41;
        v45 = *(v30 + 56);
        v46 = (*(v30 + 48) + 16 * v44);
        v47 = v46[1];
        v83 = *v46;
        v84 = v44;
        v48 = *(v45 + 8 * v44);
        v49 = *(v48 + 16);
        if (v49)
        {
          v80 = v47;
          v81 = v33;
          v89 = v39;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
          v50 = v48;
          v51 = v89;
          v52 = *(v2 + 80);
          v79 = v50;
          v53 = v50 + ((v52 + 32) & ~v52);
          v87 = *(v2 + 72);
          v54 = *(v2 + 16);
          do
          {
            v55 = v88;
            v56 = v54(v4, v53, v88);
            v57 = MEMORY[0x223D8C6A0](v56);
            v58 = MEMORY[0x223D8C690]();
            (*v85)(v4, v55);
            v89 = v51;
            v60 = *(v51 + 16);
            v59 = *(v51 + 24);
            if (v60 >= v59 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
              v51 = v89;
            }

            v61 = v58;
            *(v51 + 16) = v60 + 1;
            v62 = v51 + 16 * v60;
            *(v62 + 32) = v57;
            *(v62 + 40) = v61;
            v53 += v87;
            --v49;
          }

          while (v49);

          v2 = v77;
          a1 = v78;
          v39 = MEMORY[0x277D84F90];
          v30 = v74;
          v32 = v75;
          result = v80;
          v33 = v81;
          v38 = v73;
        }

        else
        {

          v51 = v39;
        }

        v63 = v84;
        *(v76 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
        v64 = (v32[6] + 16 * v63);
        *v64 = v83;
        v64[1] = result;
        *(v32[7] + 8 * v63) = v51;
        v65 = v32[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          break;
        }

        v32[2] = v67;
        v37 = v82;
        if (!v82)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v42 = v33;
      while (1)
      {
        v33 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          v68 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
          (*(*(v68 - 8) + 8))(a1, v68);
          return v72;
        }

        v43 = *(v70 + 8 * v33);
        ++v42;
        if (v43)
        {
          v40 = __clz(__rbit64(v43));
          v41 = (v43 - 1) & v43;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v69 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
    (*(*(v69 - 8) + 8))(a1, v69);
    return v72;
  }

  return result;
}

void *specialized AdapterMetadata.init(from:metadataUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v216 = a2;
  v158 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v133 - v5;
  v6 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
  v169 = *(v6 - 8);
  v170 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v156 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v157 = &v133 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v164 = &v133 - v11;
  v12 = type metadata accessor for LLMAdapterAssetMetadata.DeviceLocalization();
  v165 = *(v12 - 8);
  v166 = v12;
  MEMORY[0x28223BE20](v12);
  v155 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v161 = &v133 - v15;
  v16 = type metadata accessor for LLMAdapterAssetMetadata.DraftMetadata();
  v162 = *(v16 - 8);
  v163 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v153 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v154 = &v133 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v174 = &v133 - v21;
  v22 = type metadata accessor for StopToken();
  v159 = *(v22 - 8);
  v160 = v22;
  MEMORY[0x28223BE20](v22);
  v152 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v173 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v133 - v27;
  v29 = type metadata accessor for LLMAdapterAssetMetadata.DeviceSpecialTokensMap();
  v172 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v171 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v133 - v32;
  v34 = type metadata accessor for LLMAdapterAssetMetadata.LoraRank();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  MEMORY[0x223D8C7B0](v36);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    outlined destroy of [Int](v33, &_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMd);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Log.device);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_220940000, v41, v42, "Adapter metadata is missing field: type", v43, 2u);
      MEMORY[0x223D90A10](v43, -1, -1);
    }

    lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
    swift_allocError();
    *v44 = 4;
    swift_willThrow();
    v45 = type metadata accessor for URL();
    (*(*(v45 - 8) + 8))(v216, v45);
    v46 = type metadata accessor for LLMAdapterAssetMetadata();
    (*(*(v46 - 8) + 8))(v39, v46);
    goto LABEL_15;
  }

  v167 = v35;
  v47 = *(v35 + 32);
  v149 = v34;
  v48 = v47(v38, v33, v34);
  v148 = MEMORY[0x223D8C7C0](v48);
  v151 = v49;
  v176 = a1;
  LLMAdapterAssetMetadata.specialTokensMap.getter();
  v50 = v172;
  v51 = *(v172 + 48);
  v52 = v29;
  if (v51(v28, 1, v29) == 1)
  {
    outlined destroy of [Int](v28, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd);
    v150 = 0;
  }

  else
  {
    v53 = v171;
    (*(v50 + 32))(v171, v28, v29);
    v150 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
    (*(v50 + 8))(v53, v29);
  }

  v54 = v216;
  v171 = v38;
  v55 = v173;
  LLMAdapterAssetMetadata.specialTokensMap.getter();
  if (v51(v55, 1, v52) == 1)
  {
    outlined destroy of [Int](v55, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd);
    v179 = 0u;
    v180 = 0u;
    *&v181 = 0;
  }

  else
  {
    *(&v180 + 1) = v52;
    *&v181 = MEMORY[0x277D29C50];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v179);
    (*(v50 + 32))(boxed_opaque_existential_1, v55, v52);
  }

  v57 = v167;
  v58 = v174;
  v59 = type metadata accessor for LLMAdapterAssetMetadata();
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata and conformance LLMAdapterAssetMetadata, MEMORY[0x277D29C60]);
  v60 = v175;
  v61 = v176;
  AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
  if (v60)
  {
    v62 = type metadata accessor for URL();
    (*(*(v62 - 8) + 8))(v54, v62);
    (*(*(v59 - 8) + 8))(v61, v59);
    (*(v57 + 8))(v171, v149);
    outlined destroy of [Int](&v179, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);

LABEL_15:
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 1;
    v81 = 1;
LABEL_16:
    *&v179 = v63;
    *(&v179 + 1) = v64;
    *&v180 = v65;
    *(&v180 + 1) = v66;
    *&v181 = v67;
    *(&v181 + 1) = v68;
    *&v182 = v69;
    *(&v182 + 1) = v70;
    *&v183 = v71;
    *(&v183 + 1) = v72;
    v184 = v73;
    v185 = v80;
    v186 = v74;
    v187 = v75;
    LOWORD(v188) = v76;
    outlined destroy of [Int](&v179, &_s24TokenGenerationInference17DefaultParametersVSgMd);

    return outlined consume of StopToken?(v77, v78, v79, v81);
  }

  outlined destroy of [Int](&v179, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);
  v84 = v159;
  v83 = v160;
  v85 = (*(v159 + 48))(v58, 1, v160);
  v175 = 0;
  if (v85 == 1)
  {
    v86 = outlined destroy of [Int](v58, &_s12ModelCatalog9StopTokenVSgMd);
    v87 = 0;
    v172 = 0;
    v174 = 0;
    v88 = 1;
  }

  else
  {
    v89 = v152;
    (*(v84 + 32))(v152, v58, v83);
    v174 = StopToken.intValue.getter();
    v91 = v90;
    v92 = StopToken.stringValue.getter();
    v93 = v84;
    v87 = v92;
    v88 = v94;
    v86 = (*(v93 + 8))(v89, v83);
    v172 = v91 & 1;
  }

  v95 = v164;
  v139 = v59;
  v164 = v88;
  v136 = MEMORY[0x223D8C640](v86);
  v138 = v96;
  v135 = MEMORY[0x223D8C660]();
  v137 = v97;
  v134 = MEMORY[0x223D8C760]();
  v213 = v98 & 1;
  v99 = v161;
  LLMAdapterAssetMetadata.speculativeStreamingDefaultParameters.getter();
  v101 = v162;
  v100 = v163;
  if ((*(v162 + 48))(v99, 1, v163) == 1)
  {
    v102 = outlined destroy of [Int](v99, &_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMd);
    v160 = 0;
    v161 = 0;
    v159 = 0;
    v152 = 0;
    v153 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v76 = 0;
    v80 = 1;
  }

  else
  {
    v103 = v154;
    (*(v101 + 32))(v154, v99, v100);
    v104 = v153;
    (*(v101 + 16))(v153, v103, v100);
    _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog015LLMAdapterAssetH0V0gH0V_Tt0g5(v104, v214);
    v160 = v214[1];
    v161 = v214[0];
    v159 = v214[2];
    v152 = v214[4];
    v153 = v214[3];
    v146 = v214[6];
    v147 = v214[5];
    v144 = v214[8];
    v145 = v214[7];
    v80 = v214[11];
    v142 = v214[10];
    v143 = v214[9];
    v140 = v214[13];
    v141 = v214[12];
    v105 = v101;
    v76 = v215;
    (*(v105 + 8))(v103, v100);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    v184 = 0;
    v185 = 1;
    v187 = 0;
    v186 = 0;
    LOWORD(v188) = 0;
    v102 = outlined destroy of [Int](&v179, &_s24TokenGenerationInference17DefaultParametersVSgMd);
  }

  MEMORY[0x223D8C630](v102);
  v106 = v165;
  v107 = v166;
  v108 = (*(v165 + 48))(v95, 1, v166);
  v173 = v87;
  if (v108 == 1)
  {
    v109 = outlined destroy of [Int](v95, &_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMd);
    v110 = 0;
  }

  else
  {
    v111 = v95;
    v112 = v155;
    (*(v106 + 32))(v155, v111, v107);
    v113 = v106;
    v110 = specialized LocalizationMetadataProtocol.mapToDictionary()(MEMORY[0x277D29C30], MEMORY[0x277D29C48], MEMORY[0x277D29C20], MEMORY[0x277D29C40], MEMORY[0x277D29C28], MEMORY[0x277D29C18], MEMORY[0x277D29C38]);
    v109 = (*(v113 + 8))(v112, v107);
  }

  v114 = v168;
  MEMORY[0x223D8C530](v109);
  v116 = v169;
  v115 = v170;
  if ((*(v169 + 48))(v114, 1, v170) == 1)
  {
    v117 = outlined destroy of [Int](v114, &_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMd);
    v118 = 0;
    v119 = 0;
    v120 = 0;
  }

  else
  {
    v121 = v157;
    (*(v116 + 32))(v157, v114, v115);
    v122 = v156;
    (*(v116 + 16))(v156, v121, v115);
    v123 = v175;
    v124 = specialized ClassifierMetadata.init(from:)(v122);
    v119 = v126;
    v127 = v115;
    if (v123)
    {
      v128 = type metadata accessor for URL();
      (*(*(v128 - 8) + 8))(v216, v128);
      (*(*(v139 - 8) + 8))(v176);
      (*(v116 + 8))(v121, v115);
      (*(v167 + 8))(v171, v149);

      v79 = v173;
      v77 = v174;
      v78 = v172;
      v81 = v164;
      v64 = v160;
      v63 = v161;
      v65 = v159;
      v67 = v152;
      v66 = v153;
      v69 = v146;
      v68 = v147;
      v71 = v144;
      v70 = v145;
      v73 = v142;
      v72 = v143;
      v75 = v140;
      v74 = v141;
      goto LABEL_16;
    }

    v118 = v125;
    v175 = 0;
    v129 = v124;
    v117 = (*(v116 + 8))(v121, v127);
    v120 = v129;
  }

  v130 = v176;
  v131 = MEMORY[0x223D8C790](v117);
  LODWORD(v170) = MEMORY[0x223D8C680]();
  v132 = type metadata accessor for URL();
  (*(*(v132 - 8) + 8))(v216, v132);
  (*(*(v139 - 8) + 8))(v130);
  (*(v167 + 8))(v171, v149);
  *(&v178[8] + 1) = v212[0];
  *(&v178[23] + 2) = v210;
  *(&v183 + 1) = v212[0];
  v198 = v210;
  HIDWORD(v178[8]) = *(v212 + 3);
  HIWORD(v178[23]) = v211;
  *&v179 = v148;
  v178[0] = v148;
  v178[1] = v151;
  *(&v179 + 1) = v151;
  *&v180 = v150;
  v178[2] = v150;
  v178[3] = v136;
  *(&v180 + 1) = v136;
  *&v181 = v138;
  v178[4] = v138;
  v178[5] = v135;
  *(&v181 + 1) = v135;
  *&v182 = v137;
  v178[6] = v137;
  v178[7] = v134;
  *(&v182 + 1) = v134;
  LOBYTE(v178[8]) = v213;
  LOBYTE(v183) = v213;
  DWORD1(v183) = *(v212 + 3);
  *(&v183 + 1) = v161;
  v178[9] = v161;
  v178[10] = v160;
  v184 = v160;
  v185 = v159;
  v178[11] = v159;
  v178[12] = v153;
  v186 = v153;
  v187 = v152;
  v178[13] = v152;
  v178[14] = v147;
  v188 = v147;
  v189 = v146;
  v178[15] = v146;
  v178[16] = v145;
  v190 = v145;
  v191 = v144;
  v178[17] = v144;
  v178[18] = v143;
  v192 = v143;
  v193 = v142;
  v178[19] = v142;
  v178[20] = v80;
  v194 = v80;
  v195 = v141;
  v178[21] = v141;
  v178[22] = v140;
  v196 = v140;
  LOWORD(v178[23]) = v76;
  v197 = v76;
  v199 = v211;
  v200 = v110;
  v178[24] = v110;
  v178[25] = v120;
  v201 = v120;
  v202 = v119;
  v178[26] = v119;
  v178[27] = v118;
  v203 = v118;
  v204 = v174;
  v178[28] = v174;
  v178[29] = v172;
  v205 = v172;
  v206 = v173;
  v178[30] = v173;
  v178[31] = v164;
  v207 = v164;
  LOBYTE(v178[32]) = v131;
  v208 = v131;
  BYTE1(v178[32]) = v170;
  v209 = v170;
  outlined init with copy of AdapterMetadata(v178, &v177);
  outlined destroy of AdapterMetadata(&v179);
  return memcpy(v158, v178, 0x102uLL);
}

uint64_t specialized ClassifierMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000220AFC900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C4374757074756FLL && a2 == 0xED00007365737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFC920 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ClassifierMetadata.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v8) = 0;
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd);
  HIBYTE(v8) = 1;
  lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClassifierOutputClass] and conformance <A> [A], lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd);
  HIBYTE(v8) = 2;
  lazy protocol witness table accessor for type [String : [ClassifierOutputClass]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

float specialized ClassifierOutputClass.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass()
{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass()
{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError()
{
  result = lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError;
  if (!lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError;
  if (!lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError);
  }

  return result;
}

uint64_t outlined consume of StopToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined destroy of ModelMetadata(uint64_t a1)
{
  v2 = type metadata accessor for ModelMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for E5Function(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for E5Function(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference17DefaultParametersVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference18ClassifierMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference04StopA0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t getEnumTagSinglePayload for AdapterMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 258))
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

uint64_t storeEnumTagSinglePayload for AdapterMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 258) = 1;
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

    *(result + 258) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 114))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys()
{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

uint64_t outlined consume of ClassifierMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken and conformance MetadataSpecialToken()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters()
{
  result = lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters;
  if (!lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters;
  if (!lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata()
{
  result = lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopToken and conformance StopToken()
{
  result = lazy protocol witness table cache variable for type StopToken and conformance StopToken;
  if (!lazy protocol witness table cache variable for type StopToken and conformance StopToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken and conformance StopToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken and conformance StopToken;
  if (!lazy protocol witness table cache variable for type StopToken and conformance StopToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken and conformance StopToken);
  }

  return result;
}

uint64_t outlined init with copy of DefaultParameters?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference17DefaultParametersVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type E5Function and conformance E5Function()
{
  result = lazy protocol witness table cache variable for type E5Function and conformance E5Function;
  if (!lazy protocol witness table cache variable for type E5Function and conformance E5Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function and conformance E5Function);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function and conformance E5Function;
  if (!lazy protocol witness table cache variable for type E5Function and conformance E5Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function and conformance E5Function);
  }

  return result;
}

uint64_t outlined assign with take of PromptPreprocessingTemplateVersion?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ModelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdapterMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdapterMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall OnDeviceE5ImageTokenizerConfiguration.init(inputImageDimension:highQualityImageTokenizationDimension:)(TokenGenerationInference::OnDeviceE5ImageTokenizerConfiguration *__return_ptr retstr, Swift::Int inputImageDimension, Swift::Int highQualityImageTokenizationDimension)
{
  retstr->supportedBitsPerComponent = 8;
  retstr->inputImageDimension = inputImageDimension;
  retstr->highQualityImageTokenizationDimension = highQualityImageTokenizationDimension;
  *&retstr->inputBytesPerPixel = xmmword_220AED8E0;
  *&retstr->defaultEndOfImageTokenID = xmmword_220AED8F0;
}

uint64_t OnDeviceInferenceAssetRepository.stopTokensFor(modelBundleIdentifier:tokenizer:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v94 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v92 - v7;
  v102 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v99 = *(v102 - 8);
  v9 = MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - v11;
  v13 = type metadata accessor for InferenceError();
  MEMORY[0x28223BE20](v13);
  v15 = a1;
  v95 = a2;
  v32 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC025assetObjectIdentifiersForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierSaySSGSS_t20ModelManagerServices0C5ErrorOYKF(a1, a2, &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v12;
  v92 = 0;
  v93 = v15;
  v33 = *(v32 + 2);
  swift_beginAccess();
  v23 = v3;
  v34 = v32;
  v100 = v33;
  if (v33)
  {
    v35 = 0;
    v36 = v99;
    v37 = (v99 + 56);
    v96 = (v99 + 48);
    v98 = MEMORY[0x277D84F90];
    v38 = v34 + 5;
    while (1)
    {
      if (v35 >= v34[2])
      {
        __break(1u);
        goto LABEL_62;
      }

      v40 = v23[16];
      if (!*(v40 + 16))
      {
        goto LABEL_11;
      }

      v41 = v34;
      v42 = v23;
      v44 = *(v38 - 1);
      v43 = *v38;

      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v43);
      if ((v46 & 1) == 0)
      {
        break;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(*(v40 + 56) + 40 * v45, v107);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v39 = v102;
      v47 = swift_dynamicCast();
      (*v37)(v8, v47 ^ 1u, 1, v39);
      v48 = (*v96)(v8, 1, v39);
      v23 = v42;
      v36 = v99;
      v34 = v41;
      if (v48 != 1)
      {
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v8, v97, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98[2] + 1, 1, v98);
        }

        v49 = v97;
        v51 = v98[2];
        v50 = v98[3];
        if (v51 >= v50 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v98);
          v49 = v97;
        }

        v52 = v98;
        v98[2] = v51 + 1;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v49, v52 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v51, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v34 = v41;
        v39 = v102;
        goto LABEL_13;
      }

LABEL_12:
      outlined destroy of [Int](v8, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
LABEL_13:
      v35 = (v35 + 1);
      v38 += 2;
      if (v100 == v35)
      {
        goto LABEL_28;
      }
    }

    v23 = v42;
    v36 = v99;
    v34 = v41;
LABEL_11:
    v39 = v102;
    (*v37)(v8, 1, 1, v102);
    goto LABEL_12;
  }

  v98 = MEMORY[0x277D84F90];
  v36 = v99;
  v39 = v102;
LABEL_28:

  v53 = v98[2];
  if (v53)
  {
    v100 = v23;
    v54 = v101;
    v55 = &v101[*(v39 + 68)];
    v56 = v98 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v102 = *(v36 + 72);
    v57 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v56, v54, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v58 = *v55;
      v59 = v55[1];
      v61 = v55[2];
      v60 = v55[3];
      outlined copy of StopToken?(*v55, v59, v61, v60);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v54, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (v60 != 1)
      {
        if (v60)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
          }

          v63 = *(v57 + 2);
          v62 = *(v57 + 3);
          if (v63 >= v62 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v57);
          }

          *(v57 + 2) = v63 + 1;
          v64 = &v57[16 * v63];
          *(v64 + 4) = v61;
          *(v64 + 5) = v60;
        }

        else
        {
          outlined consume of StopToken?(v58, v59, v61, 0);
        }
      }

      v54 = v101;
      v56 += v102;
      --v53;
    }

    while (v53);

    v36 = v95;
    v23 = v100;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
    v36 = v95;
  }

  v34 = v92;
  v38 = v93;
  if (!*(v57 + 2))
  {

    if (one-time initialization token for device != -1)
    {
LABEL_62:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.device);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v23;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v107[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v36, v107);
      _os_log_impl(&dword_220940000, v17, v18, "Failed to find in-memory E5Runner. Fetching stop token from ModelCatalog for model bundle identifier: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223D90A10](v21, -1, -1);
      v22 = v20;
      v23 = v19;
      MEMORY[0x223D90A10](v22, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v23 + 24, v23[27]);
    OnDeviceInferenceProviderDataSource.catalogResource(for:)(v106);
    if (v34)
    {

      v24 = v34;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v25, v26))
      {

        return 0;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v106[0] = v29;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v36, v106);
      *(v27 + 12) = 2114;
      v30 = v34;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      *v28 = v31;
      _os_log_impl(&dword_220940000, v25, v26, "Failed to lookup stop token for model bundle identifier %{public}s. Error: %{public}@", v27, 0x16u);
      outlined destroy of [Int](v28, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223D90A10](v29, -1, -1);
      MEMORY[0x223D90A10](v27, -1, -1);
    }

    else
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v106, v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21AssetBackedLLMAdapter_pMd);
      if (swift_dynamicCast())
      {
        outlined init with take of RandomNumberGenerator(v103, v105);
        specialized OnDeviceInferenceProviderDataSource.adapterMetadataFromResource(_:)(v105, v107);
        v75 = v36;
        v76 = v108;
        if (v108 == 1)
        {
          outlined destroy of AdapterMetadata(v107);
        }

        else
        {
          v78 = v107[28];
          v77 = v107[29];
          v79 = v107[30];

          outlined destroy of AdapterMetadata(v107);
          if (v76)
          {
            v80 = dispatch thunk of TokenizerRunner.tokenID(forText:)();

            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.info.getter();
            outlined consume of StopToken?(v78, v77, v79, v76);
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              *&v103[0] = v84;
              *v83 = 136446466;
              v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v76, v103);
              LODWORD(v102) = v82;
              v86 = v80;
              v87 = v85;
              outlined consume of StopToken?(v78, v77, v79, v76);
              *(v83 + 4) = v87;
              v80 = v86;
              *(v83 + 12) = 2050;
              *(v83 + 14) = v86;
              _os_log_impl(&dword_220940000, v81, v102, "Looked up stop token %{public}s as %{public}ld from adapterMetadata for use with GuidedGeneration", v83, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v84);
              MEMORY[0x223D90A10](v84, -1, -1);
              MEMORY[0x223D90A10](v83, -1, -1);
            }

            else
            {

              outlined consume of StopToken?(v78, v77, v79, v76);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_220AE8A30;
            *(v91 + 32) = v80;
            __swift_destroy_boxed_opaque_existential_1(v105);
            __swift_destroy_boxed_opaque_existential_1(v106);
            return v91;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v105);
        __swift_destroy_boxed_opaque_existential_1(v106);
        v36 = v75;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v106);
        v104 = 0;
        memset(v103, 0, sizeof(v103));
        outlined destroy of [Int](v103, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd);
      }

      v25 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v106[0] = v90;
        *v89 = 136446210;
        *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v36, v106);
        _os_log_impl(&dword_220940000, v25, v88, "Failed to lookup stop token for model bundle identifier %{public}s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x223D90A10](v90, -1, -1);
        MEMORY[0x223D90A10](v89, -1, -1);
      }
    }

    return 0;
  }

  v66 = *(v57 + 4);
  v65 = *(v57 + 5);

  v67 = dispatch thunk of TokenizerRunner.tokenID(forText:)();
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Log.device);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107[0] = v72;
    *v71 = 136446466;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v107);

    *(v71 + 4) = v73;
    *(v71 + 12) = 2050;
    *(v71 + 14) = v67;
    _os_log_impl(&dword_220940000, v69, v70, "Looked up stop token %{public}s as %{public}ld for use with GuidedGeneration", v71, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x223D90A10](v72, -1, -1);
    MEMORY[0x223D90A10](v71, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  *(result + 32) = v67;
  return result;
}

uint64_t OnDeviceInferenceAssetRepository.resumeSuspendedFetch()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v130 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v146 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v130 - v10;
  MEMORY[0x28223BE20](v9);
  v144 = &v130 - v11;
  v12 = type metadata accessor for OnDeviceInferenceSuspendedFetch(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v155 = (&v130 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = (&v130 - v19);
  result = swift_beginAccess();
  v22 = v1[20];
  if (!*(v22 + 16))
  {
    return result;
  }

  v130 = v16;
  v131 = v4;
  v151 = v5;
  v147 = v12;
  v137 = v13;
  v133 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v22 + v133, v20, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  v132 = v20;
  v138 = *v20;
  v23 = *(v138 + 16);
  swift_beginAccess();
  v148 = v1;
  if (v23)
  {
    v24 = 0;
    v25 = (v138 + 40);
    while (v24 < *(v138 + 16))
    {
      v26 = v1[18];
      if (*(v26 + 16))
      {
        v28 = *(v25 - 1);
        v27 = *v25;

        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
        if (v30)
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v26 + 56) + 40 * v29, &v164);

          outlined destroy of [Int](&v164, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
          if (one-time initialization token for device != -1)
          {
            swift_once();
          }

          v122 = type metadata accessor for Logger();
          __swift_project_value_buffer(v122, static Log.device);

          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.default.getter();

          v125 = os_log_type_enabled(v123, v124);
          v126 = v132;
          if (v125)
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            *&v164 = v128;
            *v127 = 136446210;
            v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v164);

            *(v127 + 4) = v129;
            _os_log_impl(&dword_220940000, v123, v124, "Cannot resume suspended fetch since asset %{public}s is in use ", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v128);
            MEMORY[0x223D90A10](v128, -1, -1);
            MEMORY[0x223D90A10](v127, -1, -1);
          }

          else
          {
          }

          v121 = v126;
          return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v121, type metadata accessor for OnDeviceInferenceSuspendedFetch);
        }

        v1 = v148;
      }

      ++v24;
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
      outlined destroy of [Int](&v164, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_61;
  }

LABEL_9:
  v31 = v1[20];
  v32 = v147;
  v136 = *(v31 + 16);
  if (v136)
  {
    v134 = v31 + v133;
    v154 = (v6 + 16);

    v34 = 0;
    *&v35 = 136446466;
    v140 = v35;
    v36 = v151;
    v135 = v33;
    v143 = (v6 + 8);
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v37 = *(v137 + 72);
      v139 = v34;
      v38 = v155;
      outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v134 + v37 * v34, v155, type metadata accessor for OnDeviceInferenceSuspendedFetch);
      v39 = *v38;
      v40 = *(v39 + 16);
      if (v40)
      {
        break;
      }

LABEL_11:
      v34 = v139 + 1;
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v155, type metadata accessor for OnDeviceInferenceSuspendedFetch);
      v33 = v135;
      if (v34 == v136)
      {

        goto LABEL_27;
      }
    }

    swift_beginAccess();
    v41 = (v39 + 40);
    while (1)
    {
      v47 = *(v41 - 1);
      v46 = *v41;
      v48 = v1[16];
      v49 = *(v48 + 16);

      if (!v49)
      {
        goto LABEL_22;
      }

      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v46);
      if ((v51 & 1) == 0)
      {
        break;
      }

      v52 = v50;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v48 + 56) + 40 * v52, &v164);

      outlined destroy of [Int](&v164, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
LABEL_17:
      v41 += 2;
      if (!--v40)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    v150 = v47;
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    outlined destroy of [Int](&v164, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    v53 = *(v32 + 24);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Log.device);
    v55 = *v154;
    v56 = v144;
    (*v154)(v144, v155 + v53, v36);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    v149 = v58;
    v152 = v57;
    v59 = os_log_type_enabled(v57, v58);
    v60 = v143;
    v153 = v143 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v164 = v141;
      *v61 = v140;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v142 = v40;
      v62 = v55;
      v63 = v53;
      v64 = v60;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = v56;
      v43 = *v64;
      (*v64)(v68, v151);
      v53 = v63;
      v55 = v62;
      v40 = v142;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v164);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2082;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v46, &v164);

      *(v61 + 14) = v70;
      v71 = v152;
      _os_log_impl(&dword_220940000, v152, v149, "Cancelling the request %{public}s since the asset %{public}s was unloaded", v61, 0x16u);
      v72 = v141;
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v72, -1, -1);
      v73 = v61;
      v36 = v151;
      v32 = v147;
      MEMORY[0x223D90A10](v73, -1, -1);
    }

    else
    {

      v42 = v56;
      v43 = *v60;
      (*v60)(v42, v36);
      v32 = v147;
    }

    v44 = v146;
    v55(v146, v155 + v53, v36);
    v1 = v148;
    swift_beginAccess();
    v45 = v145;
    specialized Set._Variant.insert(_:)(v145, v44);
    v43(v45, v36);
    swift_endAccess();
    goto LABEL_17;
  }

LABEL_27:
  swift_beginAccess();
  v74 = v1[20];
  if (!*(v74 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v75 = v131;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v74 + v133, v131, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  (*(v137 + 56))(v75, 0, 1, v32);
  outlined destroy of [Int](v75, &_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMd);
  if (*(v74 + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v153 = *(v138 + 16);
    if (!v153)
    {
LABEL_45:
      if (one-time initialization token for device == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_65;
    }

    v76 = 0;
    v77 = (v138 + 40);
    while (1)
    {
      if (v76 >= *(v138 + 16))
      {
        goto LABEL_59;
      }

      v155 = v76;
      v81 = *(v77 - 1);
      v80 = *v77;
      v82 = type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder(0);
      *(&v165 + 1) = v82;
      v166 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v164);
      v84 = *(v82 + 20);
      v85 = type metadata accessor for Asset();
      (*(*(v85 - 8) + 56))(boxed_opaque_existential_1 + v84, 1, 1, v85);
      *boxed_opaque_existential_1 = v81;
      boxed_opaque_existential_1[1] = v80;
      swift_beginAccess();
      outlined init with take of RandomNumberGenerator(&v164, v163);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162 = v1[18];
      v87 = v162;
      v1[18] = 0x8000000000000000;
      v88 = __swift_mutable_project_boxed_opaque_existential_1(v163, v163[3]);
      v154 = &v130;
      MEMORY[0x28223BE20](v88);
      v90 = &v130 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v91 + 16))(v90);
      v160 = v82;
      v161 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      v92 = __swift_allocate_boxed_opaque_existential_1(&v159);
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v90, v92, type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder);
      v94 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v80);
      v95 = v87[2];
      v96 = (v93 & 1) == 0;
      v97 = v95 + v96;
      if (__OFADD__(v95, v96))
      {
        goto LABEL_60;
      }

      v98 = v93;
      if (v87[3] >= v97)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v93)
          {
            goto LABEL_31;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v98)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v97, isUniquelyReferenced_nonNull_native);
        v99 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v80);
        if ((v98 & 1) != (v100 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v94 = v99;
        if (v98)
        {
LABEL_31:

          v78 = v162;
          v79 = v162[7] + 40 * v94;
          __swift_destroy_boxed_opaque_existential_1(v79);
          outlined init with take of RandomNumberGenerator(&v159, v79);
          goto LABEL_32;
        }
      }

      v78 = v162;
      v101 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v160);
      MEMORY[0x28223BE20](v101);
      v103 = &v130 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v104 + 16))(v103);
      v157 = v82;
      v158 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      v105 = __swift_allocate_boxed_opaque_existential_1(&v156);
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v103, v105, type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder);
      v78[(v94 >> 6) + 8] |= 1 << v94;
      v106 = (v78[6] + 16 * v94);
      *v106 = v81;
      v106[1] = v80;
      outlined init with take of RandomNumberGenerator(&v156, v78[7] + 40 * v94);
      v107 = v78[2];
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        goto LABEL_62;
      }

      v78[2] = v109;
      __swift_destroy_boxed_opaque_existential_1(&v159);
LABEL_32:
      v76 = v155 + 1;
      __swift_destroy_boxed_opaque_existential_1(v163);
      v1 = v148;
      v148[18] = v78;

      swift_endAccess();
      v77 += 2;
      if (v153 == v76)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_46:
  v110 = type metadata accessor for Logger();
  __swift_project_value_buffer(v110, static Log.device);
  v111 = v132;
  v112 = v130;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v132, v130, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v164 = v116;
    *v115 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v118;
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v112, type metadata accessor for OnDeviceInferenceSuspendedFetch);
    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v164);

    *(v115 + 4) = v120;
    _os_log_impl(&dword_220940000, v113, v114, "Resuming suspended fetch for request %{public}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x223D90A10](v116, -1, -1);
    MEMORY[0x223D90A10](v115, -1, -1);
  }

  else
  {

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v112, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  CheckedContinuation.resume(returning:)();
  v121 = v111;
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v121, type metadata accessor for OnDeviceInferenceSuspendedFetch);
}

unint64_t OnDeviceInferenceAssetRepository.localizationOverrideMap(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1, &v15 - v5, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v7 = type metadata accessor for ModelMetadata();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of [Int](v6, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  }

  else
  {
    v8 = *(v6 + 23);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v6, type metadata accessor for ModelMetadata);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

LABEL_5:
  v9 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

  if (*(a2 + 192))
  {
    v10 = *(a2 + 192);
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v11 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  v12 = OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(v9, v11);

  v13 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v12);

  return v13;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        outlined init with take of Any(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v54 = a2;

  v9 = 0;
  while (v7)
  {
    v13 = v9;
LABEL_16:
    v16 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v54 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    outlined init with copy of Any(*(v54 + 56) + 32 * v17, &v57);
    *&v59 = v20;
    *(&v59 + 1) = v19;
    outlined init with take of Any(&v57, &v60);

    v15 = v13;
LABEL_17:
    v62 = v59;
    v63[0] = v60;
    v63[1] = v61;
    v21 = *(&v59 + 1);
    if (!*(&v59 + 1))
    {
      goto LABEL_45;
    }

    v55 = v15;
    v22 = v62;
    outlined init with take of Any(v63, &v59);
    if (a1[2])
    {
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
      if (v24)
      {
        outlined init with copy of Any(a1[7] + 32 * v23, &v57);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
        if (swift_dynamicCast())
        {
          v26 = *&v56[0];
          outlined init with copy of Any(&v59, &v57);
          if (swift_dynamicCast())
          {
            v27 = OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(v26, *&v56[0]);

            v58 = v25;
            *&v57 = v27;
            outlined init with take of Any(&v57, v56);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
            v31 = a1[2];
            v32 = (v30 & 1) == 0;
            v33 = __OFADD__(v31, v32);
            v34 = v31 + v32;
            if (v33)
            {
              goto LABEL_49;
            }

            v35 = v30;
            if (a1[3] < v34)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
              v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
              if ((v35 & 1) != (v36 & 1))
              {
                goto LABEL_50;
              }

              goto LABEL_37;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_37:
              if (v35)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v50 = v29;
              specialized _NativeDictionary.copy()();
              v29 = v50;
              if (v35)
              {
LABEL_38:
                v48 = v29;

                v11 = (a1[7] + 32 * v48);
                __swift_destroy_boxed_opaque_existential_1(v11);
                v12 = v56;
                goto LABEL_5;
              }
            }

            a1[(v29 >> 6) + 8] |= 1 << v29;
            v51 = (a1[6] + 16 * v29);
            *v51 = v22;
            v51[1] = v21;
            outlined init with take of Any(v56, (a1[7] + 32 * v29));
            __swift_destroy_boxed_opaque_existential_1(&v59);
            v52 = a1[2];
            v33 = __OFADD__(v52, 1);
            v47 = v52 + 1;
            if (v33)
            {
              __break(1u);
LABEL_45:

              return a1;
            }

            goto LABEL_35;
          }
        }
      }
    }

    outlined init with copy of Any(&v59, &v57);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v56[0] = a1;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
    v40 = a1[2];
    v41 = (v39 & 1) == 0;
    v33 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v33)
    {
      goto LABEL_47;
    }

    v43 = v39;
    if (a1[3] >= v42)
    {
      if ((v37 & 1) == 0)
      {
        v49 = v38;
        specialized _NativeDictionary.copy()();
        v38 = v49;
        if (v43)
        {
LABEL_4:
          v10 = v38;

          a1 = *&v56[0];
          v11 = (*(*&v56[0] + 56) + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          v12 = &v57;
LABEL_5:
          outlined init with take of Any(v12, v11);
          __swift_destroy_boxed_opaque_existential_1(&v59);
          goto LABEL_6;
        }

        goto LABEL_34;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v37);
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_50;
      }
    }

    if (v43)
    {
      goto LABEL_4;
    }

LABEL_34:
    a1 = *&v56[0];
    *(*&v56[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
    v45 = (a1[6] + 16 * v38);
    *v45 = v22;
    v45[1] = v21;
    outlined init with take of Any(&v57, (a1[7] + 32 * v38));
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v46 = a1[2];
    v33 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v33)
    {
      goto LABEL_48;
    }

LABEL_35:
    a1[2] = v47;
LABEL_6:
    v9 = v55;
  }

  if (v8 <= v9 + 1)
  {
    v14 = v9 + 1;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ1_()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = *(v2 + 616);

    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY3_;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 616);
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 992);
  outlined init with take of RandomNumberGenerator((v0 + 456), v0 + 416);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v2);
  (*(v3 + 24))(v2, v3);
  if (v1)
  {

    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v4 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v4;
    [v4 code];
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 992);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v9 = *(v0 + 760);
    v10 = *(v0 + 752);
    v11 = *(v0 + 744);
    v12 = *(v0 + 624);
    v13 = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v10 + 16))(v12, v9, v11);
    (*(v7 + 104))(v12, *MEMORY[0x277D29D78], v8);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

    (*(v10 + 8))(v9, v11);
    outlined destroy of [Int](v26, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    if (!v27)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 416);
    }

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 976);
    v16 = *(v0 + 968);
    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    v19 = *(v0 + 736);
    v20 = *(v0 + 728);
    v21 = *(v20 + 20);
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 608), v19 + v21, type metadata accessor for Asset);
    v22 = type metadata accessor for Asset();
    (*(*(v22 - 8) + 56))(v19 + v21, 0, 1, v22);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 416, v19 + *(v20 + 24));
    *v19 = v16;
    v19[1] = v15;
    *(v0 + 520) = v20;
    *(v0 + 528) = &protocol witness table for OnDeviceInferenceAssetObjectBaseModel;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v19, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v0 + 496, v16, v15);
    swift_endAccess();

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v19, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
    outlined destroy of [Int](v18, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 416);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = v0[124];
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v2 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v2 code];
  v14 = v0[120];
  v15 = v0[119];
  v16 = v0[124];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[78];
  v11 = v1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  if (!v16)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 52));
  }

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ4_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[127] = a1;
  v4[128] = a2;
  v4[129] = v2;

  if (v2)
  {
    v5 = v4[77];

    outlined destroy of [Int]((v4 + 42), &_s24TokenGenerationInference9BaseModel_pSgMd);
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY6_;
  }

  else
  {
    v5 = v4[77];
    outlined destroy of [Int]((v4 + 42), &_s24TokenGenerationInference9BaseModel_pSgMd);
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY5_;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY6_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[129];
  v14 = v0[120];
  v15 = v0[119];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[78];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[136] = a5;
  v6[135] = v5;
  v6[134] = a4;
  v6[133] = a3;
  v6[132] = a2;
  v6[131] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v6[137] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6[138] = swift_task_alloc();
  v6[139] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v6[140] = swift_task_alloc();
  v7 = type metadata accessor for ModelConfiguration();
  v6[141] = v7;
  v6[142] = *(v7 - 8);
  v6[143] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  v6[147] = v8;
  v6[148] = *(v8 - 8);
  v6[149] = swift_task_alloc();
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  v6[152] = swift_task_alloc();
  v6[153] = swift_task_alloc();
  v6[154] = swift_task_alloc();
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[157] = v9;
  v6[158] = *(v9 - 8);
  v6[159] = swift_task_alloc();
  v6[160] = swift_task_alloc();
  v6[161] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v6[167] = swift_task_alloc();
  v10 = type metadata accessor for Asset();
  v6[168] = v10;
  v6[169] = *(v10 - 8);
  v6[170] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
  v6[171] = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v6[172] = v11;
  v6[173] = *(v11 - 8);
  v6[174] = swift_task_alloc();
  v12 = type metadata accessor for InferenceError.Context();
  v6[175] = v12;
  v6[176] = *(v12 - 8);
  v6[177] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  v6[178] = swift_task_alloc();
  v6[179] = swift_task_alloc();
  v6[180] = swift_task_alloc();
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v13 = type metadata accessor for CostProfile();
  v6[183] = v13;
  v6[184] = *(v13 - 8);
  v6[185] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY0_, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY0_()
{
  v237 = v0;
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1048);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = dispatch thunk of CatalogResource.dependentResourceIDs.getter();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of ManagedResource.cost.getter();
  v6 = CostProfile.energyEfficientMode.getter();
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 1488) = __swift_project_value_buffer(v7, static Log.device);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1064);
    v11 = *(v0 + 1056);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v235 = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v235);
    _os_log_impl(&dword_220940000, v8, v9, "Creating asset object for adapter with identifier %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  specialized OnDeviceInferenceProviderDataSource.adapterMetadataFromResource(_:)(*(v0 + 1048), (v0 + 16));
  v231 = v0;
  v14 = *(v0 + 1456);
  v15 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v214 = *(v0 + 1080);
  v210 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v15 + 56);
  *(v0 + 1496) = v18;
  *(v0 + 1504) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v14, 1, 1, v16);
  *(v0 + 352) = 0;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0;
  v228 = v0 + 360;
  v229 = *(v5 + 16);
  if (!v229)
  {

    v24 = 0;
    v25 = 0;
LABEL_20:
    *(v0 + 1520) = v25;
    *(v0 + 1512) = v24;
    v26 = *(v0 + 1440);
    v27 = *(v0 + 1352);
    v28 = *(v0 + 1344);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1456), v26, &_s24TokenGenerationInference5AssetVSgMd);
    v29 = (*(v27 + 48))(v26, 1, v28);
    v30 = *(v0 + 1440);
    if (v29 == 1)
    {

      outlined destroy of AdapterMetadata(v0 + 16);
      outlined destroy of [Int](v30, &_s24TokenGenerationInference5AssetVSgMd);
    }

    else
    {
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1440), *(v0 + 1360), type metadata accessor for Asset);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v228, v0 + 600, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
      if (*(v0 + 624))
      {
        outlined init with take of RandomNumberGenerator((v0 + 600), v0 + 560);
        if (v25)
        {
          v218 = v6;
          v229 = v25;
          v31 = *(v0 + 1336);
          v32 = *(v0 + 1328);
          v33 = *(v0 + 1264);
          v34 = *(v0 + 1256);
          static LanguageModelLoader.findURLOfKnownAdapterAsset(in:source:)(v31);
          outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v31, v32, &_s10Foundation3URLVSgMd);
          v35 = *(v33 + 48);
          if (v35(v32, 1, v34) != 1)
          {
            v194 = v24;
            v55 = *(v0 + 1320);
            v56 = *(v0 + 1312);
            v57 = *(v0 + 1264);
            v58 = *(v0 + 1256);
            v196 = *(v57 + 32);
            v196(*(v0 + 1288), *(v0 + 1328), v58);

            v59 = URL.path(percentEncoded:)(1);
            (*(v57 + 56))(v55, 1, 1, v58);
            v60 = *(v0 + 584);
            v61 = *(v0 + 592);
            v225 = v17;
            v62 = __swift_project_boxed_opaque_existential_1((v0 + 560), v60);
            *(v0 + 664) = v60;
            *(v0 + 672) = *(v61 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 640));
            (*(*(v60 - 8) + 16))(boxed_opaque_existential_1, v62, v60);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v55, v56, &_s10Foundation3URLVSgMd);
            if (v35(v56, 1, v58) != 1)
            {
              v74 = *(v0 + 1248);
              v75 = *(v0 + 1200);
              v196(*(v0 + 1280), *(v0 + 1312), *(v0 + 1256));
              v76 = URL.path(percentEncoded:)(1);
              v95 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v74, v76._countAndFlagsBits, v76._object, v0 + 640, v210, v225, v59._countAndFlagsBits, v59._object, v75);
              v96 = *(v0 + 1280);
              v97 = *(v0 + 1264);
              v98 = *(v0 + 1256);

              v99 = *(v97 + 8);
              v99(v96, v98);
              v5 = v225;
              goto LABEL_52;
            }

            v64 = *(v0 + 1304);
            v65 = *(v0 + 1296);
            v66 = *(v0 + 1256);
            outlined destroy of [Int](*(v0 + 1312), &_s10Foundation3URLVSgMd);
            static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v64);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v64, v65, &_s10Foundation3URLVSgMd);
            if (v35(v65, 1, v66) != 1)
            {
              v92 = *(v0 + 1248);
              v93 = *(v0 + 1192);
              v196(*(v0 + 1272), *(v0 + 1296), *(v0 + 1256));
              v94 = URL.path(percentEncoded:)(1);
              v5 = v225;
              v20 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v92, v94._countAndFlagsBits, v94._object, v0 + 640, v210, v225, v59._countAndFlagsBits, v59._object, v93);
              goto LABEL_51;
            }

            v232 = *(v0 + 1456);
            v67 = *(v0 + 1416);
            v68 = *(v0 + 1408);
            v195 = *(v0 + 1400);
            v220 = *(v0 + 1360);
            v197 = *(v0 + 1304);
            v201 = *(v0 + 1320);
            v69 = *(v0 + 1296);
            v212 = *(v0 + 1288);
            v216 = *(v0 + 1336);
            v70 = *(v0 + 1264);
            v207 = *(v0 + 1256);
            v71 = *(v0 + 1208);
            v72 = *(v0 + 1184);
            v73 = *(v0 + 1176);

            outlined destroy of AdapterMetadata(v0 + 16);

            outlined destroy of [Int](v69, &_s10Foundation3URLVSgMd);

            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
            (*(v68 + 16))(v71, v67, v195);
            (*(v72 + 104))(v71, *MEMORY[0x277D29D78], v73);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
            swift_willThrowTypedImpl();
            (*(v68 + 8))(v67, v195);
            outlined destroy of [Int](v197, &_s10Foundation3URLVSgMd);
            outlined destroy of [Int](v201, &_s10Foundation3URLVSgMd);
            (*(v70 + 8))(v212, v207);
            outlined destroy of [Int](v216, &_s10Foundation3URLVSgMd);
            outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v220, type metadata accessor for Asset);
            outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
            outlined destroy of [Int](v0 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
            outlined destroy of [Int](v232, &_s24TokenGenerationInference5AssetVSgMd);
            v44 = v0;
            (*(v72 + 32))(*(v0 + 1088), *(v0 + 1208), *(v0 + 1176));
            __swift_destroy_boxed_opaque_existential_1(v0 + 640);
            goto LABEL_42;
          }

          v223 = *(v0 + 1456);
          v36 = *(v0 + 1416);
          v37 = *(v0 + 1408);
          v206 = *(v0 + 1400);
          v219 = *(v0 + 1360);
          v215 = *(v0 + 1336);
          v38 = *(v0 + 1328);
          v39 = *(v231 + 1184);
          v211 = *(v231 + 1176);
          v40 = *(v231 + 1088);
          v41 = *(v231 + 1064);
          v42 = *(v231 + 1056);

          outlined destroy of AdapterMetadata(v231 + 16);
          outlined destroy of [Int](v38, &_s10Foundation3URLVSgMd);
          v235 = 0;
          v236 = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          v235 = 0xD00000000000001BLL;
          v236 = 0x8000000220AFD0F0;
          MEMORY[0x223D8E780](v42, v41);
          MEMORY[0x223D8E780](0x65726964206E6920, 0xEE002079726F7463);
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260]);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v43);

          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
          (*(v37 + 16))(v40, v36, v206);
          (*(v39 + 104))(v40, *MEMORY[0x277D29D78], v211);
          v44 = v231;
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
          swift_willThrowTypedImpl();
          (*(v37 + 8))(v36, v206);
          outlined destroy of [Int](v215, &_s10Foundation3URLVSgMd);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v219, type metadata accessor for Asset);
          outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
          outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
          v45 = v223;
LABEL_26:
          outlined destroy of [Int](v45, &_s24TokenGenerationInference5AssetVSgMd);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1((v44 + 70));
          goto LABEL_30;
        }

        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1360), type metadata accessor for Asset);

        outlined destroy of AdapterMetadata(v0 + 16);
        __swift_destroy_boxed_opaque_existential_1(v0 + 560);
      }

      else
      {
        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1360), type metadata accessor for Asset);

        outlined destroy of AdapterMetadata(v0 + 16);
        outlined destroy of [Int](v0 + 600, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
      }
    }

    v230 = *(v0 + 1456);
    v46 = *(v0 + 1416);
    v47 = *(v0 + 1408);
    v224 = *(v0 + 1400);
    v48 = *(v0 + 1184);
    v49 = *(v0 + 1176);
    v50 = *(v0 + 1088);
    v51 = *(v0 + 1064);
    v52 = *(v231 + 1056);
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v235 = 0xD000000000000025;
    v236 = 0x8000000220AFD0C0;
    MEMORY[0x223D8E780](v52, v51);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v44 = v231;
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v47 + 16))(v50, v46, v224);
    (*(v48 + 104))(v50, *MEMORY[0x277D29D78], v49);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v47 + 8))(v46, v224);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
    outlined destroy of [Int](v230, &_s24TokenGenerationInference5AssetVSgMd);
LABEL_30:

    v53 = v44[1];

    return v53();
  }

  v200 = v18;
  v218 = v6;
  v19 = v0 + 440;
  v222 = v17;

  v21 = 0;
  v22 = v5 + 40;
  while (v21 < *(v5 + 16))
  {
    type metadata accessor for CatalogClient();
    swift_allocObject();

    CatalogClient.init()();
    v0 = v231;
    dispatch thunk of CatalogClient.resource(for:)();

    if (!*(v231 + 544))
    {
      outlined destroy of [Int](v231 + 520, &_s12ModelCatalog0B8Resource_pSgMd);
LABEL_9:
      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
LABEL_10:
      v23 = v19;
      goto LABEL_11;
    }

    outlined init with take of RandomNumberGenerator((v231 + 520), v231 + 480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedLLMModel_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    if (!*(v231 + 464))
    {
      goto LABEL_10;
    }

    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    v0 = v231;
    outlined init with take of RandomNumberGenerator(v19, v231 + 400);
    outlined init with copy of DeterministicLanguageModelProtocol(v231 + 400, v228);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v228, v231 + 800, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    if (*(v231 + 824))
    {
      v77 = *(v231 + 1080);

      outlined init with take of RandomNumberGenerator((v231 + 800), v231 + 840);
      __swift_project_boxed_opaque_existential_1((v231 + 840), *(v231 + 864));
      v78 = dispatch thunk of CatalogResource.id.getter();
      v80 = v79;
      swift_beginAccess();
      v81 = *(v77 + 128);
      if (*(v81 + 16))
      {

        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
        v84 = v83;

        v6 = v218;
        if (v84)
        {
          v85 = *(v231 + 1384);
          v86 = *(v231 + 1376);
          v87 = *(v231 + 1368);
          outlined init with copy of DeterministicLanguageModelProtocol(*(v81 + 56) + 40 * v82, v231 + 760);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
          v88 = swift_dynamicCast();
          (*(v85 + 56))(v87, v88 ^ 1u, 1, v86);
          if ((*(v85 + 48))(v87, 1, v86) != 1)
          {
            v89 = *(v231 + 1392);
            v90 = *(v231 + 1376);
            v91 = *(v231 + 1368);
            outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
            outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v91, v89, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
            outlined init with copy of DeterministicLanguageModelProtocol(v89 + *(v90 + 24), v231 + 320);
            outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v89, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
LABEL_49:
            v110 = *(v0 + 1448);
            __swift_project_boxed_opaque_existential_1((v214 + 192), *(*(v0 + 1080) + 216));
            __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
            v111 = dispatch thunk of CatalogResource.id.getter();
            OnDeviceInferenceProviderDataSource.asset(for:)(v111, v112, v110);
            outlined destroy of [Int](*(v0 + 1456), &_s24TokenGenerationInference5AssetVSgMd);

            v113 = *(v0 + 1456);
            v114 = *(v0 + 1448);
            v200(v114, 0, 1, *(v0 + 1344));
            outlined init with take of Asset?(v114, v113, &_s24TokenGenerationInference5AssetVSgMd);
            __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
            v24 = dispatch thunk of CatalogResource.id.getter();
            v25 = v115;
            __swift_destroy_boxed_opaque_existential_1(v0 + 400);
            __swift_destroy_boxed_opaque_existential_1(v0 + 840);
            goto LABEL_20;
          }

LABEL_46:
          outlined destroy of [Int](*(v231 + 1368), &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
          outlined init with copy of DeterministicLanguageModelProtocol(v231 + 840, v231 + 720);

          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = *(v231 + 1064);
            v103 = *(v231 + 1056);
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v235 = v105;
            *v104 = 136446466;
            __swift_project_boxed_opaque_existential_1((v231 + 720), *(v231 + 744));
            v106 = dispatch thunk of CatalogResource.id.getter();
            v108 = v107;
            __swift_destroy_boxed_opaque_existential_1(v231 + 720);
            v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v235);
            v17 = v222;
            v0 = v231;

            *(v104 + 4) = v109;
            *(v104 + 12) = 2082;
            *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v102, &v235);
            _os_log_impl(&dword_220940000, v100, v101, "Base model asset %{public}s was not loaded at time of loading the adapter %{public}s", v104, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D90A10](v105, -1, -1);
            MEMORY[0x223D90A10](v104, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v231 + 720);
          }

          goto LABEL_49;
        }
      }

      else
      {

        v6 = v218;
      }

      (*(*(v231 + 1384) + 56))(*(v231 + 1368), 1, 1, *(v231 + 1376));
      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1(v231 + 400);
    v23 = v231 + 800;
LABEL_11:
    v20 = outlined destroy of [Int](v23, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    ++v21;
    v22 += 16;
    if (v229 == v21)
    {

      v24 = 0;
      v25 = 0;
      v0 = v231;
      v6 = v218;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  v95 = v20;
  v116 = *(v0 + 1304);
  v117 = *(v0 + 1272);
  v118 = *(v0 + 1264);
  v119 = *(v0 + 1256);

  v99 = *(v118 + 8);
  v99(v117, v119);
  outlined destroy of [Int](v116, &_s10Foundation3URLVSgMd);
LABEL_52:
  *(v0 + 1536) = v95;
  *(v0 + 1528) = v99;
  outlined destroy of [Int](*(v0 + 1320), &_s10Foundation3URLVSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 640);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 320, v0 + 680, &_s24TokenGenerationInference9BaseModel_pSgMd);
  v120 = v0;
  if (*(v0 + 704))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference9BaseModel_pMd);
    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5BaseModelObjC);
    if (swift_dynamicCast())
    {
      v121 = *(v0 + 1040);
      [v95 setBaseModel_];
    }
  }

  else
  {
    outlined destroy of [Int](v0 + 680, &_s24TokenGenerationInference9BaseModel_pSgMd);
  }

  [v95 setUseEnergyEfficientMode_];
  v122 = MEMORY[0x223D8E6B0](*(v0 + 1056), *(v0 + 1064));
  v221 = v95;
  [v95 setAssetIdentifier_];
  v217 = v99;
  v123 = *(v0 + 1248);
  v124 = *(v0 + 1240);

  v125 = *(v0 + 64);
  v226 = *(v0 + 56);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v123, v124, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v126 = type metadata accessor for ModelMetadata();
  *(v0 + 1544) = v126;
  v127 = *(v126 - 8);
  v128 = *(v127 + 48);
  *(v0 + 1552) = v128;
  *(v0 + 1560) = (v127 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v129 = v128(v124, 1, v126);
  v130 = *(v0 + 1240);
  if (v129 == 1)
  {

    outlined destroy of [Int](v130, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v213 = 0;
    goto LABEL_65;
  }

  v131 = *(v130 + 160);
  v132 = *(v130 + 168);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v130, type metadata accessor for ModelMetadata);
  if (!v132)
  {
    v213 = v131;
    v120 = v231;
LABEL_65:

    outlined destroy of AdapterMetadata((v120 + 2));

    v132 = 0;
    goto LABEL_66;
  }

  if ((v131 != v226 || v132 != v125) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v213 = v131;

    v120 = v231;
    outlined destroy of AdapterMetadata(v231 + 16);
LABEL_66:

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = v120[133];
      v143 = v120[132];
      v144 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v235 = v233;
      *v144 = 136446978;
      *(v144 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v142, &v235);
      *(v144 + 12) = 2082;
      *(v144 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v125, &v235);
      *(v144 + 22) = 2082;
      *(v144 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v229, &v235);
      *(v144 + 32) = 2082;
      v120[126] = v213;
      v120[127] = v132;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v145 = String.init<A>(describing:)();
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, &v235);

      *(v144 + 34) = v147;
      _os_log_impl(&dword_220940000, v140, v141, "Failed to load adapter %{public}s, adapter backbone signature %{public}s does not match base model %{public}s backbone signature %{public}s", v144, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v233, -1, -1);
      MEMORY[0x223D90A10](v144, -1, -1);
    }

    v234 = v120[182];
    v148 = v120[176];
    v187 = v120[177];
    v189 = v120[175];
    v204 = v120[167];
    v208 = v120[170];
    v198 = v120[157];
    v202 = v120[161];
    v192 = v120[156];
    v149 = v120[148];
    v190 = v120[147];
    v150 = v120[136];
    v151 = v120[133];
    v152 = v120[132];
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x223D8E780](0x2072657470616441, 0xE800000000000000);
    MEMORY[0x223D8E780](v152, v151);
    MEMORY[0x223D8E780](0x7574616E67697320, 0xEB00000000206572);
    MEMORY[0x223D8E780](v226, v125);

    MEMORY[0x223D8E780](0xD000000000000020, 0x8000000220AFD110);
    MEMORY[0x223D8E780](v194, v229);

    MEMORY[0x223D8E780](0x7574616E67697320, 0xEB00000000206572);
    v120[128] = v213;
    v120[129] = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v153 = String.init<A>(describing:)();
    MEMORY[0x223D8E780](v153);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v148 + 16))(v150, v187, v189);
    (*(v149 + 104))(v150, *MEMORY[0x277D29D78], v190);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

    (*(v148 + 8))(v187, v189);
    outlined destroy of [Int](v192, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v217(v202, v198);
    outlined destroy of [Int](v204, &_s10Foundation3URLVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v208, type metadata accessor for Asset);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    outlined destroy of [Int]((v120 + 40), &_s24TokenGenerationInference9BaseModel_pSgMd);
    outlined destroy of [Int](v234, &_s24TokenGenerationInference5AssetVSgMd);
    __swift_destroy_boxed_opaque_existential_1((v120 + 70));
    v44 = v120;
    goto LABEL_30;
  }

  v133 = *(v231 + 1248);
  v134 = *(v231 + 1232);

  v135 = v231;

  v136 = *(v231 + 40);
  v137 = *(v231 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v133, v134, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v138 = v128(v134, 1, v126);
  v139 = *(v231 + 1232);
  if (v138 == 1)
  {

    outlined destroy of [Int](v139, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    goto LABEL_80;
  }

  v154 = *(v139 + 176);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v139, type metadata accessor for ModelMetadata);
  if (!v154)
  {
    goto LABEL_80;
  }

  if (!*(v154 + 16) || (v155 = specialized __RawDictionaryStorage.find<A>(_:)(v210, v5), (v156 & 1) == 0))
  {

LABEL_80:
    v158 = 0;
    v159 = 0;
LABEL_81:
    v205 = v158;
    v227 = v136;
    outlined destroy of AdapterMetadata(v231 + 16);

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = *(v231 + 1064);
      v171 = *(v231 + 1056);
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v235 = v173;
      *v172 = 136447234;
      *(v172 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v170, &v235);
      *(v172 + 12) = 2082;
      *(v172 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v5, &v235);
      *(v172 + 22) = 2082;
      *(v172 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v137, &v235);
      *(v172 + 32) = 2082;
      *(v172 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v229, &v235);
      *(v172 + 42) = 2082;
      *(v231 + 976) = v205;
      *(v231 + 984) = v159;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v174 = String.init<A>(describing:)();
      v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v175, &v235);

      *(v172 + 44) = v176;
      v135 = v231;
      _os_log_impl(&dword_220940000, v168, v169, "Failed to load adapter %{public}s type %{public}s, type signature %{public}s does not match base model %{public}s adapter type signature %{public}s", v172, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v173, -1, -1);
      MEMORY[0x223D90A10](v172, -1, -1);
    }

    v209 = v135[182];
    v177 = v135[177];
    v178 = v135[176];
    v199 = v135[167];
    v203 = v135[170];
    v191 = v135[157];
    v193 = v135[161];
    v188 = v135[156];
    v179 = v135[148];
    v185 = v135[175];
    v186 = v135[147];
    v180 = *(v231 + 1088);
    v181 = *(v231 + 1064);
    v182 = *(v231 + 1056);
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(92);
    MEMORY[0x223D8E780](0x2072657470616441, 0xE800000000000000);
    MEMORY[0x223D8E780](v182, v181);
    MEMORY[0x223D8E780](0x206570797420, 0xE600000000000000);
    MEMORY[0x223D8E780](v210, v5);

    MEMORY[0x223D8E780](0xD000000000000011, 0x8000000220AFD140);
    MEMORY[0x223D8E780](v227, v137);

    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFD160);
    MEMORY[0x223D8E780](v194, v229);

    MEMORY[0x223D8E780](0xD000000000000018, 0x8000000220AFD180);
    *(v231 + 992) = v205;
    *(v231 + 1000) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v183 = String.init<A>(describing:)();
    MEMORY[0x223D8E780](v183);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v178 + 16))(v180, v177, v185);
    (*(v179 + 104))(v180, *MEMORY[0x277D29D78], v186);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    v44 = v231;
    swift_willThrowTypedImpl();

    (*(v178 + 8))(v177, v185);
    outlined destroy of [Int](v188, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v217(v193, v191);
    outlined destroy of [Int](v199, &_s10Foundation3URLVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v203, type metadata accessor for Asset);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
    outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
    v45 = v209;
    goto LABEL_26;
  }

  v157 = (*(v154 + 56) + 16 * v155);
  v158 = *v157;
  v159 = v157[1];

  if ((v158 != v136 || v159 != v137) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_81;
  }

  v160 = *(v231 + 1248);

  v162 = *(v231 + 240);
  v161 = *(v231 + 248);
  v163 = *(v231 + 256);
  v164 = *(v231 + 264);
  outlined copy of StopToken?(v162, v161, v163, v164);
  *(v231 + 1568) = specialized OnDeviceInferenceAssetRepository.specialTokensMap(_:_:)(v160, v231 + 16);
  if (v164 == 1)
  {
    v165 = *(v231 + 1224);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v231 + 1248), v165, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v166 = v128(v165, 1, v126);
    v167 = *(v231 + 1224);
    if (v166 == 1)
    {
      outlined destroy of [Int](*(v231 + 1224), &_s24TokenGenerationInference13ModelMetadataVSgMd);
      v162 = 0;
      v161 = 0;
      v163 = 0;
      v164 = 1;
    }

    else
    {
      v162 = v167[28];
      v161 = v167[29];
      v163 = v167[30];
      v164 = v167[31];
      outlined copy of StopToken?(v162, v161, v163, v164);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v167, type metadata accessor for ModelMetadata);
    }
  }

  *(v231 + 1600) = v164;
  *(v231 + 1592) = v163;
  *(v231 + 1584) = v161;
  *(v231 + 1576) = v162;
  *(v231 + 1608) = OnDeviceInferenceAssetRepository.localizationOverrideMap(_:_:)(*(v231 + 1248), v231 + 16);
  v184 = swift_task_alloc();
  *(v231 + 1616) = v184;
  *v184 = v231;
  v184[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTQ1_;

  return (specialized static LanguageModelLoader.load(from:baseModel:))(v221, v231 + 320);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 1624) = a1;
  *(v4 + 1632) = a2;
  *(v4 + 1640) = v2;

  if (v2)
  {
    v5 = *(v4 + 1600);
    v6 = *(v4 + 1592);
    v7 = *(v4 + 1584);
    v8 = *(v4 + 1576);
    v9 = *(v4 + 1080);

    outlined consume of StopToken?(v8, v7, v6, v5);

    outlined destroy of AdapterMetadata(v4 + 16);
    v10 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY3_;
    v11 = v9;
  }

  else
  {
    v11 = *(v4 + 1080);
    *(v4 + 1648) = *(v4 + 72);
    *(v4 + 274) = *(v4 + 80);
    v10 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY2_()
{
  v79 = v0;
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1144);
  v6 = type metadata accessor for E5TransformerLanguageModel();
  ObjectType = swift_getObjectType();
  v8 = swift_unknownObjectRetain_n();
  v75 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v8, v4, v3, v6, ObjectType, v2);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(v5);
  v9 = *(v0 + 1168);
  if (v1)
  {

    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    (*(*(v0 + 1136) + 32))(*(v0 + 1168), *(v0 + 1144), *(v0 + 1128));
    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v9 + *(v10 + 20)) = 0;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v77 = (v0 + 880);
  v11 = *(v0 + 1160);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1168), v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  type metadata accessor for PromptTemplateConfiguration(0);
  v12 = *(*(v10 - 8) + 48);
  v13 = v12(v11, 1, v10);
  outlined destroy of [Int](v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (v13 == 1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 1064);
      v17 = *(v0 + 1056);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v78);
      _os_log_impl(&dword_220940000, v14, v15, "Did not find prompt template configuration for asset %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D90A10](v19, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }
  }

  else
  {
    v20 = *(v0 + 1168);
    if (!v12(v20, 1, v10))
    {
      *(v20 + *(v10 + 20)) = *(v0 + 273) & 1;
    }
  }

  v73 = *(v0 + 1544);
  v74 = *(v0 + 1552);
  v21 = *(v0 + 1496);
  v22 = *(v0 + 1432);
  v23 = *(v0 + 1424);
  v24 = *(v0 + 1344);
  v71 = *(v0 + 1216);
  v72 = *(v0 + 1248);
  v70 = *(v0 + 1168);
  v68 = *(v0 + 1360);
  v69 = *(v0 + 1152);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1072);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1048), *(*(v0 + 1048) + 24));
  v27 = dispatch thunk of CatalogResource.id.getter();
  v64 = v28;
  v65 = v27;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v26, v22, type metadata accessor for Asset);
  v21(v22, 0, 1, v24);
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, v23, type metadata accessor for Asset);
  v21(v23, 0, 1, v24);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v70, v69, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  *v77 = *(v0 + 216);
  *(v0 + 896) = *(v0 + 232);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v77, v0 + 904, &_s24TokenGenerationInference18ClassifierMetadataVSgMd);
  outlined destroy of AdapterMetadata(v0 + 16);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v72, v71, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  if (v74(v71, 1, v73) == 1)
  {
    v30 = *(v0 + 1096);
    outlined destroy of [Int](*(v0 + 1216), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v31 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  }

  else
  {
    v32 = *(v0 + 1216);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v32 + *(*(v0 + 1544) + 64), *(v0 + 1096), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v32, type metadata accessor for ModelMetadata);
  }

  v33 = *(v0 + 1648);
  v54 = *(v0 + 1608);
  v53 = *(v0 + 1568);
  v59 = *(v0 + 1536);
  v67 = *(v0 + 1456);
  v34 = *(v0 + 1432);
  v55 = *(v0 + 1424);
  v66 = *(v0 + 1360);
  v63 = *(v0 + 1336);
  v61 = *(v0 + 1288);
  v58 = *(v0 + 1264);
  v60 = *(v0 + 1256);
  v57 = *(v0 + 1248);
  v35 = *(v0 + 274) == 0;
  v51 = *(v0 + 1592);
  v52 = *(v0 + 1576);
  v76 = *(v0 + 1624);
  v62 = *(v0 + 1168);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1120);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1104);
  v40 = *(v0 + 1096);
  v41 = *(v0 + 1064);
  v42 = *(v0 + 1056);
  v56 = v42;
  v37[2] = v65;
  v37[3] = v64;
  if (v35)
  {
    v43 = v33;
  }

  else
  {
    v43 = 0;
  }

  *v37 = v42;
  v37[1] = v41;
  outlined init with take of Asset?(v34, v37 + v38[6], &_s24TokenGenerationInference5AssetVSgMd);
  *(v37 + v38[7]) = v76;
  *(v37 + v38[8]) = v75;
  v44 = (v37 + v38[9]);
  *v44 = xmmword_220AED900;
  v44[1] = 0u;
  v44[2] = 0u;
  v44[3] = 0u;
  *(v44 + 57) = 0u;
  *(v37 + v38[10]) = v53;
  *(v37 + v38[11]) = v43;
  *(v37 + v38[12]) = v54;
  outlined init with take of Asset?(v39, v37 + v38[13], &_s10Foundation4UUIDVSgMd);
  outlined init with take of Asset?(v55, v37 + v38[14], &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with take of Asset?(v36, v37 + v38[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v45 = v37 + v38[16];
  v46 = *(v0 + 896);
  *v45 = *v77;
  *(v45 + 2) = v46;
  v47 = (v37 + v38[17]);
  *v47 = v52;
  v47[1] = v51;
  outlined init with take of Asset?(v40, v37 + v38[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  *(v0 + 304) = v38;
  *(v0 + 312) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 280));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v37, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  specialized Dictionary.subscript.setter(v0 + 280, v56, v41);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v37, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined destroy of [Int](v57, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  (*(v58 + 8))(v61, v60);
  outlined destroy of [Int](v63, &_s10Foundation3URLVSgMd);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v66, type metadata accessor for Asset);
  outlined destroy of [Int](v0 + 360, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
  outlined destroy of [Int](v0 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v67, &_s24TokenGenerationInference5AssetVSgMd);
  outlined destroy of [Int](v62, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 560);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[205];
  v14 = v0[192];
  v19 = v0[191];
  v5 = v0[177];
  v6 = v0[176];
  v7 = v0[175];
  v20 = v0[170];
  v21 = v0[182];
  v17 = v0[161];
  v18 = v0[167];
  v16 = v0[157];
  v15 = v0[156];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[136];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v6 + 16))(v10, v5, v7);
  (*(v8 + 104))(v10, *MEMORY[0x277D29D78], v9);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v6 + 8))(v5, v7);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v19(v17, v16);
  outlined destroy of [Int](v18, &_s10Foundation3URLVSgMd);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v20, type metadata accessor for Asset);
  outlined destroy of [Int]((v0 + 45), &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
  outlined destroy of [Int]((v0 + 40), &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v21, &_s24TokenGenerationInference5AssetVSgMd);
  __swift_destroy_boxed_opaque_existential_1((v0 + 70));

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[28] = a3;
  v4[25] = a1;
  v4[26] = a2;
  v4[29] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for Asset();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v7 = type metadata accessor for AssetVersion();
  v4[43] = v7;
  v4[44] = *(v7 - 8);
  v4[45] = swift_task_alloc();
  v8 = type metadata accessor for TokenGenerationError();
  v4[46] = v8;
  v4[47] = *(v8 - 8);
  v4[48] = swift_task_alloc();
  v9 = type metadata accessor for TokenGenerationError.Context();
  v4[49] = v9;
  v4[50] = *(v9 - 8);
  v4[51] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd);
  v4[52] = v10;
  v4[53] = *(v10 - 8);
  v4[54] = swift_task_alloc();
  type metadata accessor for AppAssetManager.CopyResult(0);
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  type metadata accessor for XPCCodableObject();
  v4[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices10AuditTokenVSgMd);
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for AuditToken();
  v4[61] = v11;
  v4[62] = *(v11 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY0_()
{
  v86 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  MEMORY[0x223D8DA00]();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    outlined destroy of [Int](*(v0 + 480), &_s20ModelManagerServices10AuditTokenVSgMd);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v5 + 16))(v6, v4, v7);
    (*(v9 + 104))(v6, *MEMORY[0x277D71AF0], v8);
    TokenGenerationError.toInferenceError()();
    (*(v9 + 8))(v6, v8);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v4, v7);
LABEL_13:

    v42 = *(v0 + 8);

    return v42();
  }

  v10 = (*(*(v0 + 496) + 32))(*(v0 + 512), *(v0 + 480), *(v0 + 488));
  MEMORY[0x223D8DA30](v10);
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v11 = FoundationModelsExtensionInfo.init(xpcObject:)();
  *(v0 + 520) = v11;
  v12 = *(v0 + 512);
  if (!v11)
  {
    v28 = *(v0 + 496);
    v29 = *(v0 + 400);
    v30 = *(v0 + 408);
    v31 = *(v0 + 384);
    v32 = *(v0 + 392);
    v34 = *(v0 + 368);
    v33 = *(v0 + 376);
    v82 = *(v0 + 488);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v29 + 16))(v31, v30, v32);
    (*(v33 + 104))(v31, *MEMORY[0x277D71AF0], v34);
    TokenGenerationError.toInferenceError()();
    (*(v33 + 8))(v31, v34);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v29 + 8))(v30, v32);
    (*(v28 + 8))(v12, v82);
    goto LABEL_13;
  }

  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 488);
  v16 = CustomAssetConfiguration.secureIdentifier.getter();
  v18 = v17;
  (*(v14 + 16))(v13, v12, v15);
  specialized AppAssetManager.__allocating_init(identifier:auditToken:)(v16, v18, v13);
  *(v0 + 528) = v19;
  if (!v19)
  {
    v79 = *(v0 + 512);
    v80 = *(v0 + 496);
    v36 = *(v0 + 400);
    v35 = *(v0 + 408);
    v37 = *(v0 + 384);
    v78 = *(v0 + 392);
    v38 = *(v0 + 368);
    v39 = *(v0 + 376);
    v83 = *(v0 + 488);
    _StringGuts.grow(_:)(45);

    v85[0] = 0xD00000000000002BLL;
    v85[1] = 0x8000000220AFCFD0;
    *(v0 + 608) = AuditToken.processIdentifier.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v40);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v36 + 16))(v37, v35, v78);
    (*(v39 + 104))(v37, *MEMORY[0x277D71AF0], v38);
    TokenGenerationError.toInferenceError()();
    (*(v39 + 8))(v37, v38);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

    (*(v36 + 8))(v35, v78);
    (*(v80 + 8))(v79, v83);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = *(v0 + 440);
  v22 = FoundationModelsExtensionInfo.metadata.getter();
  v23 = FoundationModelsExtensionInfo.adapterWeights.getter();
  v24 = FoundationModelsExtensionInfo.draftMIL.getter();
  v25 = FoundationModelsExtensionInfo.draftWeights.getter();
  v26 = v25;
  if ((v24 & 0x100000000) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if ((v25 & 0x100000000) != 0)
  {
    v26 = 0;
  }

  AppAssetManager.copyAssetsIfNeeded(metadata:adapterWeights:draftMIL:draftWeights:)(v22, v23, v27 | ((HIDWORD(v24) & 1) << 32), v26 | ((HIDWORD(v25) & 1) << 32), v21);
  v41 = *(v0 + 208);
  outlined init with take of Asset?(*(v0 + 440), *(v0 + 464), &_s10Foundation3URLVSgMd);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v45 = *(v0 + 424);
  v44 = *(v0 + 432);
  v46 = *(v0 + 416);
  v48 = *(v0 + 352);
  v47 = *(v0 + 360);
  v50 = *(v0 + 336);
  v49 = *(v0 + 344);
  v51 = *(v0 + 256);
  v81 = *(v0 + 248);
  v84 = *(v0 + 320);
  CatalogAsset.version.getter();
  (*(v45 + 8))(v44, v46);
  v52 = AssetVersion.number.getter();
  v54 = v53;
  (*(v48 + 8))(v47, v49);
  v55 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory;
  v56 = *(v51 + 16);
  *(v0 + 536) = v56;
  *(v0 + 544) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v50, v20 + v55, v81);
  v57 = (v50 + *(v84 + 20));
  *v57 = v52;
  v57[1] = v54;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 328);
  v59 = *(v0 + 336);
  v60 = type metadata accessor for Logger();
  *(v0 + 552) = __swift_project_value_buffer(v60, static Log.device);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v59, v58, type metadata accessor for Asset);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 328);
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85[0] = v66;
    *v65 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for Asset);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v85);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_220940000, v61, v62, "Loading custom adapter from: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x223D90A10](v66, -1, -1);
    MEMORY[0x223D90A10](v65, -1, -1);
  }

  else
  {

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for Asset);
  }

  v71 = CustomAssetConfiguration.identifier.getter();
  v73 = v72;
  *(v0 + 560) = v72;
  v74 = swift_task_alloc();
  *(v0 + 568) = v74;
  *v74 = v0;
  v74[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ1_;
  v75 = *(v0 + 336);
  v76 = *(v0 + 312);
  v77 = *(v0 + 208);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKF(v77, v71, v73, v75, v76);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ1_()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 216);

  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY5_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY2_()
{
  v82 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 464), v1, &_s10Foundation3URLVSgMd);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 264);
    outlined destroy of [Int](*(v0 + 456), &_s10Foundation3URLVSgMd);
    AppAssetManager.draftMILURL.getter(v4);
    v5 = [objc_opt_self() defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v7 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v8 = [v5 fileExistsAtPath_];
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);

    (*(v10 + 8))(v9, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v77 = *(v0 + 512);
    v15 = *(v0 + 488);
    v16 = *(v0 + 496);
    v17 = *(v0 + 464);
    v18 = *(v0 + 336);
    if (v8)
    {
      if (v14)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "Custom adapter has draft model, but it has not been compiled. Not using speculative decoding for this request.";
LABEL_12:
        _os_log_impl(&dword_220940000, v12, v13, v20, v19, 2u);
        MEMORY[0x223D90A10](v19, -1, -1);

LABEL_14:

        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v18, type metadata accessor for Asset);
        outlined destroy of [Int](v17, &_s10Foundation3URLVSgMd);
        (*(v16 + 8))(v77, v15);

        v39 = *(v0 + 8);
LABEL_22:

        return v39();
      }
    }

    else if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Custom adapter has no draft model. Not using speculative decoding for this request.";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v21 = *(v0 + 536);
  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  (*(*(v0 + 256) + 32))(v22, *(v0 + 456), v24);
  v21(v23, v22, v24);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 256);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80 = v78;
    *v31 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v30 + 8);
    v35(v28, v29);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v80);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_220940000, v25, v26, "Custom adapter has compiled draft model. Loading draft model from: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x223D90A10](v78, -1, -1);
    MEMORY[0x223D90A10](v31, -1, -1);

    v37 = v35;
  }

  else
  {

    v37 = *(v30 + 8);
    v37(v28, v29);
  }

  *(v0 + 584) = v37;
  v38 = *(v0 + 576);
  __swift_project_boxed_opaque_existential_1((*(v0 + 216) + 192), *(*(v0 + 216) + 216));
  OnDeviceInferenceProviderDataSource.catalogResource(for:)(v0 + 96);
  if (v38)
  {

LABEL_20:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog019AssetBackedLLMDraftA0_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
LABEL_21:
    v54 = *(v0 + 400);
    v55 = *(v0 + 408);
    v56 = *(v0 + 384);
    v57 = *(v0 + 392);
    v73 = v37;
    v59 = *(v0 + 368);
    v58 = *(v0 + 376);
    v75 = *(v0 + 336);
    v71 = *(v0 + 280);
    v60 = *(v0 + 248);
    outlined destroy of [Int](v0 + 56, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v54 + 16))(v56, v55, v57);
    v79 = *MEMORY[0x277D71AF0];
    (*(v58 + 104))(v56);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    v61 = swift_allocError();
    TokenGenerationError.toInferenceError()();
    (*(v58 + 8))(v56, v59);
    swift_willThrow();
    (*(v54 + 8))(v55, v57);
    v73(v71, v60);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v75, type metadata accessor for Asset);
    v74 = *(v0 + 496);
    v76 = *(v0 + 488);
    v72 = *(v0 + 464);
    v63 = *(v0 + 400);
    v62 = *(v0 + 408);
    v64 = *(v0 + 384);
    v69 = *(v0 + 392);
    v66 = *(v0 + 368);
    v65 = *(v0 + 376);
    v70 = *(v0 + 512);
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v80 = 0xD00000000000002FLL;
    v81 = 0x8000000220AFD030;
    *(v0 + 616) = AuditToken.processIdentifier.getter();
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v67);

    v68 = v61;
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v63 + 16))(v64, v62, v69);
    (*(v65 + 104))(v64, v79, v66);
    TokenGenerationError.toInferenceError()();
    (*(v65 + 8))(v64, v66);
    swift_willThrowTypedImpl();

    (*(v63 + 8))(v62, v69);
    outlined destroy of [Int](v72, &_s10Foundation3URLVSgMd);
    (*(v74 + 8))(v70, v76);

    v39 = *(v0 + 8);
    goto LABEL_22;
  }

  v40 = *(v0 + 536);
  v41 = *(v0 + 448);
  v42 = *(v0 + 280);
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v45 = dispatch thunk of CatalogResource.id.getter();
  v47 = v46;
  *(v0 + 592) = v46;
  v40(v41, v42, v43);
  (*(v44 + 56))(v41, 0, 1, v43);
  v48 = swift_task_alloc();
  *(v0 + 600) = v48;
  *v48 = v0;
  v48[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ3_;
  v49 = *(v0 + 448);
  v50 = *(v0 + 336);
  v51 = *(v0 + 304);
  v52 = *(v0 + 240);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKF(v52, v0 + 16, v50, v45, v47, v49, v51);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  v3 = *(v2 + 448);
  v4 = *(v2 + 216);
  outlined destroy of [Int](v3, &_s10Foundation3URLVSgMd);

  if (v0)
  {
    v5 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY6_;
  }

  else
  {
    v5 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY4_()
{
  v1 = v0[62];
  v15 = v0[61];
  v16 = v0[64];
  v13 = v0[73];
  v14 = v0[58];
  v11 = v0[35];
  v12 = v0[42];
  v10 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v4 = CustomAssetConfiguration.identifier.getter();
  v6 = v5;
  v0[20] = v2;
  v0[21] = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v3, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  specialized Dictionary.subscript.setter((v0 + 17), v4, v6);
  swift_endAccess();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v3, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v13(v11, v10);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
  outlined destroy of [Int](v14, &_s10Foundation3URLVSgMd);
  (*(v1 + 8))(v16, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v8 = v0[1];

  return v8();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY5_()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  v5 = swift_allocError();
  (*(v4 + 32))(v6, v2, v3);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  v19 = *(v0 + 496);
  v20 = *(v0 + 488);
  v18 = *(v0 + 464);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 384);
  v16 = *(v0 + 392);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v17 = *(v0 + 512);
  _StringGuts.grow(_:)(49);

  *(v0 + 616) = AuditToken.processIdentifier.getter();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v12);

  v13 = v5;
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  (*(v8 + 16))(v9, v7, v16);
  (*(v10 + 104))(v9, *MEMORY[0x277D71AF0], v11);
  TokenGenerationError.toInferenceError()();
  (*(v10 + 8))(v9, v11);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v16);
  outlined destroy of [Int](v18, &_s10Foundation3URLVSgMd);
  (*(v19 + 8))(v17, v20);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY6_()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 248);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  v19 = swift_allocError();
  (*(v3 + 32))(v8, v4, v5);
  v1(v6, v7);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v2, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v21 = *(v0 + 464);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 384);
  v18 = *(v0 + 392);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v20 = *(v0 + 512);
  _StringGuts.grow(_:)(49);

  *(v0 + 616) = AuditToken.processIdentifier.getter();
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v14);

  v15 = v19;
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  (*(v10 + 16))(v11, v9, v18);
  (*(v12 + 104))(v11, *MEMORY[0x277D71AF0], v13);
  TokenGenerationError.toInferenceError()();
  (*(v12 + 8))(v11, v13);
  swift_willThrowTypedImpl();

  (*(v10 + 8))(v9, v18);
  outlined destroy of [Int](v21, &_s10Foundation3URLVSgMd);
  (*(v22 + 8))(v20, v23);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t OnDeviceInferenceAssetRepository.makeDraftingBehavior(metadataModelConfiguration:defaultParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v59 = *(a2 + 57);
  v60 = v8;
  v62 = *(a2 + 104);
  v63 = v7;
  v61 = *(a2 + 112);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18ModelConfigurationVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v58[-v13];
  __swift_project_boxed_opaque_existential_1((v3 + 232), *(v3 + 256));
  v15 = off_2834512C8[0];
  type metadata accessor for OnDeviceInferenceOverrides();
  v15();
  if (v16)
  {
    v68 = v12;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v69, v14, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
    v17 = type metadata accessor for ModelConfiguration();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      outlined destroy of [Int](v14, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
      v12 = v68;
    }

    else
    {
      v67 = ModelConfiguration.speculativeDecodingDraftTokenCount.getter();
      v20 = v19;
      (*(v18 + 8))(v14, v17);
      v12 = v68;
      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for device == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_73;
      }
    }
  }

  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v26 = v15();
    if ((v27 & 1) == 0)
    {
      v30 = v26;
      goto LABEL_18;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v69, v12, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
    v28 = type metadata accessor for ModelConfiguration();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      outlined destroy of [Int](v12, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
    }

    else
    {
      v30 = ModelConfiguration.speculativeDecodingDraftTokenCount.getter();
      v32 = v31;
      (*(v29 + 8))(v12, v28);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = *(a2 + 88) == 1 || (*(a2 + 8) & 1) != 0 ? 2 : *a2;
LABEL_18:
    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v33 = off_2834512D0[0]();
    if (v33 == 2)
    {
      LODWORD(v67) = *(a2 + 88) == 1 ? 0 : *(a2 + 9);
    }

    else
    {
      LODWORD(v67) = v33;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v34 = off_2834512D8[0]();
    if (v35)
    {
      v36 = *(a2 + 88) == 1 || (*(a2 + 24) & 1) != 0 ? 1 : *(a2 + 16);
      v69 = v36;
    }

    else
    {
      v69 = v34;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v37 = off_2834512E0[0]();
    if (v38)
    {
      v39 = *(a2 + 88);
      if (v39 == 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = *(a2 + 32);
        LODWORD(v39) = *(a2 + 40);
      }

      v65 = v39;
    }

    else
    {
      v66 = v37;
      v65 = 0;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v40 = off_2834512E8[0]();
    if (v40 == 2)
    {
      v41 = *(a2 + 88) == 1 ? 0 : *(a2 + 113);
    }

    else
    {
      v41 = v40;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v42 = off_2834512F0[0]();
    if ((v42 & 0x100000000) != 0)
    {
      v43 = *(a2 + 88);
      if (v43 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 44);
        LODWORD(v43) = *(a2 + 48);
      }

      v64 = v43;
    }

    else
    {
      v12 = v42;
      v64 = 0;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v44 = off_283451300[0]();
    v68 = v30;
    if (v44 == 2)
    {
      v15 = *(a2 + 88) == 1 ? 0 : *(a2 + 49);
    }

    else
    {
      v15 = v44;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v45 = off_283451308[0]();
    if (v45 == 2)
    {
      v46 = *(a2 + 88) == 1 ? 0 : *(a2 + 50);
    }

    else
    {
      v46 = v45;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    result = off_283451318[0]();
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v48 = 0;
    v49 = v69;
    if (*(a2 + 88) == 1)
    {
      v50 = 0;
      v51 = 0;
      goto LABEL_71;
    }

    v51 = 0;
LABEL_64:
    v48 = v59;
    v52 = v62;
    v50 = v63;
    if (v59 == 2)
    {
      v48 = 0;
      if ((v60 & 1) == 0)
      {
LABEL_66:
        if (v61)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }
    }

    else if ((v60 & 1) == 0)
    {
      goto LABEL_66;
    }

    v50 = 0;
    if (v61)
    {
      goto LABEL_71;
    }

LABEL_67:
    if (v49 >= 1)
    {
      goto LABEL_68;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_6:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.device);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134349056;
      *(v24 + 4) = v67;
      _os_log_impl(&dword_220940000, v22, v23, "Reading draft steps from metadata: %{public}ld", v24, 0xCu);
      v25 = v24;
      v12 = v68;
      MEMORY[0x223D90A10](v25, -1, -1);
    }
  }

  v49 = v69;
  if (*(a2 + 88) != 1)
  {
    result = *(a2 + 52);
    v51 = *(a2 + 56);
    goto LABEL_64;
  }

  v50 = 0;
  v48 = 0;
  result = 0;
  v51 = 1;
LABEL_71:
  v52 = 1;
  if (v49 < 1)
  {
    goto LABEL_72;
  }

LABEL_68:
  v53 = v65 & 1;
  v72 = v65 & 1;
  v54 = v64 & 1;
  v71 = v64 & 1;
  v55 = v67 & 1;
  v56 = v51 & 1;
  v70 = v56;
  *a3 = v68;
  *(a3 + 8) = v55;
  v57 = v66;
  *(a3 + 16) = v49;
  *(a3 + 24) = v57;
  *(a3 + 32) = v53;
  *(a3 + 36) = v12;
  *(a3 + 40) = v54;
  *(a3 + 41) = v54 & v15;
  *(a3 + 42) = v46 & 1;
  *(a3 + 44) = result;
  *(a3 + 48) = v56;
  *(a3 + 49) = v48 & 1;
  *(a3 + 56) = v50;
  *(a3 + 64) = v52;
  *(a3 + 72) = v41 & 1;
  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[19] = a3;
  v4[16] = a1;
  v4[17] = a2;
  v4[20] = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for CostProfile();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY0_()
{
  v57 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v54 = v0[16];
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v1 = dispatch thunk of CatalogResource.id.getter();
  v3 = v2;
  v0[42] = v1;
  v0[43] = v2;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.device);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v56);
    _os_log_impl(&dword_220940000, v5, v6, "Loading image tokenizer with identifier %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D90A10](v8, -1, -1);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[16];
  (*(v11 + 56))(v9, 1, 1, v12);
  v15 = v54[3];
  v14 = v54[4];
  v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
  v0[5] = v15;
  v0[6] = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v10, &_s10Foundation3URLVSgMd);
  v18 = *(v11 + 48);
  if (v18(v10, 1, v12) == 1)
  {
    v52 = v1;
    v19 = v0[38];
    v20 = v0[37];
    v21 = v0[28];
    outlined destroy of [Int](v0[39], &_s10Foundation3URLVSgMd);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v19);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v19, v20, &_s10Foundation3URLVSgMd);
    v22 = v18(v20, 1, v21);
    v23 = v0[37];
    if (v22 == 1)
    {
      v55 = v0[40];
      v53 = v0[38];
      v24 = v0[36];
      v26 = v0[32];
      v25 = v0[33];
      v27 = v0[23];
      v28 = v0[24];
      v29 = v0[22];

      outlined destroy of [Int](v23, &_s10Foundation3URLVSgMd);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v27 + 16))(v24, v28, v29);
      (*(v25 + 104))(v24, *MEMORY[0x277D29D78], v26);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v27 + 8))(v28, v29);
      outlined destroy of [Int](v53, &_s10Foundation3URLVSgMd);
      outlined destroy of [Int](v55, &_s10Foundation3URLVSgMd);
      (*(v25 + 32))(v0[19], v0[36], v0[32]);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));

      v36 = v0[1];

      return v36();
    }

    v33 = v0[41];
    v34 = v0[34];
    (*(v0[29] + 32))(v0[30], v0[37], v0[28]);
    v35 = URL.path(percentEncoded:)(1);
    v38 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v33, v35._countAndFlagsBits, v35._object, (v0 + 2), 0, 0, 0, 0, v34);
    v42 = v0[38];
    v43 = v0[29];
    v44 = v0[30];
    v45 = v0[28];

    (*(v43 + 8))(v44, v45);
    outlined destroy of [Int](v42, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v30 = v0[41];
    v31 = v0[35];
    (*(v0[29] + 32))(v0[31], v0[39], v0[28]);
    v32 = URL.path(percentEncoded:)(1);
    v38 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v30, v32._countAndFlagsBits, v32._object, (v0 + 2), 0, 0, 0, 0, v31);
    v52 = v1;
    v39 = v0[31];
    v41 = v0[28];
    v40 = v0[29];

    (*(v40 + 8))(v39, v41);
  }

  v0[44] = v38;
  v46 = v0[41];
  v47 = v0[26];
  v48 = v0[27];
  v49 = v0[25];
  v50 = v0[16];
  outlined destroy of [Int](v0[40], &_s10Foundation3URLVSgMd);
  outlined destroy of [Int](v46, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v50, v54[3]);
  dispatch thunk of ManagedResource.cost.getter();
  LOBYTE(v46) = CostProfile.energyEfficientMode.getter();
  (*(v47 + 8))(v48, v49);
  [v38 setUseEnergyEfficientMode_];
  v51 = MEMORY[0x223D8E6B0](v52, v3);
  [v38 setAssetIdentifier_];

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY1_, 0, 0);
}

void sub_220A04CAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A04CB4);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY1_()
{
  v1 = v0[44];
  v2 = objc_allocWithZone(E5RunnerImageTokenizerObjC);
  v0[15] = 0;
  v3 = [v2 initWithModelConfiguration:v1 error:v0 + 15];
  v0[45] = v3;
  v4 = v0[15];
  v5 = v0[44];
  v6 = v0[18];
  if (v3)
  {
    v7 = v4;

    v8 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY2_;
  }

  else
  {
    v9 = v4;
    v0[46] = _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY3_;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

void sub_220A04DF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v3 = off_283451328[0];
  type metadata accessor for OnDeviceInferenceOverrides();
  v4 = v1;
  v5 = v3();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v8 = off_283451330[0]();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v11 = off_283451340[0]();
  v13 = v12;
  v35 = [v4 _inputBytesPerPixel];
  v14 = [*(v0 + 360) _inputImageDimension];
  v15 = [*(v0 + 360) _inputImageDimension];

  if (v14 != v15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v34 = [*(v0 + 360) _inputImageDimension];
  v32 = *(v0 + 360);
  v33 = *(v0 + 352);
  v16 = *(v0 + 344);
  v31 = *(v0 + 336);
  if (v13)
  {
    v17 = 10000000;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  if (v10)
  {
    v20 = 100014;
  }

  else
  {
    v20 = v8;
  }

  v30 = v20;
  if (v7)
  {
    v21 = 100013;
  }

  else
  {
    v21 = v5;
  }

  v22 = v18[6];
  v23 = type metadata accessor for Asset();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  type metadata accessor for ImageEmbeddingCache();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMd);
  v25 = swift_allocObject();

  swift_defaultActor_initialize();
  v25[14] = 0;
  v25[15] = 0;
  v25[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v25[17] = 0;
  v25[18] = v17;
  *(v24 + 16) = v25;
  *v19 = v31;
  v19[1] = v16;
  v19[2] = v32;
  v19[3] = &protocol witness table for E5RunnerImageTokenizerObjC;
  v26 = (v19 + v18[7]);
  *v26 = 8;
  v26[1] = v34;
  v26[2] = 1344;
  v26[3] = v35;
  v26[4] = v21;
  v26[5] = v30;
  v26[6] = v17;
  *(v19 + v18[8]) = v24;
  *(v0 + 80) = v18;
  *(v0 + 88) = &protocol witness table for OnDeviceInferenceAssetObjectImageTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v19, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v0 + 56, v31, v16);
  swift_endAccess();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v19, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);

  v28 = *(v0 + 8);

  return v28();
}

void sub_220A052A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A052ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v15 = v1;
  v4 = v0[46];
  v14 = v0[44];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);

  v12 = v0[1];

  return v12();
}

void sub_220A05588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A05590);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[117] = a7;
  v8[116] = v7;
  v8[115] = a6;
  v8[114] = a5;
  v8[113] = a4;
  v8[112] = a3;
  v8[111] = a2;
  v8[110] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v8[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  v8[120] = swift_task_alloc();
  v8[121] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18ModelConfigurationVSgMd);
  v8[125] = swift_task_alloc();
  v8[126] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError.Context();
  v8[127] = v9;
  v8[128] = *(v9 - 8);
  v8[129] = swift_task_alloc();
  v10 = type metadata accessor for CostProfile();
  v8[130] = v10;
  v8[131] = *(v10 - 8);
  v8[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[136] = v11;
  v8[137] = *(v11 - 8);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v12 = type metadata accessor for InferenceError();
  v8[140] = v12;
  v8[141] = *(v12 - 8);
  v8[142] = swift_task_alloc();
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = swift_task_alloc();
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY0_, v7, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY0_()
{
  v49 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1224) = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 912);
    v5 = *(v0 + 904);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v48);
    _os_log_impl(&dword_220940000, v2, v3, "Loading draft model with identifier %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1080);
  v11 = *(v0 + 920);
  v12 = *(v0 + 888);
  v13 = v12[3];
  v14 = v12[4];
  v15 = __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v0 + 760) = v13;
  *(v0 + 768) = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 736));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v11, v10, &_s10Foundation3URLVSgMd);
  v17 = *(v8 + 48);
  if (v17(v10, 1, v9) == 1)
  {
    v46 = v12;
    v18 = *(v0 + 1088);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    outlined destroy of [Int](*(v0 + 1080), &_s10Foundation3URLVSgMd);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v19);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v19, v20, &_s10Foundation3URLVSgMd);
    if (v17(v20, 1, v18) == 1)
    {
      v21 = *(v0 + 1152);
      v22 = *(v0 + 1128);
      v23 = *(v0 + 1120);
      v47 = *(v0 + 1072);
      v24 = *(v0 + 1032);
      v25 = *(v0 + 1024);
      v26 = *(v0 + 1016);
      outlined destroy of [Int](*(v0 + 1064), &_s10Foundation3URLVSgMd);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v25 + 16))(v21, v24, v26);
      (*(v22 + 104))(v21, *MEMORY[0x277D29D78], v23);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v25 + 8))(v24, v26);
      outlined destroy of [Int](v47, &_s10Foundation3URLVSgMd);
      (*(v22 + 32))(*(v0 + 936), *(v0 + 1152), *(v0 + 1120));
      __swift_destroy_boxed_opaque_existential_1(v0 + 736);

      v33 = *(v0 + 8);

      return v33();
    }

    v30 = *(v0 + 1216);
    v31 = *(v0 + 1136);
    (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1064), *(v0 + 1088));
    v32 = URL.path(percentEncoded:)(1);
    v35 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v30, v32._countAndFlagsBits, v32._object, v0 + 736, 0, 0, 0, 0, v31);
    v36 = *(v0 + 1104);
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1072);

    (*(v37 + 8))(v36, v38);
    outlined destroy of [Int](v39, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v27 = *(v0 + 1216);
    v28 = *(v0 + 1144);
    (*(*(v0 + 1096) + 32))(*(v0 + 1112), *(v0 + 1080), *(v0 + 1088));
    v29 = URL.path(percentEncoded:)(1);
    v35 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v27, v29._countAndFlagsBits, v29._object, v0 + 736, 0, 0, 0, 0, v28);
    v46 = v12;
    (*(*(v0 + 1096) + 8))(*(v0 + 1112), *(v0 + 1088));
  }

  *(v0 + 1232) = v35;
  v40 = *(v0 + 1056);
  v41 = *(v0 + 1048);
  v42 = *(v0 + 1040);
  v43 = *(v0 + 888);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);
  __swift_project_boxed_opaque_existential_1(v43, v46[3]);
  dispatch thunk of ManagedResource.cost.getter();
  LOBYTE(v43) = CostProfile.energyEfficientMode.getter();
  (*(v41 + 8))(v40, v42);
  [v35 setUseEnergyEfficientMode_];
  v44 = MEMORY[0x223D8E6B0](*(v0 + 904), *(v0 + 912));
  [v35 setAssetIdentifier_];

  [v35 setIgnoreUnknownTokens_];
  *(v0 + 808) = 0;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  v45 = swift_task_alloc();
  *(v0 + 1240) = v45;
  *v45 = v0;
  v45[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTQ1_;

  return (specialized static LanguageModelLoader.load(from:baseModel:))(v35, v0 + 776);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[156] = a1;
  v5[157] = a2;
  v5[158] = v2;

  v6 = v4[116];
  outlined destroy of [Int]((v5 + 97), &_s24TokenGenerationInference9BaseModel_pSgMd);
  if (v2)
  {
    v7 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY3_;
  }

  else
  {
    v7 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY2_()
{
  v126 = v0;
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = type metadata accessor for E5TransformerLanguageModel();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain_n();

  v120 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v2, v6, v5, v7, ObjectType, v1);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v3, v4, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v9 = type metadata accessor for ModelMetadata();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v4, 1, v9) == 1)
  {
    outlined destroy of [Int](*(v0 + 1208), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v119 = 0;
  }

  else
  {
    v11 = *(v0 + 1208);
    v12 = *(v11 + 56);
    v13 = *(v11 + 88);
    v14 = *(v11 + 40);
    *(v0 + 528) = *(v11 + 72);
    *(v0 + 544) = v13;
    *(v0 + 496) = v14;
    *(v0 + 512) = v12;
    v15 = *(v11 + 120);
    v16 = *(v11 + 136);
    v17 = *(v11 + 104);
    *(v0 + 608) = *(v11 + 152);
    *(v0 + 576) = v15;
    *(v0 + 592) = v16;
    *(v0 + 560) = v17;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 496, v0 + 616, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v11, type metadata accessor for ModelMetadata);
    if (*(v0 + 584) == 1)
    {
      v119 = 0;
    }

    else
    {
      v18 = *(v0 + 560);
      v19 = *(v0 + 568);
      outlined destroy of [Int](v0 + 496, &_s24TokenGenerationInference17DefaultParametersVSgMd);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      v119 = v20;
    }
  }

  v21 = *(v0 + 1264);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(*(v0 + 1008));
  v121 = v10;
  if (v21)
  {

    v21 = 1;
  }

  v22 = *(v0 + 1008);
  v23 = *(v0 + 1000);
  v24 = type metadata accessor for ModelConfiguration();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v22, v21, 1, v24);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v22, v23, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = *(v0 + 992);
    v27 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 992);
    (*(v25 + 32))(v28, *(v0 + 1000), v24);
    v27 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v28 + *(v27 + 20)) = 0;
    (*(*(v27 - 8) + 56))(v28, 0, 1, v27);
  }

  v29 = *(v0 + 984);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 992), v29, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  type metadata accessor for PromptTemplateConfiguration(0);
  v30 = *(*(v27 - 8) + 48);
  v31 = v30(v29, 1, v27);
  outlined destroy of [Int](v29, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (v31 == 1)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 912);
      v35 = *(v0 + 904);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v125[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v125);
      _os_log_impl(&dword_220940000, v32, v33, "Did not find prompt template configuration for asset %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223D90A10](v37, -1, -1);
      MEMORY[0x223D90A10](v36, -1, -1);
    }
  }

  else if (!v30(*(v0 + 992), 1, v27))
  {
    v38 = *(v0 + 1200);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v38, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v39 = v121(v38, 1, v9);
    v40 = *(v0 + 1200);
    if (v39 == 1)
    {
      outlined destroy of [Int](v40, &_s24TokenGenerationInference13ModelMetadataVSgMd);
      v41 = 0;
    }

    else
    {
      v41 = *(v40 + 192);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v40, type metadata accessor for ModelMetadata);
    }

    *(*(v0 + 992) + *(v27 + 20)) = v41 & 1;
  }

  v42 = *(v0 + 1216);
  v43 = *(v0 + 1192);
  v44 = *(v0 + 968);
  v45 = *(v0 + 896);
  __swift_project_boxed_opaque_existential_1(*(v0 + 888), *(*(v0 + 888) + 24));
  v46 = dispatch thunk of CatalogResource.id.getter();
  v117 = v47;
  v118 = v46;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v45, v44, type metadata accessor for Asset);
  v48 = type metadata accessor for Asset();
  v49 = (*(v48 - 8) + 56);
  v115 = *v49;
  (*v49)(v44, 0, 1, v48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v42, v43, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v50 = v121(v43, 1, v9);
  v51 = *(v0 + 1192);
  if (v50 == 1)
  {
    outlined destroy of [Int](*(v0 + 1192), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
  }

  else
  {
    v52 = *(v51 + 40);
    v53 = *(v51 + 56);
    v54 = *(v51 + 88);
    *(v0 + 288) = *(v51 + 72);
    *(v0 + 304) = v54;
    *(v0 + 256) = v52;
    *(v0 + 272) = v53;
    v55 = *(v51 + 104);
    v56 = *(v51 + 120);
    v57 = *(v51 + 136);
    *(v0 + 368) = *(v51 + 152);
    *(v0 + 336) = v56;
    *(v0 + 352) = v57;
    *(v0 + 320) = v55;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 256, v0 + 376, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v51, type metadata accessor for ModelMetadata);
    v58 = *(v0 + 336);
    *(v0 + 200) = *(v0 + 320);
    *(v0 + 216) = v58;
    *(v0 + 232) = *(v0 + 352);
    v59 = *(v0 + 272);
    *(v0 + 136) = *(v0 + 256);
    *(v0 + 152) = v59;
    v60 = *(v0 + 304);
    *(v0 + 168) = *(v0 + 288);
    *(v0 + 248) = *(v0 + 368);
    *(v0 + 184) = v60;
  }

  v61 = *(v0 + 1216);
  v62 = *(v0 + 1184);
  v63 = *(v0 + 1008);
  v64 = *(v0 + 216);
  *(v0 + 80) = *(v0 + 200);
  *(v0 + 96) = v64;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = *(v0 + 248);
  v65 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v65;
  v66 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 168);
  *(v0 + 64) = v66;
  OnDeviceInferenceAssetRepository.makeDraftingBehavior(metadataModelConfiguration:defaultParameters:)(v63, v0 + 16, v123);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference17DefaultParametersVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v61, v62, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v67 = v121(v62, 1, v9);
  v68 = *(v0 + 1184);
  if (v67 == 1)
  {
    outlined destroy of [Int](*(v0 + 1184), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v116 = 0;
  }

  else
  {
    v116 = *(v68 + 32);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v68, type metadata accessor for ModelMetadata);
  }

  v69 = *(v0 + 1176);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v69, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v70 = v121(v69, 1, v9);
  v71 = *(v0 + 1176);
  v72 = v9;
  if (v70 == 1)
  {
    outlined destroy of [Int](*(v0 + 1176), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v114 = 0;
  }

  else
  {
    v114 = *(v71 + 184);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v71, type metadata accessor for ModelMetadata);
  }

  v73 = *(v0 + 1216);
  v74 = *(v0 + 1168);
  v75 = *(v0 + 992);
  v76 = *(v0 + 976);
  v77 = *(v0 + 960);
  v78 = *(v0 + 952);
  v79 = type metadata accessor for UUID();
  (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
  v115(v77, 1, 1, v48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v75, v76, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v73, v74, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v80 = v121(v74, 1, v72);
  v81 = *(v0 + 1168);
  if (v80 == 1)
  {
    outlined destroy of [Int](*(v0 + 1168), &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v113 = 0;
    v111 = 0;
    v112 = 0;
    v110 = 1;
  }

  else
  {
    v113 = v81[28];
    v111 = v81[30];
    v112 = v81[29];
    v110 = v81[31];
    outlined copy of StopToken?(v113, v112, v111, v110);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v81, type metadata accessor for ModelMetadata);
  }

  v82 = *(v0 + 1160);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v82, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v83 = v121(v82, 1, v72);
  v84 = *(v0 + 1160);
  v85 = *(v0 + 944);
  if (v83 == 1)
  {
    outlined destroy of [Int](v84, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    v86 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
  }

  else
  {
    v87 = *(v72 + 64);
    v88 = *(v0 + 1160);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v84 + v87, *(v0 + 944), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v88, type metadata accessor for ModelMetadata);
  }

  v107 = *(v0 + 1232);
  v109 = *(v0 + 1216);
  v106 = *(v0 + 1008);
  v108 = *(v0 + 992);
  v89 = *(v0 + 968);
  v90 = *(v0 + 960);
  v91 = *(v0 + 952);
  v92 = *(v0 + 944);
  v105 = *(v0 + 976);
  v93 = *(v0 + 912);
  v94 = *(v0 + 904);
  v95 = *(v0 + 880);
  v96 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v122 = *(v0 + 1248);
  *v95 = v94;
  v95[1] = v93;
  v95[2] = v118;
  v95[3] = v117;
  outlined init with take of Asset?(v89, v95 + v96[6], &_s24TokenGenerationInference5AssetVSgMd);
  *(v95 + v96[7]) = v122;
  *(v95 + v96[8]) = v120;
  v97 = (v95 + v96[9]);
  v98 = v124[0];
  v97[2] = v123[2];
  v97[3] = v98;
  *(v97 + 57) = *(v124 + 9);
  v99 = v123[1];
  *v97 = v123[0];
  v97[1] = v99;
  *(v95 + v96[10]) = v116;
  *(v95 + v96[11]) = v119;
  *(v95 + v96[12]) = v114;
  outlined init with take of Asset?(v91, v95 + v96[13], &_s10Foundation4UUIDVSgMd);
  outlined init with take of Asset?(v90, v95 + v96[14], &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with take of Asset?(v105, v95 + v96[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  v100 = (v95 + v96[16]);
  *v100 = 0;
  v100[1] = 0;
  v100[2] = 0;
  v101 = (v95 + v96[17]);
  *v101 = v113;
  v101[1] = v112;
  v101[2] = v111;
  v101[3] = v110;
  outlined init with take of Asset?(v92, v95 + v96[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  *(v0 + 840) = v96;
  *(v0 + 848) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v95, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  specialized Dictionary.subscript.setter(v0 + 816, v94, v93);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of [Int](v106, &_s19TokenGenerationCore18ModelConfigurationVSgMd);
  outlined destroy of [Int](v109, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  outlined destroy of [Int](v108, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);

  v103 = *(v0 + 8);

  return v103();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[158];
  v14 = v0[154];
  v15 = v0[152];
  v5 = v0[141];
  v6 = v0[140];
  v7 = v0[129];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[117];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC19loadTokenizerAtPath4pathySS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = v4;
  v6 = v3;
  v55 = type metadata accessor for InferenceError.Context();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v49 = v12;
    v16 = v15;
    v17 = swift_slowAlloc();
    *&v53[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v53);
    _os_log_impl(&dword_220940000, v13, v14, "Loading tokenizer at path %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v18 = v17;
    v5 = v4;
    MEMORY[0x223D90A10](v18, -1, -1);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

  swift_beginAccess();
  v19 = *(v6 + 128);
  if (*(v19 + 16))
  {

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v21)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v19 + 56) + 40 * v20, v53);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v52[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v52);
        _os_log_impl(&dword_220940000, v22, v23, "Tokenizer at path is already loaded %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x223D90A10](v25, -1, -1);
        MEMORY[0x223D90A10](v24, -1, -1);
      }

      v52[0] = 0x657A696E656B6F54;
      v52[1] = 0xEA00000000002072;
      MEMORY[0x223D8E780](a1, a2);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      v26 = v50;
      v27 = v51;
      v28 = v55;
      (*(v51 + 16))(v50, v10, v55);
      v29 = *MEMORY[0x277D29D88];
      v30 = type metadata accessor for InferenceError();
      (*(*(v30 - 8) + 104))(v26, v29, v30);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      goto LABEL_13;
    }
  }

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC19loadTokenizerAtPath4pathySS_t20ModelManagerServices0C5ErrorOYKFTv_r);
  outlined destroy of [Int](&unk_28344E2E0, &_sSS_SStMd);
  type metadata accessor for TokenizerRunner();
  swift_allocObject();

  v31 = TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)();
  if (v5)
  {
    v32 = _convertErrorToNSError(_:)();
    v33 = [v32 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = [v32 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v32 code];
    v35 = v5;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    v36 = v50;
    v27 = v51;
    v28 = v55;
    (*(v51 + 16))(v50, v10, v55);
    v37 = *MEMORY[0x277D29D78];
    v38 = type metadata accessor for InferenceError();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

LABEL_13:
    (*(v27 + 8))(v10, v28);
    return outlined destroy of [Int](v53, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  }

  v40 = v31;
  v41 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v52[3] = v41;
  v52[4] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v43 = v41[5];
  v44 = type metadata accessor for Asset();
  (*(*(v44 - 8) + 56))(boxed_opaque_existential_1 + v43, 1, 1, v44);
  swift_bridgeObjectRetain_n();

  v45 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  type metadata accessor for ImageTokenIDGenerator();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = v41[11];
  v48 = type metadata accessor for GuidedGenerationVocabularyManager();
  (*(*(v48 - 8) + 56))(boxed_opaque_existential_1 + v47, 1, 1, v48);
  *boxed_opaque_existential_1 = a1;
  boxed_opaque_existential_1[1] = a2;
  *(boxed_opaque_existential_1 + v41[6]) = v40;
  *(boxed_opaque_existential_1 + v41[7]) = v46;
  *(boxed_opaque_existential_1 + v41[8]) = 0;
  *(boxed_opaque_existential_1 + v41[9]) = 0;
  *(boxed_opaque_existential_1 + v41[10]) = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v52, a1, a2);
  swift_endAccess();

  return outlined destroy of [Int](v53, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKF(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 280) = a3;
  *(v4 + 264) = a1;
  v6 = type metadata accessor for InferenceError.Context();
  *(v4 + 288) = v6;
  *(v4 + 296) = *(v6 - 8);
  *(v4 + 304) = swift_task_alloc();
  v7 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v7;
  *(v4 + 73) = *(a2 + 57);
  v8 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY0_()
{
  v29 = v0;
  v1 = [*(v0 + 264) modelBundlePath];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 312) = v2;
  *(v0 + 320) = v4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v28);
    _os_log_impl(&dword_220940000, v6, v7, "Loading model at path %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223D90A10](v9, -1, -1);
    MEMORY[0x223D90A10](v8, -1, -1);
  }

  v10 = *(v0 + 272);
  swift_beginAccess();
  v11 = *(v10 + 128);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    if (v13)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v11 + 56) + 40 * v12, v0 + 96);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v28);
        _os_log_impl(&dword_220940000, v14, v15, "Model at path is already loaded %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x223D90A10](v17, -1, -1);
        MEMORY[0x223D90A10](v16, -1, -1);
      }

      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 280);
      v21 = *(v0 + 288);
      v28[0] = 0x206C65646F4DLL;
      v28[1] = 0xE600000000000000;
      MEMORY[0x223D8E780](v2, v4);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v19 + 16))(v20, v18, v21);
      v22 = *MEMORY[0x277D29D88];
      v23 = type metadata accessor for InferenceError();
      (*(*(v23 - 8) + 104))(v20, v22, v23);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

      v24 = *(v0 + 8);

      return v24();
    }
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0;
  v26 = swift_task_alloc();
  *(v0 + 328) = v26;
  *v26 = v0;
  v26[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTQ1_;
  v27 = *(v0 + 264);

  return specialized static LanguageModelLoader.load(from:baseModel:)(v27, v0 + 136);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  outlined destroy of [Int]((v4 + 17), &_s24TokenGenerationInference9BaseModel_pSgMd);
  if (v2)
  {
    v5 = v4[34];

    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY3_;
    v7 = v5;
  }

  else
  {
    v7 = v4[34];
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 264);
  swift_unknownObjectRetain();
  v2 = [v1 assetIdentifier];
  v3 = *(v0 + 344);
  v4 = *(v0 + 264);
  v5 = v2;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = type metadata accessor for E5TransformerLanguageModel();
  ObjectType = swift_getObjectType();
  v11 = swift_unknownObjectRetain();
  v12 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v11, v6, v8, v9, ObjectType, v3);

  v13 = [v4 assetIdentifier];
  v37 = *(v0 + 312);
  v38 = *(v0 + 320);
  v39 = *(v0 + 336);
  v14 = v13;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  *(v0 + 200) = v17;
  *(v0 + 208) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  v19 = v17[6];
  v20 = type metadata accessor for Asset();
  v21 = *(*(v20 - 8) + 56);
  v21(boxed_opaque_existential_1 + v19, 1, 1, v20);
  v22 = v17[13];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(boxed_opaque_existential_1 + v22, 1, 1, v23);
  v21(boxed_opaque_existential_1 + v17[14], 1, 1, v20);
  v24 = v17[15];
  v25 = type metadata accessor for PromptTemplateConfiguration(0);
  (*(*(v25 - 8) + 56))(boxed_opaque_existential_1 + v24, 1, 1, v25);
  v26 = v17[18];
  v27 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v27 - 8) + 56))(boxed_opaque_existential_1 + v26, 1, 1, v27);
  *boxed_opaque_existential_1 = v37;
  boxed_opaque_existential_1[1] = v38;
  boxed_opaque_existential_1[2] = v36;
  boxed_opaque_existential_1[3] = v16;
  *(boxed_opaque_existential_1 + v17[7]) = v39;
  *(boxed_opaque_existential_1 + v17[8]) = v12;
  v28 = (boxed_opaque_existential_1 + v17[9]);
  *v28 = *(v0 + 16);
  v29 = *(v0 + 32);
  v30 = *(v0 + 48);
  v31 = *(v0 + 64);
  *(v28 + 57) = *(v0 + 73);
  v28[2] = v30;
  v28[3] = v31;
  v28[1] = v29;
  *(boxed_opaque_existential_1 + v17[10]) = 0;
  *(boxed_opaque_existential_1 + v17[11]) = 0;
  *(boxed_opaque_existential_1 + v17[12]) = 0;
  v32 = (boxed_opaque_existential_1 + v17[16]);
  *v32 = 0;
  v32[1] = 0;
  v32[2] = 0;
  v33 = (boxed_opaque_existential_1 + v17[17]);
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = 1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v0 + 176, v37, v38);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[44];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v5 + 16))(v8, v6, v7);
  v10 = *MEMORY[0x277D29D78];
  v11 = type metadata accessor for InferenceError();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  (*(v0[37] + 8))(v0[38], v0[36]);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for InferenceError();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, v4, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v12 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_220940000, v2, v3, "Fetching prompt template for asset bundle %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v0[3], v0[4], v0[9], v0[11]);
  v8 = v0[11];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + *(v0[10] + 60), v0[2], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v8, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v9 = v0[1];

  return v9();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC024fetchSpecialTokensMapForF6Bundle10identifierSDySSAA08MetadataiA0OGSgSS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v4 = v3;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v7;
    v18 = v17;
    v30 = v17;
    *v16 = 136446210;
    v19 = v28;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a2, &v30);
    _os_log_impl(&dword_220940000, v13, v14, "Fetching special tokens map for asset bundle %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v20 = v18;
    v4 = v3;
    v7 = v24;
    MEMORY[0x223D90A10](v20, -1, -1);
    v21 = v16;
    v6 = v25;
    MEMORY[0x223D90A10](v21, -1, -1);
  }

  else
  {

    v19 = v28;
  }

  v22 = v29;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v19, a2, v9, v11);
  if (v4)
  {
    (*(v7 + 32))(v27, v9, v6);
  }

  else
  {
    v22 = *&v11[*(v26 + 40)];

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v11, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  }

  return v22;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC028fetchLocalizationMetadataForF6Bundle10identifierSDySSSDySSAA0j7SpecialA0OGGSgSS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v4 = v3;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v7;
    v18 = v17;
    v30 = v17;
    *v16 = 136446210;
    v19 = v28;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a2, &v30);
    _os_log_impl(&dword_220940000, v13, v14, "Fetching localization metadata for asset bundle %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v20 = v18;
    v4 = v3;
    v7 = v24;
    MEMORY[0x223D90A10](v20, -1, -1);
    v21 = v16;
    v6 = v25;
    MEMORY[0x223D90A10](v21, -1, -1);
  }

  else
  {

    v19 = v28;
  }

  v22 = v29;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v19, a2, v9, v11);
  if (v4)
  {
    (*(v7 + 32))(v27, v9, v6);
  }

  else
  {
    v22 = *&v11[*(v26 + 48)];

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v11, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  }

  return v22;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC042fetchPromptPreprocessingTemplateVersionForF6Bundle10identifier0aB4Core0ijkL0OSgSS_t20ModelManagerServices0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v30 = a1;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v7;
    v18 = a3;
    v19 = v17;
    v32 = v17;
    *v16 = 136446210;
    v20 = v30;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, a2, &v32);
    _os_log_impl(&dword_220940000, v13, v14, "Fetching prompt preprocessing template version for asset bundle %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v21 = v19;
    a3 = v18;
    v7 = v26;
    MEMORY[0x223D90A10](v21, -1, -1);
    v22 = v16;
    v6 = v27;
    MEMORY[0x223D90A10](v22, -1, -1);
  }

  else
  {

    v20 = v30;
  }

  v23 = v31;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v20, a2, v9, v11);
  if (v23)
  {
    return (*(v7 + 32))(a3, v9, v6);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(&v11[*(v28 + 72)], v29, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v11, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ1_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY11_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 1072);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY12_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY4_()
{
  v1 = v0[134];
  (*(v0[126] + 8))(v0[127], v0[125]);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));

  v2 = v0[1];

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ5_()
{
  v2 = *v1;

  v3 = *(v2 + 952);

  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY13_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY6_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY6_()
{
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1072), type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 616);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ7_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[119];
    outlined destroy of [Int](v2[121], &_s10Foundation3URLVSgMd);

    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY14_;
    v5 = v3;
  }

  else
  {
    v6 = v2[122];
    v7 = v2[121];
    v8 = v2[119];

    outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v6, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY8_;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY8_()
{
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1072), type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ9_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY15_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY10_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY10_()
{
  v1 = *(v0 + 1072);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY11_()
{
  v1 = v0[145];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY12_()
{
  v1 = v0[143];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  (*(v0[126] + 8))(v0[127], v0[125]);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  (*(v2 + 32))(v5, v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY13_()
{
  v1 = v0[142];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[120];
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY14_()
{
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[120];
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 92));

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY15_()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_, v1, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_()
{
  v18 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[49];
    v3 = v0[50];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v17);
    _os_log_impl(&dword_220940000, v1, v2, "Resumed unload for asset %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223D90A10](v6, -1, -1);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  v7 = v0[50];
  v8 = v0[49];
  OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v8, v7);
  swift_endAccess();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[49];
    v11 = v0[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v17);
    _os_log_impl(&dword_220940000, v9, v10, "Finished unloading asset %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D90A10](v14, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFyScCyyts5NeverOGXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v9, a3, a4);
  return swift_endAccess();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = a3;
  v4[110] = v3;
  v4[109] = a2;
  v4[108] = a1;
  v4[112] = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v4[113] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v4[114] = v5;
  v4[115] = *(v5 - 8);
  v4[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v4[117] = swift_task_alloc();
  v6 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[118] = v6;
  v4[119] = *(v6 - 8);
  v4[120] = swift_task_alloc();
  v4[121] = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v4[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[123] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[124] = v7;
  v4[125] = *(v7 - 8);
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY0_()
{
  v184 = v0;
  v175 = (v0 + 856);
  *(v0 + 856) = *(v0 + 864);
  *(v0 + 560) = &type metadata for FoundationModelsFeatureFlags;
  *(v0 + 568) = lazy protocol witness table accessor for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags();

  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 536);
  v2 = *(v0 + 864);
  if (v1)
  {
    v3 = *(v2 + 2);
    if (v3)
    {
      v4 = *(v0 + 880);

      swift_beginAccess();
      v5 = (v2 + 40);
      v2 = *(v0 + 864);
      do
      {
        v6 = *(v4 + 136);
        if (*(v6 + 16))
        {
          v7 = *(v5 - 1);
          v8 = *v5;

          v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
          v11 = v10;

          if (v11)
          {
            outlined init with copy of DeterministicLanguageModelProtocol(*(v6 + 56) + 40 * v9, v0 + 16);

            outlined init with take of RandomNumberGenerator((v0 + 16), v0 + 456);
            v12 = *(v0 + 480);
            v13 = *(v0 + 488);
            __swift_project_boxed_opaque_existential_1((v0 + 456), v12);
            v14 = (*(v13 + 8))(v12, v13);
            v16 = v15;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            }

            v18 = *(v2 + 2);
            v17 = *(v2 + 3);
            if (v18 >= v17 >> 1)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
            }

            *(v2 + 2) = v18 + 1;
            v19 = &v2[16 * v18];
            *(v19 + 4) = v14;
            *(v19 + 5) = v16;
            *v175 = v2;
            __swift_destroy_boxed_opaque_existential_1(v0 + 456);
          }

          else
          {
          }
        }

        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  InferenceProviderRequestConfiguration.requestUUID.getter();
  if (one-time initialization token for device != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v20 = *(v0 + 1056);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1000);
    v23 = *(v0 + 992);
    v24 = type metadata accessor for Logger();
    *(v0 + 1064) = __swift_project_value_buffer(v24, static Log.device);
    v25 = *(v22 + 16);
    *(v0 + 1072) = v25;
    *(v0 + 1080) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v167 = v25;
    v25(v21, v20, v23);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1000);
    v31 = *(v0 + 992);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v182 = v164;
      *v32 = 136446466;

      v179 = v2;
      v34 = MEMORY[0x223D8E8D0](v33, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v182);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v27;
      v42 = *(v30 + 8);
      v42(v29, v31);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v182);
      v2 = v179;

      *(v32 + 14) = v43;
      _os_log_impl(&dword_220940000, v26, v41, "Fetching assets %{public}s for request %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v164, -1, -1);
      MEMORY[0x223D90A10](v32, -1, -1);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v29, v31);
    }

    v165 = v42;
    *(v0 + 1088) = v42;
    v44 = *(v0 + 880);
    v45 = *(v2 + 2);
    v180 = v2;

    swift_beginAccess();
    if (v45)
    {
      v46 = 0;
      v2 += 40;
      do
      {
        if (v46 >= *(v180 + 2))
        {
          __break(1u);
          goto LABEL_73;
        }

        v47 = *(v44 + 144);
        if (*(v47 + 16))
        {
          v49 = *(v2 - 1);
          v48 = *v2;

          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v48);
          if (v51)
          {
            v102 = *(v0 + 1056);
            v103 = *(v0 + 1040);
            v104 = *(v0 + 992);
            v105 = v50;

            outlined init with copy of DeterministicLanguageModelProtocol(*(v47 + 56) + 40 * v105, v0 + 96);

            outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
            v167(v103, v102, v104);

            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();

            v108 = os_log_type_enabled(v106, v107);
            v109 = *(v0 + 1040);
            v110 = *(v0 + 992);
            if (v108)
            {
              v173 = v107;
              v111 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v182 = v181;
              *v111 = 136446466;
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
              v112 = dispatch thunk of CustomStringConvertible.description.getter();
              v114 = v113;
              v165(v109, v110);
              v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v182);

              *(v111 + 4) = v115;
              *(v111 + 12) = 2082;
              v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v182);

              *(v111 + 14) = v116;
              _os_log_impl(&dword_220940000, v106, v173, "Suspending fetch for request %{public}s since asset %{public}s is in use", v111, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v181, -1, -1);
              MEMORY[0x223D90A10](v111, -1, -1);
            }

            else
            {

              v165(v109, v110);
            }

            v158 = *(v0 + 1056);
            v159 = *(v0 + 880);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type OnDeviceInferenceAssetRepository and conformance OnDeviceInferenceAssetRepository, v117, type metadata accessor for OnDeviceInferenceAssetRepository);
            v160 = swift_task_alloc();
            *(v0 + 1096) = v160;
            v160[2] = v175;
            v160[3] = v158;
            v160[4] = v159;
            v161 = swift_task_alloc();
            *(v0 + 1104) = v161;
            *v161 = v0;
            v161[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTQ1_;

            return MEMORY[0x2822007B8]();
          }
        }

        ++v46;
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
        v2 += 16;
      }

      while (v45 != v46);
    }

    v2 = v180;

    v52 = *(v0 + 880);
    v53 = *(v180 + 2);

    swift_beginAccess();
    if (!v53)
    {
      break;
    }

    v54 = 0;
    log = *(v0 + 960);
    v175 = (*(v0 + 952) + 56);
    v55 = -v53;
    v56 = v180 + 40;
    v166 = *(v0 + 944);
    v168 = MEMORY[0x277D84F90];
LABEL_27:
    v57 = &v56[16 * v54++];
    while ((v54 - 1) < *(v2 + 2))
    {
      v59 = *(v57 - 1);
      v58 = *v57;
      v60 = *(v52 + 128);
      v61 = *(v60 + 16);

      if (!v61)
      {
        goto LABEL_62;
      }

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v58);
      if ((v63 & 1) == 0)
      {

LABEL_62:
        v136 = *(v0 + 1072);
        v137 = *(v0 + 1056);
        v138 = *(v0 + 1016);
        v139 = *(v0 + 992);

        v136(v138, v137, v139);

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();

        v142 = os_log_type_enabled(v140, v141);
        v143 = *(v0 + 1088);
        v144 = *(v0 + 1016);
        v145 = *(v0 + 992);
        if (v142)
        {
          v174 = v141;
          v146 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v182 = v178;
          *v146 = 136446466;
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v147 = dispatch thunk of CustomStringConvertible.description.getter();
          logb = v140;
          v149 = v148;
          v143(v144, v145);
          v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &v182);

          *(v146 + 4) = v150;
          *(v146 + 12) = 2082;
          *(v146 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, &v182);
          _os_log_impl(&dword_220940000, logb, v174, "Fetch for request %{public}s failed, asset %{public}s is not loaded", v146, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D90A10](v178, -1, -1);
          MEMORY[0x223D90A10](v146, -1, -1);
        }

        else
        {

          v143(v144, v145);
        }

        v151 = *(v0 + 928);
        v152 = *(v0 + 920);
        v153 = *(v0 + 912);
        v154 = *(v0 + 888);
        OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
        v182 = 0;
        v183 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v182 = 0x207465737341;
        v183 = 0xE600000000000000;
        MEMORY[0x223D8E780](v59, v58);

        MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        (*(v152 + 16))(v154, v151, v153);
        v155 = *MEMORY[0x277D29DD8];
        v156 = type metadata accessor for InferenceError();
        (*(*(v156 - 8) + 104))(v154, v155, v156);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
        swift_willThrowTypedImpl();
        (*(v152 + 8))(v151, v153);
        (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

        v157 = *(v0 + 8);

        return v157();
      }

      v64 = v62;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v60 + 56) + 40 * v64, v0 + 176);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 256);
        v66 = swift_dynamicCast();
        v67 = *v175;
        if (v66)
        {
          v68 = *(v0 + 960);
          v69 = *(v0 + 944);
          v70 = *(v0 + 936);
          v71 = *(v0 + 872);
          (v67)(v70, 0, 1, v69);
          outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v70, v68, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v68, v71);
          *(v0 + 360) = v69;
          *(v0 + 368) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          outlined init with take of RandomNumberGenerator((v0 + 336), v0 + 176);
          isa = log[1].isa;
          v163 = *v68;
          *(v0 + 400) = v69;
          *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          v73 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, v73, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          swift_beginAccess();
          outlined init with take of RandomNumberGenerator((v0 + 376), v0 + 416);
          LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native();
          v182 = *(v52 + 128);
          *(v52 + 128) = 0x8000000000000000;
          v74 = *(v0 + 440);
          v75 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v74);
          v76 = *(v74 - 8);
          v77 = swift_task_alloc();
          (*(v76 + 16))(v77, v75, v74);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v163, isa, v69, &v182);
          __swift_destroy_boxed_opaque_existential_1(v0 + 416);

          *(v52 + 128) = v182;
          swift_endAccess();
          v78 = *(v68 + *(v166 + 32));
          v79 = v78 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
          *v79 = 0;
          v79[8] = 1;
          v80 = v78 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
          *v80 = 0;
          v80[8] = 1;
          v78[8] = 0;
          v81 = static Duration.zero.getter();
          v83 = v82;
          swift_beginAccess();
          v78[9] = v81;
          v78[10] = v83;
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v68, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }

        else
        {
          v84 = *(v0 + 936);
          (v67)(v84, 1, 1, *(v0 + 944));
          outlined destroy of [Int](v84, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 296);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v2 = v180;
          v85 = v168;
        }

        else
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168[2] + 1, 1, v168);
          v2 = v180;
        }

        v87 = v85[2];
        v86 = v85[3];
        if (v87 >= v86 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v85);
        }

        else
        {
          v168 = v85;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 176);
        v168[2] = v87 + 1;
        outlined init with take of RandomNumberGenerator((v0 + 296), &v168[5 * v87 + 4]);
        v56 = v180 + 40;
        if (v55 + v54)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v65 = *(v0 + 976);
      __swift_destroy_boxed_opaque_existential_1(v0 + 176);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v65, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
      ++v54;
      v57 += 2;
      v2 = v180;
      if (v55 + v54 == 1)
      {
        goto LABEL_46;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v168 = MEMORY[0x277D84F90];
LABEL_46:

  v88 = v168[2];
  if (v88)
  {
    v89 = (v168 + 4);

    v90 = &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v89, v0 + 56);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      if (swift_dynamicCast())
      {
        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 904), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      }

      else
      {
        v91 = *(v0 + 880);
        v92 = *(v0 + 80);
        v93 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v92);
        v176 = (*(v93 + 8))(v92, v93);
        v95 = v94;
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 496);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = *(v91 + 144);
        *(v91 + 144) = 0x8000000000000000;
        v96 = *(v0 + 520);
        loga = *(v0 + 528);
        v97 = v90;
        v98 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v96);
        v99 = *(v96 - 8);
        v100 = swift_task_alloc();
        v101 = v98;
        v90 = v97;
        (*(v99 + 16))(v100, v101, v96);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v176, v95, isUniquelyReferenced_nonNull_native, &v182, v96, loga);

        __swift_destroy_boxed_opaque_existential_1(v0 + 496);

        *(v91 + 144) = v182;
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      v89 += 40;
      --v88;
    }

    while (v88);
  }

  else
  {
  }

  (*(v0 + 1072))(*(v0 + 1008), *(v0 + 1056), *(v0 + 992));
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  v120 = os_log_type_enabled(v118, v119);
  v121 = *(v0 + 1088);
  v122 = *(v0 + 1008);
  v123 = *(v0 + 992);
  if (v120)
  {
    v124 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v182 = v177;
    *v124 = 136446466;

    v126 = MEMORY[0x223D8E8D0](v125, MEMORY[0x277D837D0]);
    v128 = v127;

    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v182);

    *(v124 + 4) = v129;
    *(v124 + 12) = 2080;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    v121(v122, v123);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v182);

    *(v124 + 14) = v133;

    _os_log_impl(&dword_220940000, v118, v119, "Successfully fetched asset %{public}s for request %s", v124, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v177, -1, -1);
    MEMORY[0x223D90A10](v124, -1, -1);
  }

  else
  {

    v121(v122, v123);
  }

  (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

  v134 = *(v0 + 8);

  return v134(v168);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTQ1_()
{
  v1 = *(*v0 + 880);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY2_, v1, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY2_()
{
  v160 = v0;
  v1 = (v0 + 856);
  (*(v0 + 1072))(*(v0 + 1032), *(v0 + 1056), *(v0 + 992));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 992);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v151 = v5;
    v9 = swift_slowAlloc();
    v158 = v9;
    *v8 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v151(v6, v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v158);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_220940000, v2, v3, "Resumed fetch request %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223D90A10](v9, -1, -1);
    v14 = v8;
    v1 = (v0 + 856);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  else
  {

    v5(v6, v7);
  }

  swift_beginAccess();
  v15 = *v1;
  v16 = *(*v1 + 16);
  v157 = *v1;
  if (v16)
  {

    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      swift_beginAccess();

      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = *(v0 + 880);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v23 + 144);
        v158 = v25;
        *(v23 + 144) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v25 = v158;
        }

        v26 = *(v0 + 880);

        outlined init with take of RandomNumberGenerator((*(v25 + 56) + 40 * v20), v0 + 136);
        specialized _NativeDictionary._delete(at:)(v20, v25);
        *(v26 + 144) = v25;
      }

      else
      {
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
      }

      outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
      swift_endAccess();
      v17 += 2;
      --v16;
    }

    while (v16);
    v15 = v157;
  }

  v27 = *(v0 + 1056);
  v28 = *(v0 + 880);
  swift_beginAccess();
  v29 = *(v28 + 176);

  LOBYTE(v27) = specialized Set.contains(_:)(v27, v29);

  if (v27)
  {
    v30 = *(v0 + 1072);
    v31 = *(v0 + 1056);
    v32 = *(v0 + 1024);
    v33 = *(v0 + 992);

    v30(v32, v31, v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 1088);
    v38 = *(v0 + 1024);
    v39 = *(v0 + 992);
    if (v36)
    {
      v146 = *(v0 + 1088);
      v40 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v158 = v152;
      *v40 = 136446210;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v146(v38, v39);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v158);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_220940000, v34, v35, "Request %{public}s is cancelled because of asset unload", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x223D90A10](v152, -1, -1);
      MEMORY[0x223D90A10](v40, -1, -1);
    }

    else
    {

      v37(v38, v39);
    }

    v81 = *(v0 + 1056);
    v82 = *(v0 + 984);
    v83 = *(v0 + 888);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v81, v82);
    outlined destroy of [Int](v82, &_s10Foundation4UUIDVSgMd);
    swift_endAccess();
    OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
    v84 = *MEMORY[0x277D29DB8];
    v85 = type metadata accessor for InferenceError();
    (*(*(v85 - 8) + 104))(v83, v84, v85);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
LABEL_55:
    (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

    v138 = *(v0 + 8);

    return v138();
  }

  else
  {
    v45 = *(v0 + 880);
    v46 = *(v15 + 16);

    result = swift_beginAccess();
    if (v46)
    {
      v48 = 0;
      log = *(v0 + 960);
      v153 = (*(v0 + 952) + 56);
      v49 = -v46;
      v50 = v15 + 40;
      v141 = *(v0 + 944);
      v142 = MEMORY[0x277D84F90];
      v147 = v15 + 40;
      do
      {
        v51 = (v50 + 16 * v48++);
        while (1)
        {
          if ((v48 - 1) >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          v53 = *(v51 - 1);
          v52 = *v51;
          v54 = *(v45 + 128);
          v55 = *(v54 + 16);

          if (!v55)
          {
            goto LABEL_51;
          }

          v56 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v52);
          if ((v57 & 1) == 0)
          {

LABEL_51:
            v117 = *(v0 + 1072);
            v118 = *(v0 + 1056);
            v119 = *(v0 + 1016);
            v120 = *(v0 + 992);

            v117(v119, v118, v120);

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();

            v123 = os_log_type_enabled(v121, v122);
            v124 = *(v0 + 1088);
            v125 = *(v0 + 1016);
            v126 = *(v0 + 992);
            if (v123)
            {
              v150 = v122;
              v127 = swift_slowAlloc();
              v156 = swift_slowAlloc();
              v158 = v156;
              *v127 = 136446466;
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
              v128 = dispatch thunk of CustomStringConvertible.description.getter();
              logb = v121;
              v130 = v129;
              v124(v125, v126);
              v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, &v158);

              *(v127 + 4) = v131;
              *(v127 + 12) = 2082;
              *(v127 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v158);
              _os_log_impl(&dword_220940000, logb, v150, "Fetch for request %{public}s failed, asset %{public}s is not loaded", v127, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v156, -1, -1);
              MEMORY[0x223D90A10](v127, -1, -1);
            }

            else
            {

              v124(v125, v126);
            }

            v132 = *(v0 + 928);
            v133 = *(v0 + 920);
            v134 = *(v0 + 912);
            v135 = *(v0 + 888);
            OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
            v158 = 0;
            v159 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            v158 = 0x207465737341;
            v159 = 0xE600000000000000;
            MEMORY[0x223D8E780](v53, v52);

            MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
            (*(v133 + 16))(v135, v132, v134);
            v136 = *MEMORY[0x277D29DD8];
            v137 = type metadata accessor for InferenceError();
            (*(*(v137 - 8) + 104))(v135, v136, v137);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
            swift_willThrowTypedImpl();
            (*(v133 + 8))(v132, v134);
            goto LABEL_55;
          }

          v58 = v56;

          outlined init with copy of DeterministicLanguageModelProtocol(*(v54 + 56) + 40 * v58, v0 + 176);

          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v59 = *(v0 + 976);
          __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          result = outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v59, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
          ++v48;
          v51 += 2;
          v15 = v157;
          if (v49 + v48 == 1)
          {
            goto LABEL_37;
          }
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 256);
        v60 = swift_dynamicCast();
        v61 = *v153;
        if (v60)
        {
          v62 = *(v0 + 960);
          v63 = *(v0 + 944);
          v64 = *(v0 + 936);
          v65 = *(v0 + 872);
          v61(v64, 0, 1, v63);
          outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v64, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v62, v65);
          *(v0 + 360) = v63;
          *(v0 + 368) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v62, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          outlined init with take of RandomNumberGenerator((v0 + 336), v0 + 176);
          isa = log[1].isa;
          v140 = *v62;
          *(v0 + 400) = v63;
          *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          v67 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v62, v67, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          swift_beginAccess();
          outlined init with take of RandomNumberGenerator((v0 + 376), v0 + 416);
          LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(v45 + 128);
          *(v45 + 128) = 0x8000000000000000;
          v68 = *(v0 + 440);
          v69 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v68);
          v70 = *(v68 - 8);
          v71 = swift_task_alloc();
          (*(v70 + 16))(v71, v69, v68);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v140, isa, v63, &v158);
          __swift_destroy_boxed_opaque_existential_1(v0 + 416);

          *(v45 + 128) = v158;
          swift_endAccess();
          v72 = *(v62 + *(v141 + 32));
          v73 = v72 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
          *v73 = 0;
          v73[8] = 1;
          v74 = v72 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
          *v74 = 0;
          v74[8] = 1;
          v72[8] = 0;
          v75 = static Duration.zero.getter();
          v77 = v76;
          swift_beginAccess();
          v72[9] = v75;
          v72[10] = v77;
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }

        else
        {
          v78 = *(v0 + 936);
          v61(v78, 1, 1, *(v0 + 944));
          outlined destroy of [Int](v78, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 296);
        v15 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142[2] + 1, 1, v142);
        }

        v80 = v142[2];
        v79 = v142[3];
        if (v80 >= v79 >> 1)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v142);
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 176);
        v142[2] = v80 + 1;
        result = outlined init with take of RandomNumberGenerator((v0 + 296), &v142[5 * v80 + 4]);
        v50 = v147;
      }

      while (v49 + v48);
    }

    else
    {
      v142 = MEMORY[0x277D84F90];
    }

LABEL_37:

    v86 = v142[2];
    if (v86)
    {
      v87 = (v142 + 4);

      v88 = &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v87, v0 + 56);
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(v88);
        if (swift_dynamicCast())
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 904), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        }

        else
        {
          v89 = *(v0 + 880);
          v90 = *(v0 + 80);
          v91 = *(v0 + 88);
          __swift_project_boxed_opaque_existential_1((v0 + 56), v90);
          v154 = (*(v91 + 8))(v90, v91);
          v93 = v92;
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 496);
          swift_beginAccess();
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(v89 + 144);
          *(v89 + 144) = 0x8000000000000000;
          v94 = *(v0 + 520);
          loga = *(v0 + 528);
          v95 = v88;
          v96 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v94);
          v97 = *(v94 - 8);
          v98 = swift_task_alloc();
          v99 = v96;
          v88 = v95;
          (*(v97 + 16))(v98, v99, v94);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v154, v93, v148, &v158, v94, loga);

          __swift_destroy_boxed_opaque_existential_1(v0 + 496);

          *(v89 + 144) = v158;
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
        v87 += 40;
        --v86;
      }

      while (v86);
    }

    else
    {
    }

    (*(v0 + 1072))(*(v0 + 1008), *(v0 + 1056), *(v0 + 992));
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 1088);
    v104 = *(v0 + 1008);
    v105 = *(v0 + 992);
    if (v102)
    {
      v106 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v158 = v155;
      *v106 = 136446466;

      v149 = v103;
      v108 = MEMORY[0x223D8E8D0](v107, MEMORY[0x277D837D0]);
      v110 = v109;

      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v158);

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      v149(v104, v105);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v158);

      *(v106 + 14) = v115;

      _os_log_impl(&dword_220940000, v100, v101, "Successfully fetched asset %{public}s for request %s", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v155, -1, -1);
      MEMORY[0x223D90A10](v106, -1, -1);
    }

    else
    {

      v103(v104, v105);
    }

    (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

    v116 = *(v0 + 8);

    return v116(v142);
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFyScCyyts5NeverOGXEfU0_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OnDeviceInferenceSuspendedFetch(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v26[-v14];
  swift_beginAccess();
  v16 = *a2;
  v17 = *(v9 + 28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  (*(*(v18 - 8) + 16))(&v15[v17], a1, v18);
  v19 = *(v9 + 32);
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 16))(&v15[v19], a3, v20);
  *v15 = v16;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v15, v13, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  swift_beginAccess();
  v21 = *(a4 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 160) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(a4 + 160) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v13, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  *(a4 + 160) = v21;
  swift_endAccess();
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v15, type metadata accessor for OnDeviceInferenceSuspendedFetch);
}

Swift::Void __swiftcall OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(Swift::OpaquePointer assetObjects)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v77 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v77 - v10;
  v88 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v11 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v77 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(assetObjects._rawValue + 2);
  if (v13)
  {
    v90 = v7;
    v85 = v6;
    v94 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v94;
    v15 = assetObjects._rawValue + 32;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v15, &v95);
      v16 = *(&v96 + 1);
      v17 = v97;
      __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
      v18 = (*(v17 + 8))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(&v95);
      v94 = v14;
      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v14 = v94;
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v15 += 40;
      --v13;
    }

    while (v13);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = __swift_project_value_buffer(v24, static Log.device);

    v91 = v25;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v95 = v29;
      *v28 = 136446210;
      v30 = MEMORY[0x223D8E8D0](v14, MEMORY[0x277D837D0]);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v95);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_220940000, v26, v27, "Releasing assets %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223D90A10](v29, -1, -1);
      MEMORY[0x223D90A10](v28, -1, -1);
    }

    v33 = v90;
    v34 = v14[2];
    if (v34)
    {
      swift_beginAccess();
      v84 = (v11 + 56);
      v78 = (v11 + 48);
      v83 = (v80 + 56);
      v82 = (v80 + 32);
      v81 = (v80 + 48);
      v79 = (v80 + 8);
      v35 = v14 + 5;
      *&v36 = 136446210;
      v89 = v36;
      do
      {
        v37 = *(v35 - 1);
        v38 = *v35;
        v39 = *(v2 + 144);
        v40 = *(v39 + 16);

        if (v40)
        {

          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          if (v42)
          {
            outlined init with copy of DeterministicLanguageModelProtocol(*(v39 + 56) + 40 * v41, &v95);

            outlined destroy of [Int](&v95, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
            v43 = *(v2 + 144);
            if (*(v43 + 16))
            {

              v44 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
              if (v45)
              {
                outlined init with copy of DeterministicLanguageModelProtocol(*(v43 + 56) + 40 * v44, &v95);

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
                v46 = v86;
                v47 = v88;
                v48 = swift_dynamicCast();
                (*v84)(v46, v48 ^ 1u, 1, v47);
                if ((*v78)(v46, 1, v47) != 1)
                {
                  v49 = v77;
                  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v46, v77, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
                  v50 = *(v49 + *(v88 + 28) + 8);
                  ObjectType = swift_getObjectType();
                  (*(v50 + 104))(0, ObjectType, v50);
                  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v49, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_27:
                  swift_beginAccess();
                  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
                  if (v59)
                  {
                    v60 = v58;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v62 = *(v2 + 144);
                    v92 = v62;
                    *(v2 + 144) = 0x8000000000000000;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      specialized _NativeDictionary.copy()();
                      v62 = v92;
                    }

                    outlined init with take of RandomNumberGenerator((*(v62 + 56) + 40 * v60), &v95);
                    specialized _NativeDictionary._delete(at:)(v60, v62);
                    *(v2 + 144) = v62;
                  }

                  else
                  {
                    v97 = 0;
                    v95 = 0u;
                    v96 = 0u;
                  }

                  outlined destroy of [Int](&v95, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
                  swift_endAccess();
                  swift_beginAccess();
                  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
                  if (v64)
                  {
                    v65 = v63;
                    v66 = swift_isUniquelyReferenced_nonNull_native();
                    v67 = *(v2 + 168);
                    v93 = v67;
                    *(v2 + 168) = 0x8000000000000000;
                    if (!v66)
                    {
                      specialized _NativeDictionary.copy()();
                      v67 = v93;
                    }

                    v68 = v85;
                    (*(v80 + 32))(v85, *(v67 + 56) + *(v80 + 72) * v65, v33);
                    specialized _NativeDictionary._delete(at:)(v65, v67);
                    *(v2 + 168) = v67;

                    v69 = 0;
                  }

                  else
                  {
                    v69 = 1;
                    v68 = v85;
                  }

                  (*v83)(v68, v69, 1, v33);
                  swift_endAccess();
                  if ((*v81)(v68, 1, v33) == 1)
                  {

                    outlined destroy of [Int](v68, &_sScCyyts5NeverOGSgMd);
                  }

                  else
                  {
                    (*v82)(v87, v68, v33);

                    v70 = Logger.logObject.getter();
                    v71 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v70, v71))
                    {
                      v72 = swift_slowAlloc();
                      v73 = swift_slowAlloc();
                      *&v95 = v73;
                      *v72 = v89;
                      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v95);

                      *(v72 + 4) = v74;
                      _os_log_impl(&dword_220940000, v70, v71, "Resuming suspended unload for asset %{public}s", v72, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v73);
                      v75 = v73;
                      v33 = v90;
                      MEMORY[0x223D90A10](v75, -1, -1);
                      MEMORY[0x223D90A10](v72, -1, -1);
                    }

                    else
                    {
                    }

                    v76 = v87;
                    CheckedContinuation.resume(returning:)();
                    (*v79)(v76, v33);
                  }

                  goto LABEL_14;
                }

LABEL_26:
                outlined destroy of [Int](v46, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
                goto LABEL_27;
              }
            }

            v46 = v86;
            (*v84)(v86, 1, 1, v88);
            goto LABEL_26;
          }
        }

        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        outlined destroy of [Int](&v95, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v95 = v55;
          *v54 = v89;
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v95);

          *(v54 + 4) = v56;
          _os_log_impl(&dword_220940000, v52, v53, "Attempting to release asset %{public}s that is not marked as in-use", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          v57 = v55;
          v33 = v90;
          MEMORY[0x223D90A10](v57, -1, -1);
          MEMORY[0x223D90A10](v54, -1, -1);
        }

        else
        {
        }

LABEL_14:
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
  }
}

Swift::String __swiftcall OnDeviceInferenceAssetRepository.dumpState()()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS24TokenGenerationInference08OnDeviceD11AssetObject_p_GMd);
  lazy protocol witness table accessor for type [String : OnDeviceInferenceAssetObject].Keys and conformance [A : B].Keys();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = Sequence<>.joined(separator:)();
  v2 = v1;

  swift_beginAccess();

  v3 = Sequence<>.joined(separator:)();
  v5 = v4;

  swift_beginAccess();

  v6 = Sequence<>.joined(separator:)();
  v8 = v7;

  _StringGuts.grow(_:)(87);
  MEMORY[0x223D8E780](0xD00000000000002ALL, 0x8000000220AFD2A0);
  MEMORY[0x223D8E780](v0, v2);

  MEMORY[0x223D8E780](0xD000000000000017, 0x8000000220AFD2D0);
  MEMORY[0x223D8E780](v6, v8);

  MEMORY[0x223D8E780](0xD000000000000010, 0x8000000220AFD2F0);
  MEMORY[0x223D8E780](v3, v5);

  v9 = 0;
  v10 = 0xE000000000000000;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderRequestConfiguration();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v67 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v67 - v19;
  v88[0] = 0;
  v21 = a1[1];
  v85 = *a1;
  v86 = v21;
  v82 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v22 = *(v82 + 52);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v22, v11, &_s10Foundation4UUIDVSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of [Int](v11, &_s10Foundation4UUIDVSgMd);
    InferenceProviderRequestConfiguration.sessionUUID.getter();
    (*(v13 + 56))(v9, 0, 1, v12);
    outlined assign with take of UUID?(v9, a1 + v22, &_s10Foundation4UUIDVSgMd);
    v23 = a2;
    v24 = v86;
    v25 = a1;
  }

  else
  {
    v76 = v22;
    v77 = a1;
    v75 = v9;
    (*(v13 + 32))(v20, v11, v12);
    v83 = a2;
    InferenceProviderRequestConfiguration.sessionUUID.getter();
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *(v13 + 8);
    v27(v18, v12);
    v28 = v12;
    if (v26)
    {
      v27(v20, v12);
      v23 = v83;
      v24 = v86;
      v25 = v77;
    }

    else
    {
      v72 = v27;
      v29 = v86;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.device);
      v73 = v13;
      v74 = v20;
      v31 = *(v13 + 16);
      v32 = v78;
      v31(v78, v20, v12);
      v34 = v79;
      v33 = v80;
      v35 = v81;
      (*(v80 + 16))(v79, v83, v81);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = v18;
        v70 = v37;
        v39 = v38;
        v71 = swift_slowAlloc();
        v87 = v71;
        *v39 = 136446722;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v29, &v87);
        *(v39 + 12) = 2082;
        v67[1] = lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        v69 = v36;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        v43 = v32;
        v44 = v72;
        v72(v43, v28);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v87);

        *(v39 + 14) = v45;
        *(v39 + 22) = 2082;
        v46 = v68;
        InferenceProviderRequestConfiguration.sessionUUID.getter();
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v44(v46, v28);
        (*(v33 + 8))(v34, v35);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v87);

        *(v39 + 24) = v50;
        v51 = v69;
        _os_log_impl(&dword_220940000, v69, v70, "E5Runner %{public}s last used for ID %{public}s is different from next ID %{public}s. Clearing model state.", v39, 0x20u);
        v52 = v71;
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v52, -1, -1);
        MEMORY[0x223D90A10](v39, -1, -1);
      }

      else
      {

        (*(v33 + 8))(v34, v35);
        v53 = v32;
        v44 = v72;
        v72(v53, v28);
      }

      v55 = v75;
      v54 = v76;
      v23 = v83;
      InferenceProviderRequestConfiguration.sessionUUID.getter();
      (*(v73 + 56))(v55, 0, 1, v28);
      v56 = v77;
      v57 = v77 + v54;
      v58 = v77;
      outlined assign with take of UUID?(v55, v57, &_s10Foundation4UUIDVSgMd);
      v59 = v82;
      v60 = *(v56 + *(v82 + 28) + 8);
      ObjectType = swift_getObjectType();
      (*(v60 + 56))(ObjectType, v60);
      v62 = type metadata accessor for E5TransformerLanguageModel();
      v63 = swift_unknownObjectRetain();
      v64 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v63, 1296840005, 0xE400000000000000, v62, ObjectType, v60);
      v44(v74, v28);
      v65 = *(v59 + 32);

      v25 = v58;
      *(v58 + v65) = v64;
      v88[0] = 1;
      v24 = v86;
    }
  }

  return $defer #1 () in OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v88, v84, v85, v24, v23, v25);
}

uint64_t $defer #1 () in OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v44 = type metadata accessor for UUID();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InferenceProviderRequestConfiguration();
  v46 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 232), *(a2 + 256));
    v18 = off_2834512B8[0];
    type metadata accessor for OnDeviceInferenceOverrides();
    result = v18();
    if (result != 2 && (result & 1) != 0)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.device);
      v20 = v46;
      (*(v46 + 16))(v17, v45, v14);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v43 = v22;
        v24 = v23;
        v45 = swift_slowAlloc();
        v47 = v45;
        *v24 = 136446466;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v47);
        *(v24 + 12) = 2082;
        v42 = v21;
        InferenceProviderRequestConfiguration.requestUUID.getter();
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        v25 = v44;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v20;
        v29 = v28;
        (*(v11 + 8))(v13, v25);
        (*(v27 + 8))(v17, v14);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, &v47);

        *(v24 + 14) = v30;
        v31 = v42;
        _os_log_impl(&dword_220940000, v42, v43, "Resetting the e5Runner %{public}s for request %{public}s because prefix based kv cache optimization is disabled", v24, 0x16u);
        v32 = v45;
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v32, -1, -1);
        MEMORY[0x223D90A10](v24, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v17, v14);
      }

      v33 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
      v34 = a6 + *(v33 + 28);
      v35 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      v37 = *(v35 + 40);
      swift_unknownObjectRetain();
      v37(ObjectType, v35);
      swift_unknownObjectRelease();
      v38 = type metadata accessor for E5TransformerLanguageModel();
      v39 = *(v34 + 8);
      v40 = swift_getObjectType();
      v41 = swift_unknownObjectRetain();
      *(a6 + *(v33 + 32)) = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v41, 1296840005, 0xE400000000000000, v38, v40, v39);
    }
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a3;
  v136 = a4;
  v7 = type metadata accessor for InferenceError.Context();
  v149 = *(v7 - 8);
  v150 = v7;
  MEMORY[0x28223BE20](v7);
  v148 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v146 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v131 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v131 - v15;
  MEMORY[0x28223BE20](v14);
  v140 = &v131 - v16;
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v141 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v131 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v131 - v24;
  v26 = *(v4 + 216);
  v145 = v4;
  __swift_project_boxed_opaque_existential_1((v4 + 192), v26);
  v27 = a1;
  v28 = a2;
  v29 = v169;
  OnDeviceInferenceProviderDataSource.resourceBundle(for:)(&v161);
  v169 = v29;
  if (v29)
  {
    v30 = v29;
    v31 = _convertErrorToNSError(_:)();
    if (one-time initialization token for device == -1)
    {
LABEL_3:
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.device);

      v33 = v30;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      v36 = os_log_type_enabled(v34, v35);
      v146 = v31;
      if (v36)
      {
        v37 = v28;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v161 = v40;
        *v38 = 136446466;
        v41 = v37;
        v31 = v146;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v41, &v161);
        *(v38 + 12) = 2112;
        v42 = v30;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 14) = v43;
        *v39 = v43;
        _os_log_impl(&dword_220940000, v34, v35, "Failed to look up resource bundle %{public}s : %@", v38, 0x16u);
        outlined destroy of [Int](v39, &_sSo8NSObjectCSgMd);
        MEMORY[0x223D90A10](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x223D90A10](v40, -1, -1);
        MEMORY[0x223D90A10](v38, -1, -1);
      }

      v44 = v150;
      v45 = [v31 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = [v31 domain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v31 code];
      v47 = v169;
      v48 = v169;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v49 = v148;
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
      v50 = v149;
      v51 = v147;
      (*(v149 + 16))(v147, v49, v44);
      v52 = *MEMORY[0x277D29DC0];
      v53 = type metadata accessor for InferenceError();
      (*(*(v53 - 8) + 104))(v51, v52, v53);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();

      return (*(v50 + 8))(v49, v44);
    }

LABEL_76:
    swift_once();
    goto LABEL_3;
  }

  v132 = v23;
  v133 = v25;
  v144 = v17;
  v131 = v20;
  v134 = v27;
  v135 = a2;
  outlined init with take of RandomNumberGenerator(&v161, v166);
  v28 = v168;
  __swift_project_boxed_opaque_existential_1(v166, v167);
  v55 = dispatch thunk of ResourceBundle.resources.getter();
  v56 = v55;
  v27 = *(v55 + 16);
  if (v27)
  {
    v30 = 0;
    v31 = (v55 + 32);
    while (1)
    {
      if (v30 >= *(v56 + 16))
      {
        goto LABEL_73;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(v31, &v158);
      outlined init with copy of DeterministicLanguageModelProtocol(&v158, &v154);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog10LLMAdapter_pMd);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v30;
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      outlined destroy of [Int](&v151, &_s12ModelCatalog10LLMAdapter_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v31 += 40;
      if (v27 == v30)
      {
        goto LABEL_11;
      }
    }

    v69 = &_s12ModelCatalog10LLMAdapter_pSgMd;
  }

  else
  {
LABEL_11:

    v27 = v167;
    __swift_project_boxed_opaque_existential_1(v166, v167);
    v57 = dispatch thunk of ResourceBundle.resources.getter();
    v58 = v57;
    v28 = *(v57 + 16);
    if (v28)
    {
      v59 = 0;
      v30 = &_s12ModelCatalog8LLMModel_pMR;
      v31 = (v57 + 32);
      while (1)
      {
        if (v59 >= *(v58 + 16))
        {
          goto LABEL_74;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v31, &v158);
        outlined init with copy of DeterministicLanguageModelProtocol(&v158, &v154);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog8LLMModel_pMd);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v59;
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        outlined destroy of [Int](&v151, &_s12ModelCatalog8LLMModel_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(&v158);
        v31 += 40;
        if (v28 == v59)
        {
          goto LABEL_16;
        }
      }

      v69 = &_s12ModelCatalog8LLMModel_pSgMd;
    }

    else
    {
LABEL_16:

      v27 = v167;
      __swift_project_boxed_opaque_existential_1(v166, v167);
      v60 = dispatch thunk of ResourceBundle.resources.getter();
      v61 = v60;
      v28 = *(v60 + 16);
      if (!v28)
      {
LABEL_21:

        *&v161 = 0;
        *(&v161 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v161 = 0xD00000000000002ELL;
        *(&v161 + 1) = 0x8000000220AFCD50;
        MEMORY[0x223D8E780](v134, v135);

        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v63 = v148;
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        v65 = v149;
        v64 = v150;
        v66 = v147;
        (*(v149 + 16))(v147, v63, v150);
        v67 = *MEMORY[0x277D29DC0];
        v68 = type metadata accessor for InferenceError();
        (*(*(v68 - 8) + 104))(v66, v67, v68);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
        swift_willThrowTypedImpl();
        (*(v65 + 8))(v63, v64);
        return __swift_destroy_boxed_opaque_existential_1(v166);
      }

      v62 = 0;
      v30 = &_s12ModelCatalog08LLMDraftA0_pMR;
      v31 = (v60 + 32);
      while (1)
      {
        if (v62 >= *(v61 + 16))
        {
          goto LABEL_75;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v31, &v158);
        outlined init with copy of DeterministicLanguageModelProtocol(&v158, &v154);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA0_pMd);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v62;
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        outlined destroy of [Int](&v151, &_s12ModelCatalog08LLMDraftA0_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(&v158);
        v31 += 40;
        if (v28 == v62)
        {
          goto LABEL_21;
        }
      }

      v69 = &_s12ModelCatalog08LLMDraftA0_pSgMd;
    }
  }

  outlined destroy of [Int](&v151, v69);

  outlined init with take of RandomNumberGenerator(&v158, &v161);
  __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
  v143 = dispatch thunk of CatalogResource.id.getter();
  v71 = v70;
  __swift_destroy_boxed_opaque_existential_1(&v161);
  v72 = v135;
  v73 = v145;
  v74 = v141;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  v76 = __swift_project_value_buffer(v75, static Log.device);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();

  v79 = os_log_type_enabled(v77, v78);
  v137 = v71;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v161 = v81;
    *v80 = 136446210;
    *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v137, &v161);
    _os_log_impl(&dword_220940000, v77, v78, "Using identifier %{public}s for localization metadata fetch", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v82 = v81;
    v71 = v137;
    MEMORY[0x223D90A10](v82, -1, -1);
    MEMORY[0x223D90A10](v80, -1, -1);
  }

  v83 = v144;
  swift_beginAccess();
  v84 = *(v73 + 128);
  if (!*(v84 + 16))
  {
    goto LABEL_35;
  }

  v85 = specialized __RawDictionaryStorage.find<A>(_:)(v143, v71);
  if ((v86 & 1) == 0)
  {

LABEL_35:
    v87 = v140;
    v142 = *(v74 + 56);
    v142(v140, 1, 1, v83);
    goto LABEL_36;
  }

  outlined init with copy of DeterministicLanguageModelProtocol(*(v84 + 56) + 40 * v85, &v161);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
  v87 = v140;
  v88 = swift_dynamicCast();
  v142 = *(v74 + 56);
  v142(v87, v88 ^ 1u, 1, v83);
  if ((*(v74 + 48))(v87, 1, v83) != 1)
  {

    v89 = v133;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v87, v133, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v161 = v93;
      *v92 = 136446210;
      *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v72, &v161);
      v94 = "Found loaded e5Runner asset object for resource bundle %{public}s";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_36:
  outlined destroy of [Int](v87, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  swift_beginAccess();
  v95 = *(v73 + 144);
  if (*(v95 + 16))
  {

    v96 = specialized __RawDictionaryStorage.find<A>(_:)(v143, v71);
    if (v97)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v95 + 56) + 40 * v96, &v161);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v98 = v139;
      v99 = swift_dynamicCast();
      v142(v98, v99 ^ 1u, 1, v83);
      if ((*(v74 + 48))(v98, 1, v83) != 1)
      {

        v89 = v132;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v98, v132, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v161 = v93;
          *v92 = 136446210;
          *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v72, &v161);
          v94 = "Found inuse e5Runner asset object for resource bundle %{public}s";
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      goto LABEL_45;
    }
  }

  v98 = v139;
  v142(v139, 1, 1, v83);
LABEL_45:
  v139 = v76;
  outlined destroy of [Int](v98, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v100 = *(v73 + 128);
  v28 = v100 + 64;
  v101 = 1 << *(v100 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v30 = v102 & *(v100 + 64);
  v103 = v101 + 63;
  v104 = v74;
  v31 = (v103 >> 6);
  v140 = (v104 + 56);
  swift_bridgeObjectRetain_n();
  v27 = 0;
  while (1)
  {
    if (!v30)
    {
      while (1)
      {
        v105 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v105 >= v31)
        {

          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v164 = 0;

          v117 = v149;
          v116 = v150;
          v118 = v135;
          goto LABEL_61;
        }

        v30 = *(v28 + 8 * v105);
        ++v27;
        if (v30)
        {
          v27 = v105;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_55:
    v106 = __clz(__rbit64(v30)) | (v27 << 6);
    v107 = (*(v100 + 48) + 16 * v106);
    v109 = *v107;
    v108 = v107[1];
    outlined init with copy of DeterministicLanguageModelProtocol(*(v100 + 56) + 40 * v106, v159);
    *&v158 = v109;
    *(&v158 + 1) = v108;
    v154 = v158;
    v155 = v159[0];
    v156 = v159[1];
    v157 = v160;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(&v154, &v151, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v110 = v146;
    v111 = v144;
    if (!swift_dynamicCast())
    {
      v142(v110, 1, 1, v111);
      outlined destroy of [Int](v110, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      goto LABEL_49;
    }

    v142(v110, 0, 1, v111);
    v112 = v110;
    v113 = *(v110 + 2);
    v114 = *(v112 + 24);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v112, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    if (v113 == v143 && v114 == v137)
    {
      break;
    }

    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v115)
    {

      goto LABEL_68;
    }

LABEL_49:
    v30 &= v30 - 1;
    outlined destroy of [Int](&v154, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd);
  }

LABEL_68:
  v161 = v154;
  v162 = v155;
  v163 = v156;
  v164 = v157;

  v117 = v149;
  v116 = v150;
  v118 = v135;
  if (!*(&v161 + 1))
  {
LABEL_61:
    outlined destroy of [Int](&v161, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetSgMd);
    v119 = v138;
    v142(v138, 1, 1, v144);
LABEL_62:
    outlined destroy of [Int](v119, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v161 = v123;
      *v122 = 136446210;
      v124 = v134;
      *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v118, &v161);
      _os_log_impl(&dword_220940000, v120, v121, "Failed to look up e5Runner asset object for asset bundle %{public}s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x223D90A10](v123, -1, -1);
      MEMORY[0x223D90A10](v122, -1, -1);
    }

    else
    {

      v124 = v134;
    }

    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    MEMORY[0x223D8E780](0xD000000000000039, 0x8000000220AFCD80);
    MEMORY[0x223D8E780](v124, v118);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v125 = v148;
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v126 = v147;
    (*(v117 + 16))(v147, v125, v116);
    v127 = *MEMORY[0x277D29DD8];
    v128 = type metadata accessor for InferenceError();
    (*(*(v128 - 8) + 104))(v126, v127, v128);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v117 + 8))(v125, v116);
    return __swift_destroy_boxed_opaque_existential_1(v166);
  }

  outlined init with take of RandomNumberGenerator(&v162, v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
  v119 = v138;
  v129 = v144;
  v130 = swift_dynamicCast();
  v142(v119, v130 ^ 1u, 1, v129);
  if ((*(v141 + 48))(v119, 1, v129) == 1)
  {
    goto LABEL_62;
  }

  v89 = v131;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v119, v131, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v90, v91))
  {
    goto LABEL_42;
  }

  v92 = swift_slowAlloc();
  v93 = swift_slowAlloc();
  *&v161 = v93;
  *v92 = 136446210;
  *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v118, &v161);
  v94 = "Found e5Runner asset object for resource bundle %{public}s";
LABEL_41:
  _os_log_impl(&dword_220940000, v90, v91, v94, v92, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v93);
  MEMORY[0x223D90A10](v93, -1, -1);
  MEMORY[0x223D90A10](v92, -1, -1);
LABEL_42:

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v89, v136, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  return __swift_destroy_boxed_opaque_existential_1(v166);
}