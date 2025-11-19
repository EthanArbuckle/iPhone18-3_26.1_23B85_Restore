Swift::String_optional __swiftcall DeviceClass.stringValue()()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D61BA8])
  {
    v9 = 0xE600000000000000;
    v10 = 0x656E6F685069;
  }

  else if (v8 == *MEMORY[0x277D61B98])
  {
    v9 = 0xE400000000000000;
    v10 = 1684099177;
  }

  else if (v8 == *MEMORY[0x277D61BB8])
  {
    v9 = 0xE700000000000000;
    v10 = 0x646F50656D6F48;
  }

  else if (v8 == *MEMORY[0x277D61BB0])
  {
    v9 = 0xE800000000000000;
    v10 = 0x565420656C707041;
  }

  else if (v8 == *MEMORY[0x277D61B90])
  {
    v9 = 0xE300000000000000;
    v10 = 6512973;
  }

  else if (v8 == *MEMORY[0x277D61BA0])
  {
    v9 = 0xEB00000000686374;
    v10 = 0x615720656C707041;
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    v10 = 0;
    v9 = 0;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

void DataProviderManager.addAmpState(to:searchRequest:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v117 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v143 = &v116 - v16;
  v142 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v141 = *(v142 - 8);
  v17 = *(v141 + 64);
  MEMORY[0x28223BE20](v142, v18);
  v144 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v139 = *(v140 - 8);
  v20 = *(v139 + 64);
  MEMORY[0x28223BE20](v140, v21);
  v138 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v129 = &v116 - v26;
  v131 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v130 = *(v131 - 8);
  v27 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v28);
  v116 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DispatchTimeInterval();
  v126 = *(v127 - 8);
  v30 = *(v126 + 64);
  MEMORY[0x28223BE20](v127, v31);
  v123 = (&v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for DispatchTime();
  v124 = *(v125 - 8);
  v33 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v34);
  v121 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v122 = &v116 - v39;
  v135 = type metadata accessor for Date();
  v134 = *(v135 - 8);
  v40 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v41);
  v133 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = MEMORY[0x28223BE20](v43, v46);
  v151 = &v116 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v150 = &v116 - v50;
  v149 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v51 = *(v149 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v149, v53);
  v55 = &v116 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v9;
  v56 = *(v9 + 16);
  v120 = a3;
  v119 = v8;
  v56(a3, a1, v8);
  v57 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v136 = v4;
  OS_dispatch_queue.sync<A>(execute:)();
  v132 = 0;
  v58 = type metadata accessor for PommesSearchRequest(0);
  v60 = 0;
  v128 = v58;
  v61 = *(v58 + 92);
  v137 = a2;
  v152 = *(a2 + v61);
  v153 = *(v152 + 16);
  v148 = v51 + 16;
  v147 = *MEMORY[0x277D396E8];
  v146 = (v44 + 104);
  v62 = (v44 + 8);
  v145 = v51 + 8;
  v63 = v150;
  while (v153 != v60)
  {
    if (v60 >= *(v152 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v64 = v149;
    v65 = (*(v51 + 16))(v55, v152 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v60++, v149);
    MEMORY[0x223DDBB90](v65);
    v66 = v151;
    (*v146)(v151, v147, v43);
    a2 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v67 = *v62;
    (*v62)(v66, v43);
    v67(v63, v43);
    v58 = (*(v51 + 8))(v55, v64);
    if (v154[0] == v154[5])
    {
      outlined destroy of MediaUserStateCenter?(v155, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      return;
    }
  }

  a2 = v136;
  if (one-time initialization token for shared == -1)
  {
    goto LABEL_7;
  }

LABEL_33:
  v58 = swift_once();
LABEL_7:
  v68 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v58, v59);
  v69 = v137;
  v112 = a2;
  v113 = v137;
  v114 = v155;
  v70 = v133;
  Date.init()();
  v71 = *(*v68 + 200);
  v114 = &v111;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch14MediaUserState_pGSgMd, &_sSay21SiriInformationSearch14MediaUserState_pGSgMR);
  LOBYTE(v112) = 2;
  v71(v154, 0xD00000000000003FLL, 0x80000002234DD940, 0, v70, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 617, "addAmpState(to:searchRequest:)", 30, v112, partial apply for closure #2 in DataProviderManager.addAmpState(to:searchRequest:));
  outlined destroy of MediaUserStateCenter?(v155, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(v134 + 8))(v70, v135);
  v153 = v154[0];
  if (v154[0])
  {
    v72 = *(a2 + 104);
    if (v72)
    {
      v73 = v121;
      static DispatchTime.now()();
      v74 = v123;
      *v123 = 1;
      v75 = v126;
      v76 = v127;
      (*(v126 + 104))(v74, *MEMORY[0x277D85178], v127);
      v77 = v122;
      MEMORY[0x223DDF450](v73, v74);
      (*(v75 + 8))(v74, v76);
      v78 = v124;
      v79 = v125;
      (*(v124 + 8))(v73, v125);
      (*(v78 + 56))(v77, 0, 1, v79);
      v80 = (*(*v72 + 176))(v77);
      outlined destroy of MediaUserStateCenter?(v77, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
      LODWORD(v152) = *(v69 + *(v128 + 60));
      v81 = v143;
      v82 = v142;
      if (v80)
      {
LABEL_18:
        (*(v139 + 104))(v138, *MEMORY[0x277D39D58], v140);
        v87 = *(v153 + 16);
        if (v87)
        {
          v88 = v153 + 32;
          v89 = (v141 + 48);
          v90 = (v141 + 32);
          v91 = MEMORY[0x277D84F90];
          do
          {
            outlined init with copy of AppDataProviding(v88, v154);
            createAMPUserState(mediaUserState:muxUserInfo:)(v154, v80, v81);
            __swift_destroy_boxed_opaque_existential_1(v154);
            if ((*v89)(v81, 1, v82) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v81, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
            }

            else
            {
              v92 = v82;
              v93 = *v90;
              (*v90)(v144, v81, v92);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
              }

              v95 = v91[2];
              v94 = v91[3];
              if (v95 >= v94 >> 1)
              {
                v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1, v91);
              }

              v91[2] = v95 + 1;
              v96 = v91 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v95;
              v97 = v142;
              v93(v96, v144, v142);
              v82 = v97;
              v81 = v143;
            }

            v88 += 40;
            --v87;
          }

          while (v87);
        }

        else
        {
          v91 = MEMORY[0x277D84F90];
        }

        v98 = v129;
        v99 = v138;
        createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v91, v138, 0, v152, v129);

        (*(v139 + 8))(v99, v140);
        v100 = v130;
        v101 = v131;
        if ((*(v130 + 48))(v98, 1, v131) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v98, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
        }

        else
        {
          v102 = v116;
          (*(v100 + 32))(v116, v98, v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
          v103 = *(v100 + 72);
          v104 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_2234CF920;
          (*(v100 + 16))(v105 + v104, v102, v101);
          v106 = v117;
          v107 = v120;
          DataProviderManager.appendProfileSlices(_:to:)(v105, v120, v117);
          swift_setDeallocating();
          v108 = *(v105 + 16);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v100 + 8))(v102, v101);
          v109 = v118;
          v110 = v119;
          (*(v118 + 8))(v107, v119);
          (*(v109 + 32))(v107, v106, v110);
        }

        return;
      }
    }

    else
    {
      LODWORD(v152) = *(v69 + *(v128 + 60));
      v81 = v143;
      v82 = v142;
    }

    v80 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  __swift_project_value_buffer(v83, static Logger.pommes);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_2232BB000, v84, v85, "DataProviderManager media user state is nil", v86, 2u);
    MEMORY[0x223DE0F80](v86, -1, -1);
  }
}

uint64_t closure #2 in DataProviderManager.addAmpState(to:searchRequest:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v38 = a3;
  v36 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36, v8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for DispatchTime();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v35, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v33 - v23;
  v25 = a1[3];
  outlined init with copy of PommesSearchRequest(a2, &v33 - v23);
  v26 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = a1[17];
  v34 = a1[2];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  v28 = v36;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v36);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v28);
  v29 = *(v11 + 8);
  v30 = v16;
  v31 = v35;
  v29(v30, v35);
  (*(*v25 + 240))(v24, v38, v27, v34, v19);
  swift_unknownObjectRelease();
  v29(v19, v31);
  return outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

void DataProviderManager.addQueueState(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v73 = &v65 - v14;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v66 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v77 = *(v19 - 8);
  v78 = v19;
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v71 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v65 - v30;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v76 = *(v32 - 8);
  v33 = *(v76 + 64);
  MEMORY[0x28223BE20](v32, v34);
  v72 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v7;
  v36 = *(v7 + 16);
  v70 = a2;
  v69 = v6;
  v36(a2, a1, v6);
  v37 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v38 = OS_dispatch_queue.sync<A>(execute:)();
  if (one-time initialization token for shared != -1)
  {
    v38 = swift_once();
  }

  v40 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v38, v39);
  v63 = v3;
  v64 = v79;
  Date.init()();
  v41 = *(*v40 + 200);
  v63 = &v62;
  v64 = v24;
  LOBYTE(v62) = 2;
  v41(0xD000000000000046, 0x80000002234DDD80, 0, v23, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 658, "addQueueState(to:)", 18, v62, partial apply for closure #1 in DataProviderManager.addQueueState(to:));
  outlined destroy of MediaUserStateCenter?(v79, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(v77 + 8))(v23, v78);
  v42 = v76;
  if ((*(v76 + 48))(v31, 1, v32) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v31, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v44, v45, "DataProviderManager queue state is nil", v46, 2u);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }
  }

  else
  {
    v47 = v32;
    v48 = v72;
    (*(v42 + 32))(v72, v31, v32);
    v49 = v71;
    (*(v42 + 16))(v71, v48, v47);
    (*(v42 + 56))(v49, 0, 1, v47);
    v50 = v73;
    createQueueStateProfileSlice(for:)(v49, v73);
    outlined destroy of MediaUserStateCenter?(v49, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v52 = v74;
    v51 = v75;
    if ((*(v74 + 48))(v50, 1, v75) == 1)
    {
      (*(v42 + 8))(v48, v47);
      outlined destroy of MediaUserStateCenter?(v50, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    }

    else
    {
      v53 = v66;
      (*(v52 + 32))(v66, v50, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
      v54 = *(v52 + 72);
      v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2234CF920;
      (*(v52 + 16))(v56 + v55, v53, v51);
      v57 = v67;
      v58 = v70;
      DataProviderManager.appendProfileSlices(_:to:)(v56, v70, v67);
      swift_setDeallocating();
      v59 = *(v56 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v52 + 8))(v53, v51);
      (*(v42 + 8))(v48, v47);
      v60 = v68;
      v61 = v69;
      (*(v68 + 8))(v58, v69);
      (*(v60 + 32))(v58, v57, v61);
    }
  }
}

uint64_t closure #1 in DataProviderManager.addQueueState(to:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = a2;
  v34 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for DispatchTime();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v33, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v31 - v21;
  v23 = a1[4];
  v24 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = a1[17];
  v32 = a1[2];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  v26 = v34;
  (*(v4 + 104))(v8, *MEMORY[0x277D85178], v34);
  MEMORY[0x223DDF450](v14, v8);
  (*(v4 + 8))(v8, v26);
  v27 = *(v9 + 8);
  v28 = v14;
  v29 = v33;
  v27(v28, v33);
  (*(*v23 + 240))(v22, v36, v25, v32, v17);
  swift_unknownObjectRelease();
  v27(v17, v29);
  return outlined destroy of MediaUserStateCenter?(v22, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addClientExperienceSignals(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v120 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v116 = &v105 - v10;
  v115 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v114 = *(v115 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v115, v12);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v111 = &v105 - v17;
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18, v21);
  v23 = (&v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for DispatchTime();
  v119 = *(v24 - 8);
  v25 = *(v119 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v105 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = &v105 - v36;
  v38 = type metadata accessor for ClientExperienceSignals();
  v39 = *(*(v38 - 8) + 16);
  v121 = a3;
  v39(a3, v120, v38);
  v40 = *(v4 + 24);
  v118 = a2;
  outlined init with copy of PommesSearchRequest(a2, v37);
  v41 = type metadata accessor for PommesSearchRequest(0);
  v42 = *(*(v41 - 8) + 56);
  v117 = v41;
  v42(v37, 0, 1);
  memset(v129, 0, 90);
  v112 = v4;
  v43 = *(v4 + 16);
  static DispatchTime.now()();
  *v23 = 1;
  v44 = v19[13];
  v107 = *MEMORY[0x277D85178];
  v106 = v44;
  v44(v23);
  MEMORY[0x223DDF450](v29, v23);
  v45 = v19[1];
  v110 = v18;
  v108 = v19 + 1;
  v105 = v45;
  v45(v23, v18);
  v46 = *(v119 + 8);
  v46(v29, v24);
  (*(*v40 + 240))(v126, v37, v129, 0, v43, v32);
  v109 = v24;
  v46(v32, v24);
  result = outlined destroy of MediaUserStateCenter?(v37, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v48 = v126[0];
  if (v126[0])
  {
    v49 = *(v112 + 104);
    if (v49)
    {
      static DispatchTime.now()();
      *v23 = 1;
      v50 = v110;
      v106(v23, v107, v110);
      v51 = v111;
      MEMORY[0x223DDF450](v32, v23);
      v105(v23, v50);
      v52 = v109;
      v46(v32, v109);
      (*(v119 + 56))(v51, 0, 1, v52);
      v53 = (*(*v49 + 176))(v51);
      outlined destroy of MediaUserStateCenter?(v51, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v53 = 0;
    }

    v54 = v117;
    type metadata accessor for PegasusProxy(0);
    v55 = v113;
    v56 = v118;
    static PegasusProxy.multiUserContext(for:)(v118);
    v57 = v114;
    v58 = v116;
    v59 = v55;
    v60 = v115;
    (*(v114 + 16))(v116, v59, v115);
    (*(v57 + 56))(v58, 0, 1, v60);
    result = ClientExperienceSignals.multiUserContext.setter();
    if (*(v56 + *(v54 + 60)) == 1)
    {
      v61 = *(v48 + 16);
      if (v61)
      {
        v62 = 0;
        v63 = v48 + 32;
        v116 = (v53 + 96);
        v120 = v48;
        v117 = v53;
        v119 = v61;
        v118 = v48 + 32;
        while (v62 < *(v48 + 16))
        {
          outlined init with copy of AppDataProviding(v63 + 40 * v62, v126);
          v64 = v127;
          v65 = v128;
          __swift_project_boxed_opaque_existential_1(v126, v127);
          v66 = (*(v65 + 48))(v64, v65);
          if (v67)
          {
            v68 = v67;
            if (v53)
            {
              v69 = v66;
              v70 = *(v53 + 16) + 1;
              v71 = v116;
              do
              {
                if (!--v70)
                {

                  v48 = v120;
                  v53 = v117;
                  v61 = v119;
                  v63 = v118;
                  goto LABEL_9;
                }

                v73 = *(v71 - 8);
                v72 = *(v71 - 7);
                v74 = *(v71 - 5);
                v76 = *(v71 - 3);
                v75 = *(v71 - 2);
                if (*(v71 - 1) == v69 && v68 == *v71)
                {
                  break;
                }

                v71 += 72;
              }

              while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

              v78 = v127;
              v79 = v128;
              __swift_project_boxed_opaque_existential_1(v126, v127);
              (*(v79 + 8))(v123, v78, v79);
              v80 = v124;
              if (v124)
              {
                v81 = v125;
                __swift_project_boxed_opaque_existential_1(v123, v124);
                LOBYTE(v80) = (*(v81 + 88))(v80, v81);
                __swift_destroy_boxed_opaque_existential_1(v123);
              }

              else
              {
                outlined destroy of MediaUserStateCenter?(v123, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
              }

              v48 = v120;
              v61 = v119;
              v63 = v118;
              v82 = ClientExperienceSignals.glideEligibilityPerSharedId.modify();
              v84 = v83;
              v85 = *v83;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v122 = *v84;
              *v84 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80 & 1, v73, v72, isUniquelyReferenced_nonNull_native);

              v87 = *v84;
              *v84 = v122;

              v82(v123, 0);
              v53 = v117;
            }

            else
            {
            }
          }

LABEL_9:
          ++v62;
          result = __swift_destroy_boxed_opaque_existential_1(v126);
          if (v62 == v61)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_28:

      return (*(v114 + 8))(v113, v115);
    }

    v88 = *(v48 + 16);
    if (v88)
    {
      outlined init with copy of AppDataProviding(v48 + 32, v123);
      v89 = v124;
      v90 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      (*(v90 + 8))(v126, v89, v90);
      v91 = v127;
      if (v127)
      {
        v92 = v128;
        __swift_project_boxed_opaque_existential_1(v126, v127);
        (*(v92 + 88))(v91, v92);
        __swift_destroy_boxed_opaque_existential_1(v126);
        __swift_destroy_boxed_opaque_existential_1(v123);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v123);
        outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
      }
    }

    result = ClientExperienceSignals.isGlideEligible.setter();
    v93 = (v56 + *(v54 + 84));
    if (v93[1])
    {
      v94 = *v93;
      v95 = v93[1];
      if (v88)
      {
LABEL_34:
        if (!*(v48 + 16))
        {
LABEL_44:
          __break(1u);
          return result;
        }

        outlined init with copy of AppDataProviding(v48 + 32, v123);

        v96 = v124;
        v97 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        (*(v97 + 8))(v126, v96, v97);
        v88 = v127;
        if (v127)
        {
          v98 = v128;
          __swift_project_boxed_opaque_existential_1(v126, v127);
          LOBYTE(v88) = (*(v98 + 88))(v88, v98);
          __swift_destroy_boxed_opaque_existential_1(v126);
          __swift_destroy_boxed_opaque_existential_1(v123);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v123);
          outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
        }

        goto LABEL_40;
      }
    }

    else
    {
      v95 = 0x80000002234DAAF0;
      v94 = 0xD000000000000024;
      if (v88)
      {
        goto LABEL_34;
      }
    }

LABEL_40:
    v99 = ClientExperienceSignals.glideEligibilityPerSharedId.modify();
    v101 = v100;
    v102 = *v100;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v123[0] = *v101;
    *v101 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88 & 1, v94, v95, v103);

    v104 = *v101;
    *v101 = v123[0];

    v99(v126, 0);
    return (*(v114 + 8))(v113, v115);
  }

  return result;
}

uint64_t DataProviderManager.addPairedDevices(to:)(uint64_t a1)
{
  v2 = v1;
  v42[1] = a1;
  v44 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44, v5);
  v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for DispatchTime();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v43, v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v42 - v20;
  v22 = *(v1 + 80);
  v23 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v25 = *(v2 + 136);
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v7 = 1;
  v26 = v44;
  (*(v3 + 104))(v7, *MEMORY[0x277D85178], v44);
  MEMORY[0x223DDF450](v13, v7);
  (*(v3 + 8))(v7, v26);
  v27 = *(v8 + 8);
  v28 = v13;
  v29 = v43;
  v27(v28, v43);
  (*(*v22 + 240))(v45, v21, v46, v25, v24, v16);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v46, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v27(v16, v29);
  result = outlined destroy of MediaUserStateCenter?(v21, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v31 = v45[0];
  if (v45[0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136315138;
      v37 = type metadata accessor for Useragentpb_CompanionDevice();
      v38 = MEMORY[0x223DDF850](v31, v37);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v45);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2232BB000, v33, v34, "Adding paired device info: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DE0F80](v36, -1, -1);
      MEMORY[0x223DE0F80](v35, -1, -1);
    }

    v41 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
    Apple_Parsec_Search_PegasusQueryContext.companionDevice.setter();
    return v41(v45, 0);
  }

  return result;
}

void DataProviderManager.addGMAvailability(to:)(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v49 = type metadata accessor for Apple_Parsec_Search_DevicePolicyType();
  v48 = *(v49 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v49, v4);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51, v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for DispatchTime();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v50, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v46 - v23;
  v25 = *(v1 + 88);
  v26 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  v27 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = *(v2 + 136);
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  v29 = v51;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v51);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v29);
  v30 = *(v11 + 8);
  v31 = v50;
  v30(v16, v50);
  (*(*v25 + 240))(v54, v24, v55, v28, v27, v19);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v55, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v30(v19, v31);
  outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v32 = v54[0];
  if (LOBYTE(v54[0]) != 2)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.pommes);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = v32 & 1;
      _os_log_impl(&dword_2232BB000, v34, v35, "Adding GenerativeModelsAvailability device policy: %{BOOL}d.", v36, 8u);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    if (v32)
    {
      (*(v48 + 104))(v47, *MEMORY[0x277D39230], v49);
      v37 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
      v38 = Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify();
      v39 = Apple_Parsec_Search_AppleIntelligenceStatus.devicePolicies.modify();
      v41 = v40;
      v42 = *v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v41 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        *v41 = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v42);
        *v41 = v42;
      }

      v42[2] = v45 + 1;
      (*(v48 + 32))(v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45, v47, v49);
      v39(v52, 0);
      v38(v53, 0);
      v37(v54, 0);
    }
  }
}

uint64_t DataProviderManager.appendProfileSlices(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v85 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v70 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v16 = *(v15 - 8);
  v82 = v15;
  v83 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v26, a2, v21);
  v27 = *(a1 + 16);
  if (!v27)
  {
    return (*(v22 + 32))(a3, v26, v21);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.pommes);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v75 = v30;
  v31 = os_log_type_enabled(v29, v30);
  v32 = MEMORY[0x277D84F90];
  v84 = a1;
  v77 = v21;
  v78 = a3;
  v76 = v22;
  v79 = v26;
  if (v31)
  {
    v73 = v29;
    v74 = v14;
    v33 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v88[0] = v71;
    v72 = v33;
    *v33 = 136315138;
    v89 = v32;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v34 = v89;
    v35 = *(v83 + 16);
    v36 = a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v80 = *(v83 + 72);
    v81 = v35;
    v83 += 16;
    v37 = (v83 - 8);
    do
    {
      v38 = v82;
      v81(v20, v36, v82);
      v39 = Apple_Parsec_Siri_V2alpha_ProfileSlice.summarizedDescription.getter();
      v41 = v40;
      (*v37)(v20, v38);
      v89 = v34;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v34 = v89;
      }

      *(v34 + 16) = v43 + 1;
      v44 = v34 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v36 += v80;
      --v27;
    }

    while (v27);
    v89 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v88);

    v50 = v72;
    *(v72 + 1) = v49;
    v51 = v73;
    _os_log_impl(&dword_2232BB000, v73, v75, "DataProviderManager Adding profile slices to request: %s", v50, 0xCu);
    v52 = v71;
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x223DE0F80](v52, -1, -1);
    MEMORY[0x223DE0F80](v50, -1, -1);

    v14 = v74;
    v26 = v79;
  }

  else
  {
  }

  v53 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v54 = *(v53 + 16);
  if (v54)
  {
    v89 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
    v55 = v89;
    v56 = v86;
    v57 = *(v87 + 16);
    v82 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v83 = v57;
    v58 = v53 + v82;
    v59 = *(v87 + 72);
    v80 = v53;
    v81 = v59;
    v60 = (v87 + 8);
    v87 += 16;
    v61 = (v87 + 16);
    do
    {
      v62 = v85;
      v63 = v83;
      (v83)(v85, v58, v56);
      v63(v14, v62, v56);
      v64 = v14;
      v65 = v84;

      v66 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.modify();
      specialized Array.append<A>(contentsOf:)(v65);
      v56 = v86;
      v66(v88, 0);
      (*v60)(v62, v56);
      v89 = v55;
      v68 = *(v55 + 16);
      v67 = *(v55 + 24);
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1);
        v56 = v86;
        v55 = v89;
      }

      *(v55 + 16) = v68 + 1;
      v69 = v81;
      (*v61)(v55 + v82 + v68 * v81, v64, v56);
      v58 += v69;
      --v54;
      v14 = v64;
    }

    while (v54);

    v26 = v79;
  }

  else
  {
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
  return (*(v76 + 32))(v78, v26, v77);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.summarizedDescription.getter()
{
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v35, v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x223DDF6D0](0x616C202020200A7BLL, 0xED0000203A6C6562);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v5 + 8))(v9, v4);
  MEMORY[0x223DDF6D0](0x6C6176202020200ALL, 0xEE000A5B20736575);
  v10 = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v36;
    v14 = *(v0 + 16);
    v13 = v0 + 16;
    v15 = *(v13 + 64);
    v31 = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v32 = *(v13 + 56);
    v33 = v14;
    v17 = (v13 - 8);
    do
    {
      v19 = v34;
      v18 = v35;
      v20 = v13;
      v33(v34, v16, v35);
      v21 = Apple_Parsec_Siri_V2alpha_ProfileSliceValue.summarizedDescription.getter();
      v23 = v22;
      (*v17)(v19, v18);
      v36 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v25 + 1;
      v26 = v12 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v16 += v32;
      --v11;
      v13 = v20;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  MEMORY[0x223DDF6D0](v27, v29);

  MEMORY[0x223DDF6D0](0x7D0A5D090ALL, 0xE500000000000000);
  return v37;
}

uint64_t DataProviderManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = *(v0 + 112);

  v13 = *(v0 + 128);

  v14 = *(v0 + 136);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v0 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  return v0;
}

uint64_t DataProviderManager.__deallocating_deinit()
{
  DataProviderManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t DataProviderManager.waitForPrepare(timeout:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContinuousClock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() processInfo];
  v11 = NSProcessInfo.isRunningUnitTests.getter();

  if (v11)
  {
    v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8Dispatch0C13TimeoutResultOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (one-time initialization token for pommes != -1)
    {
LABEL_22:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = __swift_project_value_buffer(v12, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "Starting to wait for data providers to finish preparing", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = ContinuousClock.init()();
    MEMORY[0x28223BE20](v17, v18);
    *(&v45 - 4) = &v52;
    *(&v45 - 3) = v2;
    v44 = a1;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
    Clock.measure(_:)();
    v19 = *(v5 + 8);
    v5 += 8;
    v19(v9, v4);
    v9 = v51;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v4 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51 = v22;
      *v4 = 136315138;
      v23 = Duration.description.getter();
      v9 = v24;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

      *(v4 + 4) = v25;
      _os_log_impl(&dword_2232BB000, v20, v21, "It took %s for data providers to finish preparing", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    v26 = v52;
    a1 = v52 + 64;
    v27 = 1 << *(v52 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v52 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    v2 = 0;
    *&v32 = 136315394;
    v45 = v32;
    v46 = v26;
    v47 = v13;
    while (v29)
    {
      v48 = v31;
LABEL_18:
      v34 = __clz(__rbit64(v29)) | (v2 << 6);
      v35 = *(v26 + 48) + 16 * v34;
      v9 = *v35;
      v4 = *(v35 + 8);
      v49 = *(*(v26 + 56) + v34);

      v36 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v5))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = v45;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v4, &v51);

        *(v37 + 4) = v39;
        *(v37 + 12) = 2080;
        v50 = v49;
        v40 = String.init<A>(describing:)();
        v4 = v41;
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v51);

        *(v37 + 14) = v9;
        _os_log_impl(&dword_2232BB000, v36, v5, "Data provider %s wait status: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v38, -1, -1);
        v42 = v37;
        v26 = v46;
        MEMORY[0x223DE0F80](v42, -1, -1);
      }

      else
      {
      }

      v29 &= v29 - 1;
      v31 = static DispatchTimeoutResult.== infix(_:_:)() | v48;
    }

    while (1)
    {
      v33 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v33 >= v30)
      {
        break;
      }

      v29 = *(a1 + 8 * v33);
      ++v2;
      if (v29)
      {
        v48 = v31;
        v2 = v33;
        goto LABEL_18;
      }
    }

    return v31 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DataProviderManager.waitForPrepare(timeout:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[4];
  v7 = *(v6 + 96);
  v8 = *(v6 + 104);

  LOBYTE(v6) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6 & 1, v7, v8, isUniquelyReferenced_nonNull_native);

  v11 = *a1;
  *a1 = v43;

  v12 = a2[5];
  v13 = *(v12 + 96);
  v14 = *(v12 + 104);

  LOBYTE(v12) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v15 = *a1;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12 & 1, v13, v14, v16);

  v17 = *a1;
  *a1 = v44;

  v18 = a2[6];
  v19 = *(v18 + 96);
  v20 = *(v18 + 104);

  LOBYTE(v18) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v21 = *a1;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18 & 1, v19, v20, v22);

  v23 = *a1;
  *a1 = v45;

  v24 = a2[7];
  v25 = *(v24 + 96);
  v26 = *(v24 + 104);

  LOBYTE(v24) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v27 = *a1;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24 & 1, v25, v26, v28);

  v29 = *a1;
  *a1 = v46;

  v30 = a2[3];
  v31 = *(v30 + 96);
  v32 = *(v30 + 104);

  LOBYTE(v30) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v33 = *a1;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30 & 1, v31, v32, v34);

  v35 = *a1;
  *a1 = v47;

  v36 = a2[8];
  v37 = *(v36 + 96);
  v38 = *(v36 + 104);

  LOBYTE(v36) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3);
  v39 = *a1;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36 & 1, v37, v38, v40);

  v41 = *a1;
  *a1 = v48;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.summarizedDescription.getter()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DDE10);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v12 + 8))(v16, v11);
  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234DDE30);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v6 + 8))(v10, v5);
  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DDE50);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
  v17 = Google_Protobuf_Any.typeURL.getter();
  v19 = v18;
  (*(v21 + 8))(v4, v22);
  MEMORY[0x223DDF6D0](v17, v19);

  MEMORY[0x223DDF6D0](0x202020202020200ALL, 0xEA00000000007D20);
  return v23;
}

uint64_t specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v70 = a8;
  v68 = a7;
  v64 = a6;
  v59 = a5;
  v63 = a4;
  v61 = a3;
  v62 = a2;
  v60 = a1;
  v66 = a14;
  v69 = a13;
  v71 = a12;
  v65 = a11;
  v67 = a10;
  v72 = a15;
  v73 = a9;
  v58 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v58 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v58, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS.QoSClass();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.Attributes();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = type metadata accessor for DispatchQoS();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v76[3] = a18;
  v76[4] = a19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a16, a18);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v24 + 104))(v28, *MEMORY[0x277D851C8], v23);
  static OS_dispatch_queue.global(qos:)();
  (*(v24 + 8))(v28, v23);
  v36 = v59;
  (*(v57 + 104))(v22, *MEMORY[0x277D85260], v58);
  v37 = v60;
  v38 = v61;
  v39 = v63;
  v40 = v64;
  v41 = v62;
  v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a17 + 128) = 0u;
  *(a17 + 144) = 0u;
  *(a17 + 160) = 0u;
  *(a17 + 176) = 0;
  *(a17 + 16) = v42;
  *(a17 + 24) = v37;
  *(a17 + 32) = v41;
  *(a17 + 40) = v38;
  *(a17 + 48) = v39;
  *(a17 + 56) = v36;
  if (v40)
  {

    v43 = v40;
    v44 = v65;
  }

  else
  {
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    v45 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = v45;

    v44 = v65;
    v43 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v74, v46, v65);

    outlined destroy of MediaUserStateCenter?(v74, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v47 = *(a17 + 128);
  }

  v49 = v67;
  v48 = v68;
  *(a17 + 64) = v43;
  *(a17 + 72) = v48;
  v50 = v69;
  *(a17 + 80) = v70;
  *(a17 + 96) = v49;
  *(a17 + 104) = v44;
  v51 = v71;
  *(a17 + 112) = v50;
  *(a17 + 120) = v51;
  *(a17 + 128) = v66;

  v52 = v51;

  v53 = *(a17 + 136);
  *(a17 + 136) = v72;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  outlined init with copy of AppDataProviding(v76, v74);
  swift_beginAccess();
  outlined assign with take of PommesAppChecking?(v74, a17 + 144);
  swift_endAccess();
  *(a17 + 88) = v73;
  v54 = *(**(a17 + 40) + 160);

  v54(1);

  v55 = *(**(a17 + 48) + 160);

  v55(1);

  (*(**(a17 + 56) + 160))(1);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return a17;
}

unint64_t lazy protocol witness table accessor for type PegasusError and conformance PegasusError()
{
  result = lazy protocol witness table cache variable for type PegasusError and conformance PegasusError;
  if (!lazy protocol witness table cache variable for type PegasusError and conformance PegasusError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PegasusError and conformance PegasusError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PegasusError and conformance PegasusError;
  if (!lazy protocol witness table cache variable for type PegasusError and conformance PegasusError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PegasusError and conformance PegasusError);
  }

  return result;
}

uint64_t outlined assign with take of PommesAppChecking?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:)()
{
  return partial apply for closure #1 in AnyDataProvider.waitForPrepare(timeout:)();
}

{
  return partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:)();
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PommesCandidateId.description.getter()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v0, v1);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D56618])
  {
    (*(v2 + 96))(v6, v1);
    v8 = *v6;
    v9 = v6[1];
    v10 = 0x203A64496372;
    v11 = 0xE600000000000000;
LABEL_3:
    v21 = v10;
    v22 = v11;
    MEMORY[0x223DDF6D0](v8, v9);
LABEL_6:

    return v21;
  }

  if (v7 == *MEMORY[0x277D56620])
  {
    (*(v2 + 96))(v6, v1);
    v12 = *v6;
    v13 = v6[1];
    v15 = v6[2];
    v14 = v6[3];
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v21 = 0x203A6449707274;
    v22 = 0xE700000000000000;
    MEMORY[0x223DDF6D0](v12, v13);

    MEMORY[0x223DDF6D0](0x203A644975637420, 0xE800000000000000);
    MEMORY[0x223DDF6D0](v15, v14);
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D56610])
  {
    (*(v2 + 96))(v6, v1);
    v8 = *v6;
    v9 = v6[1];
    v10 = 0x203A6449666572;
    v11 = 0xE700000000000000;
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v18, v19, "Unexpected pommesCandidateId. Returning empty string for description.", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
  return 0;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    outlined destroy of MediaUserStateCenter?(a1, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v16 = type metadata accessor for PommesCandidateId();
    (*(*(v16 - 8) + 8))(a2, v16);
    return outlined destroy of MediaUserStateCenter?(v9, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  else
  {
    outlined init with take of NLXResultCandidate(a1, v14, type metadata accessor for PommesBridgeResultCandidateState);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = type metadata accessor for PommesCandidateId();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.__allocating_init(assistantId:sessionId:requestId:rootRequestId:name:messagePublisher:serviceHelper:pommesSearch:sessionState:instrumentationUtil:isMultiUser:isCandidateRequest:isOnlyUserInHome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v63 = a5;
  v64 = a8;
  v57 = a7;
  v58 = a1;
  v59 = a2;
  v60 = a6;
  v61 = a9;
  v62 = a4;
  v54 = a3;
  v55 = a10;
  v52 = a16;
  v53 = a17;
  v51 = a15;
  v48 = a13;
  v49 = a14;
  v56 = a11;
  v50 = type metadata accessor for UUID();
  v18 = *(v50 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v50, v20);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchTimeInterval();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v17 + 48);
  v29 = *(v17 + 52);
  v30 = swift_allocObject();
  *(v30 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
  v31 = v30 + direct field offset for PommesBridgeRequestProcessor.sessionState;
  *(v31 + 32) = 0;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v32 = (v30 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  *v32 = 0;
  v32[1] = 0;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = a12;
  v33 = *(*a12 + 160);

  v33(v65, v34);
  v35 = v66;
  v36 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v37 = (*(v36 + 8))(0, v35, v36);
  static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v37 & 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v65);
  (*(v23 + 32))(v30 + direct field offset for PommesBridgeRequestProcessor.timeout, v27, v22);
  specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
  *(v30 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v38;
  swift_beginAccess();
  v39 = v48;
  outlined assign with copy of ConversationSessionState?(v48, v31, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  swift_endAccess();
  *(v30 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v49;
  v40 = v52;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v51;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v40;
  *(v30 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v53;
  v41 = v54;
  v42 = v50;
  (*(v18 + 16))(v47, v54, v50);
  v43 = v55;
  outlined init with copy of AppDataProviding(v55, v65);
  v44 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

  outlined destroy of MediaUserStateCenter?(v39, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v43);
  (*(v18 + 8))(v41, v42);
  return v44;
}

uint64_t Siri_Nlu_External_UserParse.summarizedDescription.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v21 = v0;
  v22 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_Parser.AlgorithmType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_Parser();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(106);
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DE210);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.algorithm.getter();
  v18 = *(v13 + 8);
  v18(v17, v12);
  _print_unlocked<A, B>(_:_:)();
  (*(v7 + 8))(v11, v6);
  MEMORY[0x223DDF6D0](0xD000000000000017, 0x80000002234DE230);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  v18(v17, v12);
  v19 = v21;
  _print_unlocked<A, B>(_:_:)();
  (*(v22 + 8))(v5, v19);
  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DE250);
  Siri_Nlu_External_UserParse.probability.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DE270);
  Siri_Nlu_External_UserParse.comparableProbability.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](8194604, 0xE300000000000000);
  return v23;
}

uint64_t specialized Sequence<>.summarizedDescription.getter(uint64_t a1)
{
  v28 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v30;
  if (v7)
  {
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v26 = *(v9 + 56);
    v27 = v10;
    v25 = (v9 - 8);
    do
    {
      v12 = v28;
      v13 = v9;
      v27(v6, v11, v28);
      v14 = Siri_Nlu_External_UserParse.summarizedDescription.getter();
      v16 = v15;
      (*v25)(v6, v12);
      v30 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += v26;
      --v7;
      v9 = v13;
    }

    while (v7);
  }

  v30 = 91;
  v31 = 0xE100000000000000;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  MEMORY[0x223DDF6D0](v20, v22);

  MEMORY[0x223DDF6D0](93, 0xE100000000000000);
  return v30;
}

uint64_t PommesBridgeResultCandidateState.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesBridgeResultCandidateState(0) + 20);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesBridgeResultCandidateState.userId.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesBridgeResultCandidateState(0) + 20);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PommesBridgeResultCandidateState.voiceIdClassification.setter(uint64_t a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void *PommesBridgeResultCandidateState.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t PommesBridgeResultCandidateState.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PommesBridgeResultCandidateState.started.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.finished.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.selected.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.fallback.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.isGestureBased.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.pommesCandidateId.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v7, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v7[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v7;
      v11 = v7[2];
      v12 = v7[3];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v14 = v13[16];
      v15 = v13[20];
      v16 = v13[24];
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      a1[3] = v12;
      v17 = *MEMORY[0x277D56620];
      v18 = type metadata accessor for PommesCandidateId();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      outlined destroy of MediaUserStateCenter?(v7 + v16, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(v7 + v15, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
      v19 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v20 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
    }

    else
    {
      v26 = *v7;
      v27 = v7[1];

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
      v28 = [v26 refId];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *a1 = v30;
        a1[1] = v32;
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.pommes);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_2232BB000, v34, v35, "No refId associated with SARDRunPOMMESRequest. Using empty string for PommesCandidateId. This should never happened.", v36, 2u);
          MEMORY[0x223DE0F80](v36, -1, -1);
        }

        *a1 = 0;
        a1[1] = 0xE000000000000000;
      }

      v37 = *MEMORY[0x277D56610];
      v38 = type metadata accessor for PommesCandidateId();
      (*(*(v38 - 8) + 104))(a1, v37, v38);
      v19 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v20 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
    }

    return outlined destroy of MediaUserStateCenter?(v7 + v14, v19, v20);
  }

  else
  {
    v21 = *v7;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR) + 48);
    *a1 = v21;
    a1[1] = v9;
    v23 = *MEMORY[0x277D56618];
    v24 = type metadata accessor for PommesCandidateId();
    (*(*(v24 - 8) + 104))(a1, v23, v24);
    return outlined destroy of NLXResultCandidate(v7 + v22, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesBridgeResultCandidateState.userParses.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for NLXResultCandidate();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v20, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(v20 + 1);

      v23 = *(v20 + 3);

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(&v20[v24[16]], v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v10, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v25 = type metadata accessor for TCUMappedNLResponse();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v7, 1, v25) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v27 = 0;
      }

      else
      {
        v34 = TCUMappedNLResponse.nlResponse.getter();
        (*(v26 + 8))(v7, v25);
        v27 = NLParseResponse.userParses.getter();

        outlined destroy of MediaUserStateCenter?(v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      v35 = v24[20];
      outlined destroy of MediaUserStateCenter?(&v20[v24[24]], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      v31 = &_s16SiriMessageTypes0A9UserInputOSgMd;
      v32 = &_s16SiriMessageTypes0A9UserInputOSgMR;
      v33 = &v20[v35];
    }

    else
    {

      v27 = *(v20 + 1);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      v31 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v32 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v33 = &v20[*(v30 + 64)];
    }

    outlined destroy of MediaUserStateCenter?(v33, v31, v32);
  }

  else
  {
    v28 = *(v20 + 1);

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v20[*(v29 + 48)], v15, type metadata accessor for NLXResultCandidate);
    v27 = *v15;

    outlined destroy of NLXResultCandidate(v15, type metadata accessor for NLXResultCandidate);
  }

  return v27;
}

uint64_t PommesBridgeResultCandidateState.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NLXResultCandidate();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v22, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v22 + 1);

      v25 = *(v22 + 3);

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(&v22[v26[16]], v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v12, v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v27 = type metadata accessor for TCUMappedNLResponse();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v9, 1, v27) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v29 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
      }

      else
      {
        v35 = TCUMappedNLResponse.nlResponse.getter();
        (*(v28 + 8))(v9, v27);
        NLParseResponse.fallbackParse.getter();

        outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      v36 = v26[20];
      outlined destroy of MediaUserStateCenter?(&v22[v26[24]], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      return outlined destroy of MediaUserStateCenter?(&v22[v36], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }

    else
    {

      v33 = *(v22 + 1);

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      return outlined init with take of PommesSearchReason?(&v22[*(v34 + 64)], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v30 = *(v22 + 1);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v22[*(v31 + 48)], v17, type metadata accessor for NLXResultCandidate);
    outlined init with copy of MediaUserStateCenter?(&v17[*(v13 + 20)], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return outlined destroy of NLXResultCandidate(v17, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesBridgeResultCandidateState.responseVariantResult.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for NLXResultCandidate();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v20, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v20[1];

      v23 = v20[3];

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(v20 + v24[16], v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v10, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v25 = type metadata accessor for TCUMappedNLResponse();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v7, 1, v25) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v27 = 0;
        v10 = v7;
      }

      else
      {
        v36 = TCUMappedNLResponse.nlResponse.getter();
        (*(v26 + 8))(v7, v25);
        v27 = NLParseResponse.responseVariantResult.getter();
      }

      outlined destroy of MediaUserStateCenter?(v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v37 = v24[20];
      outlined destroy of MediaUserStateCenter?(v20 + v24[24], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      v38 = &_s16SiriMessageTypes0A9UserInputOSgMd;
      v39 = &_s16SiriMessageTypes0A9UserInputOSgMR;
      v40 = v20 + v37;
    }

    else
    {
      v33 = *v20;
      v32 = v20[1];

      v34 = [v33 responseVariantResult];
      if (v34)
      {
        v35 = v34;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        v27 = 0;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      v38 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v39 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v40 = v20 + *(v41 + 64);
    }

    outlined destroy of MediaUserStateCenter?(v40, v38, v39);
  }

  else
  {
    v28 = v20[1];

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(v20 + *(v29 + 48), v15, type metadata accessor for NLXResultCandidate);
    v30 = &v15[*(v11 + 24)];
    v27 = *v30;
    v31 = v30[1];

    outlined destroy of NLXResultCandidate(v15, type metadata accessor for NLXResultCandidate);
  }

  return v27;
}

uint64_t PommesBridgeResultCandidateState.tcuMappedResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v8, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v8 + 1);

    v10 = *(v8 + 3);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v12 = v11[20];
    v13 = v11[24];
    outlined init with take of PommesSearchReason?(&v8[v11[16]], a1, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(&v8[v13], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    return outlined destroy of MediaUserStateCenter?(&v8[v12], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  }

  else
  {
    outlined destroy of NLXResultCandidate(v8, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v15 = type metadata accessor for TCUMappedNLResponse();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }
}

uint64_t PommesBridgeResultCandidateState.hasServerFallbackReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v75 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v76 = &v69 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v69 - v24;
  v26 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v69 - v38;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v30, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = v11;
    v74 = v3;
    v40 = v2;
    v41 = *(v30 + 1);

    v42 = *(v30 + 3);

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v44 = v43[20];
    v45 = v43[24];
    outlined init with take of PommesSearchReason?(&v30[v43[16]], v39, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(&v30[v45], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(&v30[v44], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with copy of MediaUserStateCenter?(v39, v36, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v46 = type metadata accessor for TCUMappedNLResponse();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v36, 1, v46) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v36, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v48 = v40;
    }

    else
    {
      v49 = TCUMappedNLResponse.nlResponse.getter();
      (*(v47 + 8))(v36, v46);
      v48 = v40;
      if (v49)
      {
        v50 = v49;
        NLParseResponse.serverFallbackReason.getter();

        v51 = v74;
        v52 = *(v74 + 48);
        if (v52(v25, 1, v48) != 1)
        {
          outlined destroy of MediaUserStateCenter?(v25, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v58 = v76;
          v69 = v50;
          NLParseResponse.serverFallbackReason.getter();
          v59 = v75;
          (*(v51 + 104))(v75, *MEMORY[0x277D5D188], v48);
          (*(v51 + 56))(v59, 0, 1, v48);
          v60 = *(v7 + 48);
          v61 = v71;
          outlined init with copy of MediaUserStateCenter?(v58, v71, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v70 = v60;
          outlined init with copy of MediaUserStateCenter?(v59, v61 + v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          if (v52(v61, 1, v48) == 1)
          {

            outlined destroy of MediaUserStateCenter?(v59, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v58, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v39, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            if (v52(v61 + v70, 1, v48) == 1)
            {
              v53 = &_s16SiriMessageTypes20ServerFallbackReasonOSgMd;
              v54 = &_s16SiriMessageTypes20ServerFallbackReasonOSgMR;
              v55 = v61;
              goto LABEL_10;
            }
          }

          else
          {
            v62 = v69;
            v63 = v73;
            outlined init with copy of MediaUserStateCenter?(v61, v73, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            v64 = v70;
            if (v52(v61 + v70, 1, v48) != 1)
            {
              v65 = v74;
              v66 = v72;
              (*(v74 + 32))(v72, v61 + v64, v48);
              lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason, MEMORY[0x277D5D190]);
              v67 = dispatch thunk of static Equatable.== infix(_:_:)();

              v68 = *(v65 + 8);
              v68(v66, v48);
              outlined destroy of MediaUserStateCenter?(v75, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              outlined destroy of MediaUserStateCenter?(v76, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              outlined destroy of MediaUserStateCenter?(v39, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              v68(v63, v48);
              outlined destroy of MediaUserStateCenter?(v61, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              v56 = v67 ^ 1;
              return v56 & 1;
            }

            outlined destroy of MediaUserStateCenter?(v75, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v76, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v39, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            (*(v74 + 8))(v63, v48);
          }

          outlined destroy of MediaUserStateCenter?(v61, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
          v56 = 1;
          return v56 & 1;
        }

LABEL_9:
        outlined destroy of MediaUserStateCenter?(v25, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v53 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
        v54 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
        v55 = v39;
LABEL_10:
        outlined destroy of MediaUserStateCenter?(v55, v53, v54);
        goto LABEL_11;
      }
    }

    (*(v74 + 56))(v25, 1, 1, v48);
    goto LABEL_9;
  }

  outlined destroy of NLXResultCandidate(v30, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
LABEL_11:
  v56 = 0;
  return v56 & 1;
}

uint64_t PommesBridgeResultCandidateState.tcuId.getter()
{
  v1 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v0, v5, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v5[1];

    v7 = v5[2];
    v8 = v5[3];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v10 = v9[16];
    v11 = v9[20];
    outlined destroy of MediaUserStateCenter?(v5 + v9[24], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v5 + v11, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(v5 + v10, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    outlined destroy of NLXResultCandidate(v5, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    return 0;
  }

  return v7;
}

uint64_t PommesBridgeResultCandidateState.requestType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *v6;
    v7 = v6[1];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
    outlined destroy of MediaUserStateCenter?(v6 + *(v9 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v10 = [v8 requestType];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v12;
    }
  }

  else
  {
    outlined destroy of NLXResultCandidate(v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  }

  return 0;
}

uint64_t PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v36 - v11);
  v13 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NLXResultCandidate(v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v12);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    (*(v4 + 16))(v9, v12, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      v23 = PommesCandidateId.description.getter();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v9);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v37);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v19, v20, "Attempting to set RC-based user parses while not on the RC state path for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v21, -1, -1);

      return (v26)(v12, v3);
    }

    else
    {

      v35 = *(v4 + 8);
      v35(v9, v3);
      return (v35)(v12, v3);
    }
  }

  else
  {
    v29 = *v17;
    v30 = v17[1];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v32 = *(v17 + *(v31 + 64));
    outlined destroy of NLXResultCandidate(v17 + *(v31 + 48), type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v33 = *(v31 + 48);
    v34 = *(v31 + 64);
    *v1 = v29;
    v1[1] = v30;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v1 + v33, type metadata accessor for NLXResultCandidate);
    *(v1 + v34) = v32;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t PommesBridgeResultCandidateState.setRunPommesRequest(userParses:fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v35 - v13);
  v15 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21 = *v19;
    v20 = v19[1];

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
    outlined destroy of MediaUserStateCenter?(v19 + *(v22 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined destroy of NLXResultCandidate(v2, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v23 = *(v22 + 64);
    *v2 = v21;
    v2[1] = a1;
    outlined init with copy of MediaUserStateCenter?(a2, v2 + v23, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of NLXResultCandidate(v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v14);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    (*(v6 + 16))(v11, v14, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      v35 = PommesCandidateId.description.getter();
      v31 = v30;
      v32 = *(v6 + 8);
      v32(v11, v5);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2232BB000, v26, v27, "Attempting to set user parses while not on the runPommesRequest state path for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v28, -1, -1);

      return (v32)(v14, v5);
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v11, v5);
      return (v34)(v14, v5);
    }
  }
}

uint64_t PommesBridgeResultCandidateState.setParseResponse(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v49 - v11);
  v13 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v49 - v26;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v17;
    v28 = *(v17 + 2);
    v49 = *(v17 + 3);
    v50 = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v30 = a1;
    v31 = v29[16];
    v32 = v29[24];
    outlined init with take of PommesSearchReason?(&v17[v29[20]], v27, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with take of PommesSearchReason?(&v17[v32], v22, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(&v17[v31], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v33 = v29[16];
    v34 = v29[20];
    v35 = v29[24];
    *v1 = v51;
    v36 = v49;
    *(v1 + 16) = v50;
    *(v1 + 24) = v36;
    outlined init with copy of MediaUserStateCenter?(v30, v1 + v33, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined init with take of PommesSearchReason?(v27, v1 + v34, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with take of PommesSearchReason?(v22, v1 + v35, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of NLXResultCandidate(v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v12);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.pommes);
    (*(v4 + 16))(v9, v12, v3);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v41 = 136315138;
      v43 = PommesCandidateId.description.getter();
      v45 = v44;
      v46 = *(v4 + 8);
      v46(v9);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v52);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2232BB000, v39, v40, "Attempting to set TCU-mapped user parses while not on the TRP state path for %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DE0F80](v42, -1, -1);
      MEMORY[0x223DE0F80](v41, -1, -1);

      return (v46)(v12, v3);
    }

    else
    {

      v48 = *(v4 + 8);
      v48(v9, v3);
      return (v48)(v12, v3);
    }
  }
}

Swift::Void __swiftcall PommesBridgeResultCandidateState.setHasNLResultCandidate(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v39 - v11);
  v13 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for NLXResultCandidate();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NLXResultCandidate(v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v12);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    (*(v4 + 16))(v9, v12, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      v28 = PommesCandidateId.description.getter();
      v30 = v29;
      v31 = *(v4 + 8);
      v31(v9);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v40);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2232BB000, v24, v25, "Attempting to set hasResultCandidate while not on the RC state path for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);

      (v31)(v12, v3);
    }

    else
    {

      v38 = *(v4 + 8);
      v38(v9, v3);
      v38(v12, v3);
    }
  }

  else
  {
    v33 = *v17;
    v34 = v17[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(v17 + *(v35 + 48), v22, type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v36 = *(v35 + 48);
    v37 = *(v35 + 64);
    *v1 = v33;
    v1[1] = v34;
    outlined init with take of NLXResultCandidate(v22, v1 + v36, type metadata accessor for NLXResultCandidate);
    *(v1 + v37) = a1;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t PommesBridgeResultCandidateState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PommesCandidateId();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for NLXResultCandidate();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v0, v30, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *(v30 + 1);

      v33 = *(v30 + 3);

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v35 = v34[16];
      v67 = v34[20];
      v36 = v34[24];
      outlined init with take of PommesSearchReason?(&v30[v35], v20, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      strcpy(v70, "response: ");
      BYTE3(v70[1]) = 0;
      HIDWORD(v70[1]) = -369098752;
      outlined init with copy of MediaUserStateCenter?(v20, v17, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v37 = String.init<A>(describing:)();
      MEMORY[0x223DDF6D0](v37);

      v38 = v70[0];
      v39 = v70[1];
      outlined destroy of MediaUserStateCenter?(v20, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined destroy of MediaUserStateCenter?(&v30[v36], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(&v30[v67], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }

    else
    {

      v43 = *(v30 + 1);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      outlined init with take of PommesSearchReason?(&v30[*(v44 + 64)], v11, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      strcpy(v70, "userParses: (");
      HIWORD(v70[1]) = -4864;
      v45 = type metadata accessor for Siri_Nlu_External_UserParse();
      v46 = MEMORY[0x223DDF870](v43, v45);
      v48 = v47;

      MEMORY[0x223DDF6D0](v46, v48);

      MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DDE70);
      v49 = Optional.debugDescription.getter();
      MEMORY[0x223DDF6D0](v49);

      MEMORY[0x223DDF6D0](41, 0xE100000000000000);
      v38 = v70[0];
      v39 = v70[1];
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v40 = *(v30 + 1);

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v30[*(v41 + 48)], v25, type metadata accessor for NLXResultCandidate);
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v70, "userParses: (");
    HIWORD(v70[1]) = -4864;
    v42 = NLXResultCandidate.description.getter();
    MEMORY[0x223DDF6D0](v42);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v38 = v70[0];
    v39 = v70[1];
    outlined destroy of NLXResultCandidate(v25, type metadata accessor for NLXResultCandidate);
  }

  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DDE90);
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v6);
  v50 = PommesCandidateId.description.getter();
  v52 = v51;
  (*(v68 + 8))(v6, v69);
  MEMORY[0x223DDF6D0](v50, v52);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234DDEB0);
  v53 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v54 = *(v0 + v53[8]);
  if (v54)
  {
    v55 = [v54 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 1701736302;
    v58 = 0xE400000000000000;
  }

  MEMORY[0x223DDF6D0](v56, v58);

  MEMORY[0x223DDF6D0](0x617265747475202CLL, 0xEE0022203A65636ELL);
  MEMORY[0x223DDF6D0](*(v1 + v53[9]), *(v1 + v53[9] + 8));
  MEMORY[0x223DDF6D0](0x73696E6966202C22, 0xED0000203A646568);
  if (*(v1 + v53[11]))
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (*(v1 + v53[11]))
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v59, v60);

  MEMORY[0x223DDF6D0](0x7463656C6573202CLL, 0xEC000000203A6465);
  if (*(v1 + v53[12]))
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (*(v1 + v53[12]))
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v61, v62);

  MEMORY[0x223DDF6D0](8236, 0xE200000000000000);
  MEMORY[0x223DDF6D0](v38, v39);

  MEMORY[0x223DDF6D0](0x644972657375202CLL, 0xEA0000000000203ALL);
  v63 = v53[5];
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298]);
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v64);

  return v70[0];
}

uint64_t PommesBridgeResultCandidateState.init(resultCandidateId:userId:speechPackage:utterance:started:finished:selected:fallback:hasNLResultCandidate:userParses:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v19 = v18[7];
  v20 = type metadata accessor for SelectedUserAttributes();
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  a9[v18[14]] = 0;
  v21 = v18[15];
  v22 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v24 = &a9[*(v23 + 48)];
  v25 = *(v23 + 64);
  *a9 = a1;
  *(a9 + 1) = a2;
  v26 = type metadata accessor for NLXResultCandidate();
  v27 = *(v26 + 20);
  v28 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v28 - 8) + 56))(&v24[v27], 1, 1, v28);
  v29 = &v24[*(v26 + 24)];
  *v24 = a13;
  outlined assign with take of MediaUserStateCenter?(a14, &v24[v27], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v29 = 0;
  *(v29 + 1) = 0;
  a9[v25] = a12;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v30 = v18[5];
  v31 = type metadata accessor for UserID();
  result = (*(*(v31 - 8) + 32))(&a9[v30], a3, v31);
  *&a9[v18[8]] = a4;
  v33 = &a9[v18[9]];
  *v33 = a5;
  *(v33 + 1) = a6;
  a9[v18[10]] = a7;
  a9[v18[11]] = a8;
  a9[v18[12]] = a10;
  a9[v18[13]] = a11;
  *&a9[v18[6]] = 0;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for GestureInput();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserID();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v51 = v26;
  v52 = v25;

  v27 = v24;
  UserIdAwareResultCandidateMessageBase.userId.getter();

  v28 = GestureBasedResultCandidateMessage.gesture.getter();
  v29 = MEMORY[0x223DDDDD0](v28);
  v31 = v30;
  (*(v9 + 8))(v13, v8);
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v31)
  {
    v33 = v31;
  }

  v53 = v33;
  v54 = v32;
  v34 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v35 = *(*(v34 - 8) + 56);
  v35(v7, 1, 1, v34);

  v36 = v19[9];
  v37 = type metadata accessor for SelectedUserAttributes();
  (*(*(v37 - 8) + 56))(&v23[v36], 1, 1, v37);
  v23[v19[16]] = 0;
  v38 = v19[17];
  v39 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v39 - 8) + 56))(&v23[v38], 1, 1, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v41 = &v23[*(v40 + 48)];
  v42 = *(v40 + 64);
  v43 = v51;
  *v23 = v52;
  *(v23 + 1) = v43;
  v44 = type metadata accessor for NLXResultCandidate();
  v45 = *(v44 + 20);
  v35(&v41[v45], 1, 1, v34);
  v46 = &v41[*(v44 + 24)];
  *v41 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v7, &v41[v45], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v46 = 0;
  *(v46 + 1) = 0;
  v23[v42] = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  (*(v56 + 32))(&v23[v19[7]], v55, v57);
  *&v23[v19[10]] = 0;
  v47 = &v23[v19[11]];
  v48 = v53;
  *v47 = v54;
  v47[1] = v48;
  v23[v19[12]] = 0;
  v23[v19[13]] = 0;
  v23[v19[14]] = 0;
  v23[v19[15]] = 0;
  *&v23[v19[8]] = 0;
  v49 = v58;
  result = outlined init with take of NLXResultCandidate(v23, v58, type metadata accessor for PommesBridgeResultCandidateState);
  *(v49 + v19[16]) = 1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(trpCandidateId:tcuId:userId:speechPackage:utterance:started:finished:selected:fallback:parseResponse:originalUserInput:rewriteReason:voiceIdClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v23 = v22[7];
  v24 = type metadata accessor for SelectedUserAttributes();
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  a9[v22[14]] = 0;
  v25 = v22[15];
  v26 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v28 = v27[16];
  v29 = v27[20];
  v30 = v27[24];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  outlined init with take of PommesSearchReason?(a14, &a9[v28], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(a15, &a9[v29], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(a16, &a9[v30], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v31 = v22[5];
  v32 = type metadata accessor for UserID();
  result = (*(*(v32 - 8) + 32))(&a9[v31], a5, v32);
  *&a9[v22[8]] = a6;
  v34 = &a9[v22[9]];
  *v34 = a7;
  *(v34 + 1) = a8;
  a9[v22[10]] = a10;
  a9[v22[11]] = a11;
  a9[v22[12]] = a12;
  a9[v22[13]] = a13;
  *&a9[v22[6]] = a17;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v61 = a6;
  v58 = a3;
  v59 = a4;
  v66 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v65 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v56 - v16;
  v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v64 = *(v18 - 1);
  v19 = *(v64 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v21 + 28);
  v25 = type metadata accessor for SelectedUserAttributes();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v62 = v24;
  v56[1] = v26 + 56;
  v57 = v27;
  v27(v23 + v24, 1, 1, v25);
  *(v23 + v18[14]) = 0;
  v28 = v18[15];
  v29 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
  v30 = closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(a1);
  closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(a1, v17);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
  *v23 = a1;
  v23[1] = v30;
  outlined init with copy of MediaUserStateCenter?(v17, v23 + v31, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v32 = v18[5];
  v33 = type metadata accessor for UserID();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v63 = a2;
  v35(v23 + v32, a2, v33);
  v36 = a1;
  v37 = [v36 recognition];
  if (v37)
  {
    v38 = v37;
    v39 = SASRecognition.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)();
  }

  else
  {
    v39 = 0;
  }

  *(v23 + v18[8]) = v39;
  v40 = closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v36);
  v41 = (v23 + v18[9]);
  *v41 = v40;
  v41[1] = v42;
  *(v23 + v18[10]) = v58 & 1;
  *(v23 + v18[11]) = v59 & 1;
  *(v23 + v18[12]) = v60 & 1;
  *(v23 + v18[13]) = v61 & 1;
  v43 = [v36 userIdentityClassification];
  if (v43)
  {
    v44 = v43;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v45 = *MEMORY[0x277D48D78];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v46 = String.axLowercasedFirstLetter.getter();
  v48 = v47;

  v49 = MEMORY[0x223DDF550](v46, v48);

  v50 = AFUserIdentityClassficationGetFromName();

  *(v23 + v18[6]) = v50;
  v51 = [v36 selectedUserAttributes];
  if (v51)
  {
    v52 = v51;
    v53 = v65;
    SASelectedUserAttributes.selectedUserAttributes.getter(v65);

    (*(v34 + 8))(v63, v33);
    outlined destroy of MediaUserStateCenter?(v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {

    (*(v34 + 8))(v63, v33);
    outlined destroy of MediaUserStateCenter?(v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v53 = v65;
    v57(v65, 1, 1, v25);
  }

  outlined assign with take of MediaUserStateCenter?(v53, v23 + v62, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v54 = v66;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v23, v66, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v64 + 56))(v54, 0, 1, v18);
  return outlined destroy of NLXResultCandidate(v23, type metadata accessor for PommesBridgeResultCandidateState);
}

void *closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(void *a1)
{
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 nlUserParses];
  if (!v15)
  {
LABEL_11:
    if (one-time initialization token for pommes == -1)
    {
LABEL_12:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.pommes);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2232BB000, v26, v27, "nlUserParses from SARDRunPOMMESRequest are nil", v28, 2u);
        MEMORY[0x223DE0F80](v28, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_28:
    swift_once();
    goto LABEL_12;
  }

  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v20)
  {
    if (v17 == v17 >> 32)
    {
LABEL_10:
      outlined consume of Data._Representation(v17, v19);
      goto LABEL_11;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  v21 = type metadata accessor for JSONDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A]();
  v39 = v24;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v30 = v50;
  v40 = v17;
  v41 = v19;
  v47 = *(v50 + 16);
  if (v47)
  {
    v31 = 0;
    v45 = (v42 + 56);
    v43 = (v42 + 32);
    v32 = (v50 + 40);
    v29 = MEMORY[0x277D84F90];
    v46 = v50;
    while (v31 < *(v30 + 16))
    {
      v49 = v29;
      v34 = *(v32 - 1);
      v33 = *v32;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      outlined copy of Data._Representation(v34, v33);
      outlined copy of Data._Representation(v34, v33);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
      Message.init(serializedData:extensions:partial:options:)();
      outlined consume of Data._Representation(v34, v33);
      (*v45)(v10, 0, 1, v11);
      v35 = *v43;
      (*v43)(v44, v10, v11);
      v29 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
      }

      v30 = v46;
      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v29);
      }

      v29[2] = v37 + 1;
      v35(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, v44, v11);
      ++v31;
      v32 += 2;
      if (v47 == v31)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_25:

  outlined consume of Data._Representation(v40, v41);
  return v29;
}

uint64_t closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = [a1 nlFallbackParse];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!v12)
  {
    if ((v11 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_DelegatedUserDialogAct and conformance Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x277D5DD80]);
    Message.init(serializedData:extensions:partial:options:)();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  if (v9 != v9 >> 32)
  {
    goto LABEL_8;
  }

LABEL_10:
  outlined consume of Data._Representation(v9, v11);
LABEL_11:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2232BB000, v15, v16, "nlFallbackParse from SARDRunPOMMESRequest is nil", v17, 2u);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  v18 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

uint64_t closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(void *a1)
{
  v1 = [a1 utterance];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = 0x3E6C696E3CLL;
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v6, "No utterance provided by SARDRunPOMMESRequest. Using <nil>.", v7, 2u);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }
  }

  return v3;
}

uint64_t PommesStateHolder.state(for:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t closure #1 in PommesStateHolder.state(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16))
  {

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
      v12 = *(v11 - 8);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v10 + *(v12 + 72) * v9, a3, type metadata accessor for PommesBridgeResultCandidateState);

      return (*(v12 + 56))(a3, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t PommesStateHolder.update(pommesCandidateId:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PommesCandidateId();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 16);
  (*(v12 + 16))(v15, a1, v11);
  outlined init with copy of MediaUserStateCenter?(a2, v10, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v12 + 32))(v18 + v16, v15, v11);
  outlined init with take of PommesSearchReason?(v10, v18 + v17, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in PommesStateHolder.update(pommesCandidateId:with:);
  *(v19 + 24) = v18;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v23, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PommesStateHolder.update(pommesCandidateId:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PommesCandidateId();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a2);
  outlined init with copy of MediaUserStateCenter?(a3, v9, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v14);
  return swift_endAccess();
}

uint64_t key path setter for PommesStateHolder.subscript(_:) : PommesStateHolder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PommesCandidateId();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a3);
  outlined init with copy of MediaUserStateCenter?(a1, v10, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  return (*(**a2 + 152))(v10, v15);
}

uint64_t PommesStateHolder.subscript.setter(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 136))(a2, a1);
  v5 = type metadata accessor for PommesCandidateId();
  (*(*(v5 - 8) + 8))(a2, v5);
  return outlined destroy of MediaUserStateCenter?(a1, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
}

void (*PommesStateHolder.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8) + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[2] = v9;
  v10 = type metadata accessor for PommesCandidateId();
  v7[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[4] = v11;
  v13 = *(v11 + 64);
  if (v5)
  {
    v7[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v7[6] = v14;
  (*(v12 + 16))();
  (*(*v2 + 128))(a2);
  return PommesStateHolder.subscript.modify;
}

void PommesStateHolder.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?((*a1)[2], v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    (*(v6 + 32))(v3, v4, v5);
    (*(*v9 + 136))(v3, v7);
    (*(v6 + 8))(v3, v5);
    outlined destroy of MediaUserStateCenter?(v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  else
  {
    (*(*v9 + 136))((*a1)[6], v8);
    (*(v6 + 8))(v4, v5);
  }

  outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  free(v4);
  free(v3);
  free(v8);
  free(v7);

  free(v2);
}

uint64_t PommesStateHolder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PommesStateHolder.__allocating_init()()
{
  v0 = swift_allocObject();
  PommesStateHolder.init()();
  return v0;
}

uint64_t PommesBridgeRequestProcessor.isRequestFinished.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.isRequestFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesBridgeRequestProcessor.pommesStateHolder.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);
  *(v1 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = a1;
}

uint64_t (*PommesBridgeRequestProcessor.pommesStateHolder.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesBridgeRequestProcessor.pommesStateHolder.getter();
  return PommesBridgeRequestProcessor.pommesStateHolder.modify;
}

uint64_t PommesBridgeRequestProcessor.pommesStateHolder.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);
  *(v1 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = v2;
}

uint64_t PommesBridgeRequestProcessor.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.sessionState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
}

uint64_t PommesBridgeRequestProcessor.sessionState.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.sessionState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return swift_endAccess();
}

uint64_t PommesBridgeRequestProcessor.isCandidateRequest.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesBridgeRequestProcessor.timeout : PommesBridgeRequestProcessor(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*(**a2 + class metadata base offset for PommesBridgeRequestProcessor + 248))(v8);
}

uint64_t PommesBridgeRequestProcessor.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.timeout;
  swift_beginAccess();
  v4 = type metadata accessor for DispatchTimeInterval();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PommesBridgeRequestProcessor.timeout.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.timeout;
  swift_beginAccess();
  v4 = type metadata accessor for DispatchTimeInterval();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PommesBridgeRequestProcessor.init(assistantId:sessionId:requestId:rootRequestId:name:messagePublisher:serviceHelper:pommesSearch:sessionState:instrumentationUtil:isMultiUser:isCandidateRequest:isOnlyUserInHome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v60 = a5;
  v61 = a8;
  v54 = a7;
  v55 = a1;
  v56 = a2;
  v57 = a6;
  v58 = a9;
  v59 = a4;
  v51 = a3;
  v52 = a10;
  v49 = a16;
  v50 = a17;
  v48 = a15;
  v45 = a13;
  v46 = a14;
  v53 = a11;
  v47 = type metadata accessor for UUID();
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v47, v20);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchTimeInterval();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
  v28 = v17 + direct field offset for PommesBridgeRequestProcessor.sessionState;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  v29 = (v17 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  *v29 = 0;
  v29[1] = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = a12;
  type metadata accessor for PommesBridgeRequestProcessor(0);
  v30 = *(*a12 + 160);

  v30(v62, v31);
  v32 = v63;
  v33 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v34 = (*(v33 + 8))(0, v32, v33);
  static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v34 & 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v62);
  (*(v23 + 32))(v17 + direct field offset for PommesBridgeRequestProcessor.timeout, v27, v22);
  specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v35;
  swift_beginAccess();
  v36 = v45;
  outlined assign with copy of ConversationSessionState?(v45, v28, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  swift_endAccess();
  *(v17 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v46;
  v37 = v49;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v48;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v37;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v50;
  v38 = v51;
  v39 = v47;
  (*(v18 + 16))(v44, v51, v47);
  v40 = v52;
  outlined init with copy of AppDataProviding(v52, v62);
  v41 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

  outlined destroy of MediaUserStateCenter?(v36, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v40);
  (*(v18 + 8))(v38, v39);
  return v41;
}

void PommesBridgeRequestProcessor.handleStartSpeechRequestMessage(_:)(uint64_t a1)
{
  if (StartSpeechRequestMessage.location.getter())
  {
    v3 = dispatch thunk of Location.toCLLocation()();
  }

  else
  {
    v3 = 0;
  }

  (*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 328))(a1, v3);
}

void PommesBridgeRequestProcessor.handleRequestContextMessage(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v47[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(&v1->isa + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v60 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v60, v15, "Got RequestContextMessage when we already have RequestContextData in scope. This may be due to a temporary transition period where RequestContext is being sent twice for compatibility. Ignoring this message.", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = v60;
  }

  else
  {
    v18 = a1;
    v60 = v1;
    v19 = MessageBase.assistantId.getter();
    v58 = v20;
    v59 = v19;
    v21 = v18;
    SessionMessageBase.sessionId.getter();

    v22 = v21;
    v23 = RequestMessageBase.requestId.getter();
    v56 = v24;
    v57 = v23;

    v25 = RequestContextMessage.audioSource.getter();
    v53 = v26;
    v54 = v25;
    v27 = RequestContextMessage.audioDestination.getter();
    v51 = v28;
    v52 = v27;
    v29 = RequestContextMessage.responseMode.getter();
    v49 = v30;
    v50 = v29;
    LOBYTE(v18) = RequestContextMessage.isEyesFree.getter();
    v31 = RequestContextMessage.isVoiceTriggerEnabled.getter();
    v32 = RequestContextMessage.isTextToSpeechEnabled.getter();
    v48 = RequestContextMessage.isTriggerlessFollowup.getter();
    v33 = RequestContextMessage.bargeInModes.getter();
    RequestContextMessage.approximatePreviousTTSInterval.getter();
    v55 = RequestContextMessage.deviceRestrictions.getter();
    v34 = type metadata accessor for PommesRequestContext();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    v38 = v58;
    *(v37 + 16) = v59;
    *(v37 + 24) = v38;
    (*(v9 + 32))(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v13, v8);
    v39 = (v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v40 = v56;
    *v39 = v57;
    v39[1] = v40;
    v41 = (v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    v42 = v53;
    *v41 = v54;
    v41[1] = v42;
    v43 = (v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    v44 = v51;
    *v43 = v52;
    v43[1] = v44;
    v45 = (v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    v46 = v49;
    *v45 = v50;
    v45[1] = v46;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v18 & 1;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v31 & 1;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v32 & 1;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v48 & 1;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v33;
    outlined init with take of PommesSearchReason?(v7, v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v55;
    *(v37 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;

    PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(v37);
  }
}

void PommesBridgeRequestProcessor.handleRunPommesRequestMessage(_:)()
{
  v1 = RunPommesRequestMessage.command.getter();
  (*(*v0 + class metadata base offset for PommesBridgeRequestProcessor + 360))();
}

uint64_t PommesBridgeRequestProcessor.handleRunPommesRequest(command:)(void *a1)
{
  v139 = type metadata accessor for PommesCandidateId();
  v142 = *(v139 - 8);
  v3 = *(v142 + 64);
  v5 = MEMORY[0x28223BE20](v139, v4);
  v135 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v140 = (&v132 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v146 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v149 = (&v132 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v133 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v144 = &v132 - v23;
  v24 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v145 = *(v24 - 1);
  v25 = *(v145 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v134 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = (&v132 - v31);
  MEMORY[0x28223BE20](v30, v33);
  v141 = &v132 - v34;
  v35 = type metadata accessor for UserID();
  v150 = *(v35 - 8);
  v151 = v35;
  v36 = v150[8];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v132 - v42;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v138 = v1;
  v44 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v44, static Logger.pommes);
  v46 = a1;
  v147 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&dword_2232BB000, v47, v48, "PommesBridgeRequestProcessor received SARDRunPOMMESRequest: %@", v49, 0xCu);
    outlined destroy of MediaUserStateCenter?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v50, -1, -1);
    MEMORY[0x223DE0F80](v49, -1, -1);
  }

  v52 = [v46 userId];
  if (v52)
  {
    v53 = v52;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UserID.init(sharedUserId:)();
  }

  else
  {
    static UserID.defaultUserId.getter();
  }

  v54 = v150[2];
  v148 = v43;
  v55 = v43;
  v56 = v151;
  v54(v40, v55, v151);
  v57 = v24[7];
  v58 = type metadata accessor for SelectedUserAttributes();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v143 = v57;
  v136 = v59 + 56;
  v137 = v60;
  v60(v32 + v57, 1, 1, v58);
  *(v32 + v24[14]) = 0;
  v61 = v24[15];
  v62 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v62 - 8) + 56))(v32 + v61, 1, 1, v62);
  v63 = closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v46);
  v64 = v149;
  closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v46, v149);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
  *v32 = v46;
  v32[1] = v63;
  outlined init with copy of MediaUserStateCenter?(v64, v32 + v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v54(v32 + v24[5], v40, v56);
  v66 = v46;
  v67 = [v66 recognition];
  if (v67)
  {
    v68 = v67;
    v69 = SASRecognition.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)();
  }

  else
  {
    v69 = 0;
  }

  *(v32 + v24[8]) = v69;
  v70 = closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v66);
  v71 = (v32 + v24[9]);
  *v71 = v70;
  v71[1] = v72;
  *(v32 + v24[10]) = 0;
  *(v32 + v24[11]) = 0;
  *(v32 + v24[12]) = 0;
  *(v32 + v24[13]) = 0;
  v73 = [v66 userIdentityClassification];
  if (v73)
  {
    v74 = v73;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v75 = *MEMORY[0x277D48D78];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v76 = String.axLowercasedFirstLetter.getter();
  v78 = v77;

  v79 = MEMORY[0x223DDF550](v76, v78);

  v80 = AFUserIdentityClassficationGetFromName();

  *(v32 + v24[6]) = v80;
  v81 = [v66 selectedUserAttributes];
  if (v81)
  {
    v82 = v81;
    v83 = v146;
    SASelectedUserAttributes.selectedUserAttributes.getter(v146);

    outlined destroy of MediaUserStateCenter?(v149, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v84 = v150[1];
    v84(v40, v151);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v149, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v85 = v150[1];
    v85(v40, v151);
    v83 = v146;
    v86 = v58;
    v84 = v85;
    v137(v146, 1, 1, v86);
  }

  outlined assign with take of MediaUserStateCenter?(v83, v32 + v143, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v87 = v144;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v32, v144, type metadata accessor for PommesBridgeResultCandidateState);
  v88 = v145;
  v89 = *(v145 + 56);
  v89(v87, 0, 1, v24);
  outlined destroy of NLXResultCandidate(v32, type metadata accessor for PommesBridgeResultCandidateState);
  if ((*(v88 + 48))(v87, 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v87, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2232BB000, v90, v91, "Not handling SARDRunPOMMESRequest because unable to create PommesBridgeResultCandidateState", v92, 2u);
      MEMORY[0x223DE0F80](v92, -1, -1);
    }

    v93 = v148;
    return (v84)(v93, v151);
  }

  v149 = v84;
  v94 = v141;
  outlined init with take of NLXResultCandidate(v87, v141, type metadata accessor for PommesBridgeResultCandidateState);
  v95 = [v66 refId];
  if (v95)
  {
    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = v139;
    v101 = v140;
    *v140 = v97;
    v101[1] = v99;
    (*(v142 + 104))(v101, *MEMORY[0x277D56610], v100);
    v102 = v138;
    v103 = *(v138 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
    v104 = RequestProcessorBase.requestId.getter();
    v106 = v105;
    v107 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v103 + 128))(v101, v104, v106, v107, v108);

    v110 = *v102;
    v111 = v141;
    v112 = (*(v110 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v109);
    v113 = v135;
    v114 = v101;
    v115 = v139;
    (*(v142 + 16))(v135, v114, v139);
    v116 = v133;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v111, v133, type metadata accessor for PommesBridgeResultCandidateState);
    v89(v116, 0, 1, v24);
    (*(*v112 + 152))(v116, v113);

    v117 = v134;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v111, v134, type metadata accessor for PommesBridgeResultCandidateState);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v152 = v121;
      *v120 = 136315138;
      v122 = PommesBridgeResultCandidateState.description.getter();
      v124 = v123;
      outlined destroy of NLXResultCandidate(v117, type metadata accessor for PommesBridgeResultCandidateState);
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v152);

      *(v120 + 4) = v125;
      _os_log_impl(&dword_2232BB000, v118, v119, "Created %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x223DE0F80](v121, -1, -1);
      MEMORY[0x223DE0F80](v120, -1, -1);
    }

    else
    {

      outlined destroy of NLXResultCandidate(v117, type metadata accessor for PommesBridgeResultCandidateState);
    }

    v130 = v148;
    v84 = v149;
    v131 = v138;
    if ((*(*v138 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v111))
    {
      (*(*v131 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v140, v111 + v24[5]);
    }

    (*(v142 + 8))(v140, v115);
    outlined destroy of NLXResultCandidate(v111, type metadata accessor for PommesBridgeResultCandidateState);
    v93 = v130;
    return (v84)(v93, v151);
  }

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_2232BB000, v126, v127, "Not handling SARDRunPOMMESRequest because no refId provided", v128, 2u);
    MEMORY[0x223DE0F80](v128, -1, -1);
  }

  outlined destroy of NLXResultCandidate(v94, type metadata accessor for PommesBridgeResultCandidateState);
  return (v149)(v148, v151);
}

uint64_t PommesBridgeRequestProcessor.handleASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v103 = &v95 - v7;
  v8 = type metadata accessor for PommesCandidateId();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v107 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v13);
  v106 = (&v95 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v101 = &v95 - v18;
  v19 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v102 = *(v19 - 1);
  v20 = *(v102 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v104 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v95 - v25);
  v27 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v33, static Logger.insightRequestSummaryLogger);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = a1;

  v35 = a1;
  InsightRequestSummaryLogger.emitDebug(_:)();

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.pommes);
  v38 = v35;
  v100 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v99 = v32;
    v43 = v2;
    v44 = v28;
    v45 = v27;
    v46 = v42;
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v38;
    v47 = v38;
    _os_log_impl(&dword_2232BB000, v39, v40, "PommesBridge handling message: %@", v41, 0xCu);
    outlined destroy of MediaUserStateCenter?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v48 = v46;
    v27 = v45;
    v28 = v44;
    v2 = v43;
    v32 = v99;
    MEMORY[0x223DE0F80](v48, -1, -1);
    MEMORY[0x223DE0F80](v41, -1, -1);
  }

  v49 = AsrResultCandidateMessage.speechPackage.getter();
  v50 = [v49 recognition];

  v105 = v2;
  if (v50)
  {
    v51 = AFSpeechRecognition.toAsrHypotheses()();

    if (v51[2])
    {
      (*(v28 + 16))(v32, v51 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v27);

      v98 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      v99 = v52;
      (*(v28 + 8))(v32, v27);
      goto LABEL_12;
    }
  }

  v98 = 0x3E6C696E3CLL;
  v99 = 0xE500000000000000;
LABEL_12:
  v53 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v55 = v54;
  v56 = v26 + v19[5];
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v96 = AsrResultCandidateMessage.speechPackage.getter();
  v57 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v58 = *(*(v57 - 8) + 56);
  v97 = v38;
  v59 = v101;
  v58(v101, 1, 1, v57);
  v60 = v19[7];
  v61 = type metadata accessor for SelectedUserAttributes();
  (*(*(v61 - 8) + 56))(v26 + v60, 1, 1, v61);
  *(v26 + v19[14]) = 0;
  v62 = v19[15];
  v63 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v63 - 8) + 56))(v26 + v62, 1, 1, v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v65 = v26 + *(v64 + 48);
  v66 = *(v64 + 64);
  *v26 = v53;
  v26[1] = v55;
  v67 = type metadata accessor for NLXResultCandidate();
  v68 = *(v67 + 20);
  v58(&v65[v68], 1, 1, v57);
  v69 = &v65[*(v67 + 24)];
  *v65 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v59, &v65[v68], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v69 = 0;
  *(v69 + 1) = 0;
  *(v26 + v66) = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *(v26 + v19[8]) = v96;
  v70 = (v26 + v19[9]);
  v71 = v99;
  *v70 = v98;
  v70[1] = v71;
  *(v26 + v19[10]) = 0;
  *(v26 + v19[11]) = 0;
  *(v26 + v19[12]) = 0;
  *(v26 + v19[13]) = 0;
  *(v26 + v19[6]) = 0;
  v72 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v73 = v106;
  *v106 = v72;
  v73[1] = v74;
  v76 = v108;
  v75 = v109;
  v77 = (*(v108 + 104))(v73, *MEMORY[0x277D56618], v109);
  v78 = (*(*v105 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v77);
  v79 = *(v76 + 16);
  v80 = v107;
  v79(v107, v73, v75);
  v81 = v103;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v26, v103, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v102 + 56))(v81, 0, 1, v19);
  (*(*v78 + 152))(v81, v80);

  v82 = v104;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v26, v104, type metadata accessor for PommesBridgeResultCandidateState);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v110 = v86;
    *v85 = 136315138;
    v87 = PommesBridgeResultCandidateState.description.getter();
    v89 = v88;
    outlined destroy of NLXResultCandidate(v82, type metadata accessor for PommesBridgeResultCandidateState);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v110);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_2232BB000, v83, v84, "Created %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x223DE0F80](v86, -1, -1);
    MEMORY[0x223DE0F80](v85, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v82, type metadata accessor for PommesBridgeResultCandidateState);
  }

  v91 = v107;
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v107);
  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v91);
  v92 = v109;
  v93 = *(v108 + 8);
  v93(v91, v109);
  v93(v106, v92);
  return outlined destroy of NLXResultCandidate(v26, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #1 in PommesBridgeRequestProcessor.handleASRResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x80000002234D9450;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v22[1] = v23;
  return v10;
}

uint64_t PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_2232BB000, v6, v7, "PommesBridge handling message: %@", v8, 0xCu);
      outlined destroy of MediaUserStateCenter?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v11 = TRPCandidateRequestMessage.tcuToContextList.getter();
    a1 = v11;
    v12 = *(v11 + 16);
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = v11 + 32;
    while (v13 < a1[2])
    {
      outlined init with copy of MediaUserStateCenter?(v14, &v16, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
      ++v13;
      closure #1 in PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(v16, &v17, v5, v2);
      outlined destroy of MediaUserStateCenter?(&v16, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
      v14 += 48;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

id closure #1 in PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v105 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v104 = &v96 - v8;
  v9 = type metadata accessor for PommesCandidateId();
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v102 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v100 = (&v96 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v109 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v106 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v96 - v27;
  v29 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v101 = *(v29 - 1);
  v30 = *(v101 + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v103 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v96 - v35;
  v37 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v107 = v44;
  v108 = v43;
  v45 = a1;
  result = [a1 speechPackage];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v47 = result;
  v110 = 0x3E6C696E3CLL;
  v48 = [result recognition];

  if (v48)
  {
    v49 = AFSpeechRecognition.toAsrHypotheses()();

    if (v49[2])
    {
      (*(v38 + 16))(v42, v49 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);

      v110 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      v99 = v50;
      (*(v38 + 8))(v42, v37);
      goto LABEL_7;
    }
  }

  v99 = 0xE500000000000000;
LABEL_7:
  result = [v45 tcuId];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v51 = result;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v53;
  v97 = v52;

  v54 = &v36[v29[5]];
  TRPCandidateRequestMessageBase.userId.getter();
  v98 = [v45 speechPackage];
  v55 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v55 - 8) + 56))(v28, 1, 1, v55);
  v56 = type metadata accessor for SiriUserInput();
  v57 = v106;
  (*(*(v56 - 8) + 56))(v106, 1, 1, v56);
  v58 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v59 = v109;
  (*(*(v58 - 8) + 56))(v109, 1, 1, v58);
  v60 = v29[7];
  v61 = type metadata accessor for SelectedUserAttributes();
  (*(*(v61 - 8) + 56))(&v36[v60], 1, 1, v61);
  v36[v29[14]] = 0;
  v62 = v29[15];
  v63 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v63 - 8) + 56))(&v36[v62], 1, 1, v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v65 = v64[16];
  v66 = v64[20];
  v67 = v64[24];
  v69 = v107;
  v68 = v108;
  *v36 = v108;
  *(v36 + 1) = v69;
  v70 = v96;
  *(v36 + 2) = v97;
  *(v36 + 3) = v70;
  outlined init with take of PommesSearchReason?(v28, &v36[v65], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v57, &v36[v66], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v59, &v36[v67], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v36[v29[8]] = v98;
  v71 = &v36[v29[9]];
  v72 = v99;
  *v71 = v110;
  v71[1] = v72;
  v36[v29[10]] = 0;
  v36[v29[11]] = 0;
  v36[v29[12]] = 0;
  v36[v29[13]] = 0;
  *&v36[v29[6]] = 0;

  result = [v45 tcuId];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v73 = result;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = v100;
  *v100 = v68;
  v77[1] = v69;
  v77[2] = v74;
  v77[3] = v76;
  v79 = v111;
  v78 = v112;
  v80 = (*(v111 + 104))(v77, *MEMORY[0x277D56620], v112);
  v81 = (*(*v105 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v80);
  v82 = v102;
  (*(v79 + 16))(v102, v77, v78);
  v83 = v104;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v36, v104, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v101 + 56))(v83, 0, 1, v29);
  (*(*v81 + 152))(v83, v82);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  __swift_project_value_buffer(v84, static Logger.pommes);
  v85 = v103;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v36, v103, type metadata accessor for PommesBridgeResultCandidateState);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v113 = v89;
    *v88 = 136315138;
    v90 = PommesBridgeResultCandidateState.description.getter();
    v92 = v91;
    outlined destroy of NLXResultCandidate(v85, type metadata accessor for PommesBridgeResultCandidateState);
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v113);

    *(v88 + 4) = v93;
    _os_log_impl(&dword_2232BB000, v86, v87, "Created %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v94 = v89;
    v79 = v111;
    MEMORY[0x223DE0F80](v94, -1, -1);
    v95 = v88;
    v78 = v112;
    MEMORY[0x223DE0F80](v95, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v85, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v77);
  (*(v79 + 8))(v77, v78);
  return outlined destroy of NLXResultCandidate(v36, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t PommesBridgeRequestProcessor.handleTextBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v91 = &v83 - v7;
  v8 = type metadata accessor for PommesCandidateId();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v90 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v95 = (&v83 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v87 = &v83 - v19;
  v20 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v89 = *(v20 - 1);
  v21 = *(v89 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v83 - v27);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v92 = v25;
  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.pommes);
  v31 = a1;
  v88 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&dword_2232BB000, v32, v33, "PommesBridge handling message: %@", v34, 0xCu);
    outlined destroy of MediaUserStateCenter?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v34, -1, -1);
  }

  v93 = v9;
  v94 = v8;

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v37, static Logger.insightRequestSummaryLogger);
  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  *(v38 + 24) = v31;
  v39 = v31;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v85 = v39;
  v40 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v42 = v41;
  v43 = v28 + v20[5];
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v44 = TextBasedResultCandidateMessage.utterance.getter();
  v83 = v45;
  v84 = v44;
  v46 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v86 = v2;
  v47 = v46;
  v48 = *(*(v46 - 8) + 56);
  v49 = v87;
  v48(v87, 1, 1, v46);
  v50 = v20[7];
  v51 = type metadata accessor for SelectedUserAttributes();
  (*(*(v51 - 8) + 56))(v28 + v50, 1, 1, v51);
  *(v28 + v20[14]) = 0;
  v52 = v20[15];
  v53 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v53 - 8) + 56))(v28 + v52, 1, 1, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v55 = v28 + *(v54 + 48);
  v56 = *(v54 + 64);
  *v28 = v40;
  v28[1] = v42;
  v57 = type metadata accessor for NLXResultCandidate();
  v58 = *(v57 + 20);
  v48(&v55[v58], 1, 1, v47);
  v59 = &v55[*(v57 + 24)];
  *v55 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v49, &v55[v58], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v59 = 0;
  *(v59 + 1) = 0;
  *(v28 + v56) = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *(v28 + v20[8]) = 0;
  v60 = (v28 + v20[9]);
  v61 = v83;
  *v60 = v84;
  v60[1] = v61;
  *(v28 + v20[10]) = 0;
  *(v28 + v20[11]) = 0;
  *(v28 + v20[12]) = 0;
  *(v28 + v20[13]) = 0;
  *(v28 + v20[6]) = 0;
  v62 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v63 = v94;
  v64 = v95;
  *v95 = v62;
  v64[1] = v65;
  v66 = v93;
  v67 = (*(v93 + 104))(v64, *MEMORY[0x277D56618], v63);
  v68 = (*(*v86 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v67);
  v69 = v90;
  (*(v66 + 16))(v90, v64, v63);
  v70 = v91;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v28, v91, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v89 + 56))(v70, 0, 1, v20);
  (*(*v68 + 152))(v70, v69);

  v71 = v92;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v28, v92, type metadata accessor for PommesBridgeResultCandidateState);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v96 = v75;
    *v74 = 136315138;
    v76 = PommesBridgeResultCandidateState.description.getter();
    v77 = v71;
    v78 = v76;
    v80 = v79;
    outlined destroy of NLXResultCandidate(v77, type metadata accessor for PommesBridgeResultCandidateState);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v96);

    *(v74 + 4) = v81;
    _os_log_impl(&dword_2232BB000, v72, v73, "Created %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x223DE0F80](v75, -1, -1);
    MEMORY[0x223DE0F80](v74, -1, -1);

    (*(v66 + 8))(v95, v63);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v71, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v66 + 8))(v64, v63);
  }

  return outlined destroy of NLXResultCandidate(v28, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleTextBasedResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD000000000000024;
  v13[1] = 0x80000002234D9470;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v22[1] = v23;
  return v10;
}

uint64_t PommesBridgeRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v59 - v7;
  v9 = type metadata accessor for PommesCandidateId();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v59 - v17);
  v19 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v64 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v59 - v25;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v65 = v10;
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.pommes);
  v29 = a1;
  v61 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = v15;
    v33 = v9;
    v34 = v32;
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v29;
    *v35 = v29;
    v36 = v29;
    _os_log_impl(&dword_2232BB000, v30, v31, "PommesBridge handling message: %@", v34, 0xCu);
    outlined destroy of MediaUserStateCenter?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v35, -1, -1);
    v37 = v34;
    v9 = v33;
    v15 = v60;
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v38, static Logger.insightRequestSummaryLogger);
  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v29;
  v40 = v29;

  InsightRequestSummaryLogger.emitDebug(_:)();

  PommesBridgeResultCandidateState.init(from:)(v40, v26);
  *v18 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v18[1] = v41;
  v42 = v65;
  v43 = (*(v65 + 104))(v18, *MEMORY[0x277D56618], v9);
  v44 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v43);
  (*(v42 + 16))(v15, v18, v9);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v26, v8, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v62 + 56))(v8, 0, 1, v63);
  (*(*v44 + 152))(v8, v15);

  v45 = v64;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v26, v64, type metadata accessor for PommesBridgeResultCandidateState);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66 = v49;
    *v48 = 136315138;
    v50 = PommesBridgeResultCandidateState.description.getter();
    v63 = v26;
    v51 = v42;
    v52 = v50;
    v53 = v45;
    v55 = v54;
    outlined destroy of NLXResultCandidate(v53, type metadata accessor for PommesBridgeResultCandidateState);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, &v66);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_2232BB000, v46, v47, "Created %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x223DE0F80](v49, -1, -1);
    MEMORY[0x223DE0F80](v48, -1, -1);

    (*(v51 + 8))(v18, v9);
    v57 = v63;
  }

  else
  {

    outlined destroy of NLXResultCandidate(v45, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v42 + 8))(v18, v9);
    v57 = v26;
  }

  return outlined destroy of NLXResultCandidate(v57, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD000000000000027;
  v13[1] = 0x80000002234D9580;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v22[1] = v23;
  return v10;
}

uint64_t PommesBridgeRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v106 = &v93 - v7;
  v8 = type metadata accessor for PommesCandidateId();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v105 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v93 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v101 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v100 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v99 = &v93 - v27;
  v28 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v103 = *(v28 - 1);
  v29 = *(v103 + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v104 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v93 - v34;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.pommes);
  v38 = a1;
  v102 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&dword_2232BB000, v39, v40, "PommesBridge handling message: %@", v41, 0xCu);
    outlined destroy of MediaUserStateCenter?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v42, -1, -1);
    MEMORY[0x223DE0F80](v41, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v44, static Logger.insightRequestSummaryLogger);
  v45 = swift_allocObject();
  *(v45 + 16) = v2;
  *(v45 + 24) = v38;
  v38;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v46 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v107 = v2;
  v47 = v46;
  v96 = v48;
  v49 = TextBasedTRPCandidateMessage.tcuId.getter();
  v94 = v50;
  v95 = v49;
  v51 = &v35[v28[5]];
  TRPCandidateRequestMessageBase.userId.getter();
  v52 = TextBasedTRPCandidateMessage.utterance.getter();
  v97 = v53;
  v98 = v52;
  v54 = type metadata accessor for TCUMappedNLResponse();
  v55 = v99;
  (*(*(v54 - 8) + 56))(v99, 1, 1, v54);
  v56 = type metadata accessor for SiriUserInput();
  v57 = v100;
  (*(*(v56 - 8) + 56))(v100, 1, 1, v56);
  v58 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v59 = v101;
  (*(*(v58 - 8) + 56))(v101, 1, 1, v58);
  v60 = v28[7];
  v61 = type metadata accessor for SelectedUserAttributes();
  (*(*(v61 - 8) + 56))(&v35[v60], 1, 1, v61);
  v35[v28[14]] = 0;
  v62 = v28[15];
  v63 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v63 - 8) + 56))(&v35[v62], 1, 1, v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v65 = v64[16];
  v66 = v64[20];
  v67 = v64[24];
  *v35 = v47;
  v68 = v107;
  v69 = v95;
  *(v35 + 1) = v96;
  *(v35 + 2) = v69;
  *(v35 + 3) = v94;
  outlined init with take of PommesSearchReason?(v55, &v35[v65], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v57, &v35[v66], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v59, &v35[v67], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v35[v28[8]] = 0;
  v70 = &v35[v28[9]];
  v71 = v97;
  *v70 = v98;
  v70[1] = v71;
  v35[v28[10]] = 0;
  v35[v28[11]] = 0;
  v35[v28[12]] = 0;
  v35[v28[13]] = 0;
  *&v35[v28[6]] = 0;
  v72 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v74 = v73;
  v75 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v15 = v72;
  v15[1] = v74;
  v15[2] = v75;
  v15[3] = v76;
  v78 = v108;
  v77 = v109;
  v79 = (*(v108 + 104))(v15, *MEMORY[0x277D56620], v109);
  v80 = (*(*v68 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v79);
  v81 = v105;
  (*(v78 + 16))(v105, v15, v77);
  v82 = v106;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v106, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v103 + 56))(v82, 0, 1, v28);
  (*(*v80 + 152))(v82, v81);

  v83 = v104;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v104, type metadata accessor for PommesBridgeResultCandidateState);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v110 = v87;
    *v86 = 136315138;
    v88 = PommesBridgeResultCandidateState.description.getter();
    v90 = v89;
    outlined destroy of NLXResultCandidate(v83, type metadata accessor for PommesBridgeResultCandidateState);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v110);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_2232BB000, v84, v85, "Created %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    MEMORY[0x223DE0F80](v87, -1, -1);
    MEMORY[0x223DE0F80](v86, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v83, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v15);
  (*(v108 + 8))(v15, v109);
  return outlined destroy of NLXResultCandidate(v35, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD000000000000021;
  v13[1] = 0x80000002234D94A0;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v22[1] = v23;
  return v10;
}

uint64_t PommesBridgeRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v106 = &v92 - v7;
  v8 = type metadata accessor for PommesCandidateId();
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = *(v107 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v105 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v92 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v101 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v99 = &v92 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v98 = &v92 - v27;
  v28 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v103 = *(v28 - 1);
  v29 = *(v103 + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v104 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v92 - v34;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.pommes);
  v38 = a1;
  v102 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&dword_2232BB000, v39, v40, "PommesBridge handling message: %@", v41, 0xCu);
    outlined destroy of MediaUserStateCenter?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v42, -1, -1);
    MEMORY[0x223DE0F80](v41, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v44, static Logger.insightRequestSummaryLogger);
  v45 = swift_allocObject();
  *(v45 + 16) = v2;
  *(v45 + 24) = v38;
  v38;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v46 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v94 = v47;
  v95 = v46;
  v93 = TextBasedTRPCandidateMessage.tcuId.getter();
  v100 = v2;
  v49 = v48;
  v50 = &v35[v28[5]];
  TRPCandidateRequestMessageBase.userId.getter();
  v51 = TextBasedTRPCandidateMessage.utterance.getter();
  v96 = v52;
  v97 = v51;
  v53 = type metadata accessor for TCUMappedNLResponse();
  v54 = v98;
  (*(*(v53 - 8) + 56))(v98, 1, 1, v53);
  v55 = v99;
  RewrittenUtteranceCandidateMessage.originalUserInput.getter();
  v56 = type metadata accessor for SiriUserInput();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v101;
  RewrittenUtteranceCandidateMessage.rewriteReason.getter();
  v58 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = v28[7];
  v60 = type metadata accessor for SelectedUserAttributes();
  (*(*(v60 - 8) + 56))(&v35[v59], 1, 1, v60);
  v35[v28[14]] = 0;
  v61 = v28[15];
  v62 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v62 - 8) + 56))(&v35[v61], 1, 1, v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v64 = v63[16];
  v65 = v63[20];
  v66 = v63[24];
  v67 = v94;
  *v35 = v95;
  *(v35 + 1) = v67;
  *(v35 + 2) = v93;
  *(v35 + 3) = v49;
  v68 = v100;
  outlined init with take of PommesSearchReason?(v54, &v35[v64], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v55, &v35[v65], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v57, &v35[v66], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v35[v28[8]] = 0;
  v69 = &v35[v28[9]];
  v70 = v96;
  *v69 = v97;
  v69[1] = v70;
  v35[v28[10]] = 0;
  v35[v28[11]] = 0;
  v35[v28[12]] = 0;
  v35[v28[13]] = 0;
  *&v35[v28[6]] = 0;
  v71 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v73 = v72;
  v74 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v15 = v71;
  v15[1] = v73;
  v15[2] = v74;
  v15[3] = v75;
  v77 = v107;
  v76 = v108;
  v78 = (*(v107 + 104))(v15, *MEMORY[0x277D56620], v108);
  v79 = (*(*v68 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v78);
  v80 = v105;
  (*(v77 + 16))(v105, v15, v76);
  v81 = v106;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v106, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v103 + 56))(v81, 0, 1, v28);
  (*(*v79 + 152))(v81, v80);

  v82 = v104;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v104, type metadata accessor for PommesBridgeResultCandidateState);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v109 = v86;
    *v85 = 136315138;
    v87 = PommesBridgeResultCandidateState.description.getter();
    v89 = v88;
    outlined destroy of NLXResultCandidate(v82, type metadata accessor for PommesBridgeResultCandidateState);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v109);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_2232BB000, v83, v84, "Created %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x223DE0F80](v86, -1, -1);
    MEMORY[0x223DE0F80](v85, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v82, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v15);
  (*(v107 + 8))(v15, v108);
  return outlined destroy of NLXResultCandidate(v35, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD000000000000027;
  v13[1] = 0x80000002234D94D0;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v22[1] = v23;
  return v10;
}

uint64_t PommesBridgeRequestProcessor.handleNLResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PommesSearchReason();
  v158 = *(v4 - 8);
  v159 = v4;
  v5 = *(v158 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v157 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v156 = &v150 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v154 = &v150 - v15;
  v152 = type metadata accessor for NLXResultCandidate();
  v16 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152, v17);
  v153 = (&v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v155 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v161 = (&v150 - v25);
  v26 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v164 = *(v26 - 8);
  v27 = *(v164 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PommesCandidateId();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v160 = (&v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35, v37);
  v167 = (&v150 - v38);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.pommes);
  v41 = a1;
  v166 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v162 = v30;
  v165 = v26;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v168[0] = v46;
    *v45 = 136315138;
    v47 = NLResultCandidateMessageBase.userParses.getter();
    v48 = specialized Sequence<>.summarizedDescription.getter(v47);
    v49 = v32;
    v50 = v41;
    v51 = v48;
    v151 = v2;
    v52 = v49;
    v53 = v31;
    v55 = v54;

    v56 = v51;
    v41 = v50;
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v168);
    v31 = v53;
    v32 = v52;
    v2 = v151;
    v26 = v165;

    *(v45 + 4) = v57;
    _os_log_impl(&dword_2232BB000, v42, v43, "PommesBridgeRequestProcessor received messages: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x223DE0F80](v46, -1, -1);
    MEMORY[0x223DE0F80](v45, -1, -1);
  }

  v58 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v59 = v167;
  *v167 = v58;
  v59[1] = v60;
  v61 = *MEMORY[0x277D56618];
  v62 = *(v32 + 104);
  v163 = v31;
  v62(v59, v61, v31);
  v63 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v64 = RequestProcessorBase.requestId.getter();
  v66 = v65;
  v67 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v63 + 128))(v59, v64, v66, v67, v68);

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v69, static Logger.insightRequestSummaryLogger);
  v70 = swift_allocObject();
  *(v70 + 16) = v2;
  *(v70 + 24) = v41;
  v41;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v72 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v73 = v72(v71);
  v74 = v161;
  (*(*v73 + 144))(v59);

  if ((*(v164 + 48))(v74, 1, v26) == 1)
  {
    v75 = v32;
    outlined destroy of MediaUserStateCenter?(v74, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v168[0] = v79;
      *v78 = 136315138;
      v80 = RequestProcessorBase.requestId.getter();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v168);

      *(v78 + 4) = v82;
      v75 = v32;
      v59 = v167;
      _os_log_impl(&dword_2232BB000, v76, v77, "Do not have prior state for this NLResultCandidateMessage for requestId: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x223DE0F80](v79, -1, -1);
      MEMORY[0x223DE0F80](v78, -1, -1);
    }

    v83 = RequestProcessorBase.requestId.getter();
    v85 = v84;
    v86 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v63 + 144))(5, v59, v83, v85, v86, v87);

    v88 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v90 = v89;
    v91 = *MEMORY[0x277D5CED8];
    v92 = type metadata accessor for PommesError();
    v93 = *(v92 - 8);
    v94 = v156;
    (*(v93 + 104))(v156, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
    v96 = v158;
    v95 = v159;
    v97 = v157;
    (*(v158 + 104))(v157, *MEMORY[0x277D56670], v159);
    v98 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v88, v90, 0, v94, v97);

    (*(v96 + 8))(v97, v95);
    outlined destroy of MediaUserStateCenter?(v94, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (v98)
    {
      RequestProcessorBase.messagePublisher.getter();
      __swift_project_boxed_opaque_existential_1(v168, v168[3]);
      dispatch thunk of MessagePublishing.postMessage(_:)();

      (*(v75 + 8))(v59, v163);
      return __swift_destroy_boxed_opaque_existential_1(v168);
    }

    else
    {
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_2232BB000, v147, v148, "PommesBridgeRequestProcessor failed to build noQuery message", v149, 2u);
        MEMORY[0x223DE0F80](v149, -1, -1);
      }

      return (*(v75 + 8))(v59, v163);
    }
  }

  else
  {
    v100 = v32;
    v101 = v162;
    outlined init with take of NLXResultCandidate(v74, v162, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.setHasNLResultCandidate(_:)(1);
    v158 = NLResultCandidateMessageBase.userParses.getter();
    v102 = v154;
    NLResultCandidateMessageBase.fallbackParse.getter();
    v103 = NLResultCandidateMessageBase.responseVariantResult.getter();
    v159 = v104;
    v105 = v152;
    v106 = *(v152 + 20);
    v107 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v108 = *(*(v107 - 8) + 56);
    v161 = v72;
    v109 = v153;
    v108(v153 + v106, 1, 1, v107);
    v110 = *(v105 + 24);
    v111 = v2;
    v112 = v100;
    v113 = (v109 + v110);
    *v109 = v158;
    outlined assign with take of MediaUserStateCenter?(v102, v109 + v106, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v114 = v159;
    *v113 = v103;
    v113[1] = v114;
    v115 = v112;
    v116 = v111;
    v117 = v167;
    PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(v109);
    outlined destroy of NLXResultCandidate(v109, type metadata accessor for NLXResultCandidate);
    v118 = NLResultCandidateMessage.voiceIdClassification.getter();
    if (v119)
    {
      v120 = 0;
    }

    else
    {
      v120 = v118;
    }

    v121 = v165;
    *(v101 + v165[6]) = v120;
    v122 = v161(v118);
    v123 = v160;
    v124 = v163;
    (*(v115 + 16))(v160, v117, v163);
    v125 = v155;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v101, v155, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v164 + 56))(v125, 0, 1, v121);
    (*(*v122 + 152))(v125, v123);

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v168[0] = v129;
      *v128 = 136315138;
      swift_beginAccess();
      v130 = PommesBridgeResultCandidateState.description.getter();
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v168);

      *(v128 + 4) = v132;
      _os_log_impl(&dword_2232BB000, v126, v127, "Fetched %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x223DE0F80](v129, -1, -1);
      MEMORY[0x223DE0F80](v128, -1, -1);
    }

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v168[0] = v136;
      *v135 = 136315138;
      v137 = v162;
      swift_beginAccess();
      v138 = (v137 + v165[9]);
      v151 = v116;
      v139 = v115;
      v140 = v124;
      v141 = v117;
      v143 = *v138;
      v142 = v138[1];

      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v142, v168);

      *(v135 + 4) = v144;
      v117 = v141;
      v124 = v140;
      v115 = v139;
      v116 = v151;
      _os_log_impl(&dword_2232BB000, v133, v134, "Extracted Pommes query:\n    prState utterance: %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x223DE0F80](v136, -1, -1);
      MEMORY[0x223DE0F80](v135, -1, -1);
    }

    else
    {

      v137 = v162;
    }

    swift_beginAccess();
    if ((*(*v116 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v137))
    {
      v145 = v160;
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v160);
      (*(*v116 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v145, v137 + v165[5]);
      v146 = *(v115 + 8);
      v146(v145, v124);
      v146(v117, v124);
    }

    else
    {
      (*(v115 + 8))(v117, v124);
    }

    return outlined destroy of NLXResultCandidate(v137, type metadata accessor for PommesBridgeResultCandidateState);
  }
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleNLResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for UUID();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234D1940;
  v11 = v10 + v9;
  v12 = v11 + v7[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v12, "PommesBridge");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = (v11 + v8 + v7[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v13 = 0xD00000000000001DLL;
  v13[1] = 0x80000002234D9500;
  v14 = (v11 + 2 * v8 + v7[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v14 = RequestProcessorBase.assistantId.getter();
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  (*(v25[0] + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + v7[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v20 = RequestProcessorBase.requestId.getter();
  v20[1] = v21;
  v22 = (v11 + 5 * v8 + v7[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v22 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v22[1] = v23;
  return v10;
}

void PommesBridgeRequestProcessor.handleTTResponseMessage(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v110 = v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v113 = v108 - v9;
  v114 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v112 = *(v114 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v114, v11);
  v111 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PommesCandidateId();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v108[0] = (v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v115 = (v108 - v19);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v20 = *(*(v109 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v109, v21);
  v108[1] = (v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22, v24);
  v26 = v108 - v25;
  v27 = type metadata accessor for TCUMappedNLResponse();
  v119 = *(v27 - 8);
  v28 = *(v119 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v118 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = v108 - v39;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v120 = v27;
  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.pommes);
  v43 = a1;
  v122 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&dword_2232BB000, v44, v45, "PommesBridge handling message: %@", v46, 0xCu);
    outlined destroy of MediaUserStateCenter?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v47, -1, -1);
    MEMORY[0x223DE0F80](v46, -1, -1);
  }

  TTResponseMessage.mitigationDecision.getter();
  (*(v32 + 104))(v37, *MEMORY[0x277D5CAE0], v31);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x277D5CAF8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v49 = *(v32 + 8);
  v49(v37, v31);
  v49(v40, v31);
  if (v124 == v123)
  {
    v50 = v43;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v124 = v122;
      *v53 = 136315394;
      v54 = RequestProcessorBase.requestId.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v124);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2048;
      TTResponseMessage.mitigationDecision.getter();
      v57 = TTResponseMessage.MitigationDecision.rawValue.getter();
      v49(v40, v31);

      *(v53 + 14) = v57;
      v58 = "Returning because TTResponseMessage forceMitigated - requestId: %s with mitigatedDecision: %ld";
LABEL_11:
      _os_log_impl(&dword_2232BB000, v51, v52, v58, v53, 0x16u);
      v67 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v53, -1, -1);

      return;
    }

LABEL_12:

    return;
  }

  TTResponseMessage.tcuMappedNLResponse.getter();
  v60 = v119;
  v59 = v120;
  v61 = (*(v119 + 48))(v26, 1, v120);
  v62 = v121;
  if (v61 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v26, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v50 = v43;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v124 = v122;
      *v53 = 136315394;
      v63 = RequestProcessorBase.requestId.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v124);

      *(v53 + 4) = v65;
      *(v53 + 12) = 2048;
      TTResponseMessage.mitigationDecision.getter();
      v66 = TTResponseMessage.MitigationDecision.rawValue.getter();
      v49(v40, v31);

      *(v53 + 14) = v66;
      v58 = "Returning because TTResponseMessage contains no tcuMappedNLResponse for requestId: %s with mitigatedDecision: %ld";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  (*(v60 + 32))(v118, v26, v59);
  v68 = v43;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    TTResponseMessage.mitigationDecision.getter();
    v72 = TTResponseMessage.MitigationDecision.rawValue.getter();
    v49(v40, v31);
    *(v71 + 4) = v72;

    _os_log_impl(&dword_2232BB000, v69, v70, "TTResponseMessage contains tcuMappedNLResponse with mitigationDecision: %ld", v71, 0xCu);
    MEMORY[0x223DE0F80](v71, -1, -1);
  }

  else
  {

    v69 = v68;
  }

  v73 = v117;
  v74 = v115;

  v75 = v68;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  v78 = os_log_type_enabled(v76, v77);
  v79 = v118;
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v124 = v81;
    *v80 = 136315138;
    TTResponseMessage.tcuMappedNLResponse.getter();
    v82 = String.init<A>(describing:)();
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v124);

    *(v80 + 4) = v84;
    v62 = v121;
    _os_log_impl(&dword_2232BB000, v76, v77, "PommesBridgeRequestProcessor received messages: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x223DE0F80](v81, -1, -1);
    MEMORY[0x223DE0F80](v80, -1, -1);
  }

  v85 = v116;
  v86 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v88 = v87;
  v89 = TCUMappedNLResponse.tcuId.getter();
  *v74 = v86;
  v74[1] = v88;
  v74[2] = v89;
  v74[3] = v90;
  v91 = (*(v85 + 104))(v74, *MEMORY[0x277D56620], v73);
  v92 = (*(*v62 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v91);
  v93 = v113;
  (*(*v92 + 144))(v74);

  v94 = v114;
  if ((*(v112 + 48))(v93, 1, v114) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v93, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v124 = v98;
      *v97 = 136315138;
      v99 = RequestProcessorBase.requestId.getter();
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v124);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_2232BB000, v95, v96, "Unable to validate PommesBridgeResultCandidateState for requestId: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x223DE0F80](v98, -1, -1);
      MEMORY[0x223DE0F80](v97, -1, -1);
    }

    (*(v85 + 8))(v74, v73);
    (*(v119 + 8))(v79, v120);
  }

  else
  {
    v102 = v93;
    v103 = v111;
    outlined init with take of NLXResultCandidate(v102, v111, type metadata accessor for PommesBridgeResultCandidateState);
    v104 = v110;
    TTResponseMessage.selectedUserAttributes.getter();
    PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(v103, v79, v104);
    outlined destroy of MediaUserStateCenter?(v104, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    if ((*(*v62 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v103))
    {
      v105 = v108[0];
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v108[0]);
      (*(*v62 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v105, v103 + *(v94 + 20));
      v106 = *(v85 + 8);
      v107 = v117;
      v106(v105, v117);
      outlined destroy of NLXResultCandidate(v103, type metadata accessor for PommesBridgeResultCandidateState);
      v106(v74, v107);
    }

    else
    {
      outlined destroy of NLXResultCandidate(v103, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v85 + 8))(v74, v117);
    }

    (*(v119 + 8))(v118, v120);
  }
}

void PommesBridgeRequestProcessor.handleNLTRPCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v141 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v144 = &v130 - v11;
  v145 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v143 = *(v145 - 8);
  v12 = *(v143 + 64);
  MEMORY[0x28223BE20](v145, v13);
  v142 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PommesCandidateId();
  v146 = *(v15 - 8);
  v147 = v15;
  v16 = *(v146 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v139 = (&v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v130 - v21);
  v23 = type metadata accessor for TCUMappedNLResponse();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v27 = MEMORY[0x28223BE20](v23, v26);
  v140 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v130 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v149 = (&v130 - v34);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Logger.pommes);
  v37 = a1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v148 = v23;
    v41 = v40;
    v42 = v2;
    v43 = v22;
    v44 = v24;
    v45 = v32;
    v46 = v36;
    v47 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v47 = v37;
    v48 = v37;
    _os_log_impl(&dword_2232BB000, v38, v39, "PommesBridge handling message: %@", v41, 0xCu);
    outlined destroy of MediaUserStateCenter?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = v47;
    v36 = v46;
    v32 = v45;
    v24 = v44;
    v22 = v43;
    v2 = v42;
    MEMORY[0x223DE0F80](v49, -1, -1);
    v50 = v41;
    v23 = v148;
    MEMORY[0x223DE0F80](v50, -1, -1);
  }

  if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 168))())
  {
    v149 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v149, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2232BB000, v149, v51, "Will not use NLTRPCandidateMessage because it should only be used for activated requests", v52, 2u);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

LABEL_19:
    v94 = v149;

    return;
  }

  v53 = *(dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter() + 16);

  if (v53 >= 2)
  {
    v54 = v36;
    v55 = v37;

    v137 = v54;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      LODWORD(v138) = v57;
      v59 = v58;
      v135 = swift_slowAlloc();
      v150[0] = v135;
      *v59 = 134218242;
      v134 = v56;
      v60 = dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter();
      v136 = v24;
      v61 = *(v60 + 16);

      *(v59 + 4) = v61;
      v24 = v136;

      *(v59 + 12) = 2080;
      v62 = RequestProcessorBase.requestId.getter();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v150);

      *(v59 + 14) = v64;
      v65 = v134;
      _os_log_impl(&dword_2232BB000, v134, v138, "Unexpected tcuMappedNLResponse count: %ld for requestId: %s, expected count of 1. Will select first entry.", v59, 0x16u);
      v66 = v135;
      __swift_destroy_boxed_opaque_existential_1(v135);
      MEMORY[0x223DE0F80](v66, -1, -1);
      MEMORY[0x223DE0F80](v59, -1, -1);
    }

    else
    {
    }

    v36 = v137;
  }

  v67 = dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter();
  v138 = specialized Collection.first.getter(v67);
  v69 = v68;
  v71 = v70;

  if (!v69)
  {

    v149 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v149, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v150[0] = v90;
      *v89 = 136315138;
      v91 = RequestProcessorBase.requestId.getter();
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v150);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_2232BB000, v149, v88, "Returning because NLTRPCandidateMessage contains no entry for tcuMappedNLResponse for requestId: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x223DE0F80](v90, -1, -1);
      MEMORY[0x223DE0F80](v89, -1, -1);

      return;
    }

    goto LABEL_19;
  }

  if (v71)
  {
    swift_bridgeObjectRetain_n();
    v72 = v71;
    v73 = v149;
    v134 = v72;
    v135 = v69;
    TCUMappedNLResponse.init(tcuId:nlResponse:)();
    v74 = v23;
    v75 = v32;
    v76 = v24[2];
    v76(v75, v73, v23);
    v137 = v36;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v79 = os_log_type_enabled(v77, v78);
    v136 = v24;
    v148 = v23;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v132 = v78;
      v81 = v80;
      v82 = swift_slowAlloc();
      v133 = v22;
      v131 = v82;
      v150[0] = v82;
      *v81 = 136315138;
      v76(v140, v75, v23);
      v83 = String.init<A>(describing:)();
      v85 = v84;
      v140 = v24[1];
      (v140)(v75, v74);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v150);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_2232BB000, v77, v132, "PommesBridgeRequestProcessor received messages: %s", v81, 0xCu);
      v87 = v131;
      __swift_destroy_boxed_opaque_existential_1(v131);
      v22 = v133;
      MEMORY[0x223DE0F80](v87, -1, -1);
      MEMORY[0x223DE0F80](v81, -1, -1);
    }

    else
    {

      v140 = v24[1];
      (v140)(v75, v23);
    }

    *v22 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
    v22[1] = v103;
    v104 = v135;
    v22[2] = v138;
    v22[3] = v104;
    v105 = v146;
    v106 = (*(v146 + 104))(v22, *MEMORY[0x277D56620], v147);
    v107 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v106);
    v108 = v144;
    (*(*v107 + 144))(v22);

    v109 = v145;
    if ((*(v143 + 48))(v108, 1, v145) == 1)
    {
      v110 = v22;
      v111 = v148;
      outlined destroy of MediaUserStateCenter?(v108, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v150[0] = v115;
        *v114 = 136315138;
        v116 = RequestProcessorBase.requestId.getter();
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v150);

        *(v114 + 4) = v118;
        _os_log_impl(&dword_2232BB000, v112, v113, "Unable to validate PommesBridgeResultCandidateState for requestId: %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v115);
        MEMORY[0x223DE0F80](v115, -1, -1);
        MEMORY[0x223DE0F80](v114, -1, -1);
      }

      v119 = v134;

      (*(v105 + 8))(v110, v147);
      v120 = v149;
      v121 = v111;
    }

    else
    {
      v122 = v142;
      outlined init with take of NLXResultCandidate(v108, v142, type metadata accessor for PommesBridgeResultCandidateState);
      v123 = v141;
      NLTRPCandidateMessage.selectedUserAttributes.getter();
      v124 = v149;
      PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(v122, v149, v123);
      outlined destroy of MediaUserStateCenter?(v123, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
      if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v122))
      {
        v125 = v139;
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v139);
        (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v125, v122 + *(v109 + 20));

        v126 = v134;

        v127 = *(v105 + 8);
        v128 = v147;
        v127(v125, v147);
        outlined destroy of NLXResultCandidate(v122, type metadata accessor for PommesBridgeResultCandidateState);
        v127(v22, v128);
      }

      else
      {

        v129 = v134;

        outlined destroy of NLXResultCandidate(v122, type metadata accessor for PommesBridgeResultCandidateState);
        (*(v105 + 8))(v22, v147);
      }

      v120 = v124;
      v121 = v148;
    }

    (v140)(v120, v121);
  }

  else
  {

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v150[0] = v98;
      *v97 = 136315394;
      v99 = RequestProcessorBase.requestId.getter();
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v150);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2080;
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v69, v150);

      *(v97 + 14) = v102;
      _os_log_impl(&dword_2232BB000, v95, v96, "Returning because entry for tcuMappedNLResponse contains no NLParseResponse for requestId: %s tcuId: %s", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v98, -1, -1);
      MEMORY[0x223DE0F80](v97, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t PommesBridgeRequestProcessor.handleResultSelectedMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53 - v10;
  v60 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PommesCandidateId();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v59, v19);
  v57 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v53 - v23);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v58 = v12;
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.pommes);
  v27 = a1;
  v55 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v54 = v16;
    v32 = v17;
    v33 = v31;
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v34 = v27;
    _os_log_impl(&dword_2232BB000, v28, v29, "PommesBridge handling resultSelectedMessage: %@", v30, 0xCu);
    outlined destroy of MediaUserStateCenter?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = v33;
    v17 = v32;
    v16 = v54;
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  *v24 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v24[1] = v36;
  v37 = v59;
  v38 = (*(v17 + 104))(v24, *MEMORY[0x277D56618], v59);
  v39 = v17;
  v40 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v41 = v40(v38);
  (*(*v41 + 144))(v24);

  v42 = v58;
  if ((*(v58 + 48))(v11, 1, v60) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v43, v44, "ResultSelectedMessage received before setting Pommes RC state", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    return (*(v17 + 8))(v24, v37);
  }

  else
  {
    v47 = outlined init with take of NLXResultCandidate(v11, v16, type metadata accessor for PommesBridgeResultCandidateState);
    v48 = v60;
    v16[*(v60 + 48)] = 1;
    v49 = v40(v47);
    v50 = v57;
    (*(v17 + 16))(v57, v24, v37);
    v51 = v56;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v16, v56, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v42 + 56))(v51, 0, 1, v48);
    (*(*v49 + 152))(v51, v50);

    if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v16))
    {
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v50);
      (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v50, &v16[*(v60 + 20)]);
      v52 = *(v39 + 8);
      v52(v50, v37);
      outlined destroy of NLXResultCandidate(v16, type metadata accessor for PommesBridgeResultCandidateState);
      return (v52)(v24, v37);
    }

    else
    {
      outlined destroy of NLXResultCandidate(v16, type metadata accessor for PommesBridgeResultCandidateState);
      return (*(v39 + 8))(v24, v37);
    }
  }
}

uint64_t PommesBridgeRequestProcessor.handleFallbackToPommesMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserID();
  v111 = *(v4 - 8);
  v112 = v4;
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PommesSearchReason();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v105 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v104 - v18;
  v20 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v115 = *(v20 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for PommesCandidateId();
  v118 = *(v114 - 8);
  v25 = *(v118 + 64);
  v27 = MEMORY[0x28223BE20](v114, v26);
  v106 = (&v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v29);
  v119 = (&v104 - v30);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v117 = v20;
  v113 = v24;
  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.pommes);
  v33 = a1;
  v116 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v121[0] = v37;
    *v36 = 136315138;
    v38 = FallbackToPommesMessage.delegatedUserDialogActs.getter();
    v39 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v40 = MEMORY[0x223DDF850](v38, v39);
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v121);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_2232BB000, v34, v35, "PommesBridgeRequestProcessor received FallbackToPommesMessage with DUDAs: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  v44 = v119;
  FallbackToPommesMessage.pommesCandidateId.getter();
  v45 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v46 = RequestProcessorBase.requestId.getter();
  v48 = v47;
  v49 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v45 + 128))(v44, v46, v48, v49, v50);

  v52 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v53 = (v52)(v51);
  (*(*v53 + 144))(v44);

  v54 = v117;
  v55 = (*(v115 + 48))(v19, 1, v117);
  v56 = v114;
  if (v55 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v19, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v121[0] = v60;
      *v59 = 136315138;
      v61 = RequestProcessorBase.requestId.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v121);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2232BB000, v57, v58, "Do not have prior state for this FallbackToPommesMessage for requestId: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x223DE0F80](v60, -1, -1);
      MEMORY[0x223DE0F80](v59, -1, -1);
    }

    v65 = v109;
    v64 = v110;
    v66 = v107;
    (*(v109 + 104))(v107, *MEMORY[0x277D56668], v110);
    v67 = v108;
    FallbackToPommesMessage.userId.getter();
    v68 = v119;
    PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v119, v66, 5u, v67);
    (*(v111 + 8))(v67, v112);
    (*(v65 + 8))(v66, v64);
    return (*(v118 + 8))(v68, v56);
  }

  else
  {
    v70 = v113;
    outlined init with take of NLXResultCandidate(v19, v113, type metadata accessor for PommesBridgeResultCandidateState);
    if (specialized PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(v70))
    {
      *(v70 + v54[11]) = 0;
      *(v70 + v54[13]) = 1;
      v71 = v52();
      v72 = v106;
      (*(v118 + 16))(v106, v119, v56);
      v73 = v105;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v70, v105, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v115 + 56))(v73, 0, 1, v54);
      (*(*v71 + 152))(v73, v72);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v121[0] = v77;
        *v76 = 136315138;
        swift_beginAccess();
        v78 = PommesBridgeResultCandidateState.description.getter();
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v121);

        *(v76 + 4) = v80;
        v54 = v117;
        _os_log_impl(&dword_2232BB000, v74, v75, "Fetched %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x223DE0F80](v77, -1, -1);
        MEMORY[0x223DE0F80](v76, -1, -1);
      }

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v121[0] = v84;
        *v83 = 136315138;
        swift_beginAccess();
        v85 = (v70 + v54[9]);
        v86 = *v85;
        v87 = v85[1];

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v121);
        v70 = v113;

        *(v83 + 4) = v88;
        v54 = v117;
        _os_log_impl(&dword_2232BB000, v81, v82, "Extracted Pommes query:\n    prState utterance: %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x223DE0F80](v84, -1, -1);
        MEMORY[0x223DE0F80](v83, -1, -1);
      }

      swift_beginAccess();
      v89 = v106;
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v106);
      (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v89, v70 + v54[5]);
      v90 = *(v118 + 8);
      v90(v89, v56);
      v90(v119, v56);
    }

    else
    {
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v120 = v94;
        *v93 = 136315138;
        swift_beginAccess();
        v95 = PommesBridgeResultCandidateState.description.getter();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v120);

        *(v93 + 4) = v97;
        _os_log_impl(&dword_2232BB000, v91, v92, "Unable to override PommesCandidateResultState's PSC score %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x223DE0F80](v94, -1, -1);
        v98 = v93;
        v70 = v113;
        MEMORY[0x223DE0F80](v98, -1, -1);
      }

      v100 = v109;
      v99 = v110;
      v101 = v107;
      (*(v109 + 104))(v107, *MEMORY[0x277D56668], v110);
      v102 = v108;
      FallbackToPommesMessage.userId.getter();
      v103 = v119;
      PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v119, v101, 4u, v102);
      (*(v111 + 8))(v102, v112);
      (*(v100 + 8))(v101, v99);
      (*(v118 + 8))(v103, v56);
    }

    return outlined destroy of NLXResultCandidate(v70, type metadata accessor for PommesBridgeResultCandidateState);
  }
}

Swift::Void __swiftcall PommesBridgeRequestProcessor.transitionToActiveRequest()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesBridge handling transitionToActiveRequest", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  swift_beginAccess();
  *(v1 + v6) = 0;
}

uint64_t PommesBridgeRequestProcessor.handleStartCandidateRequestMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2232BB000, v6, v7, "PommesBridge handling message: %@", v8, 0xCu);
    outlined destroy of MediaUserStateCenter?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v11 = *(v2 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
  v12 = RequestMessageBase.requestId.getter();
  (*(*v11 + 336))(v12);
}

uint64_t PommesBridgeRequestProcessor.isReady(prState:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v87 - v6;
  v8 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v88 = &v87 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v87 - v21;
  v23 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v87 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v87 - v34;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, &v87 - v34, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v28, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
      v37 = *(v28 + 1);

      v38 = *(v28 + 3);

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v40 = v39[20];
      v41 = v39[24];
      outlined init with take of PommesSearchReason?(&v28[v39[16]], v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v42 = type metadata accessor for TCUMappedNLResponse();
      if (*(*(v42 - 8) + 48))(v7, 1, v42) == 1 || ((*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 168))())
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.pommes);
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v19, type metadata accessor for PommesBridgeResultCandidateState);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v89 = v40;
          v47 = v46;
          v48 = swift_slowAlloc();
          v90 = v48;
          *v47 = 136315138;
          v49 = PommesBridgeResultCandidateState.description.getter();
          v88 = v41;
          v51 = v50;
          outlined destroy of NLXResultCandidate(v19, type metadata accessor for PommesBridgeResultCandidateState);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v90);
          v41 = v88;

          *(v47 + 4) = v52;
          _os_log_impl(&dword_2232BB000, v44, v45, "search cannot continue because request is candidate request or no TCUMappedNLResponse received yet %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x223DE0F80](v48, -1, -1);
          v53 = v47;
          v40 = v89;
          MEMORY[0x223DE0F80](v53, -1, -1);
        }

        else
        {

          outlined destroy of NLXResultCandidate(v19, type metadata accessor for PommesBridgeResultCandidateState);
        }

        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(&v28[v41], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(&v28[v40], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
LABEL_36:
        v82 = type metadata accessor for PommesBridgeResultCandidateState.ParseState;
        v83 = v35;
        goto LABEL_37;
      }

      outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined destroy of MediaUserStateCenter?(&v28[v41], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(&v28[v40], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }
  }

  else
  {
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v35, v32, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v54 = *(v32 + 1);

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v56 = *(v55 + 48);
    if ((v32[*(v55 + 64)] & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.pommes);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v22, type metadata accessor for PommesBridgeResultCandidateState);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v90 = v61;
        *v60 = 136315138;
        v62 = PommesBridgeResultCandidateState.description.getter();
        v64 = v63;
        outlined destroy of NLXResultCandidate(v22, type metadata accessor for PommesBridgeResultCandidateState);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v90);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_2232BB000, v58, v59, "search cannot continue because has not received NLResultCandidate yet %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x223DE0F80](v61, -1, -1);
        MEMORY[0x223DE0F80](v60, -1, -1);
      }

      else
      {

        outlined destroy of NLXResultCandidate(v22, type metadata accessor for PommesBridgeResultCandidateState);
      }

      outlined destroy of NLXResultCandidate(&v32[v56], type metadata accessor for NLXResultCandidate);
      goto LABEL_36;
    }

    outlined destroy of NLXResultCandidate(&v32[v56], type metadata accessor for NLXResultCandidate);
  }

  outlined destroy of NLXResultCandidate(v35, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (*(a1 + *(v8 + 40)))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v67 = v89;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v89, type metadata accessor for PommesBridgeResultCandidateState);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90 = v71;
      *v70 = 136315138;
      v72 = PommesBridgeResultCandidateState.description.getter();
      v74 = v73;
      outlined destroy of NLXResultCandidate(v67, type metadata accessor for PommesBridgeResultCandidateState);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v90);

      *(v70 + 4) = v75;
      v76 = "search cannot continue because prState has been previously started for rcId %s";
LABEL_28:
      _os_log_impl(&dword_2232BB000, v68, v69, v76, v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223DE0F80](v71, -1, -1);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (*(a1 + *(v8 + 44)))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.pommes);
    v67 = v88;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v88, type metadata accessor for PommesBridgeResultCandidateState);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90 = v71;
      *v70 = 136315138;
      v78 = PommesBridgeResultCandidateState.description.getter();
      v80 = v79;
      outlined destroy of NLXResultCandidate(v67, type metadata accessor for PommesBridgeResultCandidateState);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v90);

      *(v70 + 4) = v81;
      v76 = "search cannot continue because prState has been previously finished for rcId %s";
      goto LABEL_28;
    }

LABEL_31:

    v82 = type metadata accessor for PommesBridgeResultCandidateState;
    v83 = v67;
LABEL_37:
    outlined destroy of NLXResultCandidate(v83, v82);
    return 0;
  }

  if (*(v1 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  __swift_project_value_buffer(v85, static Logger.pommes);
  v68 = Logger.logObject.getter();
  v86 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v68, v86))
  {
    goto LABEL_30;
  }

  v70 = swift_slowAlloc();
  *v70 = 0;
  _os_log_impl(&dword_2232BB000, v68, v86, "search cannot continue because pommesRequestContext has not been set yet", v70, 2u);
LABEL_29:
  MEMORY[0x223DE0F80](v70, -1, -1);
LABEL_30:

  return 0;
}

uint64_t PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, uint64_t a2)
{
  v455 = a2;
  v457 = type metadata accessor for PommesSearchReason();
  v456 = *(v457 - 8);
  v4 = *(v456 + 64);
  MEMORY[0x28223BE20](v457, v5);
  v454 = v391 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v7 = *(*(v429 - 8) + 64);
  MEMORY[0x28223BE20](v429, v8);
  v428 = v391 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v409 = v391 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v427 = v391 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v408 = v391 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v424 = v391 - v22;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v23 = *(*(v426 - 8) + 64);
  MEMORY[0x28223BE20](v426, v24);
  v425 = v391 - v25;
  v419 = type metadata accessor for PommesSearchEagerInfo(0);
  v431 = *(v419 - 8);
  v26 = *(v431 + 64);
  v28 = MEMORY[0x28223BE20](v419, v27);
  v405 = v391 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v406 = v391 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v407 = v391 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v418 = v391 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v440 = v391 - v41;
  v439 = type metadata accessor for PommesSearchRequest(0);
  v438 = *(v439 - 8);
  v42 = *(v438 + 64);
  MEMORY[0x28223BE20](v439, v43);
  v445 = v391 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v46 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v45 - 8, v47);
  v437 = v391 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v446 = v391 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8, v54);
  v447 = v391 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8, v58);
  v417 = v391 - v59;
  v416 = type metadata accessor for UUID();
  v414 = *(v416 - 8);
  v60 = *(v414 + 64);
  v62 = MEMORY[0x28223BE20](v416, v61);
  v415 = v391 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v413 = v391 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v412 = v391 - v68;
  v451 = type metadata accessor for PommesContext();
  v444 = *(v451 - 8);
  v69 = *(v444 + 64);
  MEMORY[0x28223BE20](v451, v70);
  v410 = v391 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8, v74);
  v411 = v391 - v75;
  v76 = type metadata accessor for BinaryDecodingOptions();
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8, v78);
  v391[1] = v391 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8, v82);
  v392 = v391 - v83;
  v394 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v393 = *(v394 - 8);
  v84 = *(v393 + 64);
  MEMORY[0x28223BE20](v394, v85);
  v391[0] = v391 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v87 = *(*(v435 - 1) + 64);
  MEMORY[0x28223BE20](v435, v88);
  v436 = v391 - v89;
  v434 = type metadata accessor for ConversationSessionKey();
  v433 = *(v434 - 8);
  v90 = *(v433 + 64);
  MEMORY[0x28223BE20](v434, v91);
  v432 = v391 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for DispatchWorkItemFlags();
  v402 = *(v403 - 8);
  v93 = *(v402 + 64);
  MEMORY[0x28223BE20](v403, v94);
  v400 = v391 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = type metadata accessor for DispatchQoS();
  v399 = *(v401 - 8);
  v96 = *(v399 + 64);
  MEMORY[0x28223BE20](v401, v97);
  v398 = v391 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = type metadata accessor for DispatchQoS.QoSClass();
  v396 = *(v397 - 8);
  v99 = *(v396 + 64);
  MEMORY[0x28223BE20](v397, v100);
  v395 = v391 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v102 = *(*(v430 - 8) + 64);
  v104 = MEMORY[0x28223BE20](v430, v103);
  v423 = v391 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x28223BE20](v104, v106);
  v421 = v391 - v108;
  MEMORY[0x28223BE20](v107, v109);
  v404 = v391 - v110;
  v450 = type metadata accessor for UserID();
  v449 = *(v450 - 8);
  v111 = *(v449 + 64);
  MEMORY[0x28223BE20](v450, v112);
  v459 = v391 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = type metadata accessor for PommesCandidateId();
  v452 = *(v453 - 8);
  v114 = *(v452 + 64);
  v116 = MEMORY[0x28223BE20](v453, v115);
  v448 = (v391 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v116, v118);
  v443 = (v391 - v119);
  v120 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v460 = *(v120 - 8);
  v121 = *(v460 + 64);
  v123 = MEMORY[0x28223BE20](v120, v122);
  v422 = v391 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x28223BE20](v123, v125);
  v420 = v391 - v127;
  MEMORY[0x28223BE20](v126, v128);
  v130 = v391 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v132 = *(*(v131 - 8) + 64);
  v134 = MEMORY[0x28223BE20](v131 - 8, v133);
  v442 = v391 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134, v136);
  v138 = v391 - v137;
  v139 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v140 = RequestProcessorBase.requestId.getter();
  v142 = v141;
  v143 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v139 + 128))(a1, v140, v142, v143, v144);

  v145 = swift_allocBox();
  v147 = v146;
  v149 = (*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v148 = *v149;
  v462 = v2;
  v441 = v148;
  v150 = *(*v148() + 144);
  v461 = a1;
  v150(a1);

  v151 = v460;
  v152 = *(v460 + 48);
  v458 = v120;
  if (v152(v138, 1, v120) != 1)
  {
    v448 = v149;
    outlined init with take of NLXResultCandidate(v138, v147, type metadata accessor for PommesBridgeResultCandidateState);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v130, type metadata accessor for PommesBridgeResultCandidateState);
    v166 = PommesBridgeResultCandidateState.hasServerFallbackReason.getter();
    v167 = outlined destroy of NLXResultCandidate(v130, type metadata accessor for PommesBridgeResultCandidateState);
    if (v166)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v168 = type metadata accessor for Logger();
      __swift_project_value_buffer(v168, static Logger.pommes);

      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v169, v170))
      {
        goto LABEL_38;
      }

      v453 = v145;
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v467 = v172;
      *v171 = 136315394;
      swift_beginAccess();
      v173 = v420;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v420, type metadata accessor for PommesBridgeResultCandidateState);
      v174 = v421;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v173, v421, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
      outlined destroy of NLXResultCandidate(v173, type metadata accessor for PommesBridgeResultCandidateState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v175 = *(v174 + 8);

        v176 = *(v174 + 24);

        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
        v178 = v177[20];
        v179 = v147;
        v180 = v177[24];
        v181 = v170;
        v182 = v172;
        v183 = v408;
        outlined init with take of PommesSearchReason?(v174 + v177[16], v408, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v184 = v174 + v180;
        v147 = v179;
        outlined destroy of MediaUserStateCenter?(v184, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v174 + v178, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        v185 = v183;
        v172 = v182;
        v170 = v181;
        v186 = v424;
        outlined init with take of PommesSearchReason?(v185, v424, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v187 = type metadata accessor for TCUMappedNLResponse();
        v188 = *(v187 - 8);
        if ((*(v188 + 48))(v186, 1, v187) != 1)
        {
          v189 = TCUMappedNLResponse.nlResponse.getter();
          (*(v188 + 8))(v186, v187);
          NLParseResponse.serverFallbackReason.getter();

          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of NLXResultCandidate(v174, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        v228 = type metadata accessor for TCUMappedNLResponse();
        v186 = v424;
        (*(*(v228 - 8) + 56))(v424, 1, 1, v228);
      }

      outlined destroy of MediaUserStateCenter?(v186, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v229 = type metadata accessor for ServerFallbackReason();
      (*(*(v229 - 8) + 56))(v425, 1, 1, v229);
LABEL_32:
      v230 = String.init<A>(describing:)();
      v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v231, &v467);

      *(v171 + 4) = v232;
      *(v171 + 12) = 2080;
      v233 = v422;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v422, type metadata accessor for PommesBridgeResultCandidateState);
      v234 = v423;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v233, v423, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
      outlined destroy of NLXResultCandidate(v233, type metadata accessor for PommesBridgeResultCandidateState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v235 = *(v234 + 8);

        v236 = *(v234 + 24);

        v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
        v238 = v237[20];
        v239 = v237[24];
        v240 = v409;
        outlined init with take of PommesSearchReason?(v234 + v237[16], v409, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v234 + v239, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v234 + v238, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        v241 = v427;
        outlined init with take of PommesSearchReason?(v240, v427, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v242 = type metadata accessor for TCUMappedNLResponse();
        v243 = *(v242 - 8);
        if ((*(v243 + 48))(v241, 1, v242) != 1)
        {
          v244 = TCUMappedNLResponse.nlResponse.getter();
          (*(v243 + 8))(v241, v242);
          v245 = v428;
          NLParseResponse.responseStatusCode.getter();

          v246 = 0;
LABEL_37:
          v248 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
          (*(*(v248 - 8) + 56))(v245, v246, 1, v248);
          v249 = String.init<A>(describing:)();
          v251 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v249, v250, &v467);

          *(v171 + 14) = v251;
          _os_log_impl(&dword_2232BB000, v169, v170, "Returning because tcuMappedNLResponse indicates server fallback\n    serverFallbackReason: %s\n    responseStatusCode: %s", v171, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v172, -1, -1);
          MEMORY[0x223DE0F80](v171, -1, -1);
LABEL_38:

          v252 = v456;
          v253 = v454;
          v254 = v457;
          (*(v456 + 104))(v454, *MEMORY[0x277D56670], v457);
          PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v461, v253, 4u, v455);
          (*(v252 + 8))(v253, v254);
        }
      }

      else
      {
        outlined destroy of NLXResultCandidate(v234, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        v247 = type metadata accessor for TCUMappedNLResponse();
        v241 = v427;
        (*(*(v247 - 8) + 56))(v427, 1, 1, v247);
      }

      outlined destroy of MediaUserStateCenter?(v241, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v246 = 1;
      v245 = v428;
      goto LABEL_37;
    }

    v194 = v130;
    v195 = v458;
    *(v147 + v458[10]) = 1;
    v196 = (v441)(v167);
    v197 = v443;
    (*(v452 + 16))(v443, v461, v453);
    v198 = v442;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v442, type metadata accessor for PommesBridgeResultCandidateState);
    v199 = v151 + 56;
    v428 = *(v151 + 56);
    (v428)(v198, 0, 1, v195);
    (*(*v196 + 152))(v198, v197);

    v200 = (v147 + v195[9]);
    v201 = v200[1];
    v456 = *v200;
    (*(v449 + 16))(v459, v147 + v195[5], v450);
    LODWORD(v429) = *(v147 + v195[13]);
    v202 = one-time initialization token for pommes;

    if (v202 != -1)
    {
      swift_once();
    }

    v203 = type metadata accessor for Logger();
    v204 = __swift_project_value_buffer(v203, static Logger.pommes);

    v454 = v204;
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.debug.getter();
    v453 = v145;

    v207 = os_log_type_enabled(v205, v206);
    v457 = v201;
    if (v207)
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&aBlock = v209;
      *v208 = 136315138;
      swift_beginAccess();
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v194, type metadata accessor for PommesBridgeResultCandidateState);
      v210 = PommesBridgeResultCandidateState.description.getter();
      v212 = v211;
      outlined destroy of NLXResultCandidate(v194, type metadata accessor for PommesBridgeResultCandidateState);
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v212, &aBlock);

      *(v208 + 4) = v213;
      _os_log_impl(&dword_2232BB000, v205, v206, "Fetched %s", v208, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v209);
      v214 = v209;
      v201 = v457;
      MEMORY[0x223DE0F80](v214, -1, -1);
      MEMORY[0x223DE0F80](v208, -1, -1);
    }

    v215 = v444;

    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *&aBlock = v219;
      *v218 = 136315138;
      *(v218 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v456, v201, &aBlock);
      _os_log_impl(&dword_2232BB000, v216, v217, "Extracted Pommes query:\n    prState utterance: %s", v218, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v219);
      MEMORY[0x223DE0F80](v219, -1, -1);
      MEMORY[0x223DE0F80](v218, -1, -1);
    }

    swift_beginAccess();
    if (*(v147 + v458[14]) == 1)
    {
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v220, v221))
      {
LABEL_25:

        goto LABEL_41;
      }

      v222 = swift_slowAlloc();
      *v222 = 0;
      v223 = "Handling request for gesture based RC";
LABEL_24:
      _os_log_impl(&dword_2232BB000, v220, v221, v223, v222, 2u);
      MEMORY[0x223DE0F80](v222, -1, -1);
      goto LABEL_25;
    }

    v224 = *(v462 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);
    if (v224)
    {
      v225 = *(v462 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
      v226 = *MEMORY[0x277D483F8];
      if (v225 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v224 == v227)
      {
      }

      else
      {
        v255 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v255 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      if (([objc_opt_self() isIntuitiveConversationAnnounceEnabled] & 1) == 0)
      {
        v368 = v404;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v147, v404, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          outlined destroy of NLXResultCandidate(v368, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
          v371 = Logger.logObject.getter();
          v372 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v371, v372))
          {
            v373 = swift_slowAlloc();
            *v373 = 0;
            _os_log_impl(&dword_2232BB000, v371, v372, "Pommes doesn't handle request for clientGenerated inputOrigin when intuitive conversation announce feature flag is disabled", v373, 2u);
            MEMORY[0x223DE0F80](v373, -1, -1);
          }

          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v374 = v396;
          v375 = v395;
          v376 = v397;
          (*(v396 + 104))(v395, *MEMORY[0x277D851C8], v397);
          v377 = static OS_dispatch_queue.global(qos:)();
          (*(v374 + 8))(v375, v376);
          v378 = swift_allocObject();
          swift_weakInit();
          v379 = swift_allocObject();
          v380 = v453;
          *(v379 + 16) = v378;
          *(v379 + 24) = v380;
          v465 = partial apply for closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:);
          v466 = v379;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v464 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v464 + 1) = &block_descriptor_41;
          v381 = _Block_copy(&aBlock);

          v382 = v398;
          static DispatchQoS.unspecified.getter();
          v467 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v383 = v400;
          v384 = v403;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x223DDFBF0](0, v382, v383, v381);
          _Block_release(v381);

          (*(v402 + 8))(v383, v384);
          (*(v399 + 8))(v382, v401);

          (*(v449 + 8))(v459, v450);
        }

        v369 = *(v368 + 8);

        v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
        outlined destroy of MediaUserStateCenter?(v368 + *(v370 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
        v220 = Logger.logObject.getter();
        v221 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v220, v221))
        {
          goto LABEL_25;
        }

        v222 = swift_slowAlloc();
        *v222 = 0;
        v223 = "Allow Pommes to handle SARDRunPOMMESRequest";
        goto LABEL_24;
      }
    }

LABEL_41:
    v460 = v199;
    v430 = v194;
    v452 = v147;
    v455 = swift_allocBox();
    v257 = v256;
    v435 = *(*v462 + class metadata base offset for PommesBridgeRequestProcessor + 144);
    v435(&aBlock);
    if (*(&v464 + 1))
    {
      outlined init with copy of AppDataProviding(&aBlock, &v467);
      outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      __swift_project_boxed_opaque_existential_1(&v467, v468);
      v258 = v433;
      v259 = v257;
      v260 = v215;
      v261 = v432;
      v262 = v434;
      (*(v433 + 104))(v432, *MEMORY[0x277D5D1B8], v434);
      dispatch thunk of ConversationSessionState.value(forKey:userId:)();
      v263 = v261;
      v215 = v260;
      v257 = v259;
      (*(v258 + 8))(v263, v262);
      __swift_destroy_boxed_opaque_existential_1(&v467);
      if (*(&v470 + 1))
      {
        v264 = v451;
        v265 = swift_dynamicCast();
        (*(v215 + 56))(v259, v265 ^ 1u, 1, v264);
        goto LABEL_46;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      v469 = 0u;
      v470 = 0u;
    }

    outlined destroy of MediaUserStateCenter?(&v469, &_sypSgMd, &_sypSgMR);
    v264 = v451;
    (*(v215 + 56))(v257, 1, 1, v451);
LABEL_46:
    v266 = v436;
    outlined init with copy of MediaUserStateCenter?(v257, v436, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v267 = *(v215 + 48);
    v268 = v267(v266, 1, v264);
    v269 = outlined destroy of MediaUserStateCenter?(v266, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v270 = v451;
    if (v268 != 1)
    {
      (v435)(&aBlock, v269);
      if (*(&v464 + 1))
      {
        outlined init with copy of AppDataProviding(&aBlock, &v467);
        outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        __swift_project_boxed_opaque_existential_1(&v467, v468);
        v271 = v433;
        v272 = v432;
        v273 = v434;
        (*(v433 + 104))(v432, *MEMORY[0x277D5D1D8], v434);
        v270 = v451;
        dispatch thunk of ConversationSessionState.value(forKey:userId:)();
        (*(v271 + 8))(v272, v273);
        __swift_destroy_boxed_opaque_existential_1(&v467);
        if (*(&v470 + 1))
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x277D47690);
          if (swift_dynamicCast())
          {
            v274 = aBlock;
            v275 = [aBlock promptContextProto];
            if (v275)
            {
              v436 = v274;
              v276 = v275;
              v277 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v279 = v278;

              v465 = 0;
              aBlock = 0u;
              v464 = 0u;
              outlined copy of Data._Representation(v277, v279);
              BinaryDecodingOptions.init()();
              lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x277D5E200]);
              v280 = v392;
              v281 = v394;
              Message.init(serializedData:extensions:partial:options:)();
              v434 = v277;
              v435 = v279;
              v385 = v393;
              (*(v393 + 56))(v280, 0, 1, v281);
              (*(v385 + 32))(v391[0], v280, v281);
              v386 = Logger.logObject.getter();
              v387 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v386, v387))
              {
                v389 = swift_slowAlloc();
                *v389 = 0;
                _os_log_impl(&dword_2232BB000, v386, v387, "Adding promptContext to PommesContext", v389, 2u);
                MEMORY[0x223DE0F80](v389, -1, -1);
              }

              v270 = v451;
              if (v267(v257, 1, v451))
              {
                (*(v385 + 8))(v391[0], v281);

                outlined consume of Data._Representation(v434, v435);
              }

              else
              {
                v390 = v391[0];
                PommesContext.update(with:)();

                outlined consume of Data._Representation(v434, v435);
                (*(v385 + 8))(v390, v281);
              }
            }

            else
            {
            }
          }

          goto LABEL_54;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        v469 = 0u;
        v470 = 0u;
      }

      outlined destroy of MediaUserStateCenter?(&v469, &_sypSgMd, &_sypSgMR);
    }

LABEL_54:
    v282 = v267(v257, 1, v270);
    v283 = MEMORY[0x277D84F90];
    v284 = v462;
    v285 = v452;
    if (!v282)
    {
      v286 = v444;
      v287 = v410;
      (*(v444 + 16))(v410, v257, v270);
      v288 = v411;
      PommesContext.exportLegacyNLContext()();
      (*(v286 + 8))(v287, v270);
      v289 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v290 = *(v289 - 8);
      if ((*(v290 + 48))(v288, 1, v289) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v288, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
        v283 = MEMORY[0x277D84F90];
      }

      else
      {
        v291 = MEMORY[0x223DDC1A0]();
        (*(v290 + 8))(v288, v289);
        v283 = v291;
      }
    }

    if (*(v285 + v458[14]) == 1)
    {
      v292 = *(v283 + 16);

      v293 = v461;
      if (!v292)
      {
        v294 = Logger.logObject.getter();
        v295 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v294, v295))
        {
          v296 = swift_slowAlloc();
          *v296 = 0;
          _os_log_impl(&dword_2232BB000, v294, v295, "POMMES might not be expecting a confirmation, continuing to use the gesture based RC", v296, 2u);
          MEMORY[0x223DE0F80](v296, -1, -1);
        }
      }
    }

    else
    {

      v293 = v461;
    }

    if (*(v284 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
    {
      v297 = *(v284 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);
    }

    else
    {
      v444 = RequestProcessorBase.assistantId.getter();
      v299 = v298;
      v300 = v412;
      RequestProcessorBase.sessionId.getter();
      v301 = RequestProcessorBase.requestId.getter();
      v451 = v302;
      v303 = v414;
      v304 = v413;
      v305 = v416;
      (*(v414 + 16))(v413, v300, v416);
      v306 = *(v303 + 32);
      v307 = v415;
      v306(v415, v304, v305);
      (*(v303 + 8))(v300, v305);
      v308 = type metadata accessor for DateInterval();
      v309 = v417;
      (*(*(v308 - 8) + 56))(v417, 1, 1, v308);
      v310 = type metadata accessor for PommesRequestContext();
      v311 = *(v310 + 48);
      v312 = *(v310 + 52);
      v297 = swift_allocObject();
      *(v297 + 16) = v444;
      *(v297 + 24) = v299;
      v284 = v462;
      v306((v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId), v307, v305);
      v293 = v461;
      v313 = (v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
      v314 = v451;
      *v313 = v301;
      v313[1] = v314;
      v315 = (v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
      *v315 = 0;
      v315[1] = 0;
      v316 = (v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
      *v316 = 0;
      v316[1] = 0;
      v317 = (v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
      *v317 = 0;
      v317[1] = 0;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
      v318 = MEMORY[0x277D84F90];
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
      outlined init with take of PommesSearchReason?(v309, v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v318;
      *(v297 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
    }

    v319 = v447;
    v320 = v446;
    if (*(v284 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8))
    {
      v321 = *(v284 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);

      v322 = InputOrigin.init(aceValue:)();
    }

    else
    {
      v324 = type metadata accessor for InputOrigin();
      (*(*(v324 - 8) + 56))(v319, 1, 1, v324);
    }

    v325 = v445;
    MEMORY[0x28223BE20](v322, v323);
    v326 = v457;
    v391[-10] = v456;
    v391[-9] = v326;
    v327 = v453;
    v391[-8] = v453;
    v391[-7] = v284;
    v391[-6] = v459;
    v391[-5] = v297;
    v391[-4] = v455;
    v391[-3] = v319;
    LOBYTE(v391[-2]) = v429;
    v391[-1] = v293;
    PommesSearchRequest.init(_:)(partial apply for closure #3 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:), v320);
    v328 = v437;
    outlined init with copy of MediaUserStateCenter?(v320, v437, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    if ((*(v438 + 48))(v328, 1, v439) == 1)
    {

      outlined destroy of MediaUserStateCenter?(v328, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      v329 = Logger.logObject.getter();
      v330 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v329, v330))
      {
        v331 = swift_slowAlloc();
        *v331 = 0;
        _os_log_impl(&dword_2232BB000, v329, v330, "Unable to construct PommesSearchRequest! Search will not complete", v331, 2u);
        MEMORY[0x223DE0F80](v331, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v320, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      outlined destroy of MediaUserStateCenter?(v319, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);

      (*(v449 + 8))(v459, v450);
    }

    else
    {
      outlined init with take of NLXResultCandidate(v328, v325, type metadata accessor for PommesSearchRequest);
      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v332 = type metadata accessor for InsightRequestSummaryLogger();
      __swift_project_value_buffer(v332, static Logger.insightRequestSummaryLogger);
      v333 = swift_allocObject();
      v333[2] = v284;
      v333[3] = v327;
      v334 = v457;
      v333[4] = v456;
      v333[5] = v334;

      InsightRequestSummaryLogger.emitDebug(_:)();

      v335 = *(v284 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
      v336 = swift_allocObject();
      swift_weakInit();
      v337 = swift_allocObject();
      v338 = v327;
      v339 = v337;
      *(v337 + 16) = v336;
      *(v337 + 24) = v338;
      v340 = *(*v335 + 272);

      v341 = v440;
      v340(v325, partial apply for closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:), v339);

      v342 = v418;
      outlined init with copy of MediaUserStateCenter?(v341, v418, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
      v343 = v419;
      if ((*(v431 + 48))(v342, 1, v419) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v342, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        v344 = Logger.logObject.getter();
        v345 = static os_log_type_t.debug.getter();
        v346 = os_log_type_enabled(v344, v345);
        v347 = v447;
        if (v346)
        {
          v348 = swift_slowAlloc();
          *v348 = 0;
          _os_log_impl(&dword_2232BB000, v344, v345, "No eager information available at POMMES search start", v348, 2u);
          MEMORY[0x223DE0F80](v348, -1, -1);
        }

        outlined destroy of MediaUserStateCenter?(v440, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined destroy of NLXResultCandidate(v445, type metadata accessor for PommesSearchRequest);
        outlined destroy of MediaUserStateCenter?(v446, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      }

      else
      {
        v349 = v407;
        outlined init with take of NLXResultCandidate(v342, v407, type metadata accessor for PommesSearchEagerInfo);
        v350 = v406;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v349, v406, type metadata accessor for PommesSearchEagerInfo);
        v351 = Logger.logObject.getter();
        v352 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v351, v352))
        {
          v353 = swift_slowAlloc();
          v354 = swift_slowAlloc();
          *&aBlock = v354;
          *v353 = 136315138;
          outlined init with copy of PommesBridgeResultCandidateState.ParseState(v350, v405, type metadata accessor for PommesSearchEagerInfo);
          v355 = String.init<A>(describing:)();
          v356 = v350;
          v357 = v355;
          v359 = v358;
          outlined destroy of NLXResultCandidate(v356, type metadata accessor for PommesSearchEagerInfo);
          v360 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v357, v359, &aBlock);

          *(v353 + 4) = v360;
          _os_log_impl(&dword_2232BB000, v351, v352, "Updating prState with eager search information: %s", v353, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v354);
          MEMORY[0x223DE0F80](v354, -1, -1);
          MEMORY[0x223DE0F80](v353, -1, -1);
        }

        else
        {

          outlined destroy of NLXResultCandidate(v350, type metadata accessor for PommesSearchEagerInfo);
        }

        v361 = v430;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v452, v430, type metadata accessor for PommesBridgeResultCandidateState);
        v362 = v458;
        v363 = v458[15];
        outlined destroy of MediaUserStateCenter?(v361 + v363, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v349, v361 + v363, type metadata accessor for PommesSearchEagerInfo);
        v364 = (*(v431 + 56))(v361 + v363, 0, 1, v343);
        v365 = (v441)(v364);
        v366 = v443;
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v443);
        v367 = v442;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v361, v442, type metadata accessor for PommesBridgeResultCandidateState);
        (v428)(v367, 0, 1, v362);
        (*(*v365 + 152))(v367, v366);

        outlined destroy of NLXResultCandidate(v349, type metadata accessor for PommesSearchEagerInfo);
        outlined destroy of MediaUserStateCenter?(v440, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined destroy of NLXResultCandidate(v445, type metadata accessor for PommesSearchRequest);
        outlined destroy of MediaUserStateCenter?(v446, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        outlined destroy of NLXResultCandidate(v361, type metadata accessor for PommesBridgeResultCandidateState);
        v347 = v447;
      }

      outlined destroy of MediaUserStateCenter?(v347, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);

      (*(v449 + 8))(v459, v450);
    }
  }

  outlined destroy of MediaUserStateCenter?(v138, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  swift_deallocBox();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v153 = type metadata accessor for Logger();
  __swift_project_value_buffer(v153, static Logger.pommes);
  v154 = v452;
  v155 = v448;
  v156 = v461;
  v157 = v453;
  (*(v452 + 16))(v448, v461, v453);
  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *&aBlock = v161;
    *v160 = 136315138;
    v162 = PommesCandidateId.description.getter();
    v164 = v163;
    (*(v154 + 8))(v155, v157);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v164, &aBlock);

    *(v160 + 4) = v165;
    _os_log_impl(&dword_2232BB000, v158, v159, "Unable to retrieve mutable prState for pommesCandidateId=%s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x223DE0F80](v161, -1, -1);
    MEMORY[0x223DE0F80](v160, -1, -1);
  }

  else
  {

    (*(v154 + 8))(v155, v157);
  }

  v190 = v456;
  v191 = v454;
  v192 = v457;
  (*(v456 + 104))(v454, *MEMORY[0x277D56670], v457);
  PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v156, v191, 5u, v455);
  return (*(v190 + 8))(v191, v192);
}

uint64_t closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)()
{
  v0 = type metadata accessor for PommesCandidateId();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v11, v10, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v5);
    outlined destroy of NLXResultCandidate(v10, type metadata accessor for PommesBridgeResultCandidateState);
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v14 = swift_allocError();
    *v15 = 0;
    (*(*v13 + class metadata base offset for PommesBridgeRequestProcessor + 480))(v5, v14, 1);

    return (*(v1 + 8))(v5, v0);
  }

  return result;
}

uint64_t closure #3 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v276 = a7;
  v277 = a5;
  v275 = a3;
  v272 = a2;
  v265 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v250 = &v231 - v17;
  v235 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v234 = *(v235 - 8);
  v18 = *(v234 + 64);
  MEMORY[0x28223BE20](v235, v19);
  v233 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v243 = *(v239 - 8);
  v21 = *(v243 + 64);
  MEMORY[0x28223BE20](v239, v22);
  v241 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for SiriUserInput();
  v244 = *(v245 - 8);
  v24 = *(v244 + 64);
  v26 = MEMORY[0x28223BE20](v245, v25);
  v238 = &v231 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v242 = &v231 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v261 = &v231 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v240 = &v231 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v260 = &v231 - v40;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v41 = *(*(v237 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v237, v42);
  v236 = &v231 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v247 = &v231 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v258 = &v231 - v49;
  v249 = type metadata accessor for NLXResultCandidate();
  v50 = *(*(v249 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v249, v51);
  v246 = &v231 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v248 = (&v231 - v55);
  v264 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v56 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v264, v57);
  v266 = &v231 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v59 = *(*(v257 - 8) + 64);
  MEMORY[0x28223BE20](v257, v60);
  v256 = &v231 - v61;
  v271 = type metadata accessor for PommesCandidateId();
  v262 = *(v271 - 8);
  v62 = *(v262 + 64);
  MEMORY[0x28223BE20](v271, v63);
  v252 = (&v231 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v263 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v65 = *(*(v263 - 8) + 64);
  MEMORY[0x28223BE20](v263, v66);
  v251 = (&v231 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v68 = *(*(v255 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v255, v69);
  v254 = &v231 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v72);
  v273 = &v231 - v73;
  v74 = type metadata accessor for UserID();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v77);
  v79 = &v231 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = a4;
  v80 = swift_projectBox();
  v269 = swift_projectBox();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v270 = a10;
  v81 = type metadata accessor for Logger();
  v82 = __swift_project_value_buffer(v81, static Logger.pommes);
  v83 = *(v75 + 16);
  v268 = a6;
  v83(v79, a6, v74);
  v267 = a9;
  outlined init with copy of MediaUserStateCenter?(a9, v273, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  swift_retain_n();
  swift_retain_n();
  v84 = v275;

  v85 = v276;

  v259 = v82;
  v86 = v84;
  v87 = Logger.logObject.getter();
  LODWORD(v84) = static os_log_type_t.info.getter();

  v253 = v84;
  if (os_log_type_enabled(v87, v84))
  {
    v88 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v280 = v232;
    *v88 = 136317442;
    *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v272, v86, &v280);
    *(v88 + 12) = 2080;
    swift_beginAccess();
    v89 = v251;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v251, type metadata accessor for PommesBridgeResultCandidateState);
    v90 = v252;
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v252);
    outlined destroy of NLXResultCandidate(v89, type metadata accessor for PommesBridgeResultCandidateState);
    v91 = PommesCandidateId.description.getter();
    v251 = v87;
    v93 = v92;
    v94 = v262;
    (*(v262 + 8))(v90, v271);
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v280);

    *(v88 + 14) = v95;
    *(v88 + 22) = 1024;
    LODWORD(v95) = *(v277 + direct field offset for PommesBridgeRequestProcessor.isMultiUser);

    *(v88 + 24) = v95;

    *(v88 + 28) = 2080;
    lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298]);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    (*(v75 + 8))(v79, v74);
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v280);

    *(v88 + 30) = v99;
    *(v88 + 38) = 2080;
    v279 = v276;
    type metadata accessor for PommesRequestContext();

    v100 = String.init<A>(describing:)();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v280);

    *(v88 + 40) = v102;
    *(v88 + 48) = 2080;
    v103 = v269;
    swift_beginAccess();
    outlined init with copy of MediaUserStateCenter?(v103, v256, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v104 = String.init<A>(describing:)();
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v280);

    *(v88 + 50) = v106;
    *(v88 + 58) = 2080;
    v107 = v273;
    outlined init with copy of MediaUserStateCenter?(v273, v254, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v108 = String.init<A>(describing:)();
    v110 = v109;
    v111 = v107;
    v112 = v272;
    outlined destroy of MediaUserStateCenter?(v111, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v280);

    *(v88 + 60) = v113;
    *(v88 + 68) = 2080;
    swift_beginAccess();
    v114 = v263;
    v279 = *(v80 + *(v263 + 32));
    v115 = v279;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
    v116 = String.init<A>(describing:)();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v280);

    *(v88 + 70) = v118;
    *(v88 + 78) = 1024;
    *(v88 + 80) = v270 & 1;
    *(v88 + 84) = 1024;
    swift_beginAccess();
    LODWORD(v113) = *(v80 + v114[14]);

    *(v88 + 86) = v113;

    v119 = v251;
    _os_log_impl(&dword_2232BB000, v251, v253, "Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    userId=%s,\n    requestContext: %s,\n    pommesContext: %s,\n    inputOrigin: %s,\n    asrSpeechPackage: %s,\n    isFallback=%{BOOL}d,\n    isGestureBased=%{BOOL}d", v88, 0x5Au);
    v120 = v232;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v120, -1, -1);
    v121 = v88;
    v122 = v276;
    MEMORY[0x223DE0F80](v121, -1, -1);

    v123 = v277;
  }

  else
  {
    v122 = v85;

    v124 = v277;

    outlined destroy of MediaUserStateCenter?(v273, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    (*(v75 + 8))(v79, v74);
    v123 = v124;
    v112 = v272;
    v114 = v263;
    v94 = v262;
  }

  v125 = a1[1];
  v126 = v275;

  *a1 = v112;
  a1[1] = v126;
  v127 = type metadata accessor for PommesSearchRequest.Builder(0);
  v128 = v127[6];
  outlined destroy of MediaUserStateCenter?(a1 + v128, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v129 = v271;
  (*(v94 + 16))(a1 + v128, v265, v271);
  (*(v94 + 56))(a1 + v128, 0, 1, v129);
  v130 = RequestProcessorBase.rootLevelRequestId.getter();
  v132 = v131;
  v133 = (a1 + v127[7]);
  v134 = v133[1];

  *v133 = v130;
  v133[1] = v132;
  *(a1 + v127[9]) = *(v123 + direct field offset for PommesBridgeRequestProcessor.isMultiUser);
  v135 = v127[8];
  v136 = *(a1 + v135);

  *(a1 + v135) = v122;
  v137 = v269;
  swift_beginAccess();
  v138 = v127[11];
  outlined destroy of MediaUserStateCenter?(a1 + v138, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined init with copy of MediaUserStateCenter?(v137, a1 + v138, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined assign with copy of ConversationSessionState?(v267, a1 + v127[12], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  swift_beginAccess();
  v139 = *(v80 + v114[8]);
  v140 = v127[17];
  v141 = *(a1 + v140);
  v276 = v139;

  *(a1 + v140) = v139;
  *(a1 + v127[18]) = v270 & 1;
  v142 = UserID.sharedUserId.getter();
  v144 = v143;
  v145 = (a1 + v127[19]);
  v146 = v145[1];

  *v145 = v142;
  v145[1] = v144;
  swift_beginAccess();
  *(a1 + v127[20]) = *(v80 + v114[6]);
  *(a1 + v127[21]) = *(v80 + v114[14]);
  v147 = v266;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v266, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v170 = *(v147 + 8);

    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v172 = v248;
    outlined init with take of NLXResultCandidate(v147 + *(v171 + 48), v248, type metadata accessor for NLXResultCandidate);
    v173 = v246;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v172, v246, type metadata accessor for NLXResultCandidate);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v278 = v177;
      *v176 = 136315138;
      v178 = NLXResultCandidate.description.getter();
      v180 = v179;
      outlined destroy of NLXResultCandidate(v173, type metadata accessor for NLXResultCandidate);
      v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v180, &v278);

      *(v176 + 4) = v181;
      _os_log_impl(&dword_2232BB000, v174, v175, "Pommes search request parse detail: %s", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v177);
      MEMORY[0x223DE0F80](v177, -1, -1);
      MEMORY[0x223DE0F80](v176, -1, -1);
    }

    else
    {

      outlined destroy of NLXResultCandidate(v173, type metadata accessor for NLXResultCandidate);
    }

    v212 = *v172;
    v213 = v127[14];
    v214 = *(a1 + v213);

    *(a1 + v213) = v212;
    v215 = v249;
    v216 = (v172 + *(v249 + 24));
    v217 = *v216;
    v218 = v216[1];
    v219 = (a1 + v127[16]);
    v220 = v219[1];

    *v219 = v217;
    v219[1] = v218;
    *(a1 + v127[10]) = 0;
    v221 = v172 + *(v215 + 20);
    v222 = a1 + v127[15];
    return outlined assign with take of MediaUserStateCenter?(v221, v222, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v182 = *v147;
    v183 = *(v147 + 8);
    v184 = v147 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
    v185 = v250;
    outlined init with take of PommesSearchReason?(v184, v250, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v186 = v127[14];
    v187 = *(a1 + v186);

    *(a1 + v186) = v183;
    v188 = [v182 responseVariantResult];
    if (v188)
    {
      v189 = v188;
      v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v192 = v191;
    }

    else
    {

      v190 = 0;
      v192 = 0;
    }

    v223 = (a1 + v127[16]);
    v224 = v223[1];

    *v223 = v190;
    v223[1] = v192;
    *(a1 + v127[10]) = *(v277 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome);
    v222 = a1 + v127[15];
    v221 = v185;
    return outlined assign with take of MediaUserStateCenter?(v221, v222, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  v149 = *(v147 + 8);

  v150 = *(v147 + 24);

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v152 = v151[20];
  v153 = v151[24];
  v154 = v258;
  outlined init with take of PommesSearchReason?(v147 + v151[16], v258, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v147 + v152, v260, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v147 + v153, v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v155 = v247;
  outlined init with copy of MediaUserStateCenter?(v154, v247, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v156 = Logger.logObject.getter();
  v157 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v278 = v159;
    *v158 = 136315138;
    outlined init with copy of MediaUserStateCenter?(v155, v236, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v160 = String.init<A>(describing:)();
    v161 = v155;
    v163 = v162;
    outlined destroy of MediaUserStateCenter?(v161, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v164 = v160;
    v154 = v258;
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v163, &v278);

    *(v158 + 4) = v165;
    v166 = v277;
    _os_log_impl(&dword_2232BB000, v156, v157, "Pommes search request parse detail: %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v159);
    MEMORY[0x223DE0F80](v159, -1, -1);
    MEMORY[0x223DE0F80](v158, -1, -1);

    v167 = v245;
    v168 = v244;
    v169 = v240;
  }

  else
  {

    outlined destroy of MediaUserStateCenter?(v155, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v167 = v245;
    v168 = v244;
    v169 = v240;
    v166 = v277;
  }

  outlined assign with copy of ConversationSessionState?(v154, a1 + v127[13], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  *(a1 + v127[10]) = *(v166 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome);
  v193 = v260;
  outlined init with copy of MediaUserStateCenter?(v260, v169, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  if ((*(v168 + 48))(v169, 1, v167) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v193, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(v154, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return outlined destroy of MediaUserStateCenter?(v169, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  }

  v195 = v242;
  (*(v168 + 32))(v242, v169, v167);
  v196 = v241;
  PommesBridgeRequestProcessor.buildRewriteMessage(rewriteUtterance:rewriteReason:)(v272, v275, v261);
  v197 = v127[5];
  outlined destroy of MediaUserStateCenter?(a1 + v197, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v198 = v243;
  v199 = v239;
  (*(v243 + 16))(a1 + v197, v196, v239);
  (*(v198 + 56))(a1 + v197, 0, 1, v199);
  v200 = v238;
  (*(v168 + 16))(v238, v195, v167);
  v201 = (*(v168 + 88))(v200, v167);
  if (v201 == *MEMORY[0x277D5CD98])
  {
    (*(v168 + 96))(v200, v167);
    v202 = *v200;

    *(a1 + v140) = v202;
    v203 = [v202 recognition];

    v204 = v258;
    if (v203)
    {
      v205 = AFSpeechRecognition.toAsrHypotheses()();

      if (v205[2])
      {
        v206 = v234;
        v207 = v233;
        v208 = v235;
        (*(v234 + 16))(v233, v205 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v235);

        v209 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
        v211 = v210;
        (*(v206 + 8))(v207, v208);
        (*(v243 + 8))(v241, v199);
        (*(v168 + 8))(v242, v167);
        outlined destroy of MediaUserStateCenter?(v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v260, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        outlined destroy of MediaUserStateCenter?(v204, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_28:

        *a1 = v209;
        a1[1] = v211;
        return result;
      }
    }

    (*(v243 + 8))(v241, v199);
    (*(v168 + 8))(v242, v167);
    outlined destroy of MediaUserStateCenter?(v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v260, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    return outlined destroy of MediaUserStateCenter?(v204, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    v225 = v258;
    if (v201 == *MEMORY[0x277D5CD90])
    {
      (*(v243 + 8))(v241, v199);
      (*(v168 + 8))(v242, v167);
      outlined destroy of MediaUserStateCenter?(v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(v193, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
      outlined destroy of MediaUserStateCenter?(v225, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      (*(v168 + 96))(v200, v167);
      v209 = *v200;
      v211 = *(v200 + 1);
      goto LABEL_28;
    }

    v226 = Logger.logObject.getter();
    v227 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&dword_2232BB000, v226, v227, "originalUserInput is nil or unknown type", v228, 2u);
      v229 = v228;
      v193 = v260;
      MEMORY[0x223DE0F80](v229, -1, -1);
    }

    (*(v243 + 8))(v241, v199);
    v230 = *(v168 + 8);
    v230(v242, v167);
    outlined destroy of MediaUserStateCenter?(v261, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v193, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(v225, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return (v230)(v200, v167);
  }
}

uint64_t implicit closure #9 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v4 = type metadata accessor for PommesCandidateId();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v48 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = swift_projectBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_2234D4CC0;
  v22 = v21 + v20;
  v23 = v22 + v18[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v23, "PommesBridge");
  *(v23 + 13) = 0;
  *(v23 + 14) = -5120;
  v24 = (v22 + v19 + v18[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v24 = 0xD000000000000017;
  v24[1] = 0x80000002234D9520;
  v25 = (v22 + 2 * v19 + v18[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v25 = RequestProcessorBase.assistantId.getter();
  v25[1] = v26;
  v27 = (v22 + 3 * v19 + v18[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  (*(v13 + 8))(v17, v12);
  *v27 = v28;
  v27[1] = v30;
  v31 = (v22 + 4 * v19 + v18[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v31 = RequestProcessorBase.requestId.getter();
  v31[1] = v32;
  v33 = (v22 + 5 * v19 + v18[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  v34 = v45;
  swift_beginAccess();
  v35 = v47;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v34, v47, type metadata accessor for PommesBridgeResultCandidateState);
  v36 = v48;
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v48);
  outlined destroy of NLXResultCandidate(v35, type metadata accessor for PommesBridgeResultCandidateState);
  v37 = v36;
  v38 = PommesCandidateId.asResultCandidateId.getter();
  v40 = v39;
  (*(v49 + 8))(v37, v50);
  *v33 = v38;
  v33[1] = v40;
  v41 = (v22 + 6 * v19 + v18[14]);
  static InsightRequestSummaryKey.utterance.getter();
  v42 = v52;
  *v41 = v51;
  v41[1] = v42;

  return v46;
}

uint64_t PommesCandidateId.asResultCandidateId.getter()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v0, v1);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D56618])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x277D56620])
  {
    (*(v2 + 96))(v6, v1);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];

    return v10;
  }

  else
  {
    if (v7 == *MEMORY[0x277D56610])
    {
LABEL_2:
      (*(v2 + 96))(v6, v1);
      result = *v6;
      v9 = v6[1];
      return result;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "No resultCandidateId for unexpected pommesCandidateId. Passing empty string for resultCandidateId.", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }
}

uint64_t closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PommesCandidateId();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v15, v14, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v9);
    outlined destroy of NLXResultCandidate(v14, type metadata accessor for PommesBridgeResultCandidateState);
    (*(*v17 + class metadata base offset for PommesBridgeRequestProcessor + 480))(v9, a1, a2 & 1);

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, int a3)
{
  v392 = a3;
  v393 = a2;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v5 = *(*(v368 - 8) + 64);
  MEMORY[0x28223BE20](v368, v6);
  v369 = (&v365 - v7);
  v399 = type metadata accessor for PommesError();
  v398 = *(v399 - 8);
  v8 = *(v398 + 64);
  v10 = MEMORY[0x28223BE20](v399, v9);
  v365 = &v365 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v375 = &v365 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v373 = &v365 - v17;
  v380 = type metadata accessor for UserID();
  v379 = *(v380 - 8);
  v18 = *(v379 + 64);
  MEMORY[0x28223BE20](v380, v19);
  v378 = &v365 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v396 = &v365 - v24;
  v410 = type metadata accessor for PommesSearchReason();
  v417 = *(v410 - 8);
  v25 = *(v417 + 64);
  v27 = MEMORY[0x28223BE20](v410, v26);
  v371 = &v365 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v366 = &v365 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v372 = &v365 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v377 = &v365 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v397 = &v365 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v376 = &v365 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v406 = &v365 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v47 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v46 - 8, v48);
  v387 = &v365 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v390 = (&v365 - v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v382 = *(v53 - 8);
  v54 = *(v382 + 64);
  v56 = MEMORY[0x28223BE20](v53 - 8, v55);
  v384 = &v365 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v370 = &v365 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v374 = &v365 - v63;
  v383 = v64;
  MEMORY[0x28223BE20](v62, v65);
  v412 = &v365 - v66;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v67 = *(*(v413 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v413, v68);
  v394 = (&v365 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = MEMORY[0x28223BE20](v69, v71);
  v386 = (&v365 - v73);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v391 = (&v365 - v76);
  v78 = MEMORY[0x28223BE20](v75, v77);
  v389 = (&v365 - v79);
  MEMORY[0x28223BE20](v78, v80);
  v400 = (&v365 - v81);
  v82 = type metadata accessor for PommesCandidateId();
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  v86 = MEMORY[0x28223BE20](v82, v85);
  v388 = &v365 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86, v87);
  v385 = &v365 - v89;
  v91 = MEMORY[0x28223BE20](v88, v90);
  v395 = (&v365 - v92);
  v94 = MEMORY[0x28223BE20](v91, v93);
  v402 = &v365 - v95;
  MEMORY[0x28223BE20](v94, v96);
  v98 = &v365 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v100 = *(*(v99 - 8) + 64);
  v102 = MEMORY[0x28223BE20](v99 - 8, v101);
  v367 = &v365 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x28223BE20](v102, v104);
  v401 = &v365 - v106;
  MEMORY[0x28223BE20](v105, v107);
  v109 = &v365 - v108;
  v110 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v411 = *(v110 - 1);
  v111 = v411[7];
  v405 = v110;
  v111(v109, 1, 1);
  v427 = 0;
  v112 = RequestProcessorBase.requestQueue.getter();
  v113 = *(v83 + 16);
  v421 = a1;
  v415 = v83 + 16;
  v419 = v113;
  v113(v98, a1, v82);
  v114 = *(v83 + 80);
  v115 = (v114 + 24) & ~v114;
  v381 = v84;
  v403 = (v115 + v84);
  v116 = (v115 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v407 = v114;
  v117 = swift_allocObject();
  *(v117 + 16) = v3;
  v416 = v83;
  v119 = *(v83 + 32);
  v118 = (v83 + 32);
  v404 = v115;
  v409 = v98;
  v422 = v82;
  v408 = v119;
  v119((v117 + v115), v98, v82);
  *(v117 + v116) = &v427;
  v418 = v109;
  *(v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v120 = swift_allocObject();
  *(v120 + 16) = partial apply for closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:);
  *(v120 + 24) = v117;
  v414 = v117;
  v425 = thunk for @callee_guaranteed () -> ()partial apply;
  v426 = v120;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  v424 = &block_descriptor_51;
  v121 = _Block_copy(aBlock);
  v420 = v3;

  dispatch_sync(v112, v121);

  _Block_release(v121);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_98;
  }

  if ((v427 & 1) == 0)
  {
    v117 = v421;
    v118 = v419;
    if (one-time initialization token for pommes == -1)
    {
LABEL_9:
      v145 = type metadata accessor for Logger();
      __swift_project_value_buffer(v145, static Logger.pommes);
      v146 = v402;
      v147 = v422;
      v118(v402, v117, v422);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.debug.getter();
      v150 = os_log_type_enabled(v148, v149);
      v151 = v420;
      if (v150)
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        aBlock[0] = v153;
        *v152 = 136315138;
        v154 = PommesCandidateId.description.getter();
        v156 = v155;
        (*(v416 + 8))(v146, v422);
        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, aBlock);
        v117 = v421;

        *(v152 + 4) = v157;
        _os_log_impl(&dword_2232BB000, v148, v149, "Not posting pommes message, %s finished", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v158 = v153;
        v147 = v422;
        MEMORY[0x223DE0F80](v158, -1, -1);
        v159 = v152;
        v118 = v419;
        MEMORY[0x223DE0F80](v159, -1, -1);
      }

      else
      {

        (*(v416 + 8))(v146, v147);
      }

      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v176 = type metadata accessor for InsightRequestSummaryLogger();
      __swift_project_value_buffer(v176, static Logger.insightRequestSummaryLogger);
      v177 = v409;
      v118(v409, v117, v147);
      v178 = swift_allocObject();
      *(v178 + 16) = v151;
      v408(&v404[v178], v177, v147);

      InsightRequestSummaryLogger.emitDebug(_:)();

      goto LABEL_92;
    }

LABEL_98:
    swift_once();
    goto LABEL_9;
  }

  v123 = v418;
  v124 = v401;
  outlined init with copy of MediaUserStateCenter?(v418, v401, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v125 = v411 + 6;
  v126 = v411[6];
  v127 = v126(v124, 1, v405);
  outlined destroy of MediaUserStateCenter?(v124, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if (v127 == 1)
  {
    v128 = v421;
    v129 = v419;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.pommes);
    v131 = v388;
    v132 = v422;
    v129(v388, v128, v422);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    v135 = os_log_type_enabled(v133, v134);
    v136 = v420;
    if (v135)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v137 = 136315138;
      v139 = PommesCandidateId.description.getter();
      v140 = v131;
      v141 = v123;
      v143 = v142;
      (*(v416 + 8))(v140, v132);
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v143, aBlock);
      v123 = v141;

      *(v137 + 4) = v144;
      _os_log_impl(&dword_2232BB000, v133, v134, "Not posting pommes message, no Pommes state for %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v138);
      MEMORY[0x223DE0F80](v138, -1, -1);
      MEMORY[0x223DE0F80](v137, -1, -1);
    }

    else
    {

      (*(v416 + 8))(v131, v132);
    }

    v179 = *(v136 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
    v180 = RequestProcessorBase.requestId.getter();
    v182 = v181;
    v183 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v179 + 144))(5, v421, v180, v182, v183, v184);

    goto LABEL_93;
  }

  v402 = v126;
  v411 = v125;
  v403 = v118;
  v160 = v413;
  v161 = *(v413 + 48);
  v162 = *(v420 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v163 = RequestProcessorBase.requestId.getter();
  v165 = v164;
  v166 = RequestProcessorBase.rootLevelRequestId.getter();
  v167 = v400 + v161;
  v168 = v400;
  v169 = v421;
  v171 = (*(*v162 + 160))(v167, v421, v163, v165, v166, v170, v393, v392 & 1);

  *v168 = v171;
  v172 = v389;
  outlined init with copy of MediaUserStateCenter?(v168, v389, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);

  v173 = v390;
  outlined init with take of PommesSearchReason?(v172 + *(v160 + 48), v390, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v174 = type metadata accessor for PommesSearchError(0);
  v175 = *(*(v174 - 8) + 48);
  if (v175(v173, 1, v174) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v173, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    (*(v398 + 56))(v412, 1, 1, v399);
  }

  else
  {
    v185 = *v173;
    v186 = *v173;
    outlined destroy of NLXResultCandidate(v173, type metadata accessor for PommesSearchError);
    aBlock[0] = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v187 = v412;
    v188 = v399;
    v189 = swift_dynamicCast();
    (*(v398 + 56))(v187, v189 ^ 1u, 1, v188);
  }

  v190 = v410;
  v191 = v391;
  outlined init with copy of MediaUserStateCenter?(v168, v391, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v192 = *v191;
  v193 = *(v413 + 48);
  if (*v191)
  {
    v194 = v168;
    v195 = v191;
    v196 = v396;
    dispatch thunk of PommesResponse.searchReason.getter();

    v197 = v196;
    v198 = v417;
    (*(v417 + 56))(v197, 0, 1, v190);
    v199 = v195 + v193;
    v168 = v194;
    outlined destroy of MediaUserStateCenter?(v199, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v200 = (*(v198 + 48))(v197, 1, v190);
    v201 = v395;
    if (v200 != 1)
    {
      v202 = v406;
      (*(v417 + 32))(v406, v197, v190);
      v203 = v397;
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v191 + v193, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v197 = v396;
    (*(v417 + 56))(v396, 1, 1, v190);
    v201 = v395;
  }

  v204 = v386;
  outlined init with copy of MediaUserStateCenter?(v168, v386, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);

  v205 = v204 + *(v413 + 48);
  v206 = v387;
  outlined init with take of PommesSearchReason?(v205, v387, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v207 = v175(v206, 1, v174);
  v208 = v406;
  if (v207 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v206, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    (*(v417 + 104))(v208, *MEMORY[0x277D56670], v190);
  }

  else
  {
    v209 = *(v174 + 20);
    v210 = v417;
    v211 = v376;
    (*(v417 + 16))(v376, v206 + v209, v190);
    outlined destroy of NLXResultCandidate(v206, type metadata accessor for PommesSearchError);
    (*(v210 + 32))(v208, v211, v190);
  }

  v203 = v397;
  v202 = v208;
  if ((*(v417 + 48))(v197, 1, v190) != 1)
  {
    outlined destroy of MediaUserStateCenter?(v197, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  }

LABEL_29:
  v212 = v394;
  outlined init with copy of MediaUserStateCenter?(v168, v394, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v404 = *v212;
  outlined destroy of MediaUserStateCenter?(v212 + *(v413 + 48), &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v213 = v422;
  v419(v201, v169, v422);
  v214 = v416;
  v215 = (*(v416 + 88))(v201, v213);
  if (v215 == *MEMORY[0x277D56618])
  {
    (*(v214 + 96))(v201, v213);
    v216 = v201[1];
    v411 = *v201;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v217 = type metadata accessor for Logger();
    __swift_project_value_buffer(v217, static Logger.pommes);
    v218 = *(v417 + 16);
    v218(v203, v202, v190);
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.debug.getter();
    v221 = os_log_type_enabled(v219, v220);
    v222 = v420;
    v223 = v404;
    if (v221)
    {
      v224 = swift_slowAlloc();
      v405 = swift_slowAlloc();
      aBlock[0] = v405;
      *v224 = 136315138;
      v225 = v223;
      v226 = v216;
      v218(v377, v203, v410);
      v227 = v417;
      v228 = String.init<A>(describing:)();
      v230 = v229;
      v231 = v227;
      v216 = v226;
      v223 = v225;
      v413 = *(v231 + 8);
      (v413)(v203, v410);
      v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v228, v230, aBlock);

      *(v224 + 4) = v232;
      _os_log_impl(&dword_2232BB000, v219, v220, "Building POMMES result candidate message on rcId path with reason: %s", v224, 0xCu);
      v233 = v405;
      __swift_destroy_boxed_opaque_existential_1(v405);
      v190 = v410;
      MEMORY[0x223DE0F80](v233, -1, -1);
      v234 = v224;
      v202 = v406;
      MEMORY[0x223DE0F80](v234, -1, -1);
    }

    else
    {

      v413 = *(v417 + 8);
      (v413)(v203, v190);
    }

    v245 = (*(*v222 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v411, v216, v223, v412, v202);

    v246 = v421;
    v247 = v422;
    if (v245)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v215 != *MEMORY[0x277D56620])
  {
    if (v215 != *MEMORY[0x277D56610])
    {
      v290 = v404;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v291 = type metadata accessor for Logger();
      __swift_project_value_buffer(v291, static Logger.pommes);
      v292 = Logger.logObject.getter();
      v293 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        *v294 = 0;
        _os_log_impl(&dword_2232BB000, v292, v293, "Unexpected pommesCandidateId. Not posting any message.", v294, 2u);
        MEMORY[0x223DE0F80](v294, -1, -1);
      }

      (*(v417 + 8))(v202, v190);
      outlined destroy of MediaUserStateCenter?(v168, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
      (*(v214 + 8))(v201, v213);
      goto LABEL_91;
    }

    (*(v214 + 8))(v201, v213);
    v223 = v404;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v275 = type metadata accessor for Logger();
    v276 = __swift_project_value_buffer(v275, static Logger.pommes);
    v277 = *(v417 + 16);
    v278 = v371;
    v279 = v410;
    v277(v371, v202, v410);
    v413 = v276;
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      aBlock[0] = v283;
      *v282 = 136315138;
      v277(v377, v278, v279);
      v284 = String.init<A>(describing:)();
      v286 = v285;
      v287 = *(v417 + 8);
      v287(v278, v279);
      v288 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v286, aBlock);

      *(v282 + 4) = v288;
      _os_log_impl(&dword_2232BB000, v280, v281, "Building RunPommesResponseMessage with reason: %s", v282, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v283);
      v289 = v283;
      v202 = v406;
      MEMORY[0x223DE0F80](v289, -1, -1);
      MEMORY[0x223DE0F80](v282, -1, -1);
    }

    else
    {

      v287 = *(v417 + 8);
      v287(v278, v279);
    }

    v190 = v279;
    v336 = v399;
    v337 = v370;
    outlined init with copy of MediaUserStateCenter?(v412, v370, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v338 = v398;
    v339 = (*(v398 + 48))(v337, 1, v336);
    v247 = v422;
    if (v339 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v337, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      if (!v223)
      {
        v362 = Logger.logObject.getter();
        v363 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          *v364 = 0;
          _os_log_impl(&dword_2232BB000, v362, v363, "No POMMES result or error! Not posting any message", v364, 2u);
          MEMORY[0x223DE0F80](v364, -1, -1);
        }

        v287(v202, v190);
        v360 = v400;
        goto LABEL_90;
      }

      v413 = v287;
      v340 = v369;
      *v369 = v223;
      swift_storeEnumTagMultiPayload();
      v341 = v367;
      outlined init with copy of MediaUserStateCenter?(v418, v367, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      v342 = v202;
      v343 = *(*v420 + class metadata base offset for PommesBridgeRequestProcessor + 552);
      v344 = v223;
      v245 = v343(v340, v341, v342);
      outlined destroy of MediaUserStateCenter?(v341, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      outlined destroy of MediaUserStateCenter?(v340, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
      if (!v245)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v413 = v287;
      v347 = v365;
      (*(v338 + 32))(v365, v337, v336);
      v348 = v369;
      (*(v338 + 16))(v369, v347, v336);
      swift_storeEnumTagMultiPayload();
      v349 = v367;
      outlined init with copy of MediaUserStateCenter?(v418, v367, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      v245 = (*(*v420 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v348, v349, v202);
      outlined destroy of MediaUserStateCenter?(v349, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      outlined destroy of MediaUserStateCenter?(v348, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
      (*(v338 + 8))(v347, v336);
      if (!v245)
      {
LABEL_85:
        v354 = v400;
        v355 = v413;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v356 = type metadata accessor for Logger();
        __swift_project_value_buffer(v356, static Logger.pommes);
        v357 = Logger.logObject.getter();
        v358 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v357, v358))
        {
          v359 = swift_slowAlloc();
          *v359 = 0;
          _os_log_impl(&dword_2232BB000, v357, v358, "Could not construct PommesResultCandidate message, builder function returned nil", v359, 2u);
          MEMORY[0x223DE0F80](v359, -1, -1);
        }

        v355(v202, v190);
        v360 = v354;
LABEL_90:
        outlined destroy of MediaUserStateCenter?(v360, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
LABEL_91:
        outlined destroy of MediaUserStateCenter?(v412, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
LABEL_92:
        v123 = v418;
        goto LABEL_93;
      }
    }

    v246 = v421;
LABEL_40:
    v248 = v407;
    v411 = v245;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v249 = type metadata accessor for InsightRequestSummaryLogger();
    v405 = __swift_project_value_buffer(v249, static Logger.insightRequestSummaryLogger);
    v250 = v384;
    outlined init with copy of MediaUserStateCenter?(v412, v384, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v251 = v409;
    v252 = v419;
    v419(v409, v246, v247);
    v253 = (*(v382 + 80) + 16) & ~*(v382 + 80);
    v254 = (v383 + v253 + 7) & 0xFFFFFFFFFFFFFFF8;
    v255 = (v248 + v254 + 8) & ~v248;
    v256 = swift_allocObject();
    outlined init with take of PommesSearchReason?(v250, v256 + v253, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    *(v256 + v254) = v420;
    v257 = v422;
    v408((v256 + v255), v251, v422);

    InsightRequestSummaryLogger.emitDebug(_:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v258 = type metadata accessor for Logger();
    __swift_project_value_buffer(v258, static Logger.pommes);
    v259 = v385;
    v252(v385, v246, v257);
    v260 = Logger.logObject.getter();
    v261 = static os_log_type_t.debug.getter();
    v262 = os_log_type_enabled(v260, v261);
    v263 = v400;
    if (v262)
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      aBlock[0] = v265;
      *v264 = 136315138;
      v266 = PommesCandidateId.asResultCandidateId.getter();
      v267 = v257;
      v269 = v268;
      (*(v416 + 8))(v259, v267);
      v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v266, v269, aBlock);

      *(v264 + 4) = v270;
      _os_log_impl(&dword_2232BB000, v260, v261, "Posting pommes result candidate for %s", v264, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v265);
      MEMORY[0x223DE0F80](v265, -1, -1);
      MEMORY[0x223DE0F80](v264, -1, -1);
    }

    else
    {

      (*(v416 + 8))(v259, v257);
    }

    v271 = v410;
    v272 = v404;
    v273 = v413;
    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(aBlock, v424);
    v274 = v411;
    dispatch thunk of MessagePublishing.postMessage(_:)();

    v273(v406, v271);
    outlined destroy of MediaUserStateCenter?(v263, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_91;
  }

  (*(v214 + 96))(v201, v213);
  v235 = v201[1];
  v395 = *v201;
  v401 = v235;
  v236 = v201[3];
  v396 = v201[2];
  v397 = v236;
  v123 = v418;
  v237 = v405;
  if ((v402)(v418, 1, v405))
  {
    v238 = v379;
    v239 = v373;
    v240 = v380;
    (*(v379 + 56))(v373, 1, 1, v380);
    static UserID.defaultUserId.getter();
    v241 = (*(v238 + 48))(v239, 1, v240);
    v242 = v420;
    v243 = v399;
    v244 = v374;
    if (v241 != 1)
    {
      outlined destroy of MediaUserStateCenter?(v239, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v295 = v379;
    v296 = v123 + *(v237 + 5);
    v297 = v373;
    v298 = v380;
    (*(v379 + 16))(v373, v296, v380);
    (*(v295 + 56))(v297, 0, 1, v298);
    (*(v295 + 32))(v378, v297, v298);
    v242 = v420;
    v243 = v399;
    v244 = v374;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v299 = type metadata accessor for Logger();
  __swift_project_value_buffer(v299, static Logger.pommes);

  v300 = Logger.logObject.getter();
  v301 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v300, v301))
  {
    v302 = swift_slowAlloc();
    v303 = swift_slowAlloc();
    aBlock[0] = v303;
    *v302 = 136315138;
    v304 = RequestProcessorBase.requestId.getter();
    v306 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v304, v305, aBlock);

    *(v302 + 4) = v306;
    _os_log_impl(&dword_2232BB000, v300, v301, "No userId in prState, falling back to defaultUserId for request %s", v302, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v303);
    v307 = v303;
    v242 = v420;
    MEMORY[0x223DE0F80](v307, -1, -1);
    v123 = v418;
    MEMORY[0x223DE0F80](v302, -1, -1);
  }

  v308 = v404;
  outlined init with copy of MediaUserStateCenter?(v412, v244, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v309 = v398;
  v310 = (*(v398 + 48))(v244, 1, v243);
  v202 = v406;
  if (v310 != 1)
  {
    (*(v309 + 32))(v375, v244, v243);
    v323 = v417;
    v324 = *(v417 + 16);
    v325 = v372;
    v326 = v410;
    v324(v372, v202, v410);
    v327 = Logger.logObject.getter();
    v328 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v327, v328))
    {
      v329 = swift_slowAlloc();
      v411 = swift_slowAlloc();
      aBlock[0] = v411;
      *v329 = 136315138;
      v324(v377, v325, v326);
      v330 = String.init<A>(describing:)();
      v332 = v331;
      v413 = *(v323 + 8);
      (v413)(v325, v326);
      v333 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v330, v332, aBlock);

      *(v329 + 4) = v333;
      _os_log_impl(&dword_2232BB000, v327, v328, "Building POMMES TRP candidate message on error path with reason: %s", v329, 0xCu);
      v334 = v411;
      __swift_destroy_boxed_opaque_existential_1(v411);
      MEMORY[0x223DE0F80](v334, -1, -1);
      v335 = v329;
      v202 = v406;
      MEMORY[0x223DE0F80](v335, -1, -1);
    }

    else
    {

      v413 = *(v323 + 8);
      (v413)(v325, v326);
    }

    v190 = v326;
    v247 = v422;
    v345 = v375;
    v346 = v378;
    v245 = (*(*v242 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v395, v401, v396, v397, v375, v202, v378);

    (*(v398 + 8))(v345, v399);
    (*(v379 + 8))(v346, v380);
    v246 = v421;
    v223 = v404;
    if (!v245)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  outlined destroy of MediaUserStateCenter?(v244, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  if (v308)
  {
    v311 = *(v417 + 16);
    v312 = v366;
    v313 = v410;
    v311(v366, v202, v410);
    v314 = v308;
    v315 = Logger.logObject.getter();
    v316 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v315, v316))
    {
      v317 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      aBlock[0] = v318;
      *v317 = 136315138;
      v311(v377, v312, v313);
      v319 = String.init<A>(describing:)();
      v321 = v320;
      v413 = *(v417 + 8);
      (v413)(v312, v313);
      v322 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v319, v321, aBlock);

      *(v317 + 4) = v322;
      _os_log_impl(&dword_2232BB000, v315, v316, "Building POMMES TRP candidate message on success path with reason: %s", v317, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v318);
      MEMORY[0x223DE0F80](v318, -1, -1);
      MEMORY[0x223DE0F80](v317, -1, -1);
    }

    else
    {

      v413 = *(v417 + 8);
      (v413)(v312, v313);
    }

    v190 = v313;
    v247 = v422;
    v353 = v378;
    v245 = (*(*v420 + class metadata base offset for PommesBridgeRequestProcessor + 568))(v395, v401, v396, v397, v314, v406, v378);

    (*(v379 + 8))(v353, v380);
    v246 = v421;
    v223 = v404;
    if (!v245)
    {
LABEL_84:
      v202 = v406;
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  v350 = Logger.logObject.getter();
  v351 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v350, v351))
  {
    v352 = swift_slowAlloc();
    *v352 = 0;
    _os_log_impl(&dword_2232BB000, v350, v351, "No POMMES result or error! Not posting any message", v352, 2u);
    MEMORY[0x223DE0F80](v352, -1, -1);
  }

  (*(v379 + 8))(v378, v380);
  (*(v417 + 8))(v202, v410);
  outlined destroy of MediaUserStateCenter?(v168, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  outlined destroy of MediaUserStateCenter?(v412, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
LABEL_93:
  outlined destroy of MediaUserStateCenter?(v123, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
}