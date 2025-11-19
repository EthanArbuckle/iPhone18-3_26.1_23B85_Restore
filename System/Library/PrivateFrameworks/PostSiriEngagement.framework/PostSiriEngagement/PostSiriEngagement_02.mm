uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  v4 = 1;
  if (v3 != 1 << *(a1 + 32))
  {
    v4 = specialized Set.subscript.getter(v3, *(a1 + 36), 0, a1);
    v5 = v4;
  }

  return v4;
}

void PSEHomeSELFEmitter.emitPSEHome(homeSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v261 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v227 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v248 = &v227 - v15;
  MEMORY[0x28223BE20](v14);
  v252 = &v227 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v247 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v245 = &v227 - v22;
  MEMORY[0x28223BE20](v21);
  v246 = &v227 - v23;
  v24 = type metadata accessor for UUID();
  v253 = *(v24 - 8);
  v25 = *(v253 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v244 = &v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v242 = &v227 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v243 = &v227 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v227 - v32;
  v255 = type metadata accessor for Date();
  v258 = *(v255 - 8);
  v34 = *(v258 + 64);
  MEMORY[0x28223BE20](v255);
  v254 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for Calendar.Component();
  v257 = *(v251 - 8);
  v36 = *(v257 + 8);
  MEMORY[0x28223BE20](v251);
  v250 = (&v227 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Calendar();
  base_props = v38[-1].base_props;
  v39 = base_props[8];
  MEMORY[0x28223BE20](v38);
  v249 = &v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v41)
  {
    goto LABEL_107;
  }

  v262 = v41;
  v259 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v259)
  {
    v57 = v262;
LABEL_106:

LABEL_107:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    __swift_project_value_buffer(v122, static Logger.engagement);
    v123 = *MEMORY[0x277D615B0];
    v124 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v124 - 8) + 104))(v10, v123, v124);
    (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v5);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = v5;
      v128 = swift_slowAlloc();
      v129 = v6;
      v130 = swift_slowAlloc();
      v266 = *&v130;
      *v128 = 136315138;
      *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x800000025ED7F460, &v266);
      _os_log_impl(&dword_25ECEC000, v125, v126, "%s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      v131 = v130;
      v6 = v129;
      MEMORY[0x25F8CEE50](v131, -1, -1);
      v132 = v128;
      v5 = v127;
      MEMORY[0x25F8CEE50](v132, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v133 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v133, v134);

    (*(v6 + 8))(v10, v5);
    return;
  }

  v241 = [objc_allocWithZone(MEMORY[0x277D5A1B8]) init];
  if (!v241)
  {
    v58 = v262;
    v59 = v259;
LABEL_105:

    v57 = v59;
    goto LABEL_106;
  }

  v240 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v240)
  {
    v60 = v259;
    v59 = v241;
LABEL_104:

    v58 = v60;
    goto LABEL_105;
  }

  v239 = [objc_allocWithZone(MEMORY[0x277D5A1B0]) init];
  if (!v239)
  {
    v61 = v262;
    v262 = v259;
    v59 = v240;
LABEL_103:

    v60 = v241;
    goto LABEL_104;
  }

  if (a1 >> 62)
  {
    goto LABEL_98;
  }

  v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v262;
  if (!v42)
  {
LABEL_102:

    v262 = v240;
    v59 = v259;
    v61 = v239;
    goto LABEL_103;
  }

LABEL_8:
  v237 = v24;
  v24 = a1 & 0xC000000000000001;
  v233 = v5;
  v234 = v13;
  v235 = v38;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x25F8CE460](0, a1);
    v44 = v240;
  }

  else
  {
    v44 = v240;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }

    v45 = *(a1 + 32);
  }

  v47 = v46;
  (*(*v46 + 120))(&v266);
  v48 = (*(*v47 + 144))([v44 setEventDonationTimeInSecondsSince2001_]);
  v49 = MEMORY[0x25F8CDFC0](v48);

  [v44 setDomain_];

  v50 = (*(*v47 + 168))();
  v38 = v51;
  v5 = MEMORY[0x25F8CDFC0](v50);

  [v44 setAction_];

  v52 = *(*v47 + 216);
  v231 = v47;
  v53 = v52();
  if (*(v53 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v55 & 1) != 0))
  {
    outlined init with copy of Any(*(v53 + 56) + 32 * v54, &v266);

    if (swift_dynamicCast())
    {
      v56 = v263;
    }

    else
    {
      v56 = 2;
    }
  }

  else
  {

    v56 = 2;
  }

  v13 = v260;
  [v44 setIsDonatedBySiri_];
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v135 = a2;
    }

    else
    {
      v135 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v62 = MEMORY[0x25F8CE500](v135);
  }

  else
  {
    v62 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v232 = v6;
  if (v62)
  {
    v5 = 0xD000000000000024;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x25F8CE460](0, a2);
      v63 = v64;
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_147;
      }

      v63 = *(a2 + 32);
    }

    (*(*v63 + 120))(&v266, v64);
    v65 = (*(*v63 + 216))([v44 setAppLaunchTimeInSecondsSince2001_]);
    if (*(v65 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v67 & 1) != 0))
    {
      outlined init with copy of Any(*(v65 + 56) + 32 * v66, &v266);

      v68 = swift_dynamicCast();
      v69 = v263;
      if (!v68)
      {
        v69 = 0;
      }

      v236 = v69;
      if (v68)
      {
        v70 = v264;
      }

      else
      {
        v70 = 0;
      }

      v238 = v70;
    }

    else
    {

      v236 = 0;
      v238 = 0;
    }

    v71 = (*(*v261 + 256))();
    if (v71[2])
    {
      v72 = v71[4];
      v73 = v71[5];
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v38 = v260;
    v74 = (*(*&v260->flags + 120))(v236, v238, v72, v73);

    v75 = v240;
    v76 = (*(*v63 + 168))([v240 setAppFollowup_]);
    v5 = v77;
    v13 = (*(*&v38->flags + 136))(v76);

    [v75 setAppLaunchReason_];
  }

  else
  {
    [v44 setAppFollowup_];
  }

  a2 = 0;
  v263 = MEMORY[0x277D84F90];
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x277D839B0];
  v238 = v33;
  do
  {
    if (v24)
    {
      v5 = MEMORY[0x25F8CE460](a2, a1);
      v38 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v5 = *(a1 + 8 * a2 + 32);

      v38 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        if (a1 < 0)
        {
          v121 = a1;
        }

        else
        {
          v121 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v42 = MEMORY[0x25F8CE500](v121);
        v43 = v262;
        if (!v42)
        {
          goto LABEL_102;
        }

        goto LABEL_8;
      }
    }

    v13 = (*(*v5 + 216))();
    if (v13[2] && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v79 & 1) != 0))
    {
      outlined init with copy of Any(v13[7] + 32 * v78, &v266);

      if ((swift_dynamicCast() & 1) != 0 && v265 != 1)
      {
        v13 = &v263;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v80 = *(v263 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v33 = v238;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_55;
      }
    }

    else
    {
    }

LABEL_55:
    ++a2;
  }

  while (v38 != v42);
  a2 = v263;
  if ((v263 & 0x8000000000000000) == 0 && (v263 & 0x4000000000000000) == 0)
  {
    v44 = v240;
    if (*(v263 + 16))
    {
      goto LABEL_59;
    }

LABEL_120:

    [v44 setHasUserInitiatedFollowup_];
    v119 = v239;
    [v239 setFollowUpSource_];
    a1 = v259;
    v118 = v253;
LABEL_121:
    v137 = v241;
    [v241 setCommonSignal_];
    [v137 setHomeFollowUpSignal_];
    UUID.init()();
    v138 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v140 = [v138 initWithNSUUID_];

    v44 = *(v118 + 8);
    v141 = v237;
    v258 = v118 + 8;
    (v44)(v33, v237);
    [a1 setPseId_];

    (*(*v261 + 160))();
    v142 = v246;
    UUID.init(uuidString:)();

    v257 = *(v118 + 48);
    if (v257(v142, 1, v141) == 1)
    {
      v143 = outlined destroy of UUID?(v142);
    }

    else
    {
      v144 = v243;
      (*(v118 + 32))(v243, v142, v141);
      v145 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v146 = UUID._bridgeToObjectiveC()().super.isa;
      v147 = [v145 initWithNSUUID_];

      [a1 setUiSessionId_];
      v143 = (v44)(v144, v141);
    }

    v148 = ((*(*v261 + 208))(v143) + 16);
    v38 = &SiriExecutionTask;
    v149 = MEMORY[0x277D616A8];
    v6 = v232;
    if (*v148)
    {
      v150 = &v148[2 * *v148];
      v151 = *v150;
      v152 = v150[1];

      v153 = v245;
      UUID.init(uuidString:)();

      v154 = v237;
      if (v257(v153, 1, v237) == 1)
      {
        outlined destroy of UUID?(v153);
        goto LABEL_128;
      }

      v171 = v242;
      (*(v118 + 32))(v242, v153, v154);
      v172 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v173 = UUID._bridgeToObjectiveC()().super.isa;
      v174 = [v172 initWithNSUUID_];

      [a1 setOriginalLastRequestId_];
      v170 = (v44)(v171, v154);
      v5 = v233;
    }

    else
    {

LABEL_128:
      v5 = v233;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v155 = type metadata accessor for Logger();
      __swift_project_value_buffer(v155, static Logger.engagement);
      v156 = *MEMORY[0x277D615E0];
      v157 = type metadata accessor for EngagementSignalCollectionError();
      v158 = v252;
      (*(*(v157 - 8) + 104))(v252, v156, v157);
      (*(v6 + 104))(v158, *v149, v5);
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = v5;
        v162 = swift_slowAlloc();
        v163 = v6;
        v164 = swift_slowAlloc();
        v266 = *&v164;
        *v162 = 136315138;
        *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v266);
        _os_log_impl(&dword_25ECEC000, v159, v160, "%s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v164);
        v165 = v164;
        v6 = v163;
        MEMORY[0x25F8CEE50](v165, -1, -1);
        v166 = v162;
        v5 = v161;
        v38 = &SiriExecutionTask;
        MEMORY[0x25F8CEE50](v166, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v167 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v168 = v252;
      MEMORY[0x25F8CDB30](v252, v167, v169);

      v170 = (*(v6 + 8))(v168, v5);
      a1 = v259;
      v118 = v253;
    }

    (*(*v261 + 184))(v170);
    v175 = v247;
    UUID.init(uuidString:)();

    v176 = v237;
    if (v257(v175, 1, v237) == 1)
    {
      outlined destroy of UUID?(v175);
      if (*&v38[20].flags == -1)
      {
        goto LABEL_136;
      }

      goto LABEL_153;
    }

    v196 = v244;
    (*(v118 + 32))(v244, v175, v176);
    v197 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v198 = UUID._bridgeToObjectiveC()().super.isa;
    v199 = [v197 initWithNSUUID_];

    [a1 setTaskId_];
    v195 = (v44)(v196, v176);
    v184 = v241;
LABEL_140:
    v200 = (*(*v261 + 328))(v195);
    v201 = (*(*v200 + 104))(v200);

    v202 = v260;
    v203 = [a1 setSiriEngagementTaskSuccess_];
    [a1 setTriggerOrigin_];
    v204 = v262;
    [v262 setEventMetadata_];
    [v204 setHomeFollowupSignalGenerated_];
    if (*&v38[20].flags != -1)
    {
      swift_once();
    }

    v205 = v44;
    v206 = type metadata accessor for Logger();
    __swift_project_value_buffer(v206, static Logger.engagement);
    v207 = *MEMORY[0x277D61600];
    v208 = type metadata accessor for SELFPSELogged();
    v209 = v234;
    (*(*(v208 - 8) + 104))(v234, v207, v208);
    v210 = v209;
    (*(v6 + 104))(v209, *MEMORY[0x277D61658], v5);
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = v5;
      v214 = swift_slowAlloc();
      v215 = v6;
      v216 = swift_slowAlloc();
      v266 = *&v216;
      *v214 = 136315138;
      *(v214 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000025ED7F490, &v266);
      _os_log_impl(&dword_25ECEC000, v211, v212, "%s", v214, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v216);
      v217 = v216;
      v6 = v215;
      MEMORY[0x25F8CEE50](v217, -1, -1);
      v218 = v214;
      v5 = v213;
      MEMORY[0x25F8CEE50](v218, -1, -1);
    }

    v219 = v238;
    v220 = v240;
    type metadata accessor for SiriTaskEngagementUtils();
    v221 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v210, v221, v222);

    (*(v6 + 8))(v210, v5);
    v223 = [objc_opt_self() sharedAnalytics];
    v224 = [v223 defaultMessageStream];

    UUID.init()();
    v225 = UUID._bridgeToObjectiveC()().super.isa;
    v205(v219, v237);
    v226 = v262;
    [v224 emitMessage:v262 isolatedStreamUUID:v225];

    return;
  }

LABEL_118:
  v136 = MEMORY[0x25F8CE500](a2);
  v44 = v240;
  if (v136 <= 0 || !MEMORY[0x25F8CE500](a2))
  {
    goto LABEL_120;
  }

LABEL_59:
  if ((a2 & 0xC000000000000001) == 0)
  {
    v33 = 0xED00006972695379;
    if (*(a2 + 16))
    {
      v236 = *(a2 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

LABEL_147:
  v236 = MEMORY[0x25F8CE460](0, a2);
  v33 = 0xED00006972695379;
LABEL_62:
  [v44 setHasUserInitiatedFollowup_];
  v10 = 0;
  v263 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v24)
    {
      v5 = MEMORY[0x25F8CE460](v10, a1);
      v38 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v10 >= *(v6 + 16))
      {
        goto LABEL_97;
      }

      v5 = *(a1 + 8 * v10 + 32);

      v38 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_95;
      }
    }

    v13 = (*(*v5 + 216))();
    if (v13[2] && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v82 & 1) != 0))
    {
      outlined init with copy of Any(v13[7] + 32 * v81, &v266);

      if (swift_dynamicCast() & 1) != 0 && (v265)
      {
        v13 = &v263;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v83 = *(v263 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v33 = 0xED00006972695379;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_76;
      }
    }

    else
    {
    }

LABEL_76:
    ++v10;
    if (v38 != v42)
    {
      continue;
    }

    break;
  }

  v84 = v263;
  v85 = v260;
  v86 = (*(*&v260->flags + 168))(a2, v263);
  v87 = v239;
  [v239 setFollowUpType_];
  v88 = [v87 setFollowUpSource_];
  v89 = (*(*v236 + 216))(v88);
  if (*(v89 + 16) && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(0x5465636976726573, 0xEB00000000657079), (v91 & 1) != 0))
  {
    outlined init with copy of Any(*(v89 + 56) + 32 * v90, &v266);

    if (swift_dynamicCast())
    {
      v92 = v263;
      v93 = v264;
      goto LABEL_83;
    }
  }

  else
  {
  }

  v92 = 0;
  v93 = 0xE000000000000000;
LABEL_83:
  v94 = MEMORY[0x25F8CDFC0](v92, v93);

  [v87 setFollowUpAccessoryType_];

  v95 = (*(*&v260->flags + 184))(a2, v84);

  [v87 setIsFollowUpInSameContainerAsSiriRequest_];
  v6 = v249;
  static Calendar.current.getter();
  v96 = v257;
  v97 = *(v257 + 13);
  v38 = v250;
  v98 = v251;
  v99 = v97(v250, *MEMORY[0x277CC9980], v251);
  v100 = (*v236 + 120);
  v230 = *v100;
  v229 = v100;
  v230(&v266, v99);
  v101 = v254;
  Date.init(timeIntervalSinceReferenceDate:)();
  v102 = Calendar.component(_:from:)();
  v103 = *(v258 + 8);
  v258 += 8;
  v228 = v103;
  v103(v101, v255);
  v104 = *(v96 + 1);
  v5 = (v96 + 8);
  v44 = v104;
  v104(v38, v98);
  v105 = base_props + 1;
  a1 = base_props[1];
  (a1)(v6, v235);
  if ((v102 & 0x8000000000000000) != 0)
  {
    goto LABEL_149;
  }

  base_props = v105;
  v257 = v5;
  if (HIDWORD(v102))
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  [v239 setFollowUpHourOfDay_];
  v106 = v249;
  static Calendar.current.getter();
  v6 = v250;
  v5 = v251;
  v107 = v97(v250, *MEMORY[0x277CC99B8], v251);
  v230(&v266, v107);
  v108 = v254;
  Date.init(timeIntervalSinceReferenceDate:)();
  v109 = Calendar.component(_:from:)();
  v38 = v258;
  v110 = v228;
  v228(v108, v255);
  (v44)(v6, v5);
  (a1)(v106, v235);
  if ((v109 & 0x8000000000000000) != 0)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
LABEL_136:
    v177 = type metadata accessor for Logger();
    __swift_project_value_buffer(v177, static Logger.engagement);
    v178 = *MEMORY[0x277D615C8];
    v179 = type metadata accessor for EngagementSignalCollectionError();
    v180 = v248;
    (*(*(v179 - 8) + 104))(v248, v178, v179);
    (*(v6 + 104))(v180, *MEMORY[0x277D616A8], v5);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();
    v183 = os_log_type_enabled(v181, v182);
    v184 = v241;
    if (v183)
    {
      v185 = v44;
      v186 = v5;
      v187 = swift_slowAlloc();
      v188 = v6;
      v189 = swift_slowAlloc();
      v266 = *&v189;
      *v187 = 136315138;
      *(v187 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v266);
      _os_log_impl(&dword_25ECEC000, v181, v182, "%s", v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      v190 = v189;
      v6 = v188;
      a1 = v259;
      MEMORY[0x25F8CEE50](v190, -1, -1);
      v191 = v187;
      v5 = v186;
      v44 = v185;
      MEMORY[0x25F8CEE50](v191, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v192 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v193 = v248;
    MEMORY[0x25F8CDB30](v248, v192, v194);

    v195 = (*(v6 + 8))(v193, v5);
    goto LABEL_140;
  }

  v33 = v238;
  a1 = v259;
  v44 = v240;
  if (HIDWORD(v109))
  {
    goto LABEL_152;
  }

  v111 = [v239 setFollowUpDayOfWeek_];
  v112 = (v230)(&v266, v111);
  v113 = v266;
  v114 = v254;
  (*(*v261 + 352))(v112);
  Date.timeIntervalSinceReferenceDate.getter();
  v116 = v115;
  v110(v114, v255);
  v117 = v113 - v116;
  if (v113 - v116 <= 0.0)
  {
    v120 = 0;
    v119 = v239;
    v118 = v253;
LABEL_93:
    [v119 setFollowUpDurationSinceSiriRequestInSeconds_];

    goto LABEL_121;
  }

  v118 = v253;
  if (*&v117 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_155;
  }

  v119 = v239;
  if (v117 <= -1.0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v117 < 4294967300.0)
  {
    v120 = v117;
    goto LABEL_93;
  }

LABEL_156:
  __break(1u);
}

uint64_t PSEHomeSELFEmitter.getHomeFollowUpType(userSignals:siriSignals:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v179 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_326;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v197 = v2;
  v196 = a1;
  if (v3)
  {
    v200 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v4 = v200;
      v7 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v8 = MEMORY[0x25F8CE460](v6, v197);
        }

        else
        {
          v8 = *(v197 + 8 * v6 + 32);
        }

        v9 = (*(*v8 + 216))();
        if (!*(v9 + 16))
        {
          break;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0);
        if ((v11 & 1) == 0)
        {
          break;
        }

        outlined init with copy of Any(*(v9 + 56) + 32 * v10, v198);

        if (!swift_dynamicCast())
        {
          goto LABEL_14;
        }

        v12 = v199;
LABEL_15:
        v200 = v4;
        v14 = *(v4 + 16);
        v13 = *(v4 + 24);
        if (v14 >= v13 >> 1)
        {
          v194 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v194;
          v4 = v200;
        }

        ++v6;
        *(v4 + 16) = v14 + 1;
        *(v4 + 16 * v14 + 32) = v12;
        if (v3 == v6)
        {
          v2 = v197;
          v15 = v196;
          goto LABEL_20;
        }
      }

LABEL_14:
      v12 = 0uLL;
      v199 = 0u;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_335;
  }

  v15 = a1;
LABEL_20:
  v195 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v4);

  v176 = v15 >> 62;
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v164 = v15;
    }

    else
    {
      v164 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x25F8CE500](v164);
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v200 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
      goto LABEL_339;
    }

    v18 = 0;
    v17 = v200;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8CE460](v18, v196);
      }

      else
      {
        v19 = *(v196 + 8 * v18 + 32);
      }

      v20 = (*(*v19 + 216))();
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0);
      if ((v22 & 1) == 0)
      {
        break;
      }

      outlined init with copy of Any(*(v20 + 56) + 32 * v21, v198);

      if (!swift_dynamicCast())
      {
        goto LABEL_33;
      }

      v23 = v199;
LABEL_34:
      v200 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        v191 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v23 = v191;
        v17 = v200;
      }

      ++v18;
      *(v17 + 16) = v25 + 1;
      *(v17 + 16 * v25 + 32) = v23;
      if (v16 == v18)
      {
        v2 = v197;
        v15 = v196;
        goto LABEL_38;
      }
    }

LABEL_33:
    v23 = 0uLL;
    v199 = 0u;
    goto LABEL_34;
  }

LABEL_38:
  v192 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v17);

  v26 = MEMORY[0x277D84F90];
  if (!v3)
  {
    goto LABEL_54;
  }

  v200 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_336;
  }

  v27 = 0;
  v26 = v200;
  v28 = v2 & 0xC000000000000001;
  do
  {
    if (v28)
    {
      v29 = MEMORY[0x25F8CE460](v27, v197);
    }

    else
    {
      v29 = *(v197 + 8 * v27 + 32);
    }

    v30 = (*(*v29 + 216))();
    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v198);

      if (swift_dynamicCast())
      {
        v33 = v199;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v33 = 0uLL;
    v199 = 0u;
LABEL_50:
    v200 = v26;
    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      v187 = v33;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v33 = v187;
      v26 = v200;
    }

    ++v27;
    *(v26 + 16) = v35 + 1;
    *(v26 + 16 * v35 + 32) = v33;
  }

  while (v3 != v27);
  v2 = v197;
  v15 = v196;
LABEL_54:
  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v26);

  v37 = MEMORY[0x277D84F90];
  if (v16)
  {
    v200 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_337;
    }

    v188 = v36;
    v38 = 0;
    v37 = v200;
    v39 = v15;
    while (2)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x25F8CE460](v38, v39);
      }

      else
      {
        v40 = *(v39 + 8 * v38 + 32);
      }

      v41 = (*(*v40 + 216))();
      if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v43 & 1) != 0))
      {
        outlined init with copy of Any(*(v41 + 56) + 32 * v42, v198);

        if (swift_dynamicCast())
        {
          v44 = v199;
          goto LABEL_66;
        }
      }

      else
      {
      }

      v44 = 0uLL;
      v199 = 0u;
LABEL_66:
      v200 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        v184 = v44;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v44 = v184;
        v37 = v200;
      }

      ++v38;
      *(v37 + 16) = v46 + 1;
      *(v37 + 16 * v46 + 32) = v44;
      v39 = v196;
      if (v16 == v38)
      {
        v15 = v196;
        v2 = v197;
        v36 = v188;
        break;
      }

      continue;
    }
  }

  v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v37);

  v48 = specialized _NativeSet.intersection(_:)(v192, v195, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  if (*(v47 + 16) && !v48[2])
  {

    v107 = specialized _NativeSet.intersection(_:)(v47, v36, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    v108 = v107[2];
    if (v108)
    {
      v109 = *(v36 + 16);

      if (v108 >= v109)
      {
        v110 = 0;
        v173 = v107;
        v167 = (v107 + 7);
        v111 = 1 << *(v107 + 32);
        v112 = -1;
        if (v111 < 64)
        {
          v112 = ~(-1 << v111);
        }

        v113 = v112 & v107[7];
        v165 = (v111 + 63) >> 6;
        v190 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v2 < 0)
        {
          v114 = v2;
        }

        else
        {
          v114 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v115 = v15 & 0xFFFFFFFFFFFFFF8;
        v183 = v2 & 0xC000000000000001;
        v186 = v15 & 0xFFFFFFFFFFFFFF8;
        if (v15 < 0)
        {
          v115 = v15;
        }

        v169 = v115;
        v171 = v114;
        v181 = v15 & 0xC000000000000001;
LABEL_207:
        v116 = MEMORY[0x277D84F90];
        do
        {
          if (!v113)
          {
            do
            {
              v117 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
                goto LABEL_324;
              }

              if (v117 >= v165)
              {
                goto LABEL_313;
              }

              v113 = *&v167[8 * v117];
              ++v110;
            }

            while (!v113);
            v110 = v117;
          }

          v118 = (v173[6] + ((v110 << 10) | (16 * __clz(__rbit64(v113)))));
          v119 = v118[1];
          v178 = *v118;
          v200 = v116;
          if (v179)
          {
            v120 = MEMORY[0x25F8CE500](v171);
          }

          else
          {
            v120 = *(v190 + 16);
          }

          if (v120)
          {
            v121 = 0;
            while (1)
            {
              if (v183)
              {
                a1 = MEMORY[0x25F8CE460](v121, v2);
                v122 = a1;
                v123 = v121 + 1;
                if (__OFADD__(v121, 1))
                {
                  goto LABEL_320;
                }
              }

              else
              {
                if (v121 >= *(v190 + 16))
                {
                  goto LABEL_321;
                }

                v122 = *(v2 + 8 * v121 + 32);

                v123 = v121 + 1;
                if (__OFADD__(v121, 1))
                {
                  goto LABEL_320;
                }
              }

              v124 = (*(*v122 + 216))();
              if (*(v124 + 16) && (v125 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v126 & 1) != 0))
              {
                outlined init with copy of Any(*(v124 + 56) + 32 * v125, v198);

                if (swift_dynamicCast())
                {
                  if (v119)
                  {
                    if (__PAIR128__(v119, v178) == v199)
                    {

LABEL_234:
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v128 = *(v200 + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      a1 = specialized ContiguousArray._endMutation()();
                      goto LABEL_220;
                    }

                    v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v127)
                    {
                      goto LABEL_234;
                    }
                  }

                  else
                  {
                  }
                }

                else if (!v119)
                {
                  goto LABEL_234;
                }
              }

              else
              {

                if (!v119)
                {
                  goto LABEL_234;
                }
              }

LABEL_220:
              ++v121;
              if (v123 == v120)
              {
                v116 = v200;
                break;
              }
            }
          }

          if (v116 < 0 || (v116 & 0x4000000000000000) != 0)
          {
            v129 = MEMORY[0x25F8CE500](v116);
            if (v129)
            {
LABEL_242:
              *&v199 = MEMORY[0x277D84F90];
              result = specialized ContiguousArray.reserveCapacity(_:)();
              if (v129 < 0)
              {
LABEL_339:
                __break(1u);
LABEL_340:
                __break(1u);
                return result;
              }

              v130 = 0;
              while (2)
              {
                if ((v116 & 0xC000000000000001) != 0)
                {
                  v132 = MEMORY[0x25F8CE460](v130, v116);
                }

                else
                {
                  v132 = *(v116 + 8 * v130 + 32);
                }

                v133 = (*(*v132 + 216))();
                if (*(v133 + 16) && (v134 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v135 & 1) != 0))
                {
                  outlined init with copy of Any(*(v133 + 56) + 32 * v134, v198);

                  type metadata accessor for NSNumber();
                  if (swift_dynamicCast())
                  {
LABEL_246:
                    ++v130;
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v131 = *(v199 + 16);
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    if (v129 == v130)
                    {

                      v136 = v199;
                      v2 = v197;
                      v137 = MEMORY[0x277D84F90];
                      goto LABEL_257;
                    }

                    continue;
                  }
                }

                else
                {
                }

                break;
              }

              v200 = 0;
              goto LABEL_246;
            }
          }

          else
          {
            v129 = *(v116 + 16);
            if (v129)
            {
              goto LABEL_242;
            }
          }

          v137 = MEMORY[0x277D84F90];
          v136 = MEMORY[0x277D84F90];
LABEL_257:
          v175 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(v136);

          v200 = v137;
          v138 = v137;
          if (!v176)
          {
            v139 = *(v186 + 16);
            if (!v139)
            {
              goto LABEL_283;
            }

LABEL_261:
            v140 = 0;
            while (2)
            {
              if (v181)
              {
                a1 = MEMORY[0x25F8CE460](v140, v196);
                v141 = a1;
                v142 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_322;
                }
              }

              else
              {
                if (v140 >= *(v186 + 16))
                {
                  goto LABEL_323;
                }

                v141 = *(v196 + 8 * v140 + 32);

                v142 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_322;
                }
              }

              v143 = (*(*v141 + 216))();
              if (*(v143 + 16) && (v144 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v145 & 1) != 0))
              {
                outlined init with copy of Any(*(v143 + 56) + 32 * v144, v198);

                if (swift_dynamicCast())
                {
                  if (v119)
                  {
                    if (__PAIR128__(v119, v178) == v199)
                    {

                      goto LABEL_278;
                    }

                    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v146)
                    {
LABEL_278:
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v147 = *(v200 + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      a1 = specialized ContiguousArray._endMutation()();
LABEL_264:
                      ++v140;
                      if (v142 == v139)
                      {
                        v138 = v200;
                        goto LABEL_283;
                      }

                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                else if (!v119)
                {
                  goto LABEL_278;
                }
              }

              else
              {

                if (!v119)
                {
                  goto LABEL_278;
                }
              }

              break;
            }

            goto LABEL_264;
          }

          a1 = MEMORY[0x25F8CE500](v169);
          v139 = a1;
          if (a1)
          {
            goto LABEL_261;
          }

LABEL_283:

          if (v138 < 0 || (v138 & 0x4000000000000000) != 0)
          {
            v148 = MEMORY[0x25F8CE500](v138);
            if (!v148)
            {
LABEL_300:

              v155 = MEMORY[0x277D84F90];
              goto LABEL_301;
            }
          }

          else
          {
            v148 = *(v138 + 16);
            if (!v148)
            {
              goto LABEL_300;
            }
          }

          *&v199 = MEMORY[0x277D84F90];
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v148 < 0)
          {
            goto LABEL_340;
          }

          v149 = 0;
          do
          {
            if ((v138 & 0xC000000000000001) != 0)
            {
              v151 = MEMORY[0x25F8CE460](v149, v138);
            }

            else
            {
              v151 = *(v138 + 8 * v149 + 32);
            }

            v152 = (*(*v151 + 216))();
            if (!*(v152 + 16) || (v153 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v154 & 1) == 0))
            {

LABEL_289:
              v200 = 0;
              goto LABEL_290;
            }

            outlined init with copy of Any(*(v152 + 56) + 32 * v153, v198);

            type metadata accessor for NSNumber();
            if (!swift_dynamicCast())
            {
              goto LABEL_289;
            }

LABEL_290:
            ++v149;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v150 = *(v199 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v148 != v149);

          v155 = v199;
          v2 = v197;
LABEL_301:
          v113 &= v113 - 1;
          v156 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(v155);

          if (*(v175 + 16) != 1 || *(v156 + 16) != 1)
          {

            goto LABEL_207;
          }

          v157 = specialized Collection.first.getter(v175);

          if (v157 >= 2)
          {
            v158 = v157;
          }

          else
          {
            v158 = 0;
          }

          v159 = specialized Collection.first.getter(v156);

          if (v159 >= 2)
          {
            v160 = v159;
          }

          else
          {
            v160 = 0;
          }

          v161 = (*(*v174 + 160))(v158, v160);

          v116 = MEMORY[0x277D84F90];
        }

        while ((v161 & 1) == 0);
      }
    }

    else
    {
    }

    return 4;
  }

  if (!v48[2])
  {

    return 0;
  }

  v49 = 0;
  v177 = v48;
  v52 = v48[7];
  v51 = (v48 + 7);
  v50 = v52;
  v53 = 1 << *(v51 - 24);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v2;
  v2 = v54 & v50;
  v168 = (v53 + 63) >> 6;
  v170 = v51;
  v56 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 < 0)
  {
    v57 = v55;
  }

  else
  {
    v57 = v55 & 0xFFFFFFFFFFFFFF8;
  }

  v172 = v57;
  v193 = v55 & 0xC000000000000001;
  v58 = v15 & 0xFFFFFFFFFFFFFF8;
  v189 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 < 0)
  {
    v58 = v15;
  }

  v166 = v58;
  v185 = v15 & 0xC000000000000001;
LABEL_81:
  v59 = MEMORY[0x277D84F90];
  while (2)
  {
    if (!v2)
    {
      do
      {
        v60 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_319;
        }

        if (v60 >= v168)
        {

          return 1;
        }

        v2 = *&v170[8 * v60];
        ++v49;
      }

      while (!v2);
      v49 = v60;
    }

    v61 = (v177[6] + ((v49 << 10) | (16 * __clz(__rbit64(v2)))));
    v62 = v61[1];
    v182 = *v61;
    v200 = v59;
    if (v179)
    {
      v63 = MEMORY[0x25F8CE500](v172);
    }

    else
    {
      v63 = *(v56 + 16);
    }

    if (!v63)
    {
      a1 = v59;
LABEL_114:
      v2 &= v2 - 1;
      v72 = v196;
      if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
      {
        v105 = a1;
        v106 = MEMORY[0x25F8CE500]();
        a1 = v105;
        v59 = MEMORY[0x277D84F90];
        if (!v106)
        {
LABEL_188:

          continue;
        }
      }

      else if (!*(a1 + 16))
      {
        goto LABEL_188;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v180 = MEMORY[0x25F8CE460](0, a1);
      }

      else
      {
        if (!*(a1 + 16))
        {
          goto LABEL_325;
        }

        v180 = *(a1 + 32);
      }

      v200 = MEMORY[0x277D84F90];
      if (!v176)
      {
        v73 = *(v189 + 16);
        if (v73)
        {
          goto LABEL_122;
        }

LABEL_146:
        v82 = MEMORY[0x277D84F90];
LABEL_147:

        if (v82 < 0 || (v82 & 0x4000000000000000) != 0)
        {
          result = MEMORY[0x25F8CE500](v82);
          if (!result)
          {
LABEL_193:

            goto LABEL_81;
          }
        }

        else if (!*(v82 + 16))
        {
          goto LABEL_193;
        }

        if ((v82 & 0xC000000000000001) != 0)
        {
          v83 = MEMORY[0x25F8CE460](0, v82);
        }

        else
        {
          if (!*(v82 + 16))
          {
            goto LABEL_338;
          }

          v83 = *(v82 + 32);
        }

        v85 = *(*v180 + 216);
        v86 = (v85)(v84);
        if (*(v86 + 16) && (v87 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v88 & 1) != 0))
        {
          outlined init with copy of Any(*(v86 + 56) + 32 * v87, v198);

          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v89 = v199;
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {

          v89 = 0;
        }

        v90 = *(*v83 + 216);
        v91 = v90();
        if (*(v91 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v93 & 1) != 0))
        {
          outlined init with copy of Any(*(v91 + 56) + 32 * v92, v198);

          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v94 = v199;
          }

          else
          {
            v94 = 0;
          }

          if (!v89)
          {
LABEL_165:
            if (!v94)
            {
              goto LABEL_316;
            }

            goto LABEL_172;
          }
        }

        else
        {

          v94 = 0;
          if (!v89)
          {
            goto LABEL_165;
          }
        }

        if (v94)
        {
          type metadata accessor for NSNumber();
          v95 = static NSObject.== infix(_:_:)();

          if (v95)
          {
            goto LABEL_316;
          }

LABEL_173:
          v96 = v85();
          if (*(v96 + 16) && (v97 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v98 & 1) != 0))
          {
            outlined init with copy of Any(*(v96 + 56) + 32 * v97, v198);

            type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v99 = v199;
            }

            else
            {
              v99 = 0;
            }
          }

          else
          {

            v99 = 0;
          }

          v100 = v90();
          if (*(v100 + 16) && (v101 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v102 & 1) != 0))
          {
            outlined init with copy of Any(*(v100 + 56) + 32 * v101, v198);

            type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v103 = v199;
            }

            else
            {
              v103 = 0;
            }
          }

          else
          {

            v103 = 0;
          }

          v104 = (*(*v174 + 160))(v99, v103);

          v59 = MEMORY[0x277D84F90];
          if ((v104 & 1) == 0)
          {

            return 2;
          }

          continue;
        }

        v94 = v89;
LABEL_172:

        goto LABEL_173;
      }

      a1 = MEMORY[0x25F8CE500](v166);
      v73 = a1;
      if (!a1)
      {
        goto LABEL_146;
      }

LABEL_122:
      v74 = 0;
      while (1)
      {
        if (v185)
        {
          a1 = MEMORY[0x25F8CE460](v74, v72);
          v75 = a1;
          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            goto LABEL_317;
          }
        }

        else
        {
          if (v74 >= *(v189 + 16))
          {
            goto LABEL_318;
          }

          v75 = *(v72 + 8 * v74 + 32);

          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            v162 = a1;
            if (v2 < 0)
            {
              v163 = v2;
            }

            else
            {
              v163 = v2 & 0xFFFFFFFFFFFFFF8;
            }

            v3 = MEMORY[0x25F8CE500](v163);
            a1 = v162;
            goto LABEL_3;
          }
        }

        v77 = (*(*v75 + 216))();
        if (*(v77 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0), (v79 & 1) != 0))
        {
          outlined init with copy of Any(*(v77 + 56) + 32 * v78, v198);

          if (swift_dynamicCast())
          {
            if (!v62)
            {

              goto LABEL_137;
            }

            if (__PAIR128__(v62, v182) == v199)
            {

LABEL_135:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v80 = *(v200 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a1 = specialized ContiguousArray._endMutation()();
              goto LABEL_136;
            }

            v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v81)
            {
              goto LABEL_135;
            }
          }

          else if (!v62)
          {
            goto LABEL_135;
          }
        }

        else
        {

          if (!v62)
          {
            goto LABEL_135;
          }
        }

LABEL_136:
        v72 = v196;
LABEL_137:
        ++v74;
        if (v76 == v73)
        {
          v82 = v200;
          goto LABEL_147;
        }
      }
    }

    break;
  }

  v64 = 0;
  while (2)
  {
    if (v193)
    {
      v65 = MEMORY[0x25F8CE460](v64, v197);
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_314;
      }

LABEL_98:
      v67 = (*(*v65 + 216))();
      if (*(v67 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0), (v69 & 1) != 0))
      {
        outlined init with copy of Any(*(v67 + 56) + 32 * v68, v198);

        if (swift_dynamicCast())
        {
          if (v62)
          {
            if (__PAIR128__(v62, v182) == v199)
            {

              goto LABEL_108;
            }

            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v70)
            {
              goto LABEL_108;
            }
          }

          else
          {
          }
        }

        else if (!v62)
        {
          goto LABEL_108;
        }
      }

      else
      {

        if (!v62)
        {
LABEL_108:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v71 = *(v200 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_94:
          ++v64;
          if (v66 == v63)
          {
            a1 = v200;
            v59 = MEMORY[0x277D84F90];
            goto LABEL_114;
          }

          continue;
        }
      }

      goto LABEL_94;
    }

    break;
  }

  if (v64 >= *(v56 + 16))
  {
    goto LABEL_315;
  }

  v65 = *(v197 + 8 * v64 + 32);

  v66 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_98;
  }

LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:

LABEL_313:

  return 3;
}

unint64_t PSEHomeSELFEmitter.getHomeFollowUpSource(userSignals:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
LABEL_41:
    if (v1 < 0)
    {
      v18 = v1;
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x25F8CE500](v18);
    v2 = result;
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F8CE460](v5, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v5 + 32);
    }

    v8 = *(*v7 + 216);
    v9 = v8();
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65696C63, 0xEA0000000000656DLL), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v21);

      v12 = swift_dynamicCast();
      if (v12)
      {
        if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEE00656D6F482E65)
        {

          goto LABEL_28;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    v13 = (v8)(v12);
    if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65696C63, 0xEA0000000000656DLL), (v15 & 1) == 0))
    {

      goto LABEL_6;
    }

    outlined init with copy of Any(*(v13 + 56) + 32 * v14, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_6:
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_41;
      }

      goto LABEL_7;
    }

    if (v19 == 0xD000000000000012 && 0x800000025ED7F530 == v20)
    {

LABEL_26:

      goto LABEL_28;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      break;
    }

LABEL_7:
    if (v2 == ++v5)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_31:
  if (v4 < 1)
  {
    if (!v4 && v3 > 0)
    {
      return 3;
    }
  }

  else
  {
    if (v3 > 0)
    {
      return 4;
    }

    if (!v3)
    {
      return 2;
    }
  }

  return 0;
}

Swift::Bool __swiftcall PSEHomeSELFEmitter.isFollowUpInSameContainer(userSignals:siriSignals:)(Swift::OpaquePointer userSignals, Swift::OpaquePointer siriSignals)
{
  rawValue = userSignals._rawValue;
  if (userSignals._rawValue >> 62)
  {
    if (userSignals._rawValue >= 0)
    {
      userSignals._rawValue = (userSignals._rawValue & 0xFFFFFFFFFFFFFF8);
    }

    v5 = MEMORY[0x25F8CE500](userSignals._rawValue);
  }

  else
  {
    v5 = *((userSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if ((rawValue & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8CE460](0, rawValue);
    v6 = v7;
  }

  else
  {
    if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v6 = *(rawValue + 32);
  }

  v8 = (*(*v6 + 216))(v7);

  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F550), (v10 & 1) == 0))
  {

LABEL_16:
    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, v41);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v39;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v40;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:
  if (siriSignals._rawValue >> 62)
  {
    if (siriSignals._rawValue < 0)
    {
      v38 = siriSignals._rawValue;
    }

    else
    {
      v38 = siriSignals._rawValue & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v38);
    if (!v2)
    {
LABEL_34:
      v20 = 0;
      v21 = 0;
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v2 = *((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_34;
    }
  }

  if ((siriSignals._rawValue & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x25F8CE460](0, siriSignals._rawValue);
    v14 = v15;
    goto LABEL_22;
  }

  if (!*((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    v23 = MEMORY[0x25F8CE460](0, rawValue);
    v22 = v23;
    goto LABEL_44;
  }

  v14 = *(siriSignals._rawValue + 4);

LABEL_22:
  v16 = (*(*v14 + 216))(v15);

  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F550), (v18 & 1) == 0))
  {

    goto LABEL_34;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, v41);

  v19 = swift_dynamicCast();
  if (v19)
  {
    v20 = v39;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v40;
  }

  else
  {
    v21 = 0;
  }

  if (!v13)
  {
LABEL_31:
    if (v21)
    {
      v13 = v21;
LABEL_39:

      goto LABEL_40;
    }

    return 1;
  }

LABEL_35:
  if (!v21)
  {
    goto LABEL_39;
  }

  if (v12 == v20 && v13 == v21)
  {

    return 1;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    return 1;
  }

LABEL_40:
  if (!v5)
  {
    return 0;
  }

  if ((rawValue & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v22 = *(rawValue + 32);

LABEL_44:
  v24 = (*(*v22 + 216))(v23);

  if (!*(v24 + 16))
  {
    goto LABEL_55;
  }

  v13 = "roomUniqueIdentifier";
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000025ED7F570);
  if ((v26 & 1) == 0)
  {
    goto LABEL_55;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  rawValue = v39;
  if (!v2)
  {
LABEL_55:

    return 0;
  }

  if ((siriSignals._rawValue & 0xC000000000000001) != 0)
  {
LABEL_75:
    v29 = MEMORY[0x25F8CE460](0, siriSignals._rawValue);
    v28 = v29;
    goto LABEL_51;
  }

  if (*((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(siriSignals._rawValue + 4);

LABEL_51:
    v30 = (*(*v28 + 216))(v29);

    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, v13 | 0x8000000000000000), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v41);

      if (swift_dynamicCast())
      {
        v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(rawValue);

        v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v39);

        v35 = specialized _NativeSet.intersection(_:)(v34, v33, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

        v36 = v35[2];

        return v36 != 0;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v8 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_12:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v20 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    *a1 = a2;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v6 + 48) + 8 * v11);
    if (!v13)
    {
      break;
    }

    if (a2)
    {
      type metadata accessor for NSNumber();
      v14 = a2;
      v15 = v13;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {

        v17 = *(*(v6 + 48) + 8 * v11);
        goto LABEL_14;
      }
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v17 = 0;
LABEL_14:
  *a1 = v17;
  v22 = v17;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);
        v20 = v18;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v16, v10, a2, a1, a4);

    MEMORY[0x25F8CEE50](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v55 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_32;
  }

  v58 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a3 + 56;
  v52 = v11;
  v53 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v56 = (v10 - 1) & v10;
    }

    else
    {
      v14 = v6;
      do
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_64;
        }

        if (v6 >= v11)
        {
LABEL_62:

          return specialized _NativeSet.extractSubset(using:count:)(v55, a2, v58, v5);
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v56 = (v15 - 1) & v15;
    }

    v16 = (*(v4 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v5 + 40);
    Hasher.init(_seed:)();
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v12 + 8 * (v21 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v5 = a3;
    v4 = a4;
    v11 = v52;
    v7 = v53;
    v10 = v56;
  }

  v24 = ~v20;
  v25 = *(v5 + 48);
  while (1)
  {
    v26 = (v25 + 16 * v21);
    v27 = v26[1];
    if (!v27)
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    if (v17)
    {
      if (*v26 == v18 && v27 == v17)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }
    }

LABEL_20:
    v21 = (v21 + 1) & v24;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((*(v12 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  v7 = v53;
  v55[v22] |= v23;
  v4 = a4;
  v29 = __OFADD__(v58++, 1);
  v5 = a3;
  v11 = v52;
  v10 = v56;
  if (!v29)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_32:
  v58 = 0;
  v30 = 0;
  v31 = v5 + 56;
  v32 = 1 << *(v5 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v5 + 56);
  v35 = (v32 + 63) >> 6;
  v36 = v4 + 56;
LABEL_37:
  while (2)
  {
    if (v34)
    {
      v37 = __clz(__rbit64(v34));
      v57 = (v34 - 1) & v34;
LABEL_44:
      v54 = v37 | (v30 << 6);
      v40 = (*(v5 + 48) + 16 * v54);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(v4 + 40);
      Hasher.init(_seed:)();
      if (v41)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v44 = -1 << *(v4 + 32);
      v45 = result & ~v44;
      if (((*(v36 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
LABEL_36:

        v5 = a3;
        v4 = a4;
        v34 = v57;
        continue;
      }

      v46 = ~v44;
      v47 = *(v4 + 48);
      while (1)
      {
        v48 = (v47 + 16 * v45);
        v49 = v48[1];
        if (v49)
        {
          if (v41)
          {
            v50 = *v48 == v42 && v49 == v41;
            if (v50 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {

LABEL_59:
              *(v55 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
              v4 = a4;
              v29 = __OFADD__(v58++, 1);
              v5 = a3;
              v34 = v57;
              if (v29)
              {
                __break(1u);
                goto LABEL_62;
              }

              goto LABEL_37;
            }
          }
        }

        else if (!v41)
        {
          goto LABEL_59;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v36 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    break;
  }

  v38 = v30;
  while (1)
  {
    v30 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_62;
    }

    v39 = *(v31 + 8 * v30);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v57 = (v39 - 1) & v39;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
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
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

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
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
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
LABEL_34:
  __break(1u);
LABEL_35:
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

void specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v11 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  a2 = v12 & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v9 + 48) + 8 * a2);
      if (v15)
      {
        if (a1)
        {
          type metadata accessor for NSNumber();
          v16 = a1;
          v17 = v15;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
LABEL_18:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_23;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v17)
      {
        Hasher._combine(_:)(1u);
        v19 = v17;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_31;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  result = MEMORY[0x25F8CE250](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Set._Variant.insert(_:)(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v4 = lazy protocol witness table accessor for type NSNumber? and conformance <A> A?();
  result = MEMORY[0x25F8CE250](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized Set._Variant.insert(_:)(&v9, v7);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8CE250](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

uint64_t Logger.engagement.unsafeMutableAddressor()
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.engagement);
}

uint64_t Logger.debug(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  v8 = Logger.logObject.getter();
  v9 = a4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_25ECEC000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F8CEE50](v11, -1, -1);
    MEMORY[0x25F8CEE50](v10, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v12 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](a3, v12, v13);
}

uint64_t one-time initialization function for engagement()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.engagement);
  __swift_project_value_buffer(v0, static Logger.engagement);
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;
  return Logger.init(_:)();
}

uint64_t *Log.pseLog.unsafeMutableAddressor()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  return &static Log.pseLog;
}

uint64_t static Logger.engagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.engagement);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for pseLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.pseLog = result;
  return result;
}

id static Log.pseLog.getter()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
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

__n128 Signal.__allocating_init(deltaT:domain:action:postSiriEngagement:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = *a1;
  v18 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v18;
  *(v14 + 48) = v15;
  *(v14 + 56) = v16;
  *(v14 + 64) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a6;
  *(v14 + 104) = a7;
  return result;
}

uint64_t PSESignals.init(biomeSignals:siriTaskEngagementFeatures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Delta.errorCode.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Delta.errorCode.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Delta.CodingKeys()
{
  v1 = *v0;
  v2 = 0x45495565636E6973;
  v3 = 0x53495565636E6973;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x646F43726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Delta.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Delta.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Delta.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Delta.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Delta.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement5DeltaV10CodingKeys33_EC9BC3BA8A5DD6306B42F1F00C1EDDD6LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement5DeltaV10CodingKeys33_EC9BC3BA8A5DD6306B42F1F00C1EDDD6LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v16[1] = v1[4];
  v13 = *(v1 + 40);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

__n128 Signal.deltaT.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 Signal.deltaT.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Signal.domain.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Signal.domain.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t Signal.action.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Signal.action.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t Signal.postSiriEngagement.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t Signal.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t Signal.data.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t Signal.init(deltaT:domain:action:postSiriEngagement:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v10;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  return v7;
}

unint64_t lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

PostSiriEngagement::Signal::CodingKeys_optional __swiftcall Signal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signal.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t Signal.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x5461746C6564;
  v2 = 0x6E6F69746361;
  v3 = 0xD000000000000012;
  if (a1 != 3)
  {
    v3 = 1635017060;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E69616D6F64;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Signal.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v4 = 0x6E69616D6F64;
    }

    else
    {
      v4 = 0x5461746C6564;
    }

    v5 = 0xE600000000000000;
    if (*a2 <= 1u)
    {
LABEL_20:
      if (*a2)
      {
        v7 = 0x6E69616D6F64;
      }

      else
      {
        v7 = 0x5461746C6564;
      }

      v6 = 0xE600000000000000;
      if (v4 != v7)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if (v2 == 2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E6F69746361;
    if (*a2 <= 1u)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 1635017060;
    }

    if (v2 == 3)
    {
      v5 = 0x800000025ED7E610;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (*a2 <= 1u)
    {
      goto LABEL_20;
    }
  }

  if (v3 == 2)
  {
    v6 = 0xE600000000000000;
    if (v4 != 0x6E6F69746361)
    {
      goto LABEL_30;
    }
  }

  else if (v3 == 3)
  {
    v6 = 0x800000025ED7E610;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    if (v4 != 1635017060)
    {
LABEL_30:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_31;
    }
  }

LABEL_28:
  if (v5 != v6)
  {
    goto LABEL_30;
  }

  v8 = 1;
LABEL_31:

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Signal.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Signal.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Signal.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Signal.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Signal.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Signal.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x5461746C6564;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F69746361;
  v7 = 0x800000025ED7E610;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69616D6F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Signal.CodingKeys()
{
  v1 = *v0;
  v2 = 0x5461746C6564;
  v3 = 0x6E6F69746361;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Signal.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Signal.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Signal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Signal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signal.encode(to:)(void *a1)
{
  v2 = v1;
  v59 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ReliabilityCategory();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement6SignalC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement6SignalC10CodingKeysOGMR);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();
  v16 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 120))(v56, v16);
  v52 = v56[0];
  v53 = v56[1];
  v54 = v57;
  v55 = v58;
  v51 = 0;
  lazy protocol witness table accessor for type Delta and conformance Delta();
  v17 = v50;
  v18 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {
    result = (*(v11 + 8))(v14, v10);
  }

  else
  {
    v50 = v7;
    v20 = v49;
    (*(*v2 + 144))(v18);
    LOBYTE(v56[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 168))(v21);
    LOBYTE(v56[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 192))(v23);
    LOBYTE(v56[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v47 = objc_opt_self();
    (*(*v2 + 216))();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v56[0] = 0;
    v25 = [v47 dataWithJSONObject:isa options:1 error:v56];

    v26 = *&v56[0];
    if (v25)
    {
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      static String.Encoding.utf8.getter();
      String.init(data:encoding:)();
      outlined consume of Data._Representation(v27, v29);
    }

    else
    {
      v47 = v10;
      v30 = v26;
      v31 = _convertNSErrorToError(_:)();

      v46 = v31;
      swift_willThrow();
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.engagement);
      v33 = *MEMORY[0x277D615F0];
      v34 = type metadata accessor for EncodingError();
      v35 = v50;
      (*(*(v34 - 8) + 104))(v50, v33, v34);
      v36 = v48;
      v37 = v20;
      (*(v48 + 104))(v35, *MEMORY[0x277D61650], v20);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v56[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004DLL, 0x800000025ED7F5F0, v56);
        _os_log_impl(&dword_25ECEC000, v40, v39, "%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v36 = v48;
        MEMORY[0x25F8CEE50](v42, -1, -1);
        v37 = v20;
        MEMORY[0x25F8CEE50](v41, -1, -1);
      }

      else
      {
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v43 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v44 = v50;
      MEMORY[0x25F8CDB30](v50, v43, v45);

      (*(v36 + 8))(v44, v37);
      v10 = v47;
    }

    LOBYTE(v56[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v11 + 8))(v14, v10);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *Signal.deinit()
{
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[13];

  return v0;
}

uint64_t Signal.__deallocating_deinit()
{
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[13];

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t PSETask.siriTask.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PSETask.biomeSignals.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSETask.siriTaskEngagementFeatures.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSETask.init(siriTask:biomeSignals:siriTaskEngagementFeatures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PSESignals.biomeSignals.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PSESignals.siriTaskEngagementFeatures.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t specialized Delta.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000025ED7F660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45495565636E6973 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53495565636E6973 && a2 == 0xEC00000074726174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized Signal.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signal.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Delta and conformance Delta()
{
  result = lazy protocol witness table cache variable for type Delta and conformance Delta;
  if (!lazy protocol witness table cache variable for type Delta and conformance Delta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta and conformance Delta);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Delta(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Delta(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PSETask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PSETask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PSESignals(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PSESignals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void AlarmSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v148 = a2;
  v3 = type metadata accessor for ReliabilityCategory();
  v145 = *(v3 - 8);
  v146 = v3;
  v4 = *(v145 + 64);
  MEMORY[0x28223BE20](v3);
  v149 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v147 = *(v6 - 8);
  v7 = *(v147 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v138 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v138 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v138 - v22;
  v24 = MEMORY[0x25F8CE7F0](v21);
  v25 = v155;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v151, &v153);
  if (v25)
  {
    objc_autoreleasePoolPop(v24);
    return;
  }

  v142 = 0;
  v140 = v20;
  v139 = v10;
  v141 = v15;
  v143 = a1;
  objc_autoreleasePoolPop(v24);
  v144 = v153;
  v155 = [v153 intent];
  v26 = [v155 typeName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v156._countAndFlagsBits = v27;
  v156._object = v29;
  if (specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(v156) != 4)
  {
    v50 = v143;
    v51 = [v143 intentClass];
    v52 = v13;
    v53 = v6;
    v54 = v23;
    v55 = v148;
    v138 = v52;
    if (v51)
    {
      v56 = v51;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      if (v57 == 0xD000000000000011 && 0x800000025ED7F6B0 == v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v60 = [v144 intentResponse];
        v61 = MEMORY[0x277D84F98];
        if (v60)
        {
          v62 = v60;
          v63 = [v60 _className];
          if (v63)
          {
            v64 = v63;
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            if (v65 == 0xD000000000000019 && 0x800000025ED7F750 == v67)
            {

              v50 = v143;
            }

            else
            {
              v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v50 = v143;
              if ((v71 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            v72 = MEMORY[0x25F8CDFC0](0xD000000000000017, 0x800000025ED7F770);
            v73 = [v62 valueForKeyPath_];

            if (v73)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v151 = 0u;
              v152 = 0u;
            }

            v153 = v151;
            v154 = v152;
            if (!*(&v152 + 1))
            {

              outlined destroy of Date?(&v153, &_sypSgMd, &_sypSgMR);
              goto LABEL_49;
            }

            v77 = MEMORY[0x277D837D0];
            if (swift_dynamicCast())
            {
              v78 = specialized static Utils.normalizedAlarmIdentifier(from:)(v150, *(&v150 + 1));
              v80 = v79;

              *(&v154 + 1) = v77;
              *&v153 = v78;
              *(&v153 + 1) = v80;
              v50 = v143;
              outlined init with take of Any(&v153, &v151);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v150 = v61;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v151, 0x6564496D72616C61, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);

              v61 = v150;
              goto LABEL_49;
            }
          }

LABEL_36:
        }

LABEL_49:
        v96 = [v50 absoluteTimestamp];
        if (v96)
        {
          v97 = v96;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v98 = 0;
        }

        else
        {
          v98 = 1;
        }

        v99 = v141;
        v100 = v147;
        (*(v147 + 56))(v54, v98, 1, v53);
        v101 = *(v100 + 16);
        v101(v99, v55, v53);
        v102 = type metadata accessor for SiriUISession(0);
        v103 = v138;
        v101(v138, v55 + *(v102 + 20), v53);
        v104 = v140;
        outlined init with copy of Date?(v54, v140);
        v105 = (*(v100 + 48))(v104, 1, v53);
        if (v105 == 1)
        {
          v120 = *(v100 + 8);
          v120(v103, v53);
          v120(v99, v53);
          outlined destroy of Date?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of Date?(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v118 = 0x3FF0000000000000;
          v108 = 0;
          v112 = 0.0;
          v119 = 0.0;
        }

        else
        {
          v106 = v139;
          (*(v100 + 32))(v139, v104, v53);
          Date.timeIntervalSinceReferenceDate.getter();
          v108 = v107;
          Date.timeIntervalSinceReferenceDate.getter();
          v110 = v109;
          Date.timeIntervalSinceReferenceDate.getter();
          v112 = v110 - v111;
          Date.timeIntervalSinceReferenceDate.getter();
          v114 = v113;
          Date.timeIntervalSinceReferenceDate.getter();
          v116 = v115;
          v117 = *(v100 + 8);
          v117(v106, v53);
          v117(v103, v53);
          v117(v99, v53);
          outlined destroy of Date?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v118 = 0;
          v119 = v114 - v116;
        }

        v121 = v143;
        v122 = [v143 donatedBySiri];
        *(&v154 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v153) = v122;
        outlined init with take of Any(&v153, &v151);
        v123 = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v61;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v151, 0x42646574616E6F64, 0xED00006972695379, v123);
        v124 = v150;
        v125 = v155;
        v126 = [v155 typeName];
        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v129 = v128;

        *(&v154 + 1) = MEMORY[0x277D837D0];
        *&v153 = v127;
        *(&v153 + 1) = v129;
        outlined init with take of Any(&v153, &v151);
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v124;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v151, 0x7954746E65746E69, 0xEE00656D614E6570, v130);
        v131 = v150;
        v132 = [v121 intentClass];
        if (v132)
        {
          v133 = v132;
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
        }

        else
        {

          v134 = 0;
          v136 = 0xE000000000000000;
        }

        type metadata accessor for Signal();
        v137 = swift_allocObject();
        *(v137 + 16) = v108;
        *(v137 + 24) = v112;
        *(v137 + 32) = v119;
        *(v137 + 40) = 0;
        *(v137 + 48) = v118;
        *(v137 + 56) = v105 != 1;
        *(v137 + 64) = 0x6D72616C41;
        *(v137 + 72) = 0xE500000000000000;
        *(v137 + 80) = v134;
        *(v137 + 88) = v136;
        *(v137 + 96) = 1;
        *(v137 + 104) = v131;
        return;
      }

      if (v57 == 0xD000000000000013 && 0x800000025ED7F6D0 == v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v68 = MEMORY[0x25F8CDFC0](0xD000000000000010, 0x800000025ED7F730);
        v69 = [v155 valueForKeyPath_];
        goto LABEL_22;
      }

      if (v57 == 0xD000000000000013 && 0x800000025ED7F6F0 == v59)
      {

LABEL_42:
        v68 = MEMORY[0x25F8CDFC0](0xD000000000000012, 0x800000025ED7F710);
        v69 = [v155 valueForKeyPath_];
LABEL_22:
        v70 = v69;

        if (v70)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v151 = 0u;
          v152 = 0u;
        }

        v153 = v151;
        v154 = v152;
        if (*(&v152 + 1))
        {
          v74 = MEMORY[0x277D837D0];
          if (swift_dynamicCast())
          {
            *(&v154 + 1) = v74;
            v153 = v150;
            outlined init with take of Any(&v153, &v151);
            v75 = MEMORY[0x277D84F98];
            v76 = swift_isUniquelyReferenced_nonNull_native();
            *&v150 = v75;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v151, 0x6564496D72616C61, 0xEF7265696669746ELL, v76);
            v61 = v150;
            goto LABEL_49;
          }
        }

        else
        {
          outlined destroy of Date?(&v153, &_sypSgMd, &_sypSgMR);
        }

LABEL_48:
        v61 = MEMORY[0x277D84F98];
        goto LABEL_49;
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v82)
      {
        goto LABEL_42;
      }
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.engagement);
    v84 = v155;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *&v153 = swift_slowAlloc();
      v88 = v153;
      *v87 = 136315138;
      v89 = [v84 _className];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      v93 = v90;
      v50 = v143;
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v153);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_25ECEC000, v85, v86, "Skip the alarmID for other intents %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v95 = v88;
      v55 = v148;
      MEMORY[0x25F8CEE50](v95, -1, -1);
      MEMORY[0x25F8CEE50](v87, -1, -1);
    }

    goto LABEL_48;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.engagement);
  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
  v31 = v155;
  v32 = [v155 domain];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  MEMORY[0x25F8CE090](v33, v35);

  MEMORY[0x25F8CE090](0xD000000000000024, 0x800000025ED7F680);
  v36 = v153;
  v37 = *MEMORY[0x277D616E0];
  v38 = type metadata accessor for AppIntentEventDataIssues();
  v39 = v149;
  (*(*(v38 - 8) + 104))(v149, v37, v38);
  v41 = v145;
  v40 = v146;
  (*(v145 + 104))(v39, *MEMORY[0x277D61678], v146);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v153 = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, *(&v36 + 1), &v153);
    _os_log_impl(&dword_25ECEC000, v42, v43, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    v46 = v45;
    v31 = v155;
    MEMORY[0x25F8CEE50](v46, -1, -1);
    v47 = v44;
    v39 = v149;
    MEMORY[0x25F8CEE50](v47, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v48 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v39, v48, v49);

  (*(v41 + 8))(v39, v40);
}

void AlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v96 = a2;
  v73 = a3;
  v98 = type metadata accessor for ReliabilityCategory();
  v6 = *(v98 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v98);
  v97 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v69 - v11);
  v13 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = v69 - v19;
  v104 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_3:
    v80 = v17;
    v78 = v12;
    v21 = 0;
    v22 = *v4;
    v95 = a1 & 0xC000000000000001;
    v84 = a1 & 0xFFFFFFFFFFFFFF8;
    v94 = *(v22 + 88);
    v93 = v22 + 88;
    v83 = a1 + 32;
    v91 = "createdAlarm.identifier";
    v90 = *MEMORY[0x277D615C0];
    v89 = v6 + 13;
    v88 = v6 + 1;
    v87 = *MEMORY[0x277D616A8];
    v77 = v76 + 56;
    v71 = (v76 + 48);
    v72 = (v76 + 32);
    v70 = (v76 + 16);
    v69[1] = v76 + 8;
    *&v18 = 136315138;
    v82 = v18;
    v79 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v81 = v4;
    v86 = a1;
    v92 = v20;
    while (1)
    {
      if (v95)
      {
        v17 = MEMORY[0x25F8CE460](v21, a1);
      }

      else
      {
        if (v21 >= *(v84 + 16))
        {
          goto LABEL_56;
        }

        v17 = *(v83 + 8 * v21);
      }

      v6 = v17;
      if (__OFADD__(v21++, 1))
      {
        goto LABEL_55;
      }

      v12 = v4;
      v17 = v94(v17, v96);
      v24 = v17;
      if (v17)
      {
        break;
      }

LABEL_4:
      if (v21 == v20)
      {
        goto LABEL_62;
      }
    }

    v85 = v6;
    if (v99 >> 62)
    {
      if (v99 < 0)
      {
        v54 = v99;
      }

      else
      {
        v54 = v99 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x25F8CE500](v54);
      v25 = v17;
      if (v17)
      {
LABEL_13:
        v26 = 0;
        a1 = v99 & 0xC000000000000001;
        v4 = (v99 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (a1)
          {
            v17 = MEMORY[0x25F8CE460](v26, v99);
            v6 = v17;
            v27 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v26 >= v4[2])
            {
              goto LABEL_54;
            }

            v6 = *(v99 + 8 * v26 + 32);

            v27 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v65 = v17;
              if (a1 < 0)
              {
                v66 = a1;
              }

              else
              {
                v66 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v20 = MEMORY[0x25F8CE500](v66);
              v17 = v65;
              if (!v20)
              {
                goto LABEL_61;
              }

              goto LABEL_3;
            }
          }

          v28 = (*(*v24 + 120))(&v102);
          v29 = *&v102._countAndFlagsBits;
          v12 = v6;
          (*(*v6 + 120))(&v100, v28);
          if (vabdd_f64(v29, *&v100) < 2.0)
          {
            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v30 = type metadata accessor for Logger();
            __swift_project_value_buffer(v30, static Logger.engagement);
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.info.getter();
            v33 = os_log_type_enabled(v31, v32);
            a1 = v86;
            if (v33)
            {
              v34 = swift_slowAlloc();
              *v34 = 0;
              _os_log_impl(&dword_25ECEC000, v31, v32, "duped won't be added to PSE signals, we update the original one.", v34, 2u);
              MEMORY[0x25F8CEE50](v34, -1, -1);
            }

            (*(*v6 + 168))();
            v35 = String.lowercased()();

            v102 = v35;
            v100 = 0x656C67676F74;
            v101 = 0xE600000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v36 = StringProtocol.contains<A>(_:)();

            if (v36)
            {
              v38 = *(*v24 + 168);
              v38(v37);
              v39 = String.lowercased()();

              v102 = v39;
              v100 = 0x657461657263;
              v101 = 0xE600000000000000;
              v40 = StringProtocol.contains<A>(_:)();
              a1 = v86;

              if (v40)
              {
                v41 = (v38)(v37);
                v42 = (*(*v6 + 176))(v41);
                v43 = (*(*v24 + 216))(v42);
                v12 = v6;
                (*(*v6 + 224))(v43);

                goto LABEL_34;
              }
            }

            v12 = (*(*v6 + 216))(v37);
            if (v12[2] && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v45 & 1) != 0))
            {
              outlined init with copy of Any(v12[7] + 32 * v44, &v102);

              v17 = outlined destroy of Date?(&v102, &_sypSgMd, &_sypSgMR);
LABEL_34:
              v4 = v81;
            }

            else
            {

              v102 = 0;
              v103 = 0u;
              v46 = outlined destroy of Date?(&v102, &_sypSgMd, &_sypSgMR);
              v47 = *(*v24 + 216);
              v12 = v47(v46);
              v4 = v81;
              if (v12[2] && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v49 & 1) != 0))
              {
                outlined init with copy of Any(v12[7] + 32 * v48, &v102);

                v50 = outlined destroy of Date?(&v102, &_sypSgMd, &_sypSgMR);
                v51 = (*(*v24 + 168))(v50);
                v52 = (*(*v6 + 176))(v51);
                v53 = v47(v52);
                v12 = v6;
                (*(*v6 + 224))(v53);
              }

              else
              {

                v102 = 0;
                v103 = 0u;
                v17 = outlined destroy of Date?(&v102, &_sypSgMd, &_sypSgMR);
              }
            }

            v20 = v92;
            goto LABEL_4;
          }

          ++v26;
        }

        while (v27 != v25);
      }
    }

    else
    {
      v25 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_13;
      }
    }

    MEMORY[0x25F8CE160](v55);
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v99 = v104;
    v4 = v81;
    v6 = v78;
    v56 = v85;
    (*(*v81 + 80))(v85);
    a1 = v86;
    v20 = v92;
    v12 = v56;
    v57 = v80;
    if ((*v71)(v6, 1, v80) == 1)
    {

      v17 = outlined destroy of Date?(v6, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
    }

    else
    {
      v58 = v74;
      v69[0] = *v72;
      (v69[0])(v74, v6, v57);
      (*v70)(v75, v58, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
      }

      v60 = v79[2];
      v59 = v79[3];
      v6 = (v60 + 1);
      if (v60 >= v59 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v79);
      }

      v61 = v76;
      v62 = v80;
      (*(v76 + 8))(v74, v80);
      v63 = v79;
      v79[2] = v6;
      v17 = (v69[0])(v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v75, v62);
    }

    goto LABEL_4;
  }

LABEL_61:
  v79 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
LABEL_62:
  v67 = v73;
  v68 = v79;
  *v73 = v99;
  v67[1] = v68;
}

uint64_t PostSiriEngagementCollectionResult.lastSessionEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PostSiriEngagementCollectionResult.lastSessionEndDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PostSiriEngagementCollectionResult.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  return Date.init()();
}

uint64_t PostSiriEngagementCollectionResult.init(status:numCollectedSiriSessions:lastSessionEndDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t PostSiriEngagementCollection.__allocating_init(identifier:startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v13 = *(v7 + 48);
  v14 = *(v7 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  v18 = v15 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v15 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  outlined assign with take of Date?(a3, v15 + v16);
  swift_endAccess();
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  *v19 = a6;
  *(v19 + 8) = a7 & 1;
  return v15;
}

uint64_t PostSiriEngagementCollection.init(identifier:startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v13 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v7 + v13, 1, 1, v14);
  v15 = v7 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v7 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  outlined assign with take of Date?(a3, v7 + v13);
  swift_endAccess();
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  *v16 = a6;
  *(v16 + 8) = a7 & 1;
  return v7;
}

uint64_t PostSiriEngagementCollection.__allocating_init(startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = (*(v5 + 208))(0, 0xE000000000000000, v14, a2, a3 & 1, a4, a5 & 1);
  (*(v16 + 8))(a1, v15);
  return v17;
}

uint64_t PostSiriEngagementCollection.perform(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 16);
  v15 = *(v3 + 24);
  type metadata accessor for PostSiriEngagementMetricsCollector();
  swift_allocObject();

  v16 = PostSiriEngagementMetricsCollector.init(identifier:)(v14, v15);
  v17 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  swift_beginAccess();
  outlined init with copy of Date?(v3 + v17, v8);
  v18 = *(v10 + 48);
  v19 = v18(v8, 1, v9);
  v30 = v9;
  if (v19 == 1)
  {
    v20 = v16[6];

    UserDefaultsDomainProvider.lastCollectionDate.getter(v13);

    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Date?(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  v21 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds);
  v22 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds + 8);
  v23 = v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  v24 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions);
  v25 = *(v23 + 8);
  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 24) = a2;
  v27 = *(*v16 + 248);

  v27(v13, v21, v22, v24, v25, partial apply for closure #1 in PostSiriEngagementCollection.perform(completion:), v26);

  return (*(v10 + 8))(v13, v30);
}

uint64_t PostSiriEngagementCollection.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate);
  return v0;
}

uint64_t PostSiriEngagementCollection.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in PostSiriEngagementCollection.perform(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata completion function for PostSiriEngagementCollectionResult()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PostSiriEngagementCollection()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t TaskSuccess.toProto()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoSiriTaskSuccessType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279A51710 + a1);

  return v5(a2, v6, v4);
}

uint64_t TaskCompletionType.toProto()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoSiriTaskCompletionType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279A516E8 + a1);

  return v5(a2, v6, v4);
}

uint64_t TaskInteractionType.toProto()()
{
  ProtoSiriTaskInteractionType.init()();
  ProtoSiriTaskInteractionType.includesPrompt.setter();
  ProtoSiriTaskInteractionType.includesConfirm.setter();
  ProtoSiriTaskInteractionType.includesDisambiguate.setter();
  return ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter();
}

uint64_t SiriExecutionTask.toProto()()
{
  v1 = type metadata accessor for Date();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProtoSiriTaskInteractionType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for ProtoSiriTaskSuccessType();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProtoSiriTaskCompletionType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = ProtoSiriTaskEvaluationSummary.init()();
  (*(*v0 + 208))(v14);
  v15 = ProtoSiriTaskEvaluationSummary.requestIds.setter();
  v16 = *(*v0 + 328);
  v17 = v16(v15);
  v18 = (*(*v17 + 152))(v17);

  (*(v10 + 104))(v13, **(&unk_279A516E8 + v18), v9);
  v19 = ProtoSiriTaskEvaluationSummary.taskCompletion.setter();
  v20 = v16(v19);
  v21 = (*(*v20 + 104))(v20);

  (*(v30 + 104))(v29, **(&unk_279A51710 + v21), v31);
  v22 = ProtoSiriTaskEvaluationSummary.taskSuccess.setter();
  v23 = v16(v22);
  (*(*v23 + 128))(v23);

  ProtoSiriTaskInteractionType.init()();
  ProtoSiriTaskInteractionType.includesPrompt.setter();
  ProtoSiriTaskInteractionType.includesConfirm.setter();
  ProtoSiriTaskInteractionType.includesDisambiguate.setter();
  ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter();
  ProtoSiriTaskEvaluationSummary.interactionType.setter();
  type metadata accessor for SiriTaskEngagementUtils();
  v24 = v32;
  (*(*v0 + 352))();
  dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
  v25 = v34;
  v26 = *(v33 + 8);
  v26(v24, v34);
  v27 = ProtoSiriTaskEvaluationSummary.startTimestampMs.setter();
  (*(*v0 + 376))(v27);
  dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
  v26(v24, v25);
  return ProtoSiriTaskEvaluationSummary.endTimestampMs.setter();
}

uint64_t static EngagementSignalEnrichmentUtils.getTaskCompletionType(executionSequence:)(uint64_t a1)
{
  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 2;
  }

  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 3;
  }

  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 4;
  }

  return 1;
}

uint64_t static EngagementSignalEnrichmentUtils.getTaskInteractionType(executionSequence:)(uint64_t a1)
{
  v2 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  v3 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  v4 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  if (specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(a1))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 0xFFFFFFFE | v2 | v6 | v5;
}

BOOL specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(uint64_t a1)
{
  return specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      String.lowercased()();
      String.lowercased()();
      lazy protocol witness table accessor for type String and conformance String();
      v7 = StringProtocol.contains<A>(_:)();

      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v16 + 16) = v10;
      *(v16 + v9 + 32) = v7 & 1;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  v11 = (v3 + 32);
  do
  {
    v12 = v10;
    if (v10-- == 0)
    {
      break;
    }

    v14 = *v11++;
  }

  while ((v14 & 1) == 0);

  return v12 != 0;
}

BOOL specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      String.lowercased()();
      String.lowercased()();
      lazy protocol witness table accessor for type String and conformance String();
      v7 = StringProtocol.contains<A>(_:)();

      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v16 + 16) = v10;
      *(v16 + v9 + 32) = v7 & 1;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  v11 = (v3 + 32);
  do
  {
    v12 = v10;
    if (v10-- == 0)
    {
      break;
    }

    v14 = *v11++;
  }

  while ((v14 & 1) == 0);

  return v12 != 0;
}

uint64_t PostSiriEngagementMetricsCollector.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PostSiriEngagementMetricsCollector.init(identifier:)(a1, a2);
  return v4;
}

uint64_t PostSiriEngagementMetricsCollector.__allocating_init(parameters:)()
{
  v0 = swift_allocObject();
  PostSiriEngagementMetricsCollector.init(parameters:)();
  return v0;
}

uint64_t PostSiriEngagementMetricsCollector.init(parameters:)()
{

  type metadata accessor for PSEBiomeDonator();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 PostSiriEngagement];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *(v1 + 16) = v4;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0xD000000000000022;
  *(v0 + 32) = 0x800000025ED7C740;
  *(v0 + 40) = 257;
  *(v0 + 42) = 1;
  type metadata accessor for UserDefaultsDomainProvider();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x25F8CDFC0](0xD000000000000021, 0x800000025ED7E7F0);
  v8 = [v6 initWithSuiteName_];

  v5[2] = v8;
  v5[3] = 0xD000000000000022;
  v5[4] = 0x800000025ED7C740;
  v5[5] = 0xD000000000000033;
  v5[6] = 0x800000025ED7F880;
  *(v0 + 48) = v5;
  return v0;
}

uint64_t PostSiriEngagementMetricsCollector.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PSEBiomeDonator();
  v6 = swift_allocObject();
  v7 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v8 = [v7 PostSiriEngagement];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  *(v6 + 16) = v9;
  *(v3 + 40) = 257;
  v10 = (v3 + 40);
  *(v3 + 42) = 1;
  *(v3 + 16) = v6;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  type metadata accessor for UserDefaultsDomainProvider();
  v11 = swift_allocObject();
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v13 = MEMORY[0x25F8CDFC0](0xD000000000000021, 0x800000025ED7E7F0);
  v14 = [v12 initWithSuiteName_];

  v11[2] = v14;
  v11[3] = a1;
  v11[4] = a2;
  swift_bridgeObjectRetain_n();
  MEMORY[0x25F8CE090](0xD000000000000011, 0x800000025ED7F8C0);
  v11[5] = a1;
  v11[6] = a2;
  *(v3 + 48) = v11;
  if (a1 == 0xD000000000000022 && 0x800000025ED7C740 == a2)
  {
    v15 = 1;
    swift_beginAccess();
    *v10 = 1;
    swift_beginAccess();
    *(v3 + 41) = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_beginAccess();
    *v10 = v16 & 1;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_beginAccess();
    *(v3 + 41) = v17 & 1;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_beginAccess();
  *(v3 + 42) = v15 & 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  return v3;
}

uint64_t PostSiriEngagementMetricsCollector.collect(callback:)(void (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.engagement);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25ECEC000, v16, v17, "Starting activity collector", v18, 2u);
    MEMORY[0x25F8CEE50](v18, -1, -1);
  }

  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = 0x6E61747369737361;
  qword_280FEE450 = 0xEA00000000006474;

  v19 = *(v3 + 6);
  UserDefaultsDomainProvider.lastCollectionDate.getter(v14);
  (*(v11 + 56))(v9, 1, 1, v10);
  v20 = (*(*v3 + 288))(v14, v9, 0, 1);
  outlined destroy of Date?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  specialized PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v20, v3, v20, v3, a1, a2);
  swift_bridgeObjectRelease_n();

  return (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in PostSiriEngagementMetricsCollector.collect(callback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.engagement);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&dword_25ECEC000, v11, v12, "Successfully completed collection of %ld activities.", v13, 0xCu);
    MEMORY[0x25F8CEE50](v13, -1, -1);
  }

  else
  {
  }

  v14 = *(a2 + 48);
  Date.init()();
  UserDefaultsDomainProvider.lastCollectionDate.setter(v9);
  return a3(0);
}

uint64_t PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void (*a6)(_BYTE *), uint64_t a7)
{
  v8 = v7;
  v98 = a6;
  v99 = a7;
  v106 = a5;
  v105 = a4;
  LODWORD(v101) = a3;
  v94 = a2;
  v89 = type metadata accessor for PostSiriEngagementCollectionResult(0);
  v10 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v90 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SiriUISession(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v96 = &v84[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v84[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84[-v21];
  v95 = v23;
  MEMORY[0x28223BE20](v20);
  v97 = &v84[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v93 = &v84[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v110 = &v84[-v29];
  v30 = type metadata accessor for Date();
  v103 = *(v30 - 8);
  v31 = v103;
  v32 = *(v103 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v88 = &v84[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v100 = &v84[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v109 = &v84[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v84[-v39];
  if (one-time initialization token for engagement != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.engagement);
    v43 = *(v31 + 16);
    v104 = a1;
    v92 = v31 + 16;
    v91 = v43;
    v43(v40, a1, v30);

    v87 = v42;
    v44 = v31;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    v47 = os_log_type_enabled(v45, v46);
    v107 = v30;
    v108 = v8;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v111[0] = v86;
      *v48 = 136315394;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v85 = v46;
      v49 = v44;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v102 = *(v49 + 8);
      v102(v40, v107);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v111);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = v108[3];
      v55 = v108[4];

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v111);
      v30 = v107;

      *(v48 + 14) = v56;
      _os_log_impl(&dword_25ECEC000, v45, v85, "Starting collection with startDate: %s with identifier: %s", v48, 0x16u);
      v57 = v86;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v57, -1, -1);
      v58 = v48;
      v8 = v108;
      MEMORY[0x25F8CEE50](v58, -1, -1);

      v59 = v49;
    }

    else
    {

      v102 = *(v44 + 8);
      v102(v40, v30);
      v59 = v44;
    }

    swift_beginAccess();
    static PSEStruct.pseTriggerOrigin = 0x636E657265666E69;
    qword_280FEE450 = 0xEA00000000006465;

    v40 = v100;
    v86 = v8[6];
    UserDefaultsDomainProvider.lastCollectionDate.getter(v100);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v60 = v104;
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      (*(v59 + 32))(v109, v40, v30);
    }

    else
    {
      v102(v40, v30);
      v91(v109, v60, v30);
    }

    v63 = *(v59 + 56);
    v62 = v59 + 56;
    v61 = v63;
    v63(v110, 1, 1, v30);
    if ((v101 & 1) == 0)
    {
      v40 = v110;
      v101 = v62;
      v64 = v93;
      Date.addingTimeInterval(_:)();
      outlined destroy of Date?(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v61(v64, 0, 1, v30);
      outlined init with take of Date?(v64, v40);
    }

    v65 = (*(*v8 + 288))(v109, v110, v105, v106 & 1);
    v30 = v65;
    v8 = *(v65 + 16);
    if (!v8)
    {
      break;
    }

    v31 = *(v13 + 80);
    a1 = v65 + ((v31 + 32) & ~v31);
    outlined init with copy of SiriUISession(a1, v22);
    if (v8 == 1)
    {
LABEL_12:
      v66 = v97;
      outlined init with take of SiriUISession(v22, v97);
      v67 = v96;
      outlined init with copy of SiriUISession(v66, v96);
      v68 = (v31 + 48) & ~v31;
      v69 = (v95 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = swift_allocObject();
      v71 = v105;
      *(v70 + 16) = v30;
      *(v70 + 24) = v71;
      *(v70 + 32) = v106 & 1;
      *(v70 + 40) = v108;
      outlined init with take of SiriUISession(v67, v70 + v68);
      v72 = (v70 + v69);
      v73 = v99;
      *v72 = v98;
      v72[1] = v73;

      PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v30, partial apply for closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:), v70);

      v74 = type metadata accessor for SiriUISession;
      v75 = v66;
      goto LABEL_16;
    }

    v82 = 1;
    while (v82 < *(v30 + 16))
    {
      outlined init with copy of SiriUISession(a1 + *(v13 + 72) * v82, v19);
      v83 = *(v12 + 20);
      if (static Date.< infix(_:_:)())
      {
        outlined destroy of SiriUISession(v22, type metadata accessor for SiriUISession);
        outlined init with take of SiriUISession(v19, v22);
      }

      else
      {
        outlined destroy of SiriUISession(v19, type metadata accessor for SiriUISession);
      }

      if (v8 == ++v82)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_25ECEC000, v76, v77, "There are no Siri UI events to submit.", v78, 2u);
    MEMORY[0x25F8CEE50](v78, -1, -1);
  }

  v79 = v88;
  Date.init()();
  UserDefaultsDomainProvider.lastCollectionDate.setter(v79);
  v80 = v90;
  UserDefaultsDomainProvider.lastCollectionDate.getter(&v90[*(v89 + 24)]);
  *v80 = 1;
  *(v80 + 1) = 0;
  v98(v80);
  v74 = type metadata accessor for PostSiriEngagementCollectionResult;
  v75 = v80;
LABEL_16:
  outlined destroy of SiriUISession(v75, v74);
  outlined destroy of Date?(v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v102)(v109, v107);
}

uint64_t closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v32 = a5;
  v33 = a3;
  v10 = type metadata accessor for PostSiriEngagementCollectionResult(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.engagement);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v10;
    v22 = a6;
    v23 = v21;
    *v21 = 134217984;
    *(v21 + 4) = *(a1 + 16);

    _os_log_impl(&dword_25ECEC000, v19, v20, "Successfully completed collection of %ld activities.", v23, 0xCu);
    v24 = v23;
    a6 = v22;
    v10 = v31;
    MEMORY[0x25F8CEE50](v24, -1, -1);

    if (v33)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v33)
    {
LABEL_9:
      v26 = *(a4 + 48);
      v27 = v32 + *(type metadata accessor for SiriUISession(0) + 20);
      Date.addingTimeInterval(_:)();
      goto LABEL_10;
    }
  }

  if (*(a1 + 16) >= a2)
  {
    goto LABEL_9;
  }

  v25 = *(a4 + 48);
  Date.init()();
LABEL_10:
  UserDefaultsDomainProvider.lastCollectionDate.setter(v17);
  v28 = *(a1 + 16);
  UserDefaultsDomainProvider.lastCollectionDate.getter(&v13[*(v10 + 24)]);
  *v13 = 1;
  *(v13 + 1) = v28;
  a6(v13);
  return outlined destroy of SiriUISession(v13, type metadata accessor for PostSiriEngagementCollectionResult);
}

uint64_t PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v93 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v81 - v19;
  v21 = type metadata accessor for SiriUISession(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v28);
  v98 = *(a1 + 16);
  if (v98)
  {
    v82 = a2;
    v83 = v7;
    v84 = v6;
    v85 = a3;
    v102 = MEMORY[0x277D84F90];
    v96 = (&v81 - v32);
    v97 = v31;
    specialized ContiguousArray.reserveCapacity(_:)();
    v33 = 0;
    v34 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v35 = *(v22 + 72);
    v94 = v25;
    v95 = v35;
    v36 = (v22 + 56);
    do
    {
      v38 = v96;
      v37 = v97;
      v39 = *(v97 + 48);
      v40 = (&v33->isa + 1);
      outlined init with copy of SiriUISession(v34, v96 + v39);
      *v30 = v33;
      v41 = *(v37 + 48);
      outlined init with take of SiriUISession(v38 + v39, v30 + v41);
      v42 = v94;
      outlined init with copy of SiriUISession(v30 + v41, v94);
      v43 = type metadata accessor for UISessionSignalBuilder(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v46 = swift_allocObject();
      v47 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
      v48 = *v36;
      (*v36)(v46 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, 1, 1, v21);
      *(v46 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
      v49 = v46 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
      *(v49 + 112) = 0;
      *(v49 + 80) = 0u;
      *(v49 + 96) = 0u;
      *(v49 + 48) = 0u;
      *(v49 + 64) = 0u;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *v49 = 0u;
      outlined init with take of SiriUISession(v42, v20);
      v48(v20, 0, 1, v21);
      swift_beginAccess();
      outlined assign with take of SiriUISession?(v20, v46 + v47);
      swift_endAccess();
      *(v46 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v99;

      outlined destroy of Date?(v30, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v50 = *(v102 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += v95;
      v33 = v40;
    }

    while (v98 != v40);
    v96 = v36;
    v94 = v21;
    v51 = v102;
    v102 = 0;
    v98 = dispatch_group_create();
    v52 = (v51 >> 62) & 1;
    if (v51 < 0)
    {
      LODWORD(v52) = 1;
    }

    LODWORD(v95) = v52;
    if (v52 == 1)
    {
      goto LABEL_37;
    }

    v53 = *(v51 + 16);
LABEL_8:
    v54 = v99;
    v55 = MEMORY[0x277D84F90];
    v56 = v93;
    if (v53)
    {
      v57 = 0;
      v97 = v51 & 0xC000000000000001;
      v93 = (v51 + 32);
      do
      {
        if (v97)
        {
          v55 = MEMORY[0x25F8CE460](v57, v51);
          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v57 >= *(v51 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v53 = MEMORY[0x25F8CE500](v51);
            goto LABEL_8;
          }

          v55 = *(v51 + 8 * v57 + 32);

          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_27;
          }
        }

        v60 = MEMORY[0x25F8CE7F0]();
        dispatch_group_enter(v98);
        if (v95)
        {
          v61 = MEMORY[0x25F8CE500](v51);
        }

        else
        {
          v61 = *(v51 + 16);
        }

        if (v59 >= v61)
        {
          v48(v56, 1, 1, v94);
        }

        else
        {
          if (v97)
          {
            v62 = MEMORY[0x25F8CE460](v59, v51);
          }

          else
          {
            if (v59 < 0)
            {
              goto LABEL_35;
            }

            if (v59 >= *(v51 + 16))
            {
              goto LABEL_36;
            }

            v62 = *&v93[8 * v59];
          }

          (*(*v62 + 112))();

          v54 = v99;
        }

        v58 = v98;
        specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(v55, v56, v54, &v102, v58);

        outlined destroy of Date?(v56, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
        objc_autoreleasePoolPop(v60);

        ++v57;
        v55 = MEMORY[0x277D84F90];
      }

      while (v59 != v53);
    }

    type metadata accessor for OS_dispatch_queue();
    v64 = v87;
    v63 = v88;
    v65 = v86;
    (*(v87 + 104))(v86, *MEMORY[0x277D851C8], v88);
    v66 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v63);
    v67 = swift_allocObject();
    v68 = v85;
    *(v67 + 16) = v82;
    *(v67 + 24) = v68;
    aBlock[4] = partial apply for closure #3 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:);
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v69 = _Block_copy(aBlock);

    v70 = v89;
    static DispatchQoS.unspecified.getter();
    v100 = v55;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v71 = v91;
    v72 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v98;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v69);

    (*(v83 + 8))(v71, v72);
    (*(v90 + 8))(v70, v92);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.engagement);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = a2;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_25ECEC000, v76, v77, "There are no Siri UI events in Biome stream to submit.", v79, 2u);
      v80 = v79;
      a2 = v78;
      MEMORY[0x25F8CEE50](v80, -1, -1);
    }

    return a2();
  }
}

void specialized closure #1 in closure #2 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    swift_beginAccess();
    v9 = *a3;
    v10 = *(*a2 + 264);

    v10(a1, v9);

    v11 = *(a1 + 24 * v5 + 8);
    swift_beginAccess();
    v12 = *a3;
    *a3 = v11;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.engagement);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_25ECEC000, v14, v15, "There are no SiriExecution events in SiriExecution Biome stream to submit.", v16, 2u);
      MEMORY[0x25F8CEE50](v16, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t PostSiriEngagementMetricsCollector.calculateSuccessAndSubmit(allPseTasks:previousTask:)(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v6 = result;
    type metadata accessor for TaskSuccessCalculator();
    v26 = (*v4)[27];
    v25 = (*v4)[24];
    v24 = (*v4)[21];

    v7 = 0;
    v8 = (v6 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v12 = static TaskSuccessCalculator.calculateTaskSuccess(signals:task:)(v10, v9);
      if (v26(v12))
      {

        specialized static SiriTaskEngagementFeatureDonator.donate(siriTask:previousTask:taskFeatureSets:)(v13, a2, v11);
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.engagement);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_25ECEC000, v15, v16, "Successfully wrote task engagement features to featurestore", v17, 2u);
          MEMORY[0x25F8CEE50](v17, -1, -1);
        }

        a2 = v9;
      }

      v18 = v25();
      if (v18)
      {
        v19 = *v4[2];
        v20 = v4;
        v21 = v7;
        v22 = a2;
        v23 = *(v19 + 96);

        v23(v10, v9);
        a2 = v22;
        v7 = v21;
        v4 = v20;
      }

      if (v24(v18))
      {
        specialized PSESELFEmitter.emitPSESELFInstrumentation(signals:task:)(v10, v9);
      }

      swift_bridgeObjectRelease_n();

      v8 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a2;
  v7 = *(*a1 + 224);

  v7(v8, partial apply for closure #1 in closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:), v6);
}

uint64_t closure #1 in closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = a1[1];
    v5 = a1[2];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v7 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = v6;
  *(v11 + 6) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t PostSiriEngagementMetricsCollector.signalFactoryForIntentEvents(group:taskName:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for AppIntentSignalFactory();
  v7 = swift_allocObject();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_34:

    return 0;
  }

  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v30 = a1;
  }

  v31 = v7;
  v32 = MEMORY[0x25F8CE500](v30);
  v7 = v31;
  if (!v32)
  {
    goto LABEL_34;
  }

LABEL_3:
  v37 = v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8CE460](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v37;
    }

    v8 = *(a1 + 32);
  }

  v9 = v8;
  v10 = MEMORY[0x25F8CE7F0]();
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(v9, v35, &v36._countAndFlagsBits);
  if (v3)
  {
    objc_autoreleasePoolPop(v10);
  }

  objc_autoreleasePoolPop(v10);
  countAndFlagsBits = v36._countAndFlagsBits;
  v13 = [v36._countAndFlagsBits intent];
  v14 = [v13 typeName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v38._countAndFlagsBits = v15;
  v38._object = v17;
  if (specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(v38) != 4)
  {

    type metadata accessor for AlarmSignalFactory();
    return swift_allocObject();
  }

  v34 = v13;
  v18 = String.lowercased()();
  v36 = v18;
  v35[0] = 0xD000000000000011;
  v35[1] = 0x800000025ED7F8E0;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for MessagesIntentSignalFactory();
    return swift_allocObject();
  }

  v36 = v18;
  v35[0] = 0x6C61637472617473;
  v35[1] = 0xEF746E65746E696CLL;
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v36 = v18, v35[0] = 0xD000000000000014, v35[1] = 0x800000025ED7F900, (StringProtocol.contains<A>(_:)()) || (v36 = v18, v35[0] = 0xD000000000000014, v35[1] = 0x800000025ED7F920, (StringProtocol.contains<A>(_:)()))
  {

    type metadata accessor for CallsIntentSignalFactory();
LABEL_17:
    result = swift_allocObject();
    *(result + 16) = 0;
    return result;
  }

  v36 = v18;
  v35[0] = 0xD000000000000010;
  v35[1] = 0x800000025ED7F3E0;
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for AnswerCallsIntentSignalFactory();
    goto LABEL_17;
  }

  v36 = v18;
  v35[0] = 1936744813;
  v35[1] = 0xE400000000000000;
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for MapsIntentSignalFactory();
    v19 = swift_allocObject();

    *(v19 + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
    return v19;
  }

  v36 = v18;
  strcpy(v35, "genericintent");
  HIWORD(v35[1]) = -4864;
  v20 = StringProtocol.contains<A>(_:)();

  if (v20)
  {
    v21 = [v13 domain];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0x7261646E656C6143 && v24 == 0xE800000000000000)
    {

LABEL_36:

      type metadata accessor for CalendarEventSignalFactory();
      return swift_allocObject();
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_36;
    }

    return v37;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.engagement);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36._countAndFlagsBits = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v36._countAndFlagsBits);
    _os_log_impl(&dword_25ECEC000, v26, v27, "Intent object attached to the task with taskName (%s).", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F8CEE50](v29, -1, -1);
    MEMORY[0x25F8CEE50](v28, -1, -1);
  }

  return v37;
}

void *PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v54 = a4;
  v51 = a3;
  v7 = type metadata accessor for ReliabilityCategory();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(a1, a2);
  v11 = v10;
  v60.isa = MEMORY[0x277D84F90];
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  v13 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v22))
  {
    v52 = v13;
    v53 = v7;
    v7 = 0;
    v4 = v11 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v15 = MEMORY[0x25F8CE460](v7, v11);
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7 >= v12)
        {
          goto LABEL_25;
        }

        v15 = *(v11 + 8 * v7 + 32);
      }

      v16 = v15;
      v17 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if ([v15 starting])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v60.isa + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
    }

    while (v17 != i);
    v18 = 0;
    isa = v60.isa;
    v60.isa = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4)
      {
        v19 = MEMORY[0x25F8CE460](v18, v11);
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18 >= v12)
        {
          goto LABEL_27;
        }

        v19 = *(v11 + 8 * v18 + 32);
      }

      v20 = v19;
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ([v19 starting])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v60.isa + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v18;
      if (v7 == i)
      {
        v21 = v60.isa;
        v13 = v52;
        v7 = v53;
        goto LABEL_33;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v11 < 0)
    {
      v22 = v11;
    }

    else
    {
      v22 = v12;
    }
  }

  v21 = MEMORY[0x277D84F90];
  isa = MEMORY[0x277D84F90];
LABEL_33:
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.engagement);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    if (v13)
    {
      if (v11 < 0)
      {
        v31 = v11;
      }

      else
      {
        v31 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v27 = MEMORY[0x25F8CE500](v31);
    }

    else
    {
      v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 4) = v27;

    _os_log_impl(&dword_25ECEC000, v25, v26, "UISessions Count = %ld", v4, 0xCu);
    MEMORY[0x25F8CEE50](v4, -1, -1);

    if (!i)
    {
      goto LABEL_49;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!i)
    {
LABEL_49:

      return MEMORY[0x277D84F90];
    }
  }

  v28 = isa;
  if ((isa & 0x8000000000000000) == 0 && (isa & 0x4000000000000000) == 0)
  {
    if (*(isa + 16))
    {
      goto LABEL_42;
    }

LABEL_63:

    v39 = *MEMORY[0x277D61558];
    v40 = type metadata accessor for SiriUIEventDataIssues();
    v41 = v55;
    (*(*(v40 - 8) + 104))(v55, v39, v40);
    (*(v56 + 104))(v41, *MEMORY[0x277D61670], v7);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60.isa = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000025ED7F940, &v60);
      _os_log_impl(&dword_25ECEC000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x25F8CEE50](v45, -1, -1);
      MEMORY[0x25F8CEE50](v44, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v46 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v47 = v55;
    MEMORY[0x25F8CDB30](v55, v46, v48);

    (*(v56 + 8))(v47, v7);
    return MEMORY[0x277D84F90];
  }

  if (!MEMORY[0x25F8CE500](isa))
  {
    goto LABEL_63;
  }

LABEL_42:
  v60.isa = MEMORY[0x277D84F98];
  v29 = 0;
  specialized Sequence.forEach(_:)(v21, &v60);

  v59[0] = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v28, &v60, v59);

  v58 = v59[0];

  specialized MutableCollection<>.sort(by:)(&v58);

  v30 = v58;
  if ((v54 & 1) == 0)
  {
    if (v51 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = specialized Collection.prefix(_:)(v51, v58);
      v29 = v32;
      v26 = v33;
      v4 = v34;
      if ((v34 & 1) == 0)
      {

LABEL_53:
        specialized _copyCollectionToContiguousArray<A>(_:)(v24, v29, v26, v4);
        v36 = v35;

        goto LABEL_60;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();

      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        swift_unknownObjectRelease();
        v37 = MEMORY[0x277D84F90];
      }

      v38 = *(v37 + 16);

      if (!__OFSUB__(v4 >> 1, v26))
      {
        if (v38 == (v4 >> 1) - v26)
        {
          v36 = swift_dynamicCastClass();

          swift_unknownObjectRelease();
          if (v36)
          {
LABEL_61:

            return v36;
          }

          v36 = MEMORY[0x277D84F90];
LABEL_60:
          swift_unknownObjectRelease();
          goto LABEL_61;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_70:
    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  return v30;
}

uint64_t closure #3 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(id *a1, uint64_t a2)
{
  v55 = a2;
  v57 = type metadata accessor for ReliabilityCategory();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v57);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v54 = type metadata accessor for Date();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v54);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = *a1;
  v18 = [*a1 uuid];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    v53 = v20;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = [v17 absoluteTimestamp];
      if (v24)
      {
        v25 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = v11;
        v27 = *(v11 + 16);
        v28 = v54;
        v27(v10, v16, v54);
        (*(v26 + 56))(v10, 0, 1, v28);

        specialized Dictionary.subscript.setter(v10, v53, v22);
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.engagement);
        v30 = v56;
        v27(v56, v16, v28);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = v57;
          *v33 = 136315394;
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v22, &v58);

          *(v33 + 4) = v34;
          *(v33 + 12) = 2080;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          v38 = *(v26 + 8);
          v38(v30, v28);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v58);

          *(v33 + 14) = v39;
          _os_log_impl(&dword_25ECEC000, v31, v32, "UISessionEnd has %s, %s", v33, 0x16u);
          v40 = v57;
          swift_arrayDestroy();
          MEMORY[0x25F8CEE50](v40, -1, -1);
          MEMORY[0x25F8CEE50](v33, -1, -1);

          return (v38)(v16, v28);
        }

        else
        {

          v52 = *(v26 + 8);
          v52(v30, v28);
          return (v52)(v16, v28);
        }
      }
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.engagement);
  v43 = *MEMORY[0x277D61568];
  v44 = type metadata accessor for SiriUIEventDataIssues();
  (*(*(v44 - 8) + 104))(v6, v43, v44);
  v45 = v57;
  (*(v3 + 104))(v6, *MEMORY[0x277D61670], v57);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v48 = 136315138;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000025ED7FA50, &v58);
    _os_log_impl(&dword_25ECEC000, v46, v47, "%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x25F8CEE50](v49, -1, -1);
    MEMORY[0x25F8CEE50](v48, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v50 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v6, v50, v51);

  return (*(v3 + 8))(v6, v45);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v10))
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8CE460](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      closure #3 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(&v11, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    if (a1 < 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void specialized Sequence.forEach(_:)(uint64_t a1, NSObject *a2, size_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v11))
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F8CE460](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = v8;
      closure #4 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(&v13, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    if (a1 < 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

id closure #4 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(void **a1, NSObject *a2, size_t *a3)
{
  v109 = a2;
  v6 = type metadata accessor for SiriUISession(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v112 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = v100 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = v100 - v14;
  MEMORY[0x28223BE20](v13);
  v114 = v100 - v15;
  v16 = type metadata accessor for ReliabilityCategory();
  v113 = *(v16 - 8);
  v17 = *(v113 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v119 = *(v20 - 8);
  v21 = v119[8];
  v22 = MEMORY[0x28223BE20](v20);
  v110 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v116 = v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v115 = v100 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v100 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v118 = v100 - v32;
  MEMORY[0x28223BE20](v31);
  v117 = v100 - v33;
  v34 = *a1;
  result = [v34 uuid];
  if (result)
  {
    v105 = v16;
    v106 = v7;
    v36 = v20;
    v104 = a3;
    v37 = result;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = HIBYTE(v40) & 0xF;
    v107 = v38;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v41 && (v42 = [v34 absoluteTimestamp]) != 0)
    {
      v43 = v42;
      v101 = v6;
      v44 = v117;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v119[2];
      v46 = v36;
      v100[1] = v119 + 2;
      v103 = v45;
      v45(v118, v44, v36);
      isa = v109->isa;
      v48 = *(v109->isa + 2);
      v102 = v3;
      if (v48 && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v107, v40), (v50 & 1) != 0))
      {
        v51 = v119;
        v103(v30, *(isa + 7) + v119[9] * v49, v36);
        v52 = v118;
        (v51[1])(v118, v36);
        (v51[4])(v52, v30, v36);
        v53 = v101;
      }

      else
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.engagement);
        v55 = *MEMORY[0x277D61560];
        v56 = type metadata accessor for SiriUIEventDataIssues();
        (*(*(v56 - 8) + 104))(v19, v55, v56);
        v57 = v105;
        (*(v113 + 104))(v19, *MEMORY[0x277D61670], v105);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        v60 = os_log_type_enabled(v58, v59);
        v53 = v101;
        if (v60)
        {
          v61 = swift_slowAlloc();
          v109 = v58;
          v62 = v61;
          v63 = swift_slowAlloc();
          v120 = v63;
          *v62 = 136315138;
          *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000025ED7FA30, &v120);
          v64 = v59;
          v65 = v109;
          _os_log_impl(&dword_25ECEC000, v109, v64, "%s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v57 = v105;
          MEMORY[0x25F8CEE50](v63, -1, -1);
          MEMORY[0x25F8CEE50](v62, -1, -1);
        }

        else
        {
        }

        type metadata accessor for SiriTaskEngagementUtils();
        v66 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](v19, v66, v67);

        (*(v113 + 8))(v19, v57);
      }

      v68 = v103;
      v103(v115, v117, v46);
      v68(v116, v118, v46);
      v69 = v110;
      Date.addingTimeInterval(_:)();
      v70 = [v34 sessionID];
      if (v70)
      {
        v71 = v70;
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xE000000000000000;
      }

      v75 = v114;
      v76 = v119[4];
      v76(v114, v115, v46);
      v76((v75 + v53[5]), v116, v46);
      v76((v75 + v53[6]), v69, v46);
      v77 = (v75 + v53[7]);
      *v77 = v72;
      v77[1] = v74;
      v78 = (v75 + v53[8]);
      *v78 = v107;
      v78[1] = v40;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.engagement);
      v80 = v111;
      outlined init with copy of SiriUISession(v75, v111);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.info.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v104;
      v85 = v106;
      if (v83)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v120 = v87;
        *v86 = 136315138;
        outlined init with copy of SiriUISession(v80, v108);
        v88 = String.init<A>(describing:)();
        v90 = v89;
        outlined destroy of SiriUISession(v80, type metadata accessor for SiriUISession);
        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v120);
        v75 = v114;

        *(v86 + 4) = v91;
        _os_log_impl(&dword_25ECEC000, v81, v82, "UISession: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        v92 = v87;
        v85 = v106;
        MEMORY[0x25F8CEE50](v92, -1, -1);
        MEMORY[0x25F8CEE50](v86, -1, -1);
      }

      else
      {

        outlined destroy of SiriUISession(v80, type metadata accessor for SiriUISession);
      }

      v93 = v112;
      outlined init with copy of SiriUISession(v75, v112);
      v94 = *v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v84 = v94;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
        *v84 = v94;
      }

      v97 = v94[2];
      v96 = v94[3];
      if (v97 >= v96 >> 1)
      {
        *v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v94);
      }

      outlined destroy of SiriUISession(v75, type metadata accessor for SiriUISession);
      v98 = v119[1];
      v98(v118, v46);
      v98(v117, v46);
      v99 = *v84;
      v99[2] = v97 + 1;
      return outlined init with take of SiriUISession(v93, v99 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v97);
    }

    else
    {
    }
  }

  return result;
}