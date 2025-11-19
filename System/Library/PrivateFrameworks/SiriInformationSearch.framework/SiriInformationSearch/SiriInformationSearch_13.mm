uint64_t PerformanceUtil.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PerformanceUtil.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

BOOL specialized static PerformanceUtil.Measurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = StaticString.description.getter();
  v11 = v10;
  v12 = (a2 + v4[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  if (v9 == StaticString.description.getter() && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v19 = (a1 + v4[7]);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 16);
    v23 = StaticString.description.getter();
    v25 = v24;
    v26 = (a2 + v4[7]);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v26 + 16);
    if (v23 == StaticString.description.getter() && v25 == v30)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    v33 = v4[8];
    v34 = *(a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    if (v34 == *v36 && v35 == v36[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v37 = type metadata accessor for PerformanceUtil.Measurement(0);
      return *(a1 + *(v37 + 20)) == *(a2 + *(v37 + 20));
    }
  }

  return 0;
}

uint64_t specialized static PerformanceUtil.Ticket.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = StaticString.description.getter();
  v11 = v10;
  v12 = (a2 + v4[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  if (v9 == StaticString.description.getter() && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v19 = (a1 + v4[7]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = StaticString.description.getter();
  v25 = v24;
  v26 = (a2 + v4[7]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  if (v23 == StaticString.description.getter() && v25 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v4[8];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if (v35 == *v37 && v36 == v37[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized closure #1 in PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x223DDF550](0xD00000000000001CLL, 0x80000002234DE780);
  v5 = MEMORY[0x223DDF550](0xD000000000000017, 0x80000002234DE6D0);
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 BOOLeanValue];
  }

  else
  {
    v7 = 2;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v13 = Optional.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v9, v10, "trialClient.level for enable_performance_profiling? %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return (a1 | v7) & 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t type metadata accessor for POMMESSchemaPOMMESFunctionPerformanceProfile()
{
  result = lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile;
  if (!lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile);
  }

  return result;
}

uint64_t dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *(*v15 + 208);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v16 + 16) = v20;
  *v20 = v16;
  v20[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return (v22)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t type metadata completion function for PerformanceUtil.Ticket()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PerformanceUtil.Measurement()
{
  result = type metadata accessor for PerformanceUtil.Ticket(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t closure #2 in PhoneCallExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - v10;
  v12 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.getter();
  v13 = MEMORY[0x223DDB940](v12);
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    type metadata accessor for PhoneCallExperience();
    (*(v3 + 16))(v8, v11, v2);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
    v17 = PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)();
    result = (*(v3 + 8))(v11, v2);
  }

  else
  {
    result = (*(v3 + 8))(v11, v2);
    v17 = 0;
  }

  *a1 = v17;
  return result;
}

uint64_t specialized PhoneCallExperiencesResolver.buildExperiences(from:with:)(uint64_t a1)
{
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v68, v4);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v66, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v22 = (*(v12 + 8))(v16, v11);
  v60 = v21;
  v23 = MEMORY[0x223DDB9C0](v22);
  v24 = *(v23 + 16);
  if (!v24)
  {

    v31 = MEMORY[0x277D84F90];
LABEL_20:
    MEMORY[0x28223BE20](v48, v49);
    *(&v58 - 2) = v59;
    v36 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in PhoneCallExperiencesResolver.buildExperiences(from:with:), (&v58 - 4), v31);

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  v26 = *(v6 + 16);
  v25 = v6 + 16;
  v27 = *(v25 + 64);
  v58 = v23;
  v28 = v23 + ((v27 + 32) & ~v27);
  v63 = *(v25 + 56);
  v64 = v26;
  v29 = (v2 + 8);
  v65 = v25;
  v30 = (v25 - 8);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v66;
    v64(v10, v28, v66);
    v33 = v67;
    v34 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
    v35 = MEMORY[0x223DDB910](v34);
    (*v29)(v33, v68);
    (*v30)(v10, v32);
    v36 = *(v35 + 16);
    v37 = v31[2];
    v38 = (v37 + v36);
    if (__OFADD__(v37, v36))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v38 <= v31[3] >> 1)
    {
      if (*(v35 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v40, 1, v31);
      if (*(v35 + 16))
      {
LABEL_14:
        v41 = (v31[3] >> 1) - v31[2];
        v42 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
        if (v41 < v36)
        {
          goto LABEL_31;
        }

        v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = *(v42 + 72);
        swift_arrayInitWithCopy();

        if (v36)
        {
          v45 = v31[2];
          v46 = __OFADD__(v45, v36);
          v47 = (v45 + v36);
          if (v46)
          {
            goto LABEL_32;
          }

          v31[2] = v47;
        }

        goto LABEL_4;
      }
    }

    if (v36)
    {
      goto LABEL_30;
    }

LABEL_4:
    v28 += v63;
    if (!--v24)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_21:
  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.pommes);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = v36 >> 62;
  if (os_log_type_enabled(v51, v52))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    if (v53)
    {
      v55 = __CocoaSet.count.getter();
    }

    else
    {
      v55 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 4) = v55;

    _os_log_impl(&dword_2232BB000, v51, v52, "Extracted phone call param builders; adding %ld PhoneCallExperience(s)", v54, 0xCu);
    MEMORY[0x223DE0F80](v54, -1, -1);
  }

  else
  {
  }

  if (v53)
  {
    type metadata accessor for Experience();

    v56 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Experience();
    v56 = v36;
  }

  (*(v61 + 8))(v60, v62);
  return v56;
}

uint64_t static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v111 = a3;
  v115 = a1;
  v109 = type metadata accessor for SportsResolverMetrics();
  v7 = *(v109 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v109, v9);
  v107 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v103 = &v94[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v110 = &v94[-v17];
  v102 = a4;
  v18 = type metadata accessor for SportsPersonalizationSelection();
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = *(v113 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v112 = &v94[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v101 = &v94[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v94[-v29];
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v94[-v32];
  v34 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v99 = *(v34 - 8);
  v35 = *(v99 + 64);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v97 = &v94[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v94[-v40];
  v42 = type metadata accessor for SportsResolverConfig();
  v105 = *(v42 - 8);
  v106 = v42;
  v43 = *(v105 + 64);
  MEMORY[0x28223BE20](v42, v44);
  v116 = &v94[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of MediaUserStateCenter?(a2, v33, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v47 = *(v46 - 8);
  v100 = *(v47 + 48);
  v48 = v100(v33, 1, v46);
  v108 = v7;
  v98 = v34;
  if (v48 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v49 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v47 + 8))(v33, v46);
    if (*(v49 + 16))
    {
      v50 = v99;
      (*(v99 + 16))(v41, v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v34);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      (*(v50 + 8))(v41, v34);
    }

    else
    {
    }
  }

  v51 = v116;
  SportsResolverConfig.init(intentTypeName:bundleId:)();
  outlined init with copy of MediaUserStateCenter?(a2, v30, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v53 = v113;
  v52 = v114;
  v54 = v30;
  v55 = v112;
  (*(v113 + 16))(v112, v115, v114);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v95 = v57;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v117[0] = v59;
    *v58 = 136315394;
    v60 = v101;
    outlined init with copy of MediaUserStateCenter?(v54, v101, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v61 = v100(v60, 1, v46);
    v96 = v54;
    if (v61 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v60, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v62 = 0xE700000000000000;
      v63 = v104;
      v64 = 0x6E776F6E6B6E75;
      v66 = v112;
      v65 = v113;
    }

    else
    {
      v69 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v47 + 8))(v60, v46);
      v63 = v104;
      v66 = v112;
      if (*(v69 + 16))
      {
        v70 = v99;
        v71 = v97;
        v72 = v98;
        (*(v99 + 16))(v97, v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v98);

        v64 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v62 = v73;
        (*(v70 + 8))(v71, v72);
      }

      else
      {

        v62 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
      }

      v65 = v113;
    }

    outlined destroy of MediaUserStateCenter?(v96, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v62, v117);

    *(v58 + 4) = v74;
    *(v58 + 12) = 2080;
    v75 = v114;
    v76 = SportsPersonalizationSelection<A>.debugDescription.getter(v114, v63);
    v78 = v77;
    (*(v65 + 8))(v66, v75);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v117);

    *(v58 + 14) = v79;
    _os_log_impl(&dword_2232BB000, v56, v95, "Logging sports personalization metrics: intent=%s selection=%s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v59, -1, -1);
    MEMORY[0x223DE0F80](v58, -1, -1);

    v68 = v110;
    v51 = v116;
    v67 = v107;
  }

  else
  {

    (*(v53 + 8))(v55, v52);
    outlined destroy of MediaUserStateCenter?(v54, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v67 = v107;
    v68 = v110;
    v63 = v104;
  }

  closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(v115, v51, v102, v63, v68);
  v80 = v103;
  outlined init with copy of MediaUserStateCenter?(v68, v103, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v82 = v108;
  v81 = v109;
  if ((*(v108 + 48))(v80, 1, v109) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v68, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v105 + 8))(v51, v106);
    return outlined destroy of MediaUserStateCenter?(v80, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v82 + 32))(v67, v80, v81);
  SportsResolverMetrics.logSportsMetric()();
  if (!v84)
  {
    goto LABEL_21;
  }

  v85 = v84;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v86, v87))
  {

LABEL_21:
    (*(v82 + 8))(v67, v81);
    v93 = v68;
    goto LABEL_22;
  }

  v88 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v117[0] = v89;
  *v88 = 136315138;
  swift_getErrorValue();
  v90 = Error.localizedDescription.getter();
  v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v117);

  *(v88 + 4) = v92;
  _os_log_impl(&dword_2232BB000, v86, v87, "Logging sports metrics failed with: %s", v88, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v89);
  MEMORY[0x223DE0F80](v89, -1, -1);
  MEMORY[0x223DE0F80](v88, -1, -1);

  (*(v82 + 8))(v67, v81);
  v93 = v110;
LABEL_22:
  outlined destroy of MediaUserStateCenter?(v93, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v105 + 8))(v116, v106);
}

uint64_t closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsResolverConfig();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SportsPersonalizationSelection();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v29 - v22;
  (*(v24 + 16))(&v29 - v22, a1);
  v25 = (*(v9 + 48))(v23, 2, a3);
  v26 = v25;
  if (v25)
  {
    if (v25 != 1)
    {
      (*(v14 + 16))(v18, v30, v13);
      SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
      v26 = 0;
    }
  }

  else
  {
    (*(v9 + 32))(v12, v23, a3);
    (*(v14 + 16))(v18, v30, v13);
    (*(a4 + 8))(a3, a4);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    (*(v9 + 8))(v12, a3);
  }

  v27 = type metadata accessor for SportsResolverMetrics();
  return (*(*(v27 - 8) + 56))(a5, v26, 1, v27);
}

uint64_t SmartPlayPreflightClient.__allocating_init(dataProviderManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool __swiftcall SmartPlayPreflightClient.isLocalPlaybackResumable()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v0;
    v24 = v9;
    v25 = v6;
    v26 = v16;
    v27 = v1;
    v28 = v15;
    v29 = v23;
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v21, v22, "SmartPlayPreflightClient#isLocalPlaybackResumable", v23, 2u);
    v30 = v29;
    v15 = v28;
    v1 = v27;
    v16 = v26;
    v6 = v25;
    v9 = v24;
    v0 = v42;
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  (*(**(v44 + 16) + 424))();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v31, v32, "SmartPlayPreflightClient#isLocalPlaybackResumable queue state is nil", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }

    v34 = 0;
  }

  else
  {
    v35 = v43;
    (*(v16 + 32))(v43, v14, v15);
    Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
    (*(v1 + 104))(v6, *MEMORY[0x277D392A8], v0);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v36 = *(v1 + 8);
    v36(v6, v0);
    v36(v9, v0);
    if (v46 == v45)
    {
      v34 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter();
    }

    else
    {
      v34 = 0;
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109120;
      *(v39 + 4) = v34 & 1;
      _os_log_impl(&dword_2232BB000, v37, v38, "SmartPlayPreflightClient#isLocalPlaybackResumable: %{BOOL}d", v39, 8u);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    (*(v16 + 8))(v35, v15);
  }

  return v34 & 1;
}

uint64_t SmartPlayPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v196 = *v1;
  v194 = type metadata accessor for PommesSearchReason();
  v193 = *(v194 - 8);
  v4 = *(v193 + 64);
  MEMORY[0x28223BE20](v194, v5);
  v192 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v191 = (&v189 - v10);
  v199 = type metadata accessor for Date();
  v198 = *(v199 - 8);
  v11 = *(v198 + 64);
  MEMORY[0x28223BE20](v199, v12);
  v197 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for PommesSearchRequest(0);
  v20 = *(v190 + 76);
  v195 = a1;
  v21 = *(a1 + v20);
  v22 = MEMORY[0x277D84F90];
  v225 = MEMORY[0x277D84F90];
  v209 = *(v21 + 16);
  if (!v209)
  {
    v201 = MEMORY[0x277D84F90];
    goto LABEL_230;
  }

  v23 = 0;
  v210 = v15 + 16;
  v208 = (v15 + 8);
  v24 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  v219 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  if (MEMORY[0x277D84F90] < 0)
  {
    v24 = MEMORY[0x277D84F90];
  }

  v189 = v24;
  v201 = MEMORY[0x277D84F90];
  v207 = v14;
  v206 = v15;
  v205 = v19;
  v204 = v21;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
LABEL_266:
      __break(1u);
      goto LABEL_267;
    }

    (*(v15 + 16))(v19, v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v14);
    a1 = Siri_Nlu_External_Span.matcherNames.getter();
    v25 = specialized Sequence.flatMap<A>(_:)(a1);
    if (v3)
    {
      break;
    }

    v1 = v25;

    if (v1 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v212 = v23 + 1;
    v213 = 0;
    v214 = v1;
    if (!v26)
    {
LABEL_222:

      v19 = v205;
      v14 = v207;
      (*v208)(v205, v207);
      goto LABEL_223;
    }

    v27 = v26;
    v28 = 0;
    v29 = v1 & 0xC000000000000001;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    a1 = v1 + 32;
    v216 = v26;
    v217 = v1 & 0xC000000000000001;
    v218 = v1 & 0xFFFFFFFFFFFFFF8;
    v220 = v1 + 32;
    while (1)
    {
      if (v29)
      {
        v1 = MEMORY[0x223DDFF80](v28, v214);
        v32 = __OFADD__(v28++, 1);
        if (v32)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v31 = *(v30 + 16);
        if (v28 >= v31)
        {
          goto LABEL_255;
        }

        v1 = *(a1 + 8 * v28);

        v32 = __OFADD__(v28++, 1);
        if (v32)
        {
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          goto LABEL_256;
        }
      }

      static UsoTask_CodegenConverter.convert(task:)();
      if (v224[3])
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v224, &_sypSgMd, &_sypSgMR);
LABEL_12:
      if (v28 == v27)
      {
        goto LABEL_222;
      }
    }

    type metadata accessor for UsoTask_play_uso_NoEntity();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_12;
    }

    v33 = byte_283695598;
    v222 = v1;
    v34 = UsoTask.arguments.getter();
    v35 = 0x636E657265666572;
    if (v33 != 2)
    {
      v35 = 0x72656767697274;
    }

    v36 = 0xE900000000000065;
    if (v33 != 2)
    {
      v36 = 0xE700000000000000;
    }

    v37 = 0x69746E4572657375;
    if (v33)
    {
      v37 = 0x746567726174;
    }

    v38 = 0xEC00000073656974;
    if (v33)
    {
      v38 = 0xE600000000000000;
    }

    if (v33 <= 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = v35;
    }

    if (v33 <= 1)
    {
      v40 = v38;
    }

    else
    {
      v40 = v36;
    }

    v41 = *(v34 + 16);
    v221 = v28;
    if (v41)
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
      v44 = v43;

      if (v44)
      {
        v45 = *(*(v34 + 56) + 8 * v42);

        v224[0] = v22;
        v3 = (v45 & 0xFFFFFFFFFFFFFF8);
        if (v45 >> 62)
        {
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        v48 = (v45 & 0xC000000000000001);
        v49 = MEMORY[0x277D84F90];
        while (v46 != v47)
        {
          if (v48)
          {
            MEMORY[0x223DDFF80](v47, v45);
            v51 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              goto LABEL_249;
            }
          }

          else
          {
            if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_250;
            }

            v50 = *(v45 + 8 * v47 + 32);

            v51 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
              goto LABEL_251;
            }
          }

          type metadata accessor for UsoEntity_common_UserEntity();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v47;
          if (v223)
          {
            MEMORY[0x223DDF820](v52);
            if (*((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v53 = *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v49 = v224[0];
            v47 = v51;
          }
        }

        v55 = v49;
        a1 = v49 >> 62;
        if (v49 >> 62)
        {
          v56 = __CocoaSet.count.getter();
        }

        else
        {
          v56 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = MEMORY[0x277D84F90];
        v27 = v216;
        v30 = v218;
        v58 = MEMORY[0x277D84F90] >> 62;
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          v59 = *(v219 + 16);
          v1 = v59 + v56;
          if (!__OFADD__(v59, v56))
          {
            goto LABEL_55;
          }

LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
          goto LABEL_266;
        }

        v149 = __CocoaSet.count.getter();
        v1 = v149 + v56;
        if (__OFADD__(v149, v56))
        {
          goto LABEL_264;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v58)
        {
          isUniquelyReferenced_nonNull_bridgeObject = 0;
        }

        if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v61 = v57, v1 > *(v219 + 24) >> 1))
        {
          if (v58)
          {
            __CocoaSet.count.getter();
          }

          else
          {
            v62 = *(v219 + 16);
          }

          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v215 = v61;
        v63 = v61 & 0xFFFFFFFFFFFFFF8;
        v1 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v64 = (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v1;
        if (a1)
        {
          v66 = __CocoaSet.count.getter();
          if (v66)
          {
            v67 = v66;
            v68 = __CocoaSet.count.getter();
            if (v64 < v68)
            {
              goto LABEL_271;
            }

            if (v67 >= 1)
            {
              v202 = v68;
              v203 = v56;
              v211 = v63;
              a1 = v63 + 8 * v1 + 32;
              lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_UserEntity] and conformance [A], &_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
              for (i = 0; i != v67; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
                v70 = specialized protocol witness for Collection.subscript.read in conformance [A](v224, i, v55);
                v72 = *v71;

                (v70)(v224, 0);
                *(a1 + 8 * i) = v72;
              }

              v27 = v216;
              v30 = v218;
              v56 = v203;
              v1 = v202;
              goto LABEL_72;
            }

            goto LABEL_272;
          }
        }

        else
        {
          a1 = v55 & 0xFFFFFFFFFFFFFF8;
          v65 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v65)
          {
            if (v64 < v65)
            {
              goto LABEL_270;
            }

            v211 = v63;
            v1 = v65;
            type metadata accessor for UsoEntity_common_UserEntity();
            swift_arrayInitWithCopy();
LABEL_72:

            v22 = MEMORY[0x277D84F90];
            v29 = v217;
            v28 = v221;
            v54 = v215;
            if (v1 < v56)
            {
              goto LABEL_265;
            }

            if (v1 <= 0)
            {
              goto LABEL_77;
            }

            v73 = *(v211 + 16);
            v32 = __OFADD__(v73, v1);
            v74 = v73 + v1;
            if (!v32)
            {
              *(v211 + 16) = v74;
              goto LABEL_77;
            }

LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
            goto LABEL_279;
          }
        }

        v22 = MEMORY[0x277D84F90];
        v29 = v217;
        v28 = v221;
        v54 = v215;
        if (v56 <= 0)
        {
          goto LABEL_77;
        }

        goto LABEL_265;
      }

      v54 = v22;
      v28 = v221;
    }

    else
    {

      v54 = v22;
    }

LABEL_77:
    if (!(v54 >> 62))
    {
      v1 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v1)
      {
        goto LABEL_84;
      }

      goto LABEL_79;
    }

    v1 = __CocoaSet.count.getter();

    if (v1)
    {
LABEL_79:

      a1 = v220;
      goto LABEL_12;
    }

LABEL_84:
    v75 = byte_2836955C0;
    v76 = UsoTask.arguments.getter();
    if (v75 > 1)
    {
      if (v75 != 2)
      {
        v78 = 0xE700000000000000;
        v77 = 0x72656767697274;
        if (!*(v76 + 16))
        {
          goto LABEL_123;
        }

        goto LABEL_91;
      }

      v77 = 0x636E657265666572;
      v78 = 0xE900000000000065;
LABEL_90:
      if (!*(v76 + 16))
      {
        goto LABEL_123;
      }

      goto LABEL_91;
    }

    v77 = 0x69746E4572657375;
    v78 = 0xEC00000073656974;
    if (!v75)
    {
      goto LABEL_90;
    }

    v78 = 0xE600000000000000;
    v77 = 0x746567726174;
    if (!*(v76 + 16))
    {
LABEL_123:

      v90 = v22;
      v91 = v22;
      goto LABEL_124;
    }

LABEL_91:
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v78);
    v81 = v80;

    if (v81)
    {
      v82 = *(*(v76 + 56) + 8 * v79);

      v224[0] = v22;
      if (v82 >> 62)
      {
        v83 = __CocoaSet.count.getter();
      }

      else
      {
        v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = 0;
      v85 = MEMORY[0x277D84F90];
      while (v83 != v84)
      {
        if ((v82 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v84, v82);
          v87 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_252;
          }
        }

        else
        {
          v31 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v84 >= v31)
          {
            goto LABEL_253;
          }

          v86 = *(v82 + 8 * v84 + 32);

          v87 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
            goto LABEL_254;
          }
        }

        type metadata accessor for UsoEntity_uso_NoEntity();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v84;
        if (v223)
        {
          MEMORY[0x223DDF820](v88);
          if (*((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v89 = *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v85 = v224[0];
          v84 = v87;
        }
      }

      a1 = v85 >> 62;
      if (v85 >> 62)
      {
        v92 = __CocoaSet.count.getter();
      }

      else
      {
        v92 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v93 = MEMORY[0x277D84F90];
      v94 = MEMORY[0x277D84F90] >> 62;
      if (MEMORY[0x277D84F90] >> 62)
      {
        v150 = __CocoaSet.count.getter();
        v1 = v150 + v92;
        if (__OFADD__(v150, v92))
        {
          goto LABEL_268;
        }
      }

      else
      {
        v95 = *(v219 + 16);
        v1 = v95 + v92;
        if (__OFADD__(v95, v92))
        {
          goto LABEL_268;
        }
      }

      v96 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v94)
      {
        v96 = 0;
      }

      if (v96 != 1 || (v97 = v93, v1 > *(v219 + 24) >> 1))
      {
        if (v94)
        {
          __CocoaSet.count.getter();
        }

        else
        {
          v98 = *(v219 + 16);
        }

        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v215 = v92;
      v90 = v93;
      v211 = v97;
      v1 = v97 & 0xFFFFFFFFFFFFFF8;
      v99 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v100 = (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v99;
      if (a1)
      {
        v102 = __CocoaSet.count.getter();
        if (!v102)
        {
LABEL_137:

          v27 = v216;
          v91 = v211;
          v29 = v217;
          v30 = v218;
          v28 = v221;
          if (v215 <= 0)
          {
            goto LABEL_124;
          }

          goto LABEL_269;
        }

        v103 = v102;
        v104 = __CocoaSet.count.getter();
        if (v100 < v104)
        {
          goto LABEL_276;
        }

        if (v103 < 1)
        {
          goto LABEL_278;
        }

        v202 = v104;
        v203 = v1;
        v105 = v1 + 8 * v99 + 32;
        lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_uso_NoEntity] and conformance [A], &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
        for (j = 0; j != v103; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
          v107 = specialized protocol witness for Collection.subscript.read in conformance [A](v224, j, v85);
          v109 = *v108;

          (v107)(v224, 0);
          *(v105 + 8 * j) = v109;
        }

        v90 = MEMORY[0x277D84F90];
        a1 = v215;
        v1 = v203;
        v101 = v202;
      }

      else
      {
        a1 = v85 & 0xFFFFFFFFFFFFFF8;
        v101 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v101)
        {
          goto LABEL_137;
        }

        if (v100 < v101)
        {
          goto LABEL_277;
        }

        type metadata accessor for UsoEntity_uso_NoEntity();
        swift_arrayInitWithCopy();
        a1 = v215;
      }

      v91 = v211;
      v27 = v216;
      v29 = v217;
      v28 = v221;
      v30 = v218;
      if (v101 < a1)
      {
        goto LABEL_269;
      }

      if (v101 > 0)
      {
        v110 = *(v1 + 16);
        v32 = __OFADD__(v110, v101);
        v111 = v110 + v101;
        if (v32)
        {
          goto LABEL_273;
        }

        *(v1 + 16) = v111;
      }
    }

    else
    {

      v90 = v22;
      v91 = v22;
      v29 = v217;
      v30 = v218;
      v28 = v221;
    }

LABEL_124:
    if (!(v91 >> 62))
    {
      v1 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v1)
      {
        goto LABEL_140;
      }

      goto LABEL_126;
    }

    v1 = __CocoaSet.count.getter();

    if (v1)
    {
LABEL_126:

      a1 = v220;
      v22 = v90;
      goto LABEL_12;
    }

LABEL_140:
    a1 = byte_2836955E8;
    v1 = UsoTask.arguments.getter();
    v112 = 0x636E657265666572;
    if (a1 != 2)
    {
      v112 = 0x72656767697274;
    }

    v113 = 0xE900000000000065;
    if (a1 != 2)
    {
      v113 = 0xE700000000000000;
    }

    v114 = 0x69746E4572657375;
    if (a1)
    {
      v114 = 0x746567726174;
    }

    v115 = 0xEC00000073656974;
    if (a1)
    {
      v115 = 0xE600000000000000;
    }

    if (a1 <= 1)
    {
      v116 = v114;
    }

    else
    {
      v116 = v112;
    }

    if (a1 <= 1)
    {
      v117 = v115;
    }

    else
    {
      v117 = v113;
    }

    v22 = v90;
    if (*(v1 + 16))
    {
      v118 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v117);
      v120 = v119;

      if (v120)
      {
        v121 = *(*(v1 + 56) + 8 * v118);

        v224[0] = v90;
        if (v121 >> 62)
        {
          v122 = __CocoaSet.count.getter();
        }

        else
        {
          v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v123 = 0;
        a1 = v121 & 0xC000000000000001;
        v124 = MEMORY[0x277D84F90];
        while (v122 != v123)
        {
          if (a1)
          {
            v1 = MEMORY[0x223DDFF80](v123, v121);
            v125 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_262;
            }
          }

          else
          {
            if (v123 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_263;
            }

            v1 = *(v121 + 8 * v123 + 32);

            v125 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
LABEL_262:
              __break(1u);
LABEL_263:
              __break(1u);
              goto LABEL_264;
            }
          }

          type metadata accessor for UsoEntity_common_EventTrigger();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v123;
          if (v223)
          {
            v1 = v224;
            MEMORY[0x223DDF820](v126);
            if (*((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v127 = *((v224[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v124 = v224[0];
            v123 = v125;
          }
        }

        v129 = v124;
        a1 = v124 >> 62;
        if (v124 >> 62)
        {
          v130 = __CocoaSet.count.getter();
        }

        else
        {
          v130 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = MEMORY[0x277D84F90];
        v131 = MEMORY[0x277D84F90] >> 62;
        if (MEMORY[0x277D84F90] >> 62)
        {
          v151 = __CocoaSet.count.getter();
          v1 = v151 + v130;
          if (__OFADD__(v151, v130))
          {
            goto LABEL_274;
          }
        }

        else
        {
          v132 = *(v219 + 16);
          v1 = v132 + v130;
          if (__OFADD__(v132, v130))
          {
            goto LABEL_274;
          }
        }

        v133 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v131)
        {
          v133 = 0;
        }

        if (v133 != 1 || (v134 = v22, v1 > *(v219 + 24) >> 1))
        {
          if (v131)
          {
            __CocoaSet.count.getter();
          }

          else
          {
            v135 = *(v219 + 16);
          }

          v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v215 = v134;
        v1 = v134 & 0xFFFFFFFFFFFFFF8;
        v136 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v137 = (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v136;
        if (a1)
        {
          v138 = __CocoaSet.count.getter();
          if (!v138)
          {
LABEL_201:

            v146 = v130 <= 0;
            v128 = v215;
            v27 = v216;
            v29 = v217;
            v30 = v218;
            v28 = v221;
            if (v146)
            {
              goto LABEL_172;
            }

            goto LABEL_275;
          }

          v139 = v138;
          v140 = __CocoaSet.count.getter();
          if (v137 < v140)
          {
            goto LABEL_290;
          }

          if (v139 < 1)
          {
            goto LABEL_292;
          }

          v202 = v140;
          v211 = v130;
          v203 = v1;
          v141 = v1 + 8 * v136 + 32;
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_EventTrigger] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
          for (k = 0; k != v139; ++k)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
            v143 = specialized protocol witness for Collection.subscript.read in conformance [A](v224, k, v129);
            v145 = *v144;

            (v143)(v224, 0);
            *(v141 + 8 * k) = v145;
          }

          v22 = MEMORY[0x277D84F90];
          v130 = v211;
          v1 = v203;
          a1 = v202;
        }

        else
        {
          a1 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_201;
          }

          if (v137 < a1)
          {
            goto LABEL_291;
          }

          type metadata accessor for UsoEntity_common_EventTrigger();
          swift_arrayInitWithCopy();
        }

        v146 = a1 < v130;
        v128 = v215;
        v27 = v216;
        v29 = v217;
        v30 = v218;
        v28 = v221;
        if (v146)
        {
          goto LABEL_275;
        }

        if (a1 > 0)
        {
          v147 = *(v1 + 16);
          v32 = __OFADD__(v147, a1);
          v148 = v147 + a1;
          if (!v32)
          {
            *(v1 + 16) = v148;
            goto LABEL_172;
          }

          __break(1u);
LABEL_288:
          a1 = MEMORY[0x223DDFF80](0, v1);
LABEL_235:

          if (UsoTask.isSmartPlayTask.getter())
          {
            if (one-time initialization token for shared == -1)
            {
              goto LABEL_237;
            }

            goto LABEL_293;
          }

LABEL_244:

LABEL_281:
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v186 = type metadata accessor for Logger();
          __swift_project_value_buffer(v186, static Logger.pommes);
          v48 = Logger.logObject.getter();
          v187 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v187))
          {
            v188 = swift_slowAlloc();
            *v188 = 0;
            _os_log_impl(&dword_2232BB000, v48, v187, "SmartPlayPreflightClient#handle no conclusive result, ignoring", v188, 2u);
            MEMORY[0x223DE0F80](v188, -1, -1);
          }

LABEL_285:

          return 1;
        }
      }

      else
      {

        v128 = v90;
        v29 = v217;
        v30 = v218;
        v28 = v221;
      }
    }

    else
    {

      v128 = v90;
    }

LABEL_172:
    if (v128 >> 62)
    {
      a1 = v128;
      v1 = __CocoaSet.count.getter();
    }

    else
    {
      v1 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v1)
    {

      a1 = v220;
      goto LABEL_12;
    }

    v19 = v205;
    v14 = v207;
    (*v208)(v205, v207);

    v1 = &v225;
    MEMORY[0x223DDF820](v152);
    if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v201 = v225;
LABEL_223:
    v23 = v212;
    v3 = v213;
    v15 = v206;
    v21 = v204;
    if (v212 == v209)
    {
LABEL_230:
      v1 = v201;
      if (!(v201 >> 62))
      {
        if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_232:
          if ((v1 & 0xC000000000000001) != 0)
          {
            goto LABEL_288;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            a1 = *(v1 + 32);

            goto LABEL_235;
          }

          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          swift_once();
LABEL_237:
          v153 = static PerformanceUtil.shared;
          v154 = v197;
          Date.init()();
          (*(*v153 + 200))(v224, 0xD00000000000001ALL, 0x80000002234DE7C0, 0, v154, "SiriInformationSearch/SmartPlayPreflightClient.swift", 52, 2, 99, "handle(pommesSearchRequest:)", 28, 2, partial apply for closure #2 in SmartPlayPreflightClient.handle(pommesSearchRequest:), v200, MEMORY[0x277D839B0], v189);
          (*(v198 + 8))(v154, v199);
          if (LOBYTE(v224[0]) != 1)
          {
            goto LABEL_244;
          }

          v155 = v195;
          v156 = (v195 + *(v190 + 32));
          v157 = *v156;
          v158 = v156[1];
          v159 = v191;
          PommesSearchRequest.pommesCandidateId.getter(v191);
          v160 = type metadata accessor for PommesCandidateId();
          (*(*(v160 - 8) + 56))(v159, 0, 1, v160);
          v161 = v192;
          default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v192);
          v162 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v155, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v157, v158, v159, v161, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000018, 0x80000002234D5810);
          (*(v193 + 8))(v161, v194);
          outlined destroy of MediaUserStateCenter?(v159, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
          v31 = one-time initialization token for pommes;
          if (!v162)
          {
LABEL_256:
            if (v31 != -1)
            {
              swift_once();
            }

            v182 = type metadata accessor for Logger();
            __swift_project_value_buffer(v182, static Logger.pommes);
            v183 = Logger.logObject.getter();
            v184 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              *v185 = 0;
              _os_log_impl(&dword_2232BB000, v183, v184, "SmartPlayPreflightClient#ignore could not build PommesResponse with given parameters", v185, 2u);
              MEMORY[0x223DE0F80](v185, -1, -1);
            }

            return 1;
          }

          v163 = v162;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v164 = type metadata accessor for Logger();
          __swift_project_value_buffer(v164, static Logger.pommes);

          v165 = Logger.logObject.getter();
          v166 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v224[0] = v168;
            *v167 = 136315138;
            v225 = a1;
            type metadata accessor for UsoTask();

            v169 = String.init<A>(describing:)();
            v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, v224);

            *(v167 + 4) = v171;
            _os_log_impl(&dword_2232BB000, v165, v166, "SmartPlayPreflightClient#handle Non-ambiguous play task: %s", v167, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v168);
            MEMORY[0x223DE0F80](v168, -1, -1);
            MEMORY[0x223DE0F80](v167, -1, -1);
          }

          else
          {
          }

          return v163;
        }

LABEL_280:

        goto LABEL_281;
      }

LABEL_279:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_232;
      }

      goto LABEL_280;
    }
  }

  (*v208)(v19, v14);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static Logger.pommes);
  v174 = v3;
  v48 = Logger.logObject.getter();
  v175 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v224[0] = v177;
    *v176 = 136315138;
    v225 = v3;
    v178 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v179 = String.init<A>(describing:)();
    v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v180, v224);

    *(v176 + 4) = v181;
    _os_log_impl(&dword_2232BB000, v48, v175, "ConversionUtils.convertUserDialogActToTasks error: %s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v177);
    MEMORY[0x223DE0F80](v177, -1, -1);
    MEMORY[0x223DE0F80](v176, -1, -1);

    goto LABEL_285;
  }

LABEL_251:

  return 1;
}

uint64_t SmartPlayPreflightClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SmartPlayPreflightClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState);
  }

  return result;
}

uint64_t partial apply for closure #2 in SmartPlayPreflightClient.handle(pommesSearchRequest:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 96))();
  *a1 = result & 1;
  return result;
}

uint64_t ResponseCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v1 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ResponseCache.init()()
{
  *(v0 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v1 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void *ResponseCache.deinit()
{
  (*(*v0 + 144))();
  v1 = v0[2];

  return v0;
}

uint64_t ResponseCache.__deallocating_deinit()
{
  ResponseCache.deinit();

  return swift_deallocClassInstance();
}

sqlite3 *ResponseCache.DBError.init(db:)(sqlite3 *result)
{
  if (result)
  {
    v1 = sqlite3_errcode(result);
    result = v1;
    if (v1)
    {
      if (v1 == 101)
      {
        return 0;
      }

      else if (v1 == 100)
      {
        return 0;
      }

      else
      {
        v2 = v1;
        result = sqlite3_errstr(v1);
        if (result)
        {
          String.init(cString:)();
          return v2;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

const char *ResponseCache.DBError.init(errorCode:)(const char *result)
{
  if (result == 101)
  {
    return 0;
  }

  if (result == 100)
  {
    return 0;
  }

  result = result;
  if (result)
  {
    v1 = result;
    result = sqlite3_errstr(result);
    if (result)
    {
      String.init(cString:)();
      return v1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ResponseCache.DBError.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0x7274706C6C756ELL;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        return 0x44746F4E68746170;
      }

      goto LABEL_12;
    }

    return 0x6E65704F746F6ELL;
  }

  else
  {
    if (!a3)
    {
      return 0x4F5F4554494C5153;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 0x445F4554494C5153;
      }

LABEL_12:
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v6);

      MEMORY[0x223DDF6D0](44, 0xE100000000000000);
      MEMORY[0x223DDF6D0](a2, a3);
      MEMORY[0x223DDF6D0](41, 0xE100000000000000);
      return 0x28726F727265;
    }

    return 0x525F4554494C5153;
  }
}

void ResponseCache.open(directoryPath:flags:)(uint64_t a1, int a2)
{
  v4 = v2;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PerformanceUtil.Ticket(0);
  v12 = *(*(v11 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v2 + 128))(v14))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "ResponseCache : Cache database already open", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

LABEL_29:
    v51 = *MEMORY[0x277D85DE8];
    return;
  }

  v53 = a2;
  Date.init()();
  v21 = &v16[v11[5]];
  *v21 = "SiriInformationSearch/ResponseCache.swift";
  *(v21 + 1) = 41;
  v21[16] = 2;
  *&v16[v11[6]] = 145;
  v22 = &v16[v11[7]];
  *v22 = "open(directoryPath:flags:)";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v23 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000012);
  v24 = &v16[v11[8]];
  *v24 = v23;
  v24[1] = v25;
  if ((URL.hasDirectoryPath.getter() & 1) == 0)
  {
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v44 = 0;
    v44[1] = 0;
    v44[2] = 5;
LABEL_25:
    swift_willThrow();
LABEL_26:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v16, 0);
    outlined destroy of PerformanceUtil.Ticket(v16);
    goto LABEL_29;
  }

  v52 = v3;
  URL.path.getter();
  v26 = String.utf8CString.getter();

  v27 = access((v26 + 32), 0);

  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = [objc_opt_self() defaultManager];
  v29 = URL.path.getter();
  v30 = MEMORY[0x223DDF550](v29);

  ppDb[0] = 0;
  v31 = [v28 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:ppDb];

  if (!v31)
  {
    v45 = ppDb[0];
    _convertNSErrorToError(_:)();

    goto LABEL_25;
  }

  v32 = ppDb[0];
LABEL_11:
  URL.appendingPathComponent(_:isDirectory:)();
  v33 = URL.path.getter();
  v35 = v34;
  (*(v54 + 8))(v10, v6);
  ppDb[0] = 0;
  v36 = String.utf8CString.getter();
  v37 = sqlite3_open_v2((v36 + 32), ppDb, v53, 0);

  switch(v37)
  {
    case 0x65u:

      v46 = 0;
      v47 = 0;
      v48 = 2;
      goto LABEL_24;
    case 0x64u:

      v46 = 0;
      v47 = 0;
      v48 = 1;
LABEL_24:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      swift_allocError();
      *v50 = v46;
      v50[1] = v47;
      v50[2] = v48;
      goto LABEL_25;
    case 0u:
      *(v4 + 24) = ppDb[0];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.pommes);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136315138;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v55);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_2232BB000, v39, v40, "ResponseCache : Opened database @ %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x223DE0F80](v42, -1, -1);
        MEMORY[0x223DE0F80](v41, -1, -1);
      }

      else
      {
      }

      ResponseCache.createTables()();
      goto LABEL_26;
  }

  if (sqlite3_errstr(v37))
  {

    v47 = String.init(cString:)();
    v48 = v49;
    v46 = v37;
    goto LABEL_24;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResponseCache.close()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = v29 - v5;
  if ((*(*v0 + 16))(v4))
  {
    closure #1 in ResponseCache.close()(v0, v6);
    v7 = sqlite3_close(v0[3]);
    v0[3] = 0;
    if (!v7)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.pommes);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2232BB000, v24, v25, "ResponseCache : Closed database", v26, 2u);
        MEMORY[0x223DE0F80](v26, -1, -1);
      }

      specialized ResponseCache.markPurgeable(_:)(v6);
      goto LABEL_24;
    }

    LODWORD(v8) = v7;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315138;
      v29[1] = v8;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2232BB000, v10, v11, "ResponseCache : Database close failed : %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    if (v8 == 101)
    {
      v8 = 0;
      v17 = 0;
      v18 = 2;
      goto LABEL_23;
    }

    if (v8 == 100)
    {
      v8 = 0;
      v17 = 0;
      v18 = 1;
LABEL_23:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      swift_allocError();
      *v28 = v8;
      v28[1] = v17;
      v28[2] = v18;
      swift_willThrow();
LABEL_24:
      outlined destroy of MediaUserStateCenter?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return;
    }

    if (sqlite3_errstr(v8))
    {
      v17 = String.init(cString:)();
      v18 = v27;
      v8 = v8;
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "ResponseCache : Ignoring request to close because database is not open", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }
  }
}

uint64_t closure #1 in ResponseCache.close()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_db_filename(*(a1 + 24), "main") && (MEMORY[0x223DDF610](), v3))
  {
    URL.init(fileURLWithPath:)();

    v4 = 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v6, v7, "ResponseCache : Unable to obtain file name for DB", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v4 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v4, 1, v9);
}

const char *ResponseCache.store(response:expiration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v119 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for PerformanceUtil.Ticket(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v107 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v104 - v17;
  v19 = PommesResponse.metadataDomainName.getter();
  v113 = *(v3 + 16);
  v114 = v20;
  v21 = PommesResponse.requestId.getter();
  v23 = v22;
  v115 = a1;
  PommesResponse.pommesCandidateId.getter();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (a2 <= -1.0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a2 >= 4294967300.0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v113;
  (*(*v113 + 152))(v21, v23, v18, v19, v114, 8, a2);

  v25 = outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (((*(*v3 + 128))(v25) & 1) == 0)
  {

    v48 = PommesResponse.requestId.getter();
    v50 = v49;
    PommesResponse.pommesCandidateId.getter();
    (*(*v24 + 160))(v48, v50, v18, 1);

    outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v51 = 0;
    v51[1] = 0;
    v51[2] = 4;
    swift_willThrow();
LABEL_57:
    v88 = *MEMORY[0x277D85DE8];
    return 1;
  }

  v26 = v112;
  Date.init()();
  v27 = &v26[v7[5]];
  *v27 = "SiriInformationSearch/ResponseCache.swift";
  *(v27 + 1) = 41;
  v27[16] = 2;
  *&v26[v7[6]] = 216;
  v28 = &v26[v7[7]];
  *v28 = "store(response:expiration:)";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v29 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000013);
  v30 = &v26[v7[8]];
  *v30 = v29;
  v30[1] = v31;
  ppStmt = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DE950);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0x220A282022, 0xE500000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x65736E6F70736572, 0xE800000000000000);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DE970);
  v111 = v118;
  v32 = PommesResponse.searchRequestUtterance.getter();
  v34 = v33;
  v35 = PommesResponse.sharedUserId.getter();
  v37 = v36;
  v106 = v34;
  v38 = MEMORY[0x223DDF780](v32, v34);
  if (AFSupportsMultiUser() && v37)
  {
    v38 ^= MEMORY[0x223DDF780](v35, v37);
  }

  v110 = v37;
  v39 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  dispatch thunk of PommesResponse.encode(cachingCoder:)();
  v105 = v39;
  v40 = [v39 encodedData];
  v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v41;

  ppStmt = 0;
  v43 = *(v3 + 24);
  v42 = String.utf8CString.getter();
  LODWORD(v43) = sqlite3_prepare_v2(v43, (v42 + 32), -1, &ppStmt, 0);

  if (v43 == 101)
  {

    v43 = 0;
    v52 = 0;
    v53 = 2;
    goto LABEL_20;
  }

  if (v43 == 100)
  {

    v43 = 0;
    v52 = 0;
    v53 = 1;
    goto LABEL_20;
  }

  if (v43)
  {
    if (!sqlite3_errstr(v43))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v52 = String.init(cString:)();
    v53 = v54;
    v43 = v43;
LABEL_20:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v55 = swift_allocError();
    *v56 = v43;
    v56[1] = v52;
    v56[2] = v53;
    swift_willThrow();
LABEL_49:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.pommes);
    v74 = v55;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v116 = v55;
      ppStmt = v78;
      *v77 = 136315138;
      v79 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v80 = String.init<A>(describing:)();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &ppStmt);

      *(v77 + 4) = v82;
      _os_log_impl(&dword_2232BB000, v75, v76, "ResponseCache : Database INSERT INTO operation failed : %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x223DE0F80](v78, -1, -1);
      MEMORY[0x223DE0F80](v77, -1, -1);
    }

    v83 = v105;
    v84 = PommesResponse.requestId.getter();
    v86 = v85;
    PommesResponse.pommesCandidateId.getter();
    (*(*v113 + 160))(v84, v86, v18, 2);

    outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    swift_willThrow();
    outlined consume of Data._Representation(v108, v109);

LABEL_54:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v87 = v112;
    (*(*static PerformanceUtil.shared + 184))(v112, 0);
    outlined destroy of PerformanceUtil.Ticket(v87);
    goto LABEL_57;
  }

  v44 = sqlite3_bind_int64(ppStmt, 1, v38);
  if (v44)
  {
    if (v44 != 100)
    {
      if (v44 == 101)
      {
LABEL_14:

        v45 = 0;
        v46 = 0;
        v47 = 2;
LABEL_30:
        lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
        v55 = swift_allocError();
        *v63 = v45;
        v63[1] = v46;
        v63[2] = v47;
LABEL_48:
        swift_willThrow();
        sqlite3_finalize(ppStmt);
        goto LABEL_49;
      }

      LODWORD(v45) = v44;
      if (sqlite3_errstr(v44))
      {
LABEL_29:

        v46 = String.init(cString:)();
        v47 = v62;
        v45 = v45;
        goto LABEL_30;
      }

      goto LABEL_92;
    }

LABEL_21:

    v45 = 0;
    v46 = 0;
    v47 = 1;
    goto LABEL_30;
  }

  v57 = ppStmt;
  if (one-time initialization token for sqliteTransient != -1)
  {
    swift_once();
  }

  v58 = static ResponseCache.sqliteTransient;
  v59 = String.utf8CString.getter();
  LODWORD(v57) = sqlite3_bind_text(v57, 2, (v59 + 32), -1, v58);

  if (v57)
  {
    if (v57 == 100)
    {

      v57 = 0;
      v60 = 0;
      v61 = 1;
      goto LABEL_38;
    }

    if (v57 == 101)
    {

      v57 = 0;
      v60 = 0;
      v61 = 2;
LABEL_38:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v55 = swift_allocError();
      *v70 = v57;
      v70[1] = v60;
LABEL_47:
      v70[2] = v61;
      goto LABEL_48;
    }

    result = sqlite3_errstr(v57);
    if (result)
    {

      v60 = String.init(cString:)();
      v61 = v69;
      v57 = v57;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_95;
  }

  v64 = ppStmt;
  v65 = String.utf8CString.getter();
  LODWORD(v66) = sqlite3_bind_text(v64, 3, (v65 + 32), -1, v58);

  if (v66)
  {
    if (v66 != 100)
    {
      if (v66 == 101)
      {

        v66 = 0;
        v67 = 0;
        v61 = 2;
LABEL_46:
        lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
        v55 = swift_allocError();
        *v70 = v66;
        v70[1] = v67;
        goto LABEL_47;
      }

      result = sqlite3_errstr(v66);
      if (!result)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_45:

      v67 = String.init(cString:)();
      v61 = v72;
      v66 = v66;
      goto LABEL_46;
    }

LABEL_39:

    v66 = 0;
    v67 = 0;
    v61 = 1;
    goto LABEL_46;
  }

  v71 = specialized closure #5 in ResponseCache.store(response:expiration:)(v108, v109, &ppStmt);
  if (v71)
  {
    if (v71 == 100)
    {
      goto LABEL_21;
    }

    if (v71 == 101)
    {
      goto LABEL_14;
    }

    LODWORD(v45) = v71;
    result = sqlite3_errstr(v71);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_96;
  }

  v89 = sqlite3_bind_double(ppStmt, 5, a2);
  if (v89)
  {
    if (v89 == 100)
    {
      goto LABEL_21;
    }

    if (v89 == 101)
    {
      goto LABEL_14;
    }

    LODWORD(v45) = v89;
    result = sqlite3_errstr(v89);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_97;
  }

  v90 = sqlite3_step(ppStmt);
  if (!v90)
  {

    v66 = 0;
    v67 = 0;
    v61 = 0;
    goto LABEL_46;
  }

  LODWORD(v66) = v90;
  if (v90 == 100)
  {
    goto LABEL_39;
  }

  if (v90 == 101)
  {

    LODWORD(v19) = sqlite3_changes(*(v3 + 24));
    if (one-time initialization token for pommes == -1)
    {
LABEL_73:
      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static Logger.pommes);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v116 = v95;
        *v94 = 136315138;
        if (v19 <= 0)
        {
          v96 = 0x657461647075;
        }

        else
        {
          v96 = 0x65726F7473;
        }

        if (v19 <= 0)
        {
          v97 = 0xE600000000000000;
        }

        else
        {
          v97 = 0xE500000000000000;
        }

        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v116);

        *(v94 + 4) = v98;
        _os_log_impl(&dword_2232BB000, v92, v93, "ResponseCache : %s cache entry complete", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x223DE0F80](v95, -1, -1);
        MEMORY[0x223DE0F80](v94, -1, -1);
      }

      sqlite3_finalize(ppStmt);
      v99 = PommesResponse.requestId.getter();
      v101 = v100;
      v102 = v107;
      PommesResponse.pommesCandidateId.getter();
      if (v19 >= 1)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      (*(*v113 + 168))(v99, v101, v102, v103);
      outlined consume of Data._Representation(v108, v109);

      outlined destroy of MediaUserStateCenter?(v102, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      goto LABEL_54;
    }

LABEL_93:
    swift_once();
    goto LABEL_73;
  }

  result = sqlite3_errstr(v90);
  if (result)
  {
    goto LABEL_45;
  }

LABEL_98:
  __break(1u);
  return result;
}

const char *ResponseCache.fetchResponse(with:domainWarmup:)(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v3 = v2;
  v147 = *MEMORY[0x277D85DE8];
  *&v136 = type metadata accessor for Date();
  *&v135 = *(v136 - 8);
  v5 = *(v135 + 64);
  MEMORY[0x28223BE20](v136, v6);
  v134 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for PerformanceUtil.Ticket(0);
  v8 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139, v9);
  v142 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v131 = (&v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v128 - v17);
  v19 = v3[2];
  v140 = type metadata accessor for PommesSearchRequest(0);
  v20 = (a1 + *(v140 + 32));
  v21 = *v20;
  v22 = v20[1];
  v144 = a1;
  PommesSearchRequest.pommesCandidateId.getter(v18);
  v23 = type metadata accessor for PommesCandidateId();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(v18, 0, 1, v23);
  v27 = *(*v19 + 128);
  v143 = v21;
  v27(v21, v22, v18);
  v28 = outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v29 = *(*v3 + 128);
  v141 = v3;
  if ((v29(v28) & 1) == 0)
  {
    PommesSearchRequest.pommesCandidateId.getter(v18);
    v25(v18, 0, 1, v23);
    (*(*v19 + 136))(v143, v22, v18, 1);
    outlined destroy of MediaUserStateCenter?(v18, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v54 = 0;
    v54[1] = 0;
    v54[2] = 4;
    swift_willThrow();
LABEL_35:
    v86 = *MEMORY[0x277D85DE8];
    return v19;
  }

  v128 = v18;
  v137 = v25;
  v138 = v26;
  v129 = v23;
  v130 = v22;
  v132 = v19;
  v30 = v142;
  Date.init()();
  v31 = v139;
  v32 = &v30[*(v139 + 20)];
  *v32 = "SiriInformationSearch/ResponseCache.swift";
  *(v32 + 1) = 41;
  v32[16] = 2;
  *&v30[v31[6]] = 289;
  v33 = &v30[v31[7]];
  *v33 = "fetchResponse(with:domainWarmup:)";
  *(v33 + 1) = 33;
  v33[16] = 2;
  v34 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000013);
  v35 = &v30[v31[8]];
  *v35 = v34;
  v35[1] = v36;
  *&__dst = 0;
  *(&__dst + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x223DDF6D0](0x2A205443454C4553, 0xEF22204D4F524620);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0xA45524548572022, 0xE900000000000022);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](0x4E41203F203D2022, 0xEB00000000220A44);
  v37 = v144;
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](0x4E41203F203D2022, 0xEB00000000220A44);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0x3B3F203D3E2022, 0xE700000000000000);
  v38 = (v37 + *(v140 + 20));
  v40 = *v38;
  v39 = v38[1];
  v41 = (v37 + *(v140 + 84));
  v43 = *v41;
  v42 = v41[1];
  v44 = MEMORY[0x223DDF780](v40, v39);
  if (AFSupportsMultiUser() && v42)
  {
    v44 ^= MEMORY[0x223DDF780](v43, v42);
  }

  ppStmt = 0;
  v45 = *(v141 + 24);
  v46 = String.utf8CString.getter();
  v47 = sqlite3_prepare_v2(v45, (v46 + 32), -1, &ppStmt, 0);

  if (v47 == 101)
  {

    v55 = 0;
    v56 = 0;
    v57 = 2;
    goto LABEL_15;
  }

  if (v47 == 100)
  {

    v55 = 0;
    v56 = 0;
    v57 = 1;
LABEL_15:
    v53 = v132;
    goto LABEL_18;
  }

  if (v47)
  {
    result = sqlite3_errstr(v47);
    v53 = v132;
    if (!result)
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v56 = String.init(cString:)();
    v57 = v59;
    v55 = v47;
LABEL_18:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v60 = swift_allocError();
    *v61 = v55;
    v61[1] = v56;
    v61[2] = v57;
    swift_willThrow();
    v52 = v137;
    goto LABEL_29;
  }

  v48 = v134;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v50 = v49;
  (*(v135 + 8))(v48, v136);
  v51 = sqlite3_bind_int64(ppStmt, 1, v44);
  if (v51)
  {
    v52 = v137;
    if (v51 == 100)
    {

      v62 = 0;
      v63 = 0;
      v64 = 1;
      v53 = v132;
LABEL_28:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v60 = swift_allocError();
      *v70 = v62;
      v70[1] = v63;
      v70[2] = v64;
      swift_willThrow();
      sqlite3_finalize(ppStmt);
LABEL_29:
      v71 = v53;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v72 = v130;
      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Logger.pommes);
      v74 = v60;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        ppStmt = v60;
        *&__dst = v78;
        *v77 = 136315138;
        v79 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v80 = String.init<A>(describing:)();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &__dst);

        *(v77 + 4) = v82;
        v52 = v137;
        _os_log_impl(&dword_2232BB000, v75, v76, "ResponseCache : SELECT failed : %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x223DE0F80](v78, -1, -1);
        MEMORY[0x223DE0F80](v77, -1, -1);
      }

      v83 = v143;
      v84 = v129;
      v19 = v128;
      PommesSearchRequest.pommesCandidateId.getter(v128);
      v52(v19, 0, 1, v84);
      (*(*v71 + 136))(v83, v72, v19, 2);
      outlined destroy of MediaUserStateCenter?(v19, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      swift_willThrow();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_76;
    }

    v53 = v132;
    if (v51 == 101)
    {
LABEL_25:

      v62 = 0;
      v63 = 0;
      v64 = 2;
      goto LABEL_28;
    }

    LODWORD(v62) = v51;
    result = sqlite3_errstr(v51);
    if (result)
    {
LABEL_27:

      v63 = String.init(cString:)();
      v64 = v69;
      v62 = v62;
      goto LABEL_28;
    }

    goto LABEL_79;
  }

  v65 = ppStmt;
  v52 = v137;
  if (one-time initialization token for sqliteTransient != -1)
  {
    swift_once();
  }

  v66 = static ResponseCache.sqliteTransient;
  v67 = String.utf8CString.getter();
  v68 = sqlite3_bind_text(v65, 2, (v67 + 32), -1, v66);

  if (!v68)
  {
    v87 = sqlite3_bind_double(ppStmt, 3, v50);
    v53 = v132;
    v88 = v143;
    if (!v87)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      v141 = __swift_project_value_buffer(v90, static Logger.pommes);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134217984;
        *(v93 + 4) = v50;
        _os_log_impl(&dword_2232BB000, v91, v92, "ResponseCache : Fetching cached responses with expiration threshold %f", v93, 0xCu);
        v94 = v93;
        v88 = v143;
        MEMORY[0x223DE0F80](v94, -1, -1);
      }

      v95 = ppStmt;
      if (sqlite3_step(ppStmt) == 100)
      {
        v19 = 0;
        v139 = 0;
        v96 = 0;
        *(&v97 + 1) = 0x7FFFFFFFLL;
        v135 = xmmword_2234D58C0;
        *&v97 = 136315138;
        v136 = v97;
        do
        {
          v98 = sqlite3_column_blob(v95, 3);
          if (v98)
          {
            v99 = v98;
            v100 = sqlite3_column_bytes(v95, 3);
            if (v100 < 1)
            {
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                *v118 = 0;
                _os_log_impl(&dword_2232BB000, v116, v117, "ResponseCache : Cached POMMES response 0 bytes", v118, 2u);
                MEMORY[0x223DE0F80](v118, -1, -1);
              }

              v88 = v143;
            }

            else
            {
              v101 = v100;
              if (sqlite3_column_text(ppStmt, 2))
              {
                v102 = String.init(cString:)();
                v104 = v103;
                swift_bridgeObjectRetain_n();

                v105 = Logger.logObject.getter();
                v106 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v105, v106))
                {
                  v107 = swift_slowAlloc();
                  v108 = swift_slowAlloc();
                  *&__dst = v108;
                  *v107 = v136;
                  *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &__dst);
                  _os_log_impl(&dword_2232BB000, v105, v106, "ResponseCache : warmup domain %s", v107, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v108);
                  v109 = v108;
                  v53 = v132;
                  MEMORY[0x223DE0F80](v109, -1, -1);
                  v110 = v107;
                  v52 = v137;
                  MEMORY[0x223DE0F80](v110, -1, -1);
                }

                v111 = *(*v133 + 184);
                v139 = v102;
                v111(v144, v102, v104);

                v96 = v104;
              }

              if (v101 <= 0xE)
              {
                *(&__dst + 6) = 0;
                *&__dst = 0;
                BYTE14(__dst) = v101;
                memcpy(&__dst, v99, v101);
                v123 = __dst;
                v124 = v140 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
                v140 = v124;
              }

              else
              {
                v119 = type metadata accessor for __DataStorage();
                v120 = *(v119 + 48);
                v121 = *(v119 + 52);
                swift_allocObject();
                if (v101 == 0x7FFFFFFF)
                {
                  v122 = __DataStorage.init(bytes:length:)();
                  type metadata accessor for Data.RangeReference();
                  v123 = swift_allocObject();
                  *(v123 + 16) = v135;
                  v124 = v122 | 0x8000000000000000;
                }

                else
                {
                  v123 = v101 << 32;
                  v124 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
                }
              }

              v125 = specialized ResponseCache.hydratePommesResponse(response:pommesSearchRequest:componentsWarmedUp:)(v123, v124, v144);

              outlined consume of Data._Representation(v123, v124);

              v19 = v125;
              v88 = v143;
            }
          }

          else
          {
            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              *v114 = 0;
              _os_log_impl(&dword_2232BB000, v112, v113, "ResponseCache : Cached POMMES response is nil", v114, 2u);
              v115 = v114;
              v88 = v143;
              MEMORY[0x223DE0F80](v115, -1, -1);
            }
          }

          v95 = ppStmt;
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        v19 = 0;
        v139 = 0;
        v96 = 0;
      }

      sqlite3_finalize(ppStmt);
      v126 = v131;
      PommesSearchRequest.pommesCandidateId.getter(v131);
      v52(v126, 0, 1, v129);
      if (v19)
      {
        v127 = 1;
      }

      else
      {
        v127 = 3;
      }

      (*(*v53 + 144))(v88, v130, v126, v127, v139, v96);

      outlined destroy of MediaUserStateCenter?(v126, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_34;
      }

LABEL_76:
      swift_once();
LABEL_34:
      v85 = v142;
      (*(*static PerformanceUtil.shared + 184))(v142, 0);
      outlined destroy of PerformanceUtil.Ticket(v85);
      goto LABEL_35;
    }

    v68 = v138;
    if (v87 != 100)
    {
      if (v87 == 101)
      {
        goto LABEL_25;
      }

      LODWORD(v62) = v87;
      if (sqlite3_errstr(v87))
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_44:

    v62 = 0;
    v63 = 0;
    v64 = 1;
    goto LABEL_28;
  }

  v53 = v132;
  if (v68 == 100)
  {
    goto LABEL_44;
  }

  if (v68 == 101)
  {
    goto LABEL_25;
  }

LABEL_42:
  result = sqlite3_errstr(v68);
  if (result)
  {

    v63 = String.init(cString:)();
    v64 = v89;
    v62 = v68;
    goto LABEL_28;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t ResponseCache.delete(path:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a1;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v5;
  v16 = *(v5 + 16);
  v17 = *(*v16 + 176);
  v69 = a2;
  v70 = a3;
  v72 = a4;
  v17(a2, a3, a4, a5);
  URL.appendingPathComponent(_:isDirectory:)();
  v18 = URL.path.getter();
  v20 = v19;
  (*(v11 + 8))(v15, v10);
  v21 = String.utf8CString.getter();
  v22 = access((v21 + 32), 0);

  if (v22)
  {

    v24 = v69;
    v23 = v70;
    v25 = v72;
    v26 = v16;
    (*(*v16 + 184))(v69, v70, v72, 1);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v27 = swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    v28[2] = 5;
    swift_willThrow();
    v29 = v25;
    v30 = v23;
    v31 = v24;
LABEL_17:
    (*(*v26 + 184))(v31, v30, v29, 2);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pommes);
    v46 = v27;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      ppStmt = v27;
      ppDb[0] = v50;
      *v49 = 136315138;
      v51 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v52 = String.init<A>(describing:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, ppDb);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_2232BB000, v47, v48, "ResponseCache : purge failed : %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v49, -1, -1);
    }

    result = swift_willThrow();
LABEL_22:
    v55 = *MEMORY[0x277D85DE8];
    return result;
  }

  v71 = v16;
  v33 = v67;
  v32 = v68;
  v34 = v72;
  ppDb[0] = 0;
  v35 = v20;
  v36 = String.utf8CString.getter();
  v37 = sqlite3_open_v2((v36 + 32), ppDb, 2, 0);

  if (v37 == 101)
  {
    goto LABEL_11;
  }

  if (v37 == 100)
  {
    goto LABEL_10;
  }

  if (v37)
  {
    result = sqlite3_errstr(v37);
    if (result)
    {

      v40 = String.init(cString:)();
      v41 = v43;
      v39 = v37;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_38;
  }

  ppStmt = 0;
  v38 = sqlite3_prepare_v2(ppDb[0], "SELECT COUNT(*) FROM queryCache", -1, &ppStmt, 0);
  switch(v38)
  {
    case 0:
      v56 = ppStmt;
      if (sqlite3_step(ppStmt) == 100)
      {
        do
        {
          v57 = sqlite3_column_int(v56, 0);
          v56 = ppStmt;
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        v57 = 0;
      }

      v59 = sqlite3_finalize(ppStmt);
      (*(*v33 + 144))(v59);
      v27 = v32;
      if (v32)
      {

        goto LABEL_16;
      }

      v60 = [objc_opt_self() defaultManager];
      v61 = MEMORY[0x223DDF550](v18, v35);

      ppStmt = 0;
      v62 = [v60 removeItemAtPath:v61 error:&ppStmt];

      if (v62)
      {
        if ((v57 & 0x80000000) != 0)
        {
          __break(1u);
        }

        v63 = *(*v71 + 192);
        v64 = ppStmt;
        result = v63(v69, v70, v34, v57);
        goto LABEL_22;
      }

      v65 = ppStmt;
      v27 = _convertNSErrorToError(_:)();

LABEL_15:
      swift_willThrow();
LABEL_16:
      v29 = v34;
      v31 = v69;
      v30 = v70;
      v26 = v71;
      goto LABEL_17;
    case 100:
LABEL_10:

      v39 = 0;
      v40 = 0;
      v41 = 1;
LABEL_14:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v27 = swift_allocError();
      *v44 = v39;
      v44[1] = v40;
      v44[2] = v41;
      goto LABEL_15;
    case 101:
LABEL_11:

      v39 = 0;
      v40 = 0;
      v41 = 2;
      goto LABEL_14;
  }

  LODWORD(v39) = v38;
  result = sqlite3_errstr(v38);
  if (result)
  {

    v40 = String.init(cString:)();
    v41 = v58;
    v39 = v39;
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
  return result;
}

const char *ResponseCache.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = v5;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for PerformanceUtil.Ticket(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 16);
  v19 = (*(*v18 + 176))(a1, a2, a3, a4);
  if (((*(*v7 + 128))(v19) & 1) == 0)
  {
    (*(*v18 + 184))(a1, a2, a3, 1);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    v30[2] = 4;
    swift_willThrow();
LABEL_36:
    v64 = *MEMORY[0x277D85DE8];
    return v7;
  }

  Date.init()();
  v20 = &v17[v13[5]];
  *v20 = "SiriInformationSearch/ResponseCache.swift";
  *(v20 + 1) = 41;
  v20[16] = 2;
  *&v17[v13[6]] = 415;
  v21 = &v17[v13[7]];
  *v21 = "purge(expirationThreshold:requestId:pommesCandidateId:reason:)";
  *(v21 + 1) = 62;
  v21[16] = 2;
  v22 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ALL);
  v23 = &v17[v13[8]];
  *v23 = v22;
  v23[1] = v24;
  ppStmt[0] = 0;
  v25 = sqlite3_prepare_v2(*(v7 + 24), "DELETE FROM queryCache WHERE expiration < ?;", -1, ppStmt, 0);
  v70 = v18;
  if (v25 == 101)
  {
    v31 = 0;
    v32 = 0;
    v33 = 2;
    goto LABEL_14;
  }

  if (v25 == 100)
  {
    v31 = 0;
    v32 = 0;
    v33 = 1;
    goto LABEL_14;
  }

  if (v25)
  {
    LODWORD(v31) = v25;
    result = sqlite3_errstr(v25);
    if (!result)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v32 = String.init(cString:)();
    v33 = v35;
    v31 = v31;
LABEL_14:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v36 = swift_allocError();
    *v37 = v31;
    v37[1] = v32;
    v38 = v36;
    v37[2] = v33;
    swift_willThrow();
    goto LABEL_30;
  }

  v26 = 1;
  v27 = sqlite3_bind_double(ppStmt[0], 1, a5);
  if (v27)
  {
    if (v27 == 100)
    {
      v28 = 0;
      v29 = 0;
      goto LABEL_28;
    }

    if (v27 == 101)
    {
      v28 = 0;
      v29 = 0;
      v26 = 2;
LABEL_28:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v47 = swift_allocError();
      *v48 = v28;
      v48[1] = v29;
      v38 = v47;
      v48[2] = v26;
LABEL_29:
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_30:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.pommes);
      v50 = v38;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v68 = v53;
        v69 = swift_slowAlloc();
        v71 = v38;
        ppStmt[0] = v69;
        *v53 = 136315138;
        v54 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v55 = String.init<A>(describing:)();
        v57 = a1;
        v58 = a2;
        v59 = v17;
        v60 = a3;
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, ppStmt);

        v62 = v68;
        *(v68 + 1) = v61;
        a3 = v60;
        v17 = v59;
        a2 = v58;
        a1 = v57;
        v63 = v62;
        _os_log_impl(&dword_2232BB000, v51, v52, "ResponseCache : DELETE FROM failed : %s", v62, 0xCu);
        v7 = v69;
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x223DE0F80](v7, -1, -1);
        MEMORY[0x223DE0F80](v63, -1, -1);
      }

      (*(*v70 + 184))(a1, a2, a3, 2);
      swift_willThrow();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }

    LODWORD(v28) = v27;
    result = sqlite3_errstr(v27);
    if (result)
    {
      v29 = String.init(cString:)();
      v26 = v46;
      v28 = v28;
      goto LABEL_28;
    }

    goto LABEL_46;
  }

  v39 = sqlite3_step(ppStmt[0]);
  v40 = v39;
  switch(v39)
  {
    case 0u:
      v65 = 0;
      v7 = 0;
      goto LABEL_41;
    case 0x64u:
      v40 = 0;
      v65 = 0;
      v7 = 1;
LABEL_41:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v38 = swift_allocError();
      *v67 = v40;
      v67[1] = v65;
      v67[2] = v7;
      goto LABEL_29;
    case 0x65u:
      v69 = v6;
      v41 = v18;
      v7 = sqlite3_changes(*(v7 + 24));
      sqlite3_finalize(ppStmt[0]);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = v7;
        _os_log_impl(&dword_2232BB000, v43, v44, "ResponseCache : Successfully purged %d expired entries", v45, 8u);
        MEMORY[0x223DE0F80](v45, -1, -1);
      }

      if ((v7 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        (*(*v41 + 192))(a1, a2, a3, v7);
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_44:
      swift_once();
LABEL_35:
      (*(*static PerformanceUtil.shared + 184))(v17, 0);
      outlined destroy of PerformanceUtil.Ticket(v17);
      goto LABEL_36;
  }

  result = sqlite3_errstr(v39);
  if (result)
  {
    v65 = String.init(cString:)();
    v7 = v66;
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
  return result;
}

const char *ResponseCache.purge(response:reason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v67 - v12);
  v14 = PommesResponse.requestId.getter();
  v16 = v15;
  v72 = v13;
  PommesResponse.pommesCandidateId.getter();
  v17 = PommesResponse.searchRequestUtterance.getter();
  v19 = v18;
  v20 = PommesResponse.sharedUserId.getter();
  v22 = v21;
  v71 = v19;
  v23 = MEMORY[0x223DDF780](v17, v19);
  if (AFSupportsMultiUser() && v22)
  {
    v23 ^= MEMORY[0x223DDF780](v20, v22);
  }

  v69 = v23;
  v24 = *(v3 + 16);
  v25 = v72;
  v26 = (*(*v24 + 176))(v14, v16, v72, a2);
  if (((*(*v3 + 128))(v26) & 1) == 0)
  {

    (*(*v24 + 184))(v14, v16, v25, 1);

    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v38 = 0;
    v38[1] = 0;
    v38[2] = 4;
    swift_willThrow();
LABEL_38:
    outlined destroy of MediaUserStateCenter?(v25, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    goto LABEL_39;
  }

  v67 = v24;
  v68 = v14;
  v27 = v70;
  Date.init()();
  v28 = &v27[v5[5]];
  *v28 = "SiriInformationSearch/ResponseCache.swift";
  *(v28 + 1) = 41;
  v28[16] = 2;
  *&v27[v5[6]] = 461;
  v29 = &v27[v5[7]];
  *v29 = "purge(response:reason:)";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v30 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001FLL);
  v31 = &v27[v5[8]];
  *v31 = v30;
  v31[1] = v32;
  ppStmt[0] = 0;
  v33 = sqlite3_prepare_v2(*(v3 + 24), "DELETE FROM queryCache WHERE utteranceHash = ?;", -1, ppStmt, 0);
  if (v33 == 101)
  {

    v39 = 0;
    v40 = 0;
    v41 = 2;
    goto LABEL_17;
  }

  if (v33 == 100)
  {

    v39 = 0;
    v40 = 0;
    v41 = 1;
    goto LABEL_17;
  }

  if (v33)
  {
    LODWORD(v39) = v33;
    result = sqlite3_errstr(v33);
    if (!result)
    {
      __break(1u);
      goto LABEL_47;
    }

    v40 = String.init(cString:)();
    v41 = v43;
    v39 = v39;
LABEL_17:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v3 = swift_allocError();
    *v44 = v39;
    v44[1] = v40;
    v44[2] = v41;
    swift_willThrow();
    goto LABEL_32;
  }

  v34 = sqlite3_bind_int64(ppStmt[0], 1, v69);
  switch(v34)
  {
    case 0:
      v45 = sqlite3_step(ppStmt[0]);
      if (!v45)
      {

        v35 = 0;
        v36 = 0;
        v37 = 0;
        goto LABEL_31;
      }

      if (v45 == 100)
      {
        goto LABEL_28;
      }

      if (v45 != 101)
      {
        LODWORD(v35) = v45;
        if (!sqlite3_errstr(v45))
        {
          __break(1u);
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      v24 = sqlite3_changes(*(v3 + 24));
      sqlite3_finalize(ppStmt[0]);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.pommes);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v68;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v24;
        _os_log_impl(&dword_2232BB000, v47, v48, "ResponseCache : Successfully purged response with %d entries deleted", v51, 8u);
        MEMORY[0x223DE0F80](v51, -1, -1);
      }

      if ((v24 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v47 = v72;
        (*(*v67 + 192))(v50, v16, v72, v24);

        if (one-time initialization token for shared == -1)
        {
LABEL_27:
          v52 = v70;
          (*(*static PerformanceUtil.shared + 184))(v70, 0);
          outlined destroy of PerformanceUtil.Ticket(v52);
          outlined destroy of MediaUserStateCenter?(v47, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
LABEL_39:
          v66 = *MEMORY[0x277D85DE8];
          return v24;
        }
      }

      swift_once();
      goto LABEL_27;
    case 100:
LABEL_28:

      v35 = 0;
      v36 = 0;
      v37 = 1;
      goto LABEL_31;
    case 101:

      v35 = 0;
      v36 = 0;
      v37 = 2;
LABEL_31:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v3 = swift_allocError();
      *v54 = v35;
      v54[1] = v36;
      v54[2] = v37;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_32:
      if (one-time initialization token for pommes == -1)
      {
LABEL_33:
        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.pommes);
        v56 = v3;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          ppStmt[0] = v60;
          *v59 = 136315394;
          *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E6F70736572, 0xE800000000000000, ppStmt);
          *(v59 + 12) = 2080;
          v73 = v3;
          v61 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v62 = String.init<A>(describing:)();
          v24 = v63;
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, ppStmt);

          *(v59 + 14) = v64;
          _os_log_impl(&dword_2232BB000, v57, v58, "ResponseCache : DELETE FROM WHERE %s failed : %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v60, -1, -1);
          MEMORY[0x223DE0F80](v59, -1, -1);
        }

        v25 = v72;
        (*(*v67 + 184))(v68, v16, v72, 2);

        swift_willThrow();
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v65 = v70;
        (*(*static PerformanceUtil.shared + 184))(v70, 0);
        outlined destroy of PerformanceUtil.Ticket(v65);
        goto LABEL_38;
      }

LABEL_43:
      swift_once();
      goto LABEL_33;
  }

  LODWORD(v35) = v34;
  result = sqlite3_errstr(v34);
  if (result)
  {
LABEL_30:

    v36 = String.init(cString:)();
    v37 = v53;
    v35 = v35;
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v14);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ResponseCache.createTables()()
{
  ppStmt[2] = *MEMORY[0x277D85DE8];
  ppStmt[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(159);
  MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234DEB30);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0x220A282022, 0xE500000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234DEB50);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEB80);
  MEMORY[0x223DDF6D0](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEB80);
  MEMORY[0x223DDF6D0](0x65736E6F70736572, 0xE800000000000000);
  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234DEBA0);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEBC0);
  ppStmt[0] = 0;
  v2 = *(v0 + 24);
  v1 = String.utf8CString.getter();
  LODWORD(v2) = sqlite3_prepare_v2(v2, (v1 + 32), -1, ppStmt, 0);

  if (v2 == 101)
  {

    v2 = 0;
    v10 = 0;
    v11 = 2;
    goto LABEL_16;
  }

  if (v2 == 100)
  {

    v2 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_16;
  }

  if (v2)
  {
    result = sqlite3_errstr(v2);
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = String.init(cString:)();
    v11 = v12;
    v2 = v2;
LABEL_16:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v13 = swift_allocError();
    *v14 = v2;
    v14[1] = v10;
    v14[2] = v11;
    swift_willThrow();
LABEL_17:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v21 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2232BB000, v17, v18, "ResponseCache : CREATE TABLE failed : %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    result = swift_willThrow();
    goto LABEL_22;
  }

  v3 = sqlite3_step(ppStmt[0]);
  switch(v3)
  {
    case 0:

      v26 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_27;
    case 100:

      v26 = 0;
      v27 = 0;
      v28 = 1;
LABEL_27:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v13 = swift_allocError();
      *v30 = v26;
      v30[1] = v27;
      v30[2] = v28;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
      goto LABEL_17;
    case 101:

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v31 = v8;
        *v7 = 136315138;
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6361437972657571, 0xEA00000000006568, &v31);
        _os_log_impl(&dword_2232BB000, v5, v6, "ResponseCache : Table created : %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x223DE0F80](v8, -1, -1);
        MEMORY[0x223DE0F80](v7, -1, -1);
      }

      result = sqlite3_finalize(ppStmt[0]);
LABEL_22:
      v25 = *MEMORY[0x277D85DE8];
      return result;
  }

  LODWORD(v26) = v3;
  result = sqlite3_errstr(v3);
  if (result)
  {

    v27 = String.init(cString:)();
    v28 = v29;
    v26 = v26;
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

void specialized ResponseCache.markPurgeable(_:)(uint64_t a1)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v74 = &v70 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v70 - v22;
  outlined init with copy of URL?(a1, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v71 = v14;
    v72 = v1;
    outlined destroy of MediaUserStateCenter?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = v74;
    outlined init with copy of URL?(a1, v74);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76[0] = v70;
      *v29 = 136315138;
      v30 = v73;
      outlined init with copy of URL?(v26, v73);
      v31 = v71;
      if (v24(v30, 1, v71) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v32 = 0xE600000000000000;
        v33 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v56 = v30;
        v33 = URL.path.getter();
        v32 = v57;
        (*(v15 + 8))(v56, v31);
      }

      outlined destroy of MediaUserStateCenter?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v76);

      *(v29 + 4) = v58;
      _os_log_impl(&dword_2232BB000, v27, v28, "ResponseCache : Unable to mark %s purgeable because no file path exists", v29, 0xCu);
      v59 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x223DE0F80](v59, -1, -1);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    type metadata accessor for NSFileHandle();
    v34 = *(v15 + 16);
    v34(v20, v23, v14);
    v35 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v20);
    v36 = v14;
    if (v1)
    {
      (*(v15 + 8))(v23, v14);
    }

    else
    {
      v37 = v35;
      v73 = v15;
      v74 = v23;
      v38 = [v35 fileDescriptor];
      v76[0] = 65541;
      v39 = ffsctl(v38, 0xC0084A44uLL, v76, 0);
      if (v39)
      {
        v40 = v39;
        v72 = v37;
        v41 = *MEMORY[0x277CCA5B8];
        v42 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2234CF920;
        v44 = *MEMORY[0x277CCA760];
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v45;
        *(inited + 72) = v14;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
        v71 = v14;
        v34(boxed_opaque_existential_1, v74, v14);
        v47 = v41;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
        v48 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v48 initWithDomain:v47 code:v42 userInfo:isa];

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Logger.pommes);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v72;
        if (v53)
        {
          v55 = swift_slowAlloc();
          *v55 = 67109120;
          *(v55 + 4) = v40;
          _os_log_impl(&dword_2232BB000, v51, v52, "ResponseCache : Unable to mark cache as purgeable error=%d", v55, 8u);
          MEMORY[0x223DE0F80](v55, -1, -1);
        }

        swift_willThrow();
        (*(v73 + 8))(v74, v71);
      }

      else
      {
        v75 = 0;
        if ([v37 closeAndReturnError_])
        {
          v61 = one-time initialization token for pommes;
          v62 = v75;
          v63 = v73;
          v64 = v74;
          if (v61 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.pommes);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_2232BB000, v66, v67, "ResponseCache : Database marked purgeable", v68, 2u);
            v63 = v73;
            v64 = v74;
            MEMORY[0x223DE0F80](v68, -1, -1);
          }

          (*(v63 + 8))(v64, v36);
        }

        else
        {
          v69 = v75;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v73 + 8))(v74, v14);
        }
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

unint64_t lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError()
{
  result = lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError;
  if (!lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError);
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t specialized ResponseCache.hydratePommesResponse(response:pommesSearchRequest:componentsWarmedUp:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = (&v32 - v9);
  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  outlined copy of Data._Representation(a1, a2);
  v12 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  outlined consume of Data._Representation(a1, a2);
  if (!v12)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "ResponseCache : Failed to hydrate POMMES response : nil unarchiver", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    goto LABEL_6;
  }

  type metadata accessor for PommesResponse();
  v18 = (a3 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v19 = *v18;
  v20 = v18[1];

  v14 = v12;
  PommesSearchRequest.pommesCandidateId.getter(v10);
  v21 = type metadata accessor for PommesCandidateId();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);

  v22 = PommesResponse.__allocating_init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)();
  if (!v22)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "ResponseCache : Failed to instantiate PommesResponse from cachingCoder", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }

LABEL_6:
    return 0;
  }

  v23 = v22;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2232BB000, v25, v26, "ResponseCache : Successfully hydrated response", v27, 2u);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  return v23;
}

uint64_t specialized closure #5 in ResponseCache.store(response:expiration:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      a1 = *a3;
      LODWORD(v3) = BYTE6(a2);
      if (one-time initialization token for sqliteTransient == -1)
      {
LABEL_4:
        v5 = static ResponseCache.sqliteTransient;
        v6 = v3;
LABEL_32:
        result = sqlite3_bind_blob(a1, 4, v26, v6, v5);
        v19 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_40:
      v24 = a1;
      swift_once();
      a1 = v24;
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    goto LABEL_30;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v10 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v10))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v9 += v7 - v10;
  }

  v11 = __OFSUB__(v8, v7);
  v12 = v8 - v7;
  if (v11)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a1 = MEMORY[0x223DD8D40]();
  if (a1 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a1;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_19:
  v15 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_42;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v17))
    {
      v9 += v15 - v17;
      goto LABEL_23;
    }

LABEL_46:
    __break(1u);
  }

LABEL_23:
  a1 = MEMORY[0x223DD8D40]();
  if (a1 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a1;
  }

  if (v9)
  {
    if (v14 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v14 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_30:
      memset(v26, 0, 14);
      a1 = *v3;
      if (one-time initialization token for sqliteTransient == -1)
      {
LABEL_31:
        v5 = static ResponseCache.sqliteTransient;
        v6 = 0;
        goto LABEL_32;
      }

LABEL_42:
      v25 = a1;
      swift_once();
      a1 = v25;
      goto LABEL_31;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

LABEL_34:
  v20 = *v3;
  if (one-time initialization token for sqliteTransient != -1)
  {
    v23 = *v3;
    swift_once();
    v20 = v23;
  }

  v21 = static ResponseCache.sqliteTransient;
  v22 = *MEMORY[0x277D85DE8];

  return sqlite3_bind_blob(v20, 4, v9, v14, v21);
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch13ResponseCacheC7DBErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ResponseCache.DBError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 24))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResponseCache.DBError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ResponseCache.DBError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id ProfileSliceResolutionRequestInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*ProfileSliceResolutionRequestInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ProfileSliceResolutionRequestInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

unint64_t ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestStarted(requestId:pommesCandidateId:profileSliceLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277D5A080]) init];
      if (v18)
      {
        v19 = v18;
        result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(result))
        {
          [v19 setSliceLabel_];
          UUID.init()();
          v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v23 = [v21 initWithNSUUID_];

          (*(v9 + 8))(v13, v8);
          v24 = v23;
          [v17 setContextId_];
          [v17 setStartedOrChanged_];
          [v15 setProfileResolutionRequestContext_];
          v25 = [objc_opt_self() processInfo];
          v26 = NSProcessInfo.isRunningUnitTests.getter();

          if (v26)
          {
            v27 = (*(*v4 + 96))();
          }

          else
          {
            v27 = [objc_opt_self() sharedStream];
          }

          [v27 emitMessage_];

          swift_unknownObjectRelease();
          return v23;
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v15;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.pommes);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2232BB000, v29, v30, "Unable to log ProfileSliceResolutionRequestStarted event", v31, 2u);
    MEMORY[0x223DE0F80](v31, -1, -1);
  }

  return 0;
}

void ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestEnded(requestId:pommesCandidateId:contextId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A070]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setExists_];
        [v19 setContextId:a4];
        [v19 setEnded:v11];
        [v8 setProfileResolutionRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log ProfileSliceResolutionRequestEnded event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestFailed(requestId:pommesCandidateId:contextId:failedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v11)
    {
      v21 = v11;
      v12 = [objc_allocWithZone(MEMORY[0x277D5A078]) init];
      if (v12)
      {
        v13 = v12;
        [v12 setReason_];
        [v21 setContextId:a4];
        [v21 setFailed:v13];
        [v10 setProfileResolutionRequestContext:v21];
        v14 = [objc_opt_self() processInfo];
        v15 = NSProcessInfo.isRunningUnitTests.getter();

        if (v15)
        {
          v16 = (*(*v6 + 96))();
        }

        else
        {
          v16 = [objc_opt_self() sharedStream];
        }

        [v16 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v17 = v21;
    }

    else
    {
      v17 = v10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v21, v19, "Unable to log ProfileSliceResolutionRequestFailed event", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_15:
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void AnalyticsComponentIdGenerator.derivedIdentifier(for:from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t PommesCodableLocation.timeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *PommesCodableLocation.__allocating_init(fromCLLocation:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized PommesCodableLocation.init(fromCLLocation:)(a1);

  return v5;
}

void *PommesCodableLocation.init(fromCLLocation:)(void *a1)
{
  v2 = specialized PommesCodableLocation.init(fromCLLocation:)(a1);

  return v2;
}

CLLocation __swiftcall PommesCodableLocation.toCLLocation()()
{
  v1 = v0[3];
  v15 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = *(v0 + 10);
  v9 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithCoordinate:isa altitude:v15 horizontalAccuracy:v1 verticalAccuracy:v2 course:v4 courseAccuracy:v3 speed:v5 speedAccuracy:v6 timestamp:{v7, v8}];

  v13 = v11;
  result._internal = v12;
  result.super.isa = v13;
  return result;
}

uint64_t PommesCodableLocation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6465657073;
    v6 = 0x6363416465657073;
    if (a1 != 8)
    {
      v6 = 0x6D617453656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x657372756F63;
    if (a1 != 5)
    {
      v7 = 0x6341657372756F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656475746974616CLL;
    v2 = 0x6564757469746C61;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64757469676E6F6CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCodableLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PommesCodableLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCodableLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCodableLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesCodableLocation.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PommesCodableLocation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PommesCodableLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v3[2];
  v22[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[3];
    v22[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[4];
    v22[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[5];
    v22[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[6];
    v22[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[7];
    v22[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[8];
    v22[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[9];
    v22[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[10];
    v22[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22[6] = 9;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t PommesCodableLocation.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PommesCodableLocation.init(from:)(a1);
  return v5;
}

void *PommesCodableLocation.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMR);
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v34, v11);
  v13 = &v30 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v29 = v36;
    type metadata accessor for PommesCodableLocation();
    v16 = *(*v29 + 48);
    v17 = *(*v29 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v4;
    v32 = v8;
    v33 = v3;
    v46 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v36;
    v36[2] = v20;
    v45 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[3] = v21;
    v44 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[4] = v22;
    v43 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[5] = v23;
    v42 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[6] = v24;
    v41 = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[7] = v25;
    v40 = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[8] = v26;
    v39 = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[9] = v27;
    v38 = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19[10] = v28;
    v37 = 9;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v13, v34);
    v29 = v36;
    (*(v31 + 32))(v36 + OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp, v32, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v29;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PommesCodableLocation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *CLLocation.toCodableLocation()()
{
  v1 = type metadata accessor for PommesCodableLocation();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  v5 = specialized PommesCodableLocation.init(fromCLLocation:)(v4);

  return v5;
}

void *specialized PommesCodableLocation.init(fromCLLocation:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v1[2] = v9;
  [a1 coordinate];
  v1[3] = v10;
  [a1 altitude];
  v1[4] = v11;
  [a1 verticalAccuracy];
  v1[5] = v12;
  [a1 horizontalAccuracy];
  v1[6] = v13;
  [a1 course];
  v1[7] = v14;
  [a1 courseAccuracy];
  v1[8] = v15;
  [a1 speed];
  v1[9] = v16;
  [a1 speedAccuracy];
  v1[10] = v17;
  v18 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp, v8, v3);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for PommesCodableLocation()
{
  result = type metadata singleton initialization cache for PommesCodableLocation;
  if (!type metadata singleton initialization cache for PommesCodableLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for PommesCodableLocation()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesCodableLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesCodableLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PommesCodableLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DECC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002234DECE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657372756F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341657372756F63 && a2 == 0xEE00796361727563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6363416465657073 && a2 == 0xED00007963617275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617453656D6974 && a2 == 0xE900000000000070)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

id MockEmittableSiriAnalyticsMessageStream.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emittedMessages.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_emittedMessages;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emittedMessages.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_emittedMessages;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:);
  *(v5 + 24) = v4;
  v11[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_14;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(void *a1, void *a2)
{
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v9);
  v5 = v4;
  v6 = a2;
  MEMORY[0x223DDF820]();
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3(v9, 0);
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue);
  type metadata accessor for Array();
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t closure #1 in MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25SISchemaTopLevelUnionTypeCGMd, &_sSaySo25SISchemaTopLevelUnionTypeCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [SISchemaTopLevelUnionType] and conformance [A], &_sSaySo25SISchemaTopLevelUnionTypeCGMd, &_sSaySo25SISchemaTopLevelUnionTypeCGMR);
  v3 = Sequence.compactMap<A>(_:)();

  *a2 = v3;
  return result;
}

uint64_t closure #1 in closure #1 in MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaTopLevelUnionType, 0x277D5AA68);
  v6 = v5;
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
}

Swift::Void __swiftcall MockEmittableSiriAnalyticsMessageStream.clearEmittedMessages()()
{
  v1 = *&v0[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.clearEmittedMessages();
  *(v3 + 24) = v2;
  v7[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_13_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id MockEmittableSiriAnalyticsMessageStream.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = &unk_2234D5CE0;
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v11);
  static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v11);
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v4, *MEMORY[0x277D85260], v25);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v26;
  *&v26[v23] = v17;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_emittedMessages] = MEMORY[0x277D84F90];
  v19 = v18;
  v20 = type metadata accessor for MockEmittableSiriAnalyticsMessageStream();
  v27.receiver = v19;
  v27.super_class = v20;
  return objc_msgSendSuper2(&v27, sel_init);
}

id MockEmittableSiriAnalyticsMessageStream.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockEmittableSiriAnalyticsMessageStream();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:);
  *(v5 + 24) = v4;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_26;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t static CarPlaySessionDataProvider.make()()
{
  v0 = type metadata accessor for CarPlaySessionDataProvider();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v1[v2] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

id CarPlaySessionDataProvider.__allocating_init(carPlaySessionStatus:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v3[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CarPlaySessionDataProvider.init(carPlaySessionStatus:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v1[v2] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CarPlaySessionDataProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

void CarPlaySessionDataProvider.prepare(dispatchQueue:)()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      [v4 addSessionObserver_];
    }
  }
}

uint64_t CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus);
  if (v3 && (v4 = [v3 currentSession]) != 0)
  {
    v5 = v4;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "CarPlaySessionDataProvider returning CarPlaySessionData", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    MEMORY[0x28223BE20](v10, v11);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    static Message.with(_:)();

    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "CarPlaySessionDataProvider session did not connect or is nil, returning nil", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

uint64_t closure #1 in CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(int a1, id a2)
{
  v3 = [a2 configuration];
  [v3 videoPlaybackSupported];

  Apple_Parsec_Siri_V2alpha_CarPlaySessionData.videoPlaybackSupported.setter();
  v4 = [a2 videoPlaybackAvailable];
  if (v4)
  {
    v5 = v4;
    [v4 BOOLValue];
  }

  return Apple_Parsec_Siri_V2alpha_CarPlaySessionData.videoPlaybackAvailable.setter();
}

id CarPlaySessionDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlaySessionDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySessionDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
  }

  return result;
}

void specialized CarPlaySessionDataProvider.sessionDidDisconnect(_:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "CarPlaySessionDataProvider sessionDidDisconnect", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 0;
}

uint64_t dispatch thunk of CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t SageSearch.__allocating_init(remoteSearchClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SageSearch.init(remoteSearchClient:)(a1);
  return v2;
}

uint64_t SageSearch.__allocating_init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  type metadata accessor for PegasusProxyForIntelligenceFlow();
  v24 = static PegasusProxyForIntelligenceFlow.shared.getter();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v23 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v10 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v13 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, static Logger.sage);
  v15 = *(v1 + 16);
  v15(v9, v14, v0);
  v16 = type metadata accessor for SagePegasusProxy();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v15(v6, v9, v0);
  v20 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v24, v23, v11, 0, v12, v13, v6, v19);
  (*(v1 + 8))(v9, v0);
  return (*(v25 + 88))(v20);
}

uint64_t SageSearch.init(remoteSearchClient:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = *(*a1 + 376);

  v3();
  swift_beginAccess();
  v4 = static ServiceHelperManager.shared;
  v5 = one-time initialization token for sage;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.sage);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "ServiceHelperUtil: Retrieving service helper (underlying: %s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  if (v4)
  {
    v14 = *(**(v2 + 16) + 328);

    v14(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Service helper missing when handling search tool global requests", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }
  }

  return v2;
}

Swift::Int SageSearch.SageSearchError.SageSearchErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t SageSearch.SageSearchError.debugMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SageSearch.search(query:location:)()
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.sage);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "The deprecated search API was called. Pegasus response is always nil.", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  return 0;
}

uint64_t SageSearch.search(query:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SageSearch.search(query:location:);
  v11 = MEMORY[0x277D84F90];

  return v13(a1, a2, v11, a3);
}

uint64_t SageSearch.search(query:location:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {

    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v5 + 8);

  return v7(v6);
}

uint64_t SageSearch.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = type metadata accessor for PommesSearchRequest(0);
  v5[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.search(query:clientEntities:location:), 0, 0);
}

uint64_t SageSearch.search(query:clientEntities:location:)()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v67 = v0[19];
  v6 = v0[17];
  v64 = v0[16];
  v7 = v0[14];
  v74 = v0[13];
  v78 = v0[12];
  v68 = v0[11];
  v71 = v0[10];
  v72 = v0[8];
  v73 = v0[7];
  v76 = v0[3];
  v69 = v0[2];
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v65 = v9;
  v66 = v8;
  v10 = *(v5 + 8);
  v10(v1, v6);
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v62 = v12;
  v63 = v11;
  v10(v1, v6);
  UUID.init()();
  (*(v5 + 16))(v4, v2, v6);
  v13 = *(v5 + 32);
  v13(v3, v4, v6);
  v10(v2, v6);
  v14 = type metadata accessor for DateInterval();
  (*(*(v14 - 8) + 56))(v64, 1, 1, v14);
  v15 = type metadata accessor for PommesRequestContext();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v0[24] = v18;
  *(v18 + 16) = v63;
  *(v18 + 24) = v62;
  v13(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v3, v6);
  v19 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v19 = v66;
  v19[1] = v65;
  v20 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v22 = 0;
  v22[1] = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
  v23 = MEMORY[0x277D84F90];
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
  v24 = v23;
  outlined init with take of PommesSearchReason?(v64, v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v24;
  v25 = v24;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v10(v67, v6);
  v29 = type metadata accessor for PommesContext();
  (*(*(v29 - 8) + 56))(v78, 1, 1, v29);
  v30 = type metadata accessor for InputOrigin();
  (*(*(v30 - 8) + 56))(v68, 1, 1, v30);
  *(v7 + v74[23]) = v25;
  v31 = (v7 + v74[5]);
  *v31 = v69;
  v31[1] = v76;
  v32 = v74[6];
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v33 - 8) + 56))(v7 + v32, 1, 1, v33);
  v34 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v35 = (v7 + v74[8]);
  *v35 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  v35[1] = v34;
  v36 = (v7 + v74[9]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48));
  *v7 = v26;
  v7[1] = v28;
  v38 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v70 = *(v38 - 8);
  v39 = *(v70 + 56);
  v39(v71, 1, 1, v38);
  v40 = type metadata accessor for NLXResultCandidate();
  v41 = *(v40 + 20);
  v39(v37 + v41, 1, 1, v38);
  v42 = (v37 + *(v40 + 24));
  *v37 = MEMORY[0x277D84F90];

  outlined assign with take of MediaUserStateCenter?(v71, v37 + v41, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v42 = 0;
  v42[1] = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v78, v7 + v74[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v39(v71, 1, 1, v38);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(MEMORY[0x277D84F90], v71, v72);
  outlined destroy of MediaUserStateCenter?(v71, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v72, v73, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v43 - 8) + 48))(v73, 1, v43) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v0[7], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v44 = 1;
  }

  else
  {
    (*(v70 + 32))(v0[9], v0[7], v38);
    v44 = 0;
  }

  v45 = v0[14];
  v79 = v0[15];
  v46 = v0[13];
  v75 = v0[12];
  v47 = v0[11];
  v48 = v0[8];
  v49 = v0[9];
  v77 = v0[6];
  v39(v49, v44, 1, v38);
  outlined init with take of PommesSearchReason?(v49, v45 + v46[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *(v45 + v46[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v48, 0);
  v50 = *(v18 + 24);
  v51 = (v45 + v46[7]);
  *v51 = *(v18 + 16);
  v51[1] = v50;
  *(v45 + v46[13]) = v18;
  outlined init with copy of MediaUserStateCenter?(v47, v45 + v46[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  *(v45 + v46[15]) = 0;
  *(v45 + v46[18]) = 0;

  v52 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(MEMORY[0x277D84F90]);
  outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  outlined destroy of MediaUserStateCenter?(v47, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v75, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  *(v45 + v46[19]) = v52;
  *(v45 + v46[20]) = 0;
  v53 = (v45 + v46[21]);
  *v53 = 0;
  v53[1] = 0;
  *(v45 + v46[22]) = 0;
  *(v45 + v46[16]) = 0;
  *(v45 + v46[17]) = 0;
  outlined init with take of PommesSearchRequest(v45, v79);
  v54 = *(*v77 + 128);
  v80 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  v0[25] = v56;
  *v56 = v0;
  v56[1] = SageSearch.search(query:clientEntities:location:);
  v57 = v0[15];
  v58 = v0[5];
  v59 = v0[6];
  v60 = v0[4];

  return (v80)(v57, v60, v58, 0, 0);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v17 = v0[8];
  v18 = v0[7];

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v7, type metadata accessor for PommesSearchRequest);

  v11 = v0[1];
  v12 = v0[27];

  return v11(v12);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v17 = v0[8];
  v18 = v0[7];

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v7, type metadata accessor for PommesSearchRequest);

  v11 = v0[1];
  v12 = v0[26];

  return v11();
}

uint64_t SageSearch.search(query:clientEntities:location:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = SageSearch.search(query:clientEntities:location:);
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = SageSearch.search(query:clientEntities:location:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SageSearch.search(request:clientEntities:location:searchToolClientId:);

  return SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, a2, a3, 8);
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](SageSearch.search(request:clientEntities:location:searchToolClientId:), 0, 0);
  }
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)()
{
  v19 = v0;
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sage);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = dispatch thunk of PommesResponse.experiences.getter();
    v10 = type metadata accessor for Experience();
    v11 = MEMORY[0x223DDF850](v9, v10);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2232BB000, v4, v5, "Received experiences:\n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 24);

  return v15(v16);
}

uint64_t SageSearch.search(searchToolRequest:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for PommesSearchRequest(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.search(searchToolRequest:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(*(v4 + 32), type metadata accessor for PommesSearchRequest);
  if (v1)
  {

    return MEMORY[0x2822009F8](SageSearch.search(searchToolRequest:), 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t SageSearch.search(searchToolRequest:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(*v2 + 144))(v3);
  v4 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities);
  v5 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  v6 = v3 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId;
  v7 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId);
  v8 = *(v6 + 8);
  v9 = *(*v2 + 128);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = SageSearch.search(searchToolRequest:);
  v13 = v0[3];
  v12 = v0[4];

  return v15(v12, v4, v5, v7, v8);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t SageSearch.buildPommesSearchRequest(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v184 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v186 = &v158 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v185 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v183 = &v158 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v191 = &v158 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v192 = &v158 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v178 = &v158 - v28;
  v181 = type metadata accessor for UUID();
  v174 = *(v181 - 8);
  v29 = *(v174 + 64);
  v31 = MEMORY[0x28223BE20](v181, v30);
  v180 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v173 = &v158 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v166 = &v158 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v164 = &v158 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v165 = &v158 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v163 = &v158 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8, v49);
  v51 = &v158 - v50;
  v52 = type metadata accessor for PommesSearchRequest.Builder(0);
  v53 = (v52 - 8);
  v54 = *(*(v52 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v58 = (&v158 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56, v59);
  v61 = &v158 - v60;
  v62 = type metadata accessor for PommesSearchRequest(0);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v66 = MEMORY[0x28223BE20](v62, v65);
  v68 = &v158 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v69);
  v71 = (&v158 - v70);
  *v61 = 0;
  *(v61 + 1) = 0;
  v72 = v53[7];
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v74 = *(v73 - 8);
  v176 = *(v74 + 56);
  v177 = v73;
  v175 = v74 + 56;
  v176(&v61[v72], 1, 1);
  v75 = v53[8];
  v76 = type metadata accessor for PommesCandidateId();
  (*(*(v76 - 8) + 56))(&v61[v75], 1, 1, v76);
  v77 = &v61[v53[9]];
  *v77 = 0;
  *(v77 + 1) = 0;
  *&v61[v53[10]] = 0;
  v61[v53[11]] = 0;
  v61[v53[12]] = 0;
  v78 = v53[13];
  v79 = type metadata accessor for PommesContext();
  v80 = *(v79 - 8);
  v81 = *(v80 + 56);
  v172 = v79;
  v171 = v81;
  v170 = v80 + 56;
  (v81)(&v61[v78], 1, 1);
  v82 = v53[14];
  v83 = type metadata accessor for InputOrigin();
  v84 = *(v83 - 8);
  v85 = *(v84 + 56);
  v169 = v83;
  v168 = v85;
  v167 = v84 + 56;
  (v85)(&v61[v82], 1, 1);
  v86 = v53[15];
  v87 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v87 - 8) + 56))(&v61[v86], 1, 1, v87);
  *&v61[v53[16]] = MEMORY[0x277D84F90];
  v88 = v53[17];
  v89 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v162 = *(v89 - 8);
  v90 = *(v162 + 56);
  v179 = v89;
  v188 = v90;
  v189 = v162 + 56;
  (v90)(&v61[v88], 1, 1);
  v91 = &v61[v53[18]];
  *v91 = 0;
  *(v91 + 1) = 0;
  *&v61[v53[19]] = 0;
  v61[v53[20]] = 0;
  v92 = &v61[v53[21]];
  *v92 = 0;
  *(v92 + 1) = 0;
  *&v61[v53[22]] = 0;
  v61[v53[23]] = 0;
  v182 = a1;
  closure #1 in SageSearch.buildPommesSearchRequest(from:)(v61, a1);
  outlined init with copy of PommesSearchRequest.Builder(v61, v58, type metadata accessor for PommesSearchRequest.Builder);
  PommesSearchRequest.init(builder:)(v58, v51);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v61, type metadata accessor for PommesSearchRequest.Builder);
  v93 = *(v63 + 48);
  v190 = v62;
  if (v93(v51, 1, v62))
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v161 = v68;
    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logger.sage);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2232BB000, v95, v96, "Falling back to search request construction with less context", v97, 2u);
      MEMORY[0x223DE0F80](v97, -1, -1);
    }

    v98 = v163;
    UUID.init()();
    v160 = UUID.uuidString.getter();
    v159 = v99;
    v100 = v174;
    v101 = *(v174 + 8);
    v102 = v181;
    v101(v98, v181);
    v103 = v165;
    UUID.init()();
    v104 = v164;
    UUID.init()();
    v105 = UUID.uuidString.getter();
    v107 = v106;
    v101(v104, v102);
    v108 = v166;
    (*(v100 + 16))(v166, v103, v102);
    v109 = *(v100 + 32);
    v110 = v173;
    v109(v173, v108, v102);
    v101(v103, v102);
    v111 = type metadata accessor for DateInterval();
    v112 = v178;
    (*(*(v111 - 8) + 56))(v178, 1, 1, v111);
    v113 = type metadata accessor for PommesRequestContext();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    v116 = swift_allocObject();
    v117 = v159;
    *(v116 + 16) = v160;
    *(v116 + 24) = v117;
    v109((v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId), v110, v102);
    v118 = (v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    *v118 = v105;
    v118[1] = v107;
    v119 = (v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    *v119 = 0;
    v119[1] = 0;
    v120 = (v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    *v120 = 0;
    v120[1] = 0;
    v121 = (v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    *v121 = 0;
    v121[1] = 0;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
    v122 = MEMORY[0x277D84F90];
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
    outlined init with take of PommesSearchReason?(v112, v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v122;
    *(v116 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
    v123 = *(v182 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
    v124 = *(v123 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);
    v125 = *(v123 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8);

    v126 = v180;
    UUID.init()();
    v127 = UUID.uuidString.getter();
    v178 = v128;
    v101(v126, v102);
    v129 = *(v123 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
    v130 = v161;
    if (v129)
    {
      v181 = *(v123 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
    }

    else
    {

      v181 = 0;
      v129 = v116;
    }

    v171(v192, 1, 1, v172);
    v168(v191, 1, 1, v169);
    v131 = v190;
    *(v130 + v190[23]) = MEMORY[0x277D84F90];
    v132 = (v130 + v131[5]);
    *v132 = v124;
    v132[1] = v125;
    (v176)(v130 + v131[6], 1, 1, v177);
    v182 = v129;
    v133 = *(v129 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v180 = *(v129 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
    v134 = v180;
    v135 = (v130 + v131[8]);
    *v135 = v133;
    v135[1] = v134;
    v136 = (v130 + v131[9]);
    *v136 = 0;
    v136[1] = 0;
    v137 = v130 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);
    v138 = v178;
    *v130 = v127;
    v130[1] = v138;
    v139 = v183;
    v140 = v179;
    v141 = v188;
    v188(v183, 1, 1, v179);
    v142 = type metadata accessor for NLXResultCandidate();
    v143 = *(v142 + 20);
    v141(&v137[v143], 1, 1, v140);
    v144 = &v137[*(v142 + 24)];
    *v137 = MEMORY[0x277D84F90];

    outlined assign with take of MediaUserStateCenter?(v139, &v137[v143], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    *v144 = 0;
    *(v144 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v192, v130 + v131[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v141(v139, 1, 1, v140);
    v145 = v186;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(MEMORY[0x277D84F90], v139, v186);
    outlined destroy of MediaUserStateCenter?(v139, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v146 = v184;
    outlined init with copy of MediaUserStateCenter?(v145, v184, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v147 - 8) + 48))(v146, 1, v147) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v146, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v148 = 1;
      v149 = v185;
    }

    else
    {
      v149 = v185;
      (*(v162 + 32))(v185, v146, v140);
      v148 = 0;
    }

    v188(v149, v148, 1, v140);
    v150 = v190;
    outlined init with take of PommesSearchReason?(v149, v130 + v190[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v130 + v150[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v145, 0);
    v151 = v182;
    v152 = *(v182 + 24);
    v153 = (v130 + v150[7]);
    *v153 = *(v182 + 16);
    v153[1] = v152;
    *(v130 + v150[13]) = v151;
    v154 = v191;
    outlined init with copy of MediaUserStateCenter?(v191, v130 + v150[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v130 + v150[15]) = 0;
    *(v130 + v150[18]) = 0;

    v155 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(MEMORY[0x277D84F90]);

    outlined destroy of MediaUserStateCenter?(v145, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v154, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v192, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    *(v130 + v150[19]) = v155;
    *(v130 + v150[20]) = 0;
    v156 = (v130 + v150[21]);
    *v156 = 0;
    v156[1] = 0;
    *(v130 + v150[22]) = 0;
    *(v130 + v150[16]) = 0;
    *(v130 + v150[17]) = 0;
  }

  else
  {
    outlined init with take of PommesSearchRequest(v51, v71);
    v130 = v71;
  }

  return outlined init with take of PommesSearchRequest(v130, v187);
}

uint64_t closure #1 in SageSearch.buildPommesSearchRequest(from:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v36 - v13);
  v15 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
  v17 = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);
  v16 = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8);
  v18 = a1[1];

  *a1 = v17;
  a1[1] = v16;
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v5 + 8))(v9, v4);
  *v14 = v19;
  v14[1] = v21;
  v22 = *MEMORY[0x277D56618];
  v23 = type metadata accessor for PommesCandidateId();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v14, v22, v23);
  (*(v24 + 56))(v14, 0, 1, v23);
  v25 = type metadata accessor for PommesSearchRequest.Builder(0);
  outlined assign with take of MediaUserStateCenter?(v14, a1 + v25[6], &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  *(a1 + v25[9]) = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser);
  *(a1 + v25[10]) = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome);
  v27 = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId);
  v26 = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId + 8);
  v28 = (a1 + v25[19]);
  v29 = v28[1];

  *v28 = v27;
  v28[1] = v26;
  *(a1 + v25[20]) = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification);
  v30 = *(v15 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
  v31 = v25[8];
  v32 = *(a1 + v31);

  *(a1 + v31) = v30;
  v33 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v34 = v25[12];
  outlined destroy of MediaUserStateCenter?(a1 + v34, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  return outlined init with copy of MediaUserStateCenter?(v15 + v33, a1 + v34, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
}

uint64_t SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();
  v15 = type metadata accessor for PommesSearchRequest(0);
  v5[28] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v1 = v0[29];
  v46 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v38 = v0[25];
  v39 = v0[24];
  v40 = v0[23];
  v41 = v0[22];
  v42 = v0[20];
  v43 = v0[21];
  v44 = v0[19];
  v36 = v1;
  v37 = v0[15];
  v45 = v0[14];
  v4 = *(v0[18] + 16);
  outlined init with copy of PommesSearchRequest.Builder(v45, v1, type metadata accessor for PommesSearchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v6 = [objc_opt_self() indexMatcher];
  v7 = type metadata accessor for MusicDomain();
  v8 = swift_allocObject();
  v9 = specialized MusicDomain.init(spanMatcher:)(v6, v8);
  *(inited + 64) = v7;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  v11 = type metadata accessor for SageSearchRequestProcessor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[30] = v14;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v15 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  v14[4] = v16;
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v14[2] = v4;
  outlined init with copy of PommesSearchRequest.Builder(v1, v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v37;
  v14[3] = v10;
  type metadata accessor for OS_dispatch_queue();
  v48 = v4;

  _StringGuts.grow(_:)(40);

  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v20 = *(v2 + 8);
  v20(v3, v38);
  MEMORY[0x223DDF6D0](v17, v19);

  static DispatchQoS.userInitiated.getter();
  v0[12] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v43, *MEMORY[0x277D85260], v44);
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v36, type metadata accessor for PommesSearchRequest);
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v21;
  v22 = (v45 + *(v46 + 32));
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    v25 = v0[27];
    v26 = v0[25];
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v24 = v27;
    v20(v25, v26);
  }

  v28 = v0[16];
  v29 = v0[17];
  v30 = *(*v48 + 336);

  v30(v23, v24, v28);

  v31 = type metadata accessor for PommesResponse();
  v32 = swift_task_alloc();
  v0[31] = v32;
  *(v32 + 16) = v14;
  *(v32 + 24) = v29;
  v33 = *(MEMORY[0x277D859B8] + 4);
  v34 = swift_task_alloc();
  v0[32] = v34;
  *v34 = v0;
  v34[1] = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return MEMORY[0x282200740](v0 + 13, v31, v31, 0, 0, &async function pointer to partial apply for closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v32, v31);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];

  v7 = v0[13];

  v8 = v0[1];

  return v8(v7);
}

{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];

  v8 = v0[1];
  v9 = v0[33];

  return v8();
}

uint64_t closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v7);
  outlined destroy of MediaUserStateCenter?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v8);
  outlined destroy of MediaUserStateCenter?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = *(MEMORY[0x277D85818] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sScgy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v10 = v0;
  v10[1] = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  v12 = v0[4];

  return MEMORY[0x2822004D0](v0 + 2, 0, 0, v11);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {
    v3 = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    **(v0 + 24) = v1;
    v4 = *v3;
    v5 = type metadata accessor for PommesResponse();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x223DDFA00](v4, v5, v6, MEMORY[0x277D84950]);

    v7 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.sage);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, v9, v10, "SageSearch encountered unknown error", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError();
    swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 0xD000000000000024;
    *(v12 + 16) = 0x80000002234DEEE0;
    swift_willThrow();
    v13 = *(v0 + 56);
    v14 = **(v0 + 32);
    v15 = type metadata accessor for PommesResponse();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x223DDFA00](v14, v15, v16, MEMORY[0x277D84950]);

    v7 = *(v0 + 8);
  }

  return v7();
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = **(v0 + 32);
  v4 = type metadata accessor for PommesResponse();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x223DDFA00](v3, v4, v5, MEMORY[0x277D84950]);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v5 = *(*a4 + 216);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return v9();
}

uint64_t closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
  }
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v21 - v10;
  outlined init with copy of MediaUserStateCenter?(a1, v21 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  type metadata accessor for PommesResponse();
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v4 + 8);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v8 = *(MEMORY[0x277D857F0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  *v9 = v0;
  v9[1] = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);

  return MEMORY[0x282200488](v11, v0 + 16, v12, v13, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v12 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[13];
  v4 = v2[14];
  if (v0)
  {
    v6 = v2[12];
    v7 = v2[9];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5(v6, v7);
    v8 = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {
    v9 = v2[12];
    v10 = v2[9];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5(v9, v10);
    v8 = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sage);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "SageSearch timed out waiting for Pegasus", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError();
  swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0xD000000000000028;
  *(v5 + 16) = 0x80000002234DEF10;
  swift_willThrow();
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t SageSearch.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SageSearch.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType()
{
  result = lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType;
  if (!lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType);
  }

  return result;
}

uint64_t dispatch thunk of SageSearch.search(query:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of SageSearch.search(query:location:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SageSearch.search(query:location:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SageSearch.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 128);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SageSearch.search(searchToolRequest:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for SageSearch.SageSearchError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SageSearch.SageSearchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of PommesSearchRequest.Builder(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError()
{
  result = lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError;
  if (!lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AudioResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static AudioResult.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall AudioResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
  v4 = Message.serializedData(partial:)();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = MEMORY[0x223DDF550](0x6574496F69647561, 0xE90000000000006DLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

  outlined consume of Data._Representation(v4, v6);
  v9 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource);
  v10 = MEMORY[0x223DDF550](0x72756F536D657469, 0xEA00000000006563);
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  if ((*(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId + 8) & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId);
    v12 = MEMORY[0x223DDF550](0x6574736973726570, 0xEC0000006449746ELL);
    [(objc_class *)with.super.isa encodeInt64:v11 forKey:v12];
  }

  v13 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded);
  v14 = MEMORY[0x223DDF550](0x6F6C6E776F447369, 0xEC00000064656461);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem);
  }

  return result;
}

id AudioResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v18)
  {
    v19 = v18;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v17, v11, v12);
    (*(v13 + 16))(v1 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem, v17, v12);
    v27 = MEMORY[0x223DDF550](0x6574736973726570, 0xEC0000006449746ELL);
    v28 = [a1 decodeObjectForKey_];

    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v29 = v41;
        v30 = [v41 longLongValue];

        v31 = 0;
LABEL_16:
        v32 = v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId;
        *v32 = v30;
        v32[8] = v31;
        v33 = MEMORY[0x223DDF550](0x72756F536D657469, 0xEA00000000006563);
        v34 = [a1 decodeIntegerForKey_];

        v35 = v34 == 1;
        if (v34 == 2)
        {
          v35 = 2;
        }

        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource) = v35;
        v36 = MEMORY[0x223DDF550](0x6F6C6E776F447369, 0xEC00000064656461);
        v37 = [a1 decodeBoolForKey_];

        (*(v13 + 8))(v17, v12);
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded) = v37;
        v38 = type metadata accessor for AudioResult();
        v42.receiver = v2;
        v42.super_class = v38;
        v39 = objc_msgSendSuper2(&v42, sel_init);

        return v39;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v45, &_sypSgMd, &_sypSgMR);
    }

    v30 = 0;
    v31 = 1;
    goto LABEL_16;
  }

  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.music);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v21, v22, "Failed to decode AudioItem data", v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  type metadata accessor for AudioResult();
  v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

SiriInformationSearch::AudioResult::ItemSource_optional __swiftcall AudioResult.ItemSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for AudioResult()
{
  result = type metadata singleton initialization cache for AudioResult;
  if (!type metadata singleton initialization cache for AudioResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioResult.ItemSource.description.getter()
{
  v1 = 0x726576726573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t AudioResult.persistentId.getter()
{
  result = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId + 8);
  return result;
}

uint64_t AudioResult.audioItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static AudioResult.decodeSiriSyncId(id:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = Data.init(base64Encoded:options:)();
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  static String.Encoding.utf8.getter();
  v7 = String.init(data:encoding:)();
  v9 = v8;
  outlined consume of Data?(v5, v6);
  if (!v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id AudioResult.__allocating_init(itemSource:persistentId:audioItem:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v10 = &v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v10 = a2;
  v10[8] = a3 & 1;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a4, v12);
  v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a4, v12);
  return v14;
}

id AudioResult.init(itemSource:persistentId:audioItem:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v6 = &v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v6 = a2;
  v6[8] = a3 & 1;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a4, v8);
  v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AudioResult();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a4, v8);
  return v10;
}

id AudioResult.__allocating_init(itemSource:audioItem:isDownloaded:)(_BYTE *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v8 = &v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v8 = 0;
  v8[8] = 0;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a2, v10);
  v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a2, v10);
  return v12;
}

id AudioResult.init(itemSource:audioItem:isDownloaded:)(_BYTE *a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v6 = &v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v6 = 0;
  v6[8] = 0;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for AudioResult();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a2, v8);
  return v10;
}

uint64_t AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(void *a1, int a2)
{
  LODWORD(v39) = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v37 - v20;
  if (a1)
  {
    v38 = v2;
    v22 = a1;
    Apple_Parsec_Siri_V2alpha_AudioItem.init()();
    dispatch thunk of VocabularyResult.fieldType.getter();
    UInt16.audioType.getter();
    Apple_Parsec_Siri_V2alpha_AudioItem.type.setter();
    Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
    v23 = (*(v5 + 88))(v10, v4);
    if (v23 == *MEMORY[0x277D394D8] || v23 == *MEMORY[0x277D394E0])
    {
      goto LABEL_7;
    }

    if (v23 == *MEMORY[0x277D39500])
    {
      VocabularyResult.semanticValue.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
      goto LABEL_15;
    }

    if (v23 == *MEMORY[0x277D394E8] || v23 == *MEMORY[0x277D39520] || v23 == *MEMORY[0x277D39488] || v23 == *MEMORY[0x277D394B0] || v23 == *MEMORY[0x277D39528] || v23 == *MEMORY[0x277D394F0] || v23 == *MEMORY[0x277D39508] || v23 == *MEMORY[0x277D394A8] || v23 == *MEMORY[0x277D39480] || v23 == *MEMORY[0x277D394B8])
    {
LABEL_7:
      VocabularyResult.semanticValue.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
LABEL_15:
      VocabularyResult.userId.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter();
      v40 = 2;
      (*(v13 + 16))(v18, v21, v12);
      v30 = (*(v38 + 136))(&v40, v18, v39 & 1);

      (*(v13 + 8))(v21, v12);
      return v30;
    }

    v39 = v5;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v32 = v22;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 33554688;
      *(v35 + 4) = dispatch thunk of VocabularyResult.fieldType.getter();

      _os_log_impl(&dword_2232BB000, v33, v34, "vocabularyResult ontologyLabel ** %hu ** not handled", v35, 6u);
      MEMORY[0x223DE0F80](v35, -1, -1);
    }

    else
    {

      v33 = v32;
    }

    v36 = v39;

    (*(v13 + 8))(v21, v12);
    (*(v36 + 8))(v10, v4);
    return 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "cannot create AudioResult from nil vocabularyResult", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    return 0;
  }
}

uint64_t AudioResult.__allocating_init(clientAudioResult:)(void *a1)
{
  v2 = ClientAudioResult.vocabularyResult.getter();
  v3 = AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(v2, 0);

  return v3;
}

uint64_t AudioResult.__allocating_init(clientAudioResult:isDownloaded:)(void *a1, int a2)
{
  v4 = ClientAudioResult.vocabularyResult.getter();
  v5 = AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(v4, a2);

  return v5;
}

uint64_t AudioResult.__allocating_init(audioItem:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v20[-v6];
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v20[-v16];
  outlined init with copy of Apple_Parsec_Siri_V2alpha_AudioItem?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of MediaUserStateCenter?(a1, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    outlined destroy of MediaUserStateCenter?(v7, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
    v21 = 1;
    (*(v9 + 16))(v14, v17, v8);
    v19 = (*(v1 + 136))(&v21, v14, 0);
    outlined destroy of MediaUserStateCenter?(a1, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    (*(v9 + 8))(v17, v8);
    return v19;
  }
}

uint64_t AudioResult.description.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D39518])
  {
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  else if (v8 == *MEMORY[0x277D394D8])
  {
    v9 = 0xE400000000000000;
    v10 = 1735290739;
  }

  else if (v8 == *MEMORY[0x277D394E0])
  {
    v9 = 0xE500000000000000;
    v10 = 0x6D75626C61;
  }

  else if (v8 == *MEMORY[0x277D39500])
  {
    v9 = 0xE600000000000000;
    v10 = 0x747369747261;
  }

  else if (v8 == *MEMORY[0x277D394E8])
  {
    v9 = 0xE500000000000000;
    v10 = 0x65726E6567;
  }

  else if (v8 == *MEMORY[0x277D39520])
  {
    v9 = 0xE800000000000000;
    v10 = 0x7473696C79616C70;
  }

  else
  {
    v10 = 0x5374736163646F70;
    if (v8 == *MEMORY[0x277D39488])
    {
      v9 = 0xEB00000000776F68;
    }

    else if (v8 == *MEMORY[0x277D394B0])
    {
      v9 = 0xEE0065646F736970;
      v10 = 0x4574736163646F70;
    }

    else if (v8 == *MEMORY[0x277D394C0])
    {
      v9 = 0xEF7473696C79616CLL;
      v10 = 0x5074736163646F70;
    }

    else
    {
      v9 = 0xEC0000006E6F6974;
      if (v8 == *MEMORY[0x277D39498])
      {
        v10 = 0x617453636973756DLL;
      }

      else if (v8 == *MEMORY[0x277D39528])
      {
        v9 = 0xE90000000000006BLL;
        v10 = 0x6F6F426F69647561;
      }

      else if (v8 == *MEMORY[0x277D394F0])
      {
        v9 = 0xE500000000000000;
        v10 = 0x6569766F6DLL;
      }

      else if (v8 == *MEMORY[0x277D39508])
      {
        v9 = 0xE600000000000000;
        v10 = 0x776F68537674;
      }

      else if (v8 == *MEMORY[0x277D394A8])
      {
        v9 = 0xED000065646F7369;
        v10 = 0x7045776F68537674;
      }

      else if (v8 == *MEMORY[0x277D39480])
      {
        v9 = 0xEA00000000006F65;
        v10 = 0x646956636973756DLL;
      }

      else if (v8 == *MEMORY[0x277D394B8])
      {
        v9 = 0xEE006E6F69746174;
      }

      else if (v8 == *MEMORY[0x277D394A0])
      {
        v10 = 0x6174536F69646172;
      }

      else if (v8 == *MEMORY[0x277D39510])
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E6F6974617473;
      }

      else if (v8 == *MEMORY[0x277D394F8])
      {
        v9 = 0xE500000000000000;
        v10 = 0x636973756DLL;
      }

      else if (v8 == *MEMORY[0x277D394C8])
      {
        v9 = 0x80000002234DEF80;
        v10 = 0xD000000000000017;
      }

      else if (v8 == *MEMORY[0x277D394D0])
      {
        v9 = 0xE400000000000000;
        v10 = 1937204590;
      }

      else
      {
        (*(v3 + 8))(v7, v2);
        v9 = 0xEC00000044455A49;
        v10 = 0x4E474F4345524E55;
      }
    }
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DEF60);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource))
  {
    if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource) == 1)
    {
      v11 = 0xE600000000000000;
      v1 = 0x726576726573;
    }

    else
    {
      v11 = 0x80000002234DEF40;
      v1 = 0xD000000000000011;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x223DDF6D0](v1, v11);

  MEMORY[0x223DDF6D0](0x69746E656469202CLL, 0xEE00203A72656966);
  v12 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
  MEMORY[0x223DDF6D0](v12);

  MEMORY[0x223DDF6D0](0x747369747261202CLL, 0xEB0000000022203ALL);
  v13 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
  MEMORY[0x223DDF6D0](v13);

  MEMORY[0x223DDF6D0](0x656C746974202C22, 0xEB0000000022203ALL);
  v14 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
  MEMORY[0x223DDF6D0](v14);

  MEMORY[0x223DDF6D0](0x3A65707974202C22, 0xE900000000000020);
  MEMORY[0x223DDF6D0](v10, v9);

  MEMORY[0x223DDF6D0](32032, 0xE200000000000000);
  return v16[0];
}

id AudioResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_AudioItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AudioResult.ItemSource and conformance AudioResult.ItemSource()
{
  result = lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource;
  if (!lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource);
  }

  return result;
}

uint64_t type metadata completion function for AudioResult()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PegasusInstrumentationUtil.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id PegasusInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t PegasusInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*PegasusInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PegasusInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PegasusInstrumentationUtil.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PegasusInstrumentationUtil.logStartOfPegasusRequest(requestId:pommesId:pommesCandidateId:payloadSizeInKB:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13 = (*(*v3 + 136))();
  if (v13)
  {
    v8 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, a3);
    if (v8)
    {
      v9 = v8;
      [v8 setPegasusRequestContext_];
      v10 = [objc_opt_self() processInfo];
      v11 = NSProcessInfo.isRunningUnitTests.getter();

      if (v11)
      {
        v12 = (*(*v4 + 96))();
      }

      else
      {
        v12 = [objc_opt_self() sharedStream];
      }

      [v12 emitMessage_];
      swift_unknownObjectRelease();
    }
  }
}

void *PegasusInstrumentationUtil.createPegasusRequestStartedEvent(payloadSizeInKB:)(long double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D5A038]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
    if (v4)
    {
      v5 = v4;
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a1);
      [v3 setPayloadSizeInKB:?];
      [v5 setStartedOrChanged_];
      goto LABEL_10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2232BB000, v3, v7, "Failed to create the Start event and/or context", v8, 2u);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, long double a9, long double a10, uint64_t a11)
{
  v106 = a3;
  v101 = a8;
  v100 = a6;
  v102 = a5;
  v104 = a1;
  v105 = a2;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v109 = *(v15 - 8);
  v110 = v15;
  v16 = v109[8];
  MEMORY[0x28223BE20](v15, v17);
  v108 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v98 = *(v19 - 8);
  v99 = v19;
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v97 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v95 = *(v23 - 8);
  v96 = v23;
  v24 = *(v95 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v94 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v93 - v30;
  v111 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v32 = *(v111 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v111, v34);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v103 = &v93 - v39;
  v40 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v45, a4, v40);
  v46 = (*(v41 + 88))(v45, v40);
  v47 = *MEMORY[0x277D39258];
  (*(v41 + 8))(v45, v40);
  if (v46 == v47)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.pommes);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "Incorrect logging method called. Should call logFailedPegasusRequest(pommesId:resultCandidateId:reason:).";
LABEL_18:
      _os_log_impl(&dword_2232BB000, v49, v50, v52, v51, 2u);
      MEMORY[0x223DE0F80](v51, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277D5A018]) init];
  if (v53)
  {
    v54 = v53;
    v55 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
    if (v55)
    {
      v49 = v55;
      v93 = a11;
      [v54 setStatus_];
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a9);
      [v54 setConfidenceScore_];
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a10);
      [v54 setPayloadSizeInKB_];
      if (a7)
      {
        a7 = MEMORY[0x223DDF550](v100, a7);
      }

      v56 = v32;
      v58 = v110;
      v57 = v111;
      v59 = v108;
      [v54 setPegasusDomain_];

      [v54 setIsRewrittenUtteranceUsed_];
      v60 = specialized static PegasusInstrumentationUtil.kfedLatency(from:)();
      [v54 setKfedLatency_];

      outlined init with copy of MediaUserStateCenter?(v102, v31, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
      v61 = (*(v32 + 48))(v31, 1, v57);
      v62 = v109;
      if (v61 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v31, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
      }

      else
      {
        v65 = v103;
        (*(v56 + 32))(v103, v31, v57);
        (*(v56 + 16))(v37, v65, v57);
        v66 = (*(v56 + 88))(v37, v57);
        if (v66 == *MEMORY[0x277D38D80])
        {
          (*(v56 + 96))(v37, v57);
          v67 = (v62[4])(v59, v37, v58);
          v69 = v56;
          v70 = v59;
          if (one-time initialization token for shared != -1)
          {
            v67 = swift_once();
          }

          v102 = &v93;
          v71 = static PerformanceUtil.shared;
          MEMORY[0x28223BE20](v67, v68);
          v72 = v107;
          v91 = v107;
          v92 = v70;
          v73 = v97;
          Date.init()();
          v74 = *(*v71 + 200);
          v91 = &v90;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo52POMMESSchemaPOMMESPegasusResponseServerDrivenContextCSgMd, &_sSo52POMMESSchemaPOMMESPegasusResponseServerDrivenContextCSgMR);
          LOBYTE(v90) = 2;
          v63 = v72;
          v74(v112, 0xD00000000000001CLL, 0x80000002234DF060, 0, v73, "SiriInformationSearch/PegasusInstrumentationUtil.swift", 54, 2, 150, "logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)", 162, v90, partial apply for closure #3 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:));
          (*(v98 + 8))(v73, v99);
          v75 = v112[0];
          [v54 setServerDriven_];

          (*(v69 + 8))(v103, v111);
          (v109[1])(v108, v110);
          goto LABEL_27;
        }

        if (v66 == *MEMORY[0x277D38D78])
        {
          (*(v56 + 96))(v37, v57);
          v76 = v95;
          v77 = v94;
          v78 = (*(v95 + 32))();
          v110 = v56;
          if (one-time initialization token for shared != -1)
          {
            v78 = swift_once();
          }

          v109 = &v93;
          v80 = static PerformanceUtil.shared;
          MEMORY[0x28223BE20](v78, v79);
          v81 = v107;
          v91 = v107;
          v92 = v77;
          v82 = v97;
          Date.init()();
          v108 = *(*v80 + 200);
          v91 = &v90;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo52POMMESSchemaPOMMESPegasusResponseClientDrivenContextCSgMd, &_sSo52POMMESSchemaPOMMESPegasusResponseClientDrivenContextCSgMR);
          LOBYTE(v90) = 2;
          v63 = v81;
          (v108)(v112, 0xD00000000000001CLL, 0x80000002234DF170, 0, v82, "SiriInformationSearch/PegasusInstrumentationUtil.swift", 54, 2, 148, "logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)", 162, v90, partial apply for closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:));
          (*(v98 + 8))(v82, v99);
          v83 = v112[0];
          [v54 setClientDriven_];

          (*(v110 + 8))(v103, v111);
          (*(v76 + 8))(v77, v96);
          goto LABEL_27;
        }

        v89 = *(v56 + 8);
        v89(v103, v57);
        v89(v37, v57);
      }

      v63 = v107;
LABEL_27:
      [v49 setEnded:v54];
      v84 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v104, v105, v106);
      if (v84)
      {
        v85 = v84;
        [v84 setPegasusRequestContext_];
        v86 = [objc_opt_self() processInfo];
        v87 = NSProcessInfo.isRunningUnitTests.getter();

        if (v87)
        {
          v88 = (*(*v63 + 96))();
        }

        else
        {
          v88 = [objc_opt_self() sharedStream];
        }

        [v88 emitMessage_];
        swift_unknownObjectRelease();
      }

      goto LABEL_33;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.pommes);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Failed to create the End event and/or context";
    goto LABEL_18;
  }

LABEL_33:
}

uint64_t closure #1 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D39260])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D39270])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x277D39258])
  {
LABEL_2:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "Unrecognized status from log end of request", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    return 0;
  }

  if (v8 != *MEMORY[0x277D39268])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Unknown status from log end of request", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return 3;
}

void closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D5A040]) init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    [v4 setType_];
  }

  *a1 = v3;
}

void PegasusInstrumentationUtil.logFailedPegasusRequest(requestId:pommesId:pommesCandidateId:reason:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D5A020]) init];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
  if (!v15)
  {

LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v25, v23, "Failed to create the Failed event and/or context", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    goto LABEL_19;
  }

  v25 = v15;
  [v14 setReason_];
  if ((a6 & 1) != 0 || a4 != 1)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(a5))
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v14 setErrorCode_];
LABEL_8:
  [v25 setFailed:v14];
  v16 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, a3);
  if (v16)
  {
    v17 = v16;
    v18 = v6;
    [v16 setPegasusRequestContext_];
    v19 = [objc_opt_self() processInfo];
    v20 = NSProcessInfo.isRunningUnitTests.getter();

    if (v20)
    {
      v21 = (*(*v18 + 96))();
    }

    else
    {
      v21 = [objc_opt_self() sharedStream];
    }

    [v21 emitMessage_];
    swift_unknownObjectRelease();
  }

LABEL_19:
}

id PegasusInstrumentationUtil.logPegasusSelfOpaquePayloads(requestId:payloads:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D5A828]) init];
  if (result)
  {
    v16 = result;
    outlined init with copy of MediaUserStateCenter?(a1, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return outlined destroy of MediaUserStateCenter?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v35 = v10;
      v36 = v9;
      (*(v10 + 32))(v14, v8, v9);
      [v16 setComponent_];
      v17 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v34 = v14;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v19 = [v17 initWithNSUUID_];

      [v16 setUuid_];
      v20 = *(a2 + 16);
      if (v20)
      {
        v38 = "handleSuccess(_:_:_:)";
        v21 = (a2 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v24 = objc_allocWithZone(MEMORY[0x277D5A970]);
          outlined copy of Data._Representation(v22, v23);
          v25 = [v24 init];
          if (v25)
          {
            v26 = v25;
            [v25 setComponentId_];
            v27 = Data._bridgeToObjectiveC()().super.isa;
            [v26 setAnyEventPayload_];

            v28 = [objc_opt_self() processInfo];
            v29 = [v28 environment];
            v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v30 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, v38 | 0x8000000000000000), (v31 & 1) != 0))
            {

              v32 = (*(*v37 + 96))();
            }

            else
            {

              v32 = [objc_opt_self() sharedStream];
            }

            [v32 emitMessage_];
            outlined consume of Data._Representation(v22, v23);
            swift_unknownObjectRelease();
          }

          else
          {
            outlined consume of Data._Representation(v22, v23);
          }

          v21 += 2;
          --v20;
        }

        while (v20);
      }

      return (*(v35 + 8))(v34, v36);
    }
  }

  return result;
}

void PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v155 = a2;
  v156 = a3;
  v154 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v152 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v160 = &v150 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v151 = &v150 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v159 = &v150 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v150 - v22;
  v166 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v24 = *(v166 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v166, v26);
  v165 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v167 = *(v28 - 8);
  v168 = v28;
  v29 = v167[8];
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v33 = *(v164 - 1);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v164, v35);
  v37 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v39 = *(v38 + 16);
  if (v39)
  {
    v158 = v24;
    v161 = a5;
    v162 = v7;
    v163 = v6;
    v40 = 0;
    v41 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery() - 8);
    v42 = v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v43 = *(v41 + 72);
    while (1)
    {
      closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(&v169);
      v44 = v170;

      if (v44)
      {
        break;
      }

      ++v40;
      v42 += v43;
      if (v39 == v40)
      {
        goto LABEL_7;
      }
    }

    v39 = v40;
LABEL_7:
    v7 = v162;
    v6 = v163;
    v24 = v158;
  }

  v45 = *(v38 + 16);
  if (v39 == v45)
  {
    v153 = 0;
    v158 = 0;
  }

  else
  {
    if (v39 >= v45)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v46 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery() - 8);
    v47 = v38 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = *(v46 + 72);
    closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(&v169);
    v158 = v170;
    if (!v170)
    {
LABEL_96:
      __break(1u);
LABEL_97:

      __break(1u);
      return;
    }

    v153 = v169;
  }

  v49 = v164;

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v50 = (*(v33 + 8))(v37, v49);
  v51 = MEMORY[0x223DDB9C0](v50);
  (v167[1])(v32, v168);
  v52 = *(v51 + 16);
  v164 = (v24 + 8);
  v53 = (v7 + 8);
  v157 = v51;
  if (v52)
  {
    v54 = v51;
    v55 = v6;
    v56 = 0;
    v57 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
    v163 = v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v58 = *(v57 + 72);
    v161 = v52;
    v162 = v58;
    while (1)
    {
      v59 = v165;
      v60 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
      v61 = MEMORY[0x223DDB910](v60);
      (*v164)(v59, v166);
      v62 = *(v61 + 16);
      if (v62)
      {
        v168 = v56;
        v63 = 0;
        v64 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
        v65 = *(v64 + 80);
        v167 = v61;
        v66 = v61 + ((v65 + 32) & ~v65);
        v67 = *(v64 + 72);
        while (1)
        {
          v68 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v69 = MEMORY[0x223DDBA60](v68);
          v71 = v70;
          v72 = *v53;
          (*v53)(v23, v55);

          v73 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v73 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v73)
          {
            break;
          }

          ++v63;
          v66 += v67;
          if (v62 == v63)
          {
            v63 = v62;
            goto LABEL_24;
          }
        }

        v74 = v159;
        v75 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        MEMORY[0x223DDBA60](v75);
        v72(v74, v55);

LABEL_24:
        v61 = v167;
        v56 = v168;
        v52 = v161;
      }

      else
      {
        v63 = 0;
      }

      v76 = *(v61 + 16);
      if (v63 != v76)
      {
        break;
      }

      if (++v56 == v52)
      {
        v56 = v52;
        v6 = v55;
LABEL_34:
        v51 = v157;
        goto LABEL_35;
      }
    }

    if (v63 >= v76)
    {
      goto LABEL_93;
    }

    v77 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
    v78 = v61 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v63;
    v79 = v151;
    v80 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v81 = MEMORY[0x223DDBA60](v80);
    v83 = v82;
    v84 = *v53;
    v85 = v79;
    v6 = v55;
    (*v53)(v85, v55);

    v86 = HIBYTE(v83) & 0xF;
    if ((v83 & 0x2000000000000000) == 0)
    {
      v86 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (v86)
    {
      v87 = v159;
      v88 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
      MEMORY[0x223DDBA60](v88);
      v84(v87, v6);

      goto LABEL_34;
    }

    goto LABEL_94;
  }

  v56 = 0;
LABEL_35:
  v89 = *(v51 + 16);
  v90 = v158;
  if (v56 == v89)
  {

    v91 = 0;
    if (v90)
    {
      v92 = 0;
      v93 = 1;
      v94 = 0;
      goto LABEL_66;
    }

    v94 = 0;
    goto LABEL_63;
  }

  if (v56 >= v89)
  {
    goto LABEL_90;
  }

  v95 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
  v96 = v51 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v56;
  v97 = v165;
  v98 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
  v99 = MEMORY[0x223DDB910](v98);
  (*v164)(v97, v166);
  v100 = *(v99 + 16);
  if (v100)
  {
    v158 = v90;
    v101 = v6;
    v102 = 0;
    v103 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
    v104 = *(v103 + 80);
    v168 = v99;
    v105 = v99 + ((v104 + 32) & ~v104);
    v106 = *(v103 + 72);
    while (1)
    {
      v107 = v160;
      v108 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
      v109 = MEMORY[0x223DDBA60](v108);
      v111 = v110;
      v112 = *v53;
      (*v53)(v107, v101);

      v113 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v113 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (v113)
      {
        break;
      }

      ++v102;
      v105 += v106;
      if (v100 == v102)
      {
        v102 = v100;
        v6 = v101;
        goto LABEL_49;
      }
    }

    v114 = v159;
    v115 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    MEMORY[0x223DDBA60](v115);
    v116 = v114;
    v6 = v101;
    v112(v116, v101);

LABEL_49:
    v90 = v158;
    v99 = v168;
  }

  else
  {
    v102 = 0;
  }

  v117 = *(v99 + 16);
  if (v102 == v117)
  {
    goto LABEL_97;
  }

  if (v102 >= v117)
  {
    goto LABEL_91;
  }

  v118 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
  v119 = v99 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v102;
  v120 = v152;
  v121 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v122 = MEMORY[0x223DDBA60](v121);
  v124 = v123;
  v125 = *v53;
  (*v53)(v120, v6);

  v126 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v126 = v122 & 0xFFFFFFFFFFFFLL;
  }

  if (!v126)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v127 = v159;
  v128 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v94 = MEMORY[0x223DDBA60](v128);
  v91 = v129;
  v125(v127, v6);

  if (v90)
  {
    if (v91 && (v153 == v94 && v90 == v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v92 = 0;
      v93 = 2;
      goto LABEL_66;
    }

    v92 = 0;
  }

  else
  {
    if (!v91)
    {
LABEL_63:
      v93 = 3;
      v92 = 1;
      goto LABEL_66;
    }

    v92 = 1;
  }

  v93 = 1;
LABEL_66:
  v130 = [objc_allocWithZone(MEMORY[0x277D5A028]) init];
  if (!v130)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v131 = v130;
  v168 = v94;
  [v130 setGeoAppResolutionType_];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  __swift_project_value_buffer(v132, static Logger.pommes);

  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v169 = v136;
    *v135 = 136315650;
    v167 = v131;
    if (v92)
    {
      v137 = 7104878;
    }

    else
    {
      v137 = v153;
    }

    if (v92)
    {
      v138 = 0xE300000000000000;
    }

    else
    {
      v138 = v90;
    }

    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v169);

    *(v135 + 4) = v139;
    *(v135 + 12) = 2080;
    if (v91)
    {
      v140 = v168;
    }

    else
    {
      v140 = 7104878;
    }

    if (!v91)
    {
      v91 = 0xE300000000000000;
    }

    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v91, &v169);

    *(v135 + 14) = v141;
    *(v135 + 22) = 2080;
    v131 = v167;
    v142 = POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType.description.getter();
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v169);

    *(v135 + 24) = v144;
    _os_log_impl(&dword_2232BB000, v133, v134, "Third party maps app bundle Id from request is %s, from response is %s). Reporting resolution type: %s.", v135, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v136, -1, -1);
    MEMORY[0x223DE0F80](v135, -1, -1);
  }

  else
  {
  }

  v145 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v154, v155, v156);
  if (v145)
  {
    v146 = v145;
    [v145 setPommesPegasusRequestGeoAppResolutionReported_];
    v147 = [objc_opt_self() processInfo];
    v148 = NSProcessInfo.isRunningUnitTests.getter();

    if (v148)
    {
      v149 = (*(*v150 + 96))();
    }

    else
    {
      v149 = [objc_opt_self() sharedStream];
    }

    [v149 emitMessage_];
    swift_unknownObjectRelease();
  }
}