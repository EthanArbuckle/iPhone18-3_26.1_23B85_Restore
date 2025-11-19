void DemoWorkout.workoutRepresentation(startingDate:)(objc_class *a1)
{
  isa = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v111 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110 = &v91 - v6;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = v1[3];
  v10 = *(v1 + 32);
  v11 = *(v1 + 33);
  v97 = *(v1 + 5);
  LODWORD(v101) = *(v1 + 48);
  v12 = v1[7];
  v13 = *(v1 + 9);
  v98 = *(v1 + 8);
  v103 = v13;
  v14 = v1[10];
  v15 = *(v1 + 11);
  v104 = *(v1 + 12);
  v16 = v1[13];
  v17 = *(v1 + 15);
  v99 = *(v1 + 14);
  v105 = v17;
  v18 = v1[16];
  v19 = *(v1 + 136);
  v20 = v1[18];
  v21 = *(v1 + 152);
  v22 = v1[20];
  LODWORD(v100) = *(v1 + 168);
  v23 = *(v1 + 23);
  *&v109 = v1[22];
  v108 = v23;
  v107 = *(v1 + 24);
  v106 = *(v1 + 200);
  v24 = objc_opt_self();
  v25 = MEMORY[0x20F30BAD0](*&v7, v8);
  v26 = [v24 _workoutActivityTypeFromString_];

  if (!v26)
  {
    return;
  }

  v92 = v15;
  v93 = v3;
  v94 = v2;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v96 = v24;
  v95 = v26;
  if ((v19 & 1) == 0)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = [objc_opt_self() 0x1FBD71DE2];
    v38 = [objc_opt_self() quantityWithUnit:v37 doubleValue:v18];

    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantity);
    *&v114 = v38;
    outlined init with take of Any(&v114, v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v34, v36, isUniquelyReferenced_nonNull_native);

    v27 = v112;
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if ((v21 & 1) == 0)
  {
LABEL_4:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v31 = [objc_opt_self() _countPerMinuteUnit];
    v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:v20];

    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantity);
    *&v114 = v32;
    outlined init with take of Any(&v114, v113);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v28, v30, v33);

    v27 = v112;
  }

LABEL_7:
  if ((v100 & 1) == 0)
  {
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    v43 = [objc_opt_self() _countPerMinuteUnit];
    v44 = [objc_opt_self() quantityWithUnit:v43 doubleValue:v22];

    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantity);
    *&v114 = v44;
    outlined init with take of Any(&v114, v113);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v40, v42, v45);

    v27 = v112;
  }

  if (v10 != 2)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for NSNumber);
    *&v114 = v49;
    outlined init with take of Any(&v114, v113);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v46, v48, v50);

    v27 = v112;
  }

  if (v11 != 2)
  {
    if (v11)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for NSNumber);
    *&v114 = v55;
    outlined init with take of Any(&v114, v113);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v52, v54, v56);

    v27 = v112;
  }

  if ((v101 & 1) == 0)
  {
    v57 = [objc_opt_self() appleEffortScoreUnit];
    v58 = [objc_opt_self() quantityWithUnit:v57 doubleValue:v97];

    v116 = type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantity);
    *&v114 = v58;
    outlined init with take of Any(&v114, v113);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, 0xD00000000000001FLL, 0x800000020CB958C0, v59);
    v27 = v112;
  }

  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v101 = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKWorkoutEvent);
  v100 = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKWorkoutActivity);
  v97 = Array._bridgeToObjectiveC()().super.isa;
  if (v103)
  {
    v60 = MEMORY[0x20F30BAD0](v98);
    v61 = [objc_opt_self() unitFromString_];

    v103 = [objc_opt_self() quantityWithUnit:v61 doubleValue:v12];
  }

  else
  {
    v103 = 0;
  }

  v62 = v106;
  v63 = v106;
  if (v104)
  {
    v64 = MEMORY[0x20F30BAD0](v92);
    v65 = [objc_opt_self() unitFromString_];

    v66 = [objc_opt_self() quantityWithUnit:v65 doubleValue:v14];
  }

  else
  {
    v66 = 0;
  }

  if (v105)
  {
    v67 = MEMORY[0x20F30BAD0](v99);
    v68 = [objc_opt_self() unitFromString_];

    v69 = [objc_opt_self() quantityWithUnit:v68 doubleValue:v16];
  }

  else
  {
    v69 = 0;
  }

  v106 = v69;
  v70 = qword_20CB64A78[v62];
  *&v114 = v109;
  *(&v114 + 1) = v108;
  v115 = v107;
  LOBYTE(v116) = v63;
  v71 = DemoGoal.hkQuantity.getter();
  v72 = [objc_opt_self() localDevice];
  v73 = Dictionary._bridgeToObjectiveC()().super.isa;
  v90 = v70;
  v88 = v66;
  v89 = v69;
  v74 = isa;
  v75 = v66;
  v76 = v101;
  v77 = v100;
  v78 = v97;
  *&v109 = v27;
  v79 = v103;
  v80 = [v96 _workoutWithActivityType_startDate_endDate_workoutEvents_workoutActivities_duration_totalActiveEnergyBurned_totalBasalEnergyBurned_totalDistance_totalSwimmingStrokeCount_totalFlightsClimbed_goalType_goal_device_metadata_];

  if (v80)
  {

    [v80 _setIsWatchWorkout_];
    v81 = [objc_opt_self() _localDeviceSource];
    v82 = [objc_opt_self() processInfo];
    [v82 operatingSystemVersion];
    v109 = v114;
    v83 = v115;

    v84 = objc_allocWithZone(MEMORY[0x277CCDA18]);
    v114 = v109;
    v115 = v83;
    v85 = [v84 initWithSource:v81 version:0 productType:0 operatingSystemVersion:&v114];
    [v80 _setSourceRevision_];

    v86 = *(v93 + 8);
    v87 = v94;
    v86(v111, v94);
    v86(v110, v87);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DemoWorkout.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x726F6F646E497369;
      break;
    case 4:
      result = 0x77536C6F6F507369;
      break;
    case 5:
      result = 0x74726F666665;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7369446C61746F74;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      v3 = 1215195501;
      goto LABEL_14;
    case 11:
      v3 = 1215848813;
LABEL_14:
      result = v3 | 0x7472616500000000;
      break;
    case 12:
      result = 1818324839;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DemoScenarioProfile.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DemoScenarioProfile.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DemoWorkout.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DemoWorkout.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DemoWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DemoWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DemoWorkout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9WorkoutUI04DemoD0V10CodingKeys33_C19B4E499EA30484D27E51C92AC3E534LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v44 = *(v1 + 32);
  v38 = *(v1 + 33);
  v37 = *(v1 + 40);
  v36 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 80);
  v34 = *(v1 + 72);
  v35 = v7;
  v30 = v9;
  v10 = *(v1 + 96);
  v31 = *(v1 + 88);
  v32 = v10;
  v33 = v8;
  v11 = *(v1 + 112);
  v27 = *(v1 + 104);
  v28 = v11;
  v12 = *(v1 + 128);
  v29 = *(v1 + 120);
  v25 = v12;
  v26 = *(v1 + 136);
  v23 = *(v1 + 144);
  v24 = *(v1 + 152);
  v21 = *(v1 + 160);
  v22 = *(v1 + 168);
  v13 = *(v1 + 184);
  v17 = *(v1 + 176);
  v18 = v13;
  v19 = *(v1 + 192);
  v20 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v40) = 0;
  v14 = v39;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v35;
    LOBYTE(v40) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v40) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v39 = v4;
    LOBYTE(v40) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v40) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = v15;
    v41 = v33;
    v42 = v34;
    v45 = 6;
    lazy protocol witness table accessor for type DemoQuantity and conformance DemoQuantity();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v40 = v30;
    v41 = v31;
    v42 = v32;
    v45 = 7;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v40 = v27;
    v41 = v28;
    v42 = v29;
    v45 = 8;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v40) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v40) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v40) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v45 = 12;
    outlined copy of DemoGoal(v17, v18, v19, v20);
    lazy protocol witness table accessor for type DemoGoal and conformance DemoGoal();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of DemoGoal(v40, v41, v42, v43);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DemoWorkout.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9WorkoutUI04DemoD0V10CodingKeys33_C19B4E499EA30484D27E51C92AC3E534LLOGMd);
  v5 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  LOBYTE(v68) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = v10;
  LOBYTE(v68) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v68) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v68) = 3;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v68) = 4;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v68) = 5;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v112 = v15 & 1;
  LOBYTE(v56) = 6;
  v52 = lazy protocol witness table accessor for type DemoQuantity and conformance DemoQuantity();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48 = v69;
  v49 = v68;
  v50 = v70;
  LOBYTE(v56) = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = v69;
  v46 = v68;
  v47 = v70;
  LOBYTE(v56) = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = v69;
  v44 = v68;
  v52 = v70;
  LOBYTE(v68) = 9;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v110 = v17 & 1;
  LOBYTE(v68) = 10;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v108 = v18 & 1;
  LOBYTE(v68) = 11;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v19 & 1;
  v101 = 12;
  lazy protocol witness table accessor for type DemoGoal and conformance DemoGoal();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v115);
  v115 = v102;
  v39 = v103;
  v40 = *(&v102 + 1);
  v38 = v104;
  v20 = v55;
  *&v56 = v9;
  *(&v56 + 1) = v55;
  *&v57 = v12;
  *(&v57 + 1) = v14;
  v21 = v54;
  LOBYTE(v58) = v54;
  BYTE1(v58) = v53;
  *(&v58 + 1) = v51;
  v33 = v112;
  LOBYTE(v59) = v112;
  *(&v59 + 1) = v49;
  *&v60 = v48;
  *(&v60 + 1) = v50;
  *&v61 = v46;
  *(&v61 + 1) = v45;
  *&v62 = v47;
  *(&v62 + 1) = v44;
  *&v63 = v43;
  *(&v63 + 1) = v52;
  *&v64 = v16;
  v35 = v16;
  v34 = v110;
  BYTE8(v64) = v110;
  *&v65 = v42;
  v36 = v108;
  BYTE8(v65) = v108;
  *&v66 = v41;
  v37 = v106;
  BYTE8(v66) = v106;
  v67[0] = v102;
  *&v67[1] = v103;
  BYTE8(v67[1]) = v104;
  v22 = v56;
  v23 = v57;
  v24 = v59;
  a2[2] = v58;
  a2[3] = v24;
  *a2 = v22;
  a2[1] = v23;
  v25 = v60;
  v26 = v61;
  v27 = v63;
  a2[6] = v62;
  a2[7] = v27;
  a2[4] = v25;
  a2[5] = v26;
  v28 = v64;
  v29 = v65;
  *(a2 + 185) = *(v67 + 9);
  v30 = v67[0];
  a2[10] = v66;
  a2[11] = v30;
  a2[8] = v28;
  a2[9] = v29;
  outlined init with copy of DemoWorkout(&v56, &v68);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v68 = v9;
  v69 = v20;
  v70 = v12;
  v71 = v14;
  v72 = v21;
  v73 = v53;
  v74 = v113;
  v75 = v114;
  v76 = v51;
  v77 = v33;
  *v78 = *v111;
  *&v78[3] = *&v111[3];
  v79 = v49;
  v80 = v48;
  v81 = v50;
  v82 = v46;
  v83 = v45;
  v84 = v47;
  v85 = v44;
  v86 = v43;
  v87 = v52;
  v88 = v35;
  v89 = v34;
  *v90 = *v109;
  *&v90[3] = *&v109[3];
  v91 = v42;
  v92 = v36;
  *v93 = *v107;
  *&v93[3] = *&v107[3];
  v94 = v41;
  v95 = v37;
  *v96 = *v105;
  *&v96[3] = *&v105[3];
  v97 = v115;
  v98 = v40;
  v99 = v39;
  v100 = v38;
  return outlined destroy of DemoWorkout(&v68);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI16ActivityProtocol_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI16ActivityProtocol_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9CGPathRefa_So07CGColorE0atGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CGPathRefa_So07CGColorB0atMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9WorkoutUI15EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_SitGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySNySiGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMd);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelV10ChartPointVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelV10ChartPointVGMR, type metadata accessor for TrainingLoadViewModel.ChartPoint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore18AppleExertionScaleOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18AppleExertionScaleOGMR, MEMORY[0x277D7E2A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMR, MEMORY[0x277D0A278]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10AppIntents15RelevantContextVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents15RelevantContextVGMR, MEMORY[0x277CDB698]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss23_ContiguousArrayStorageCy13HealthBalance28TrainingLoadSampleDaySummaryVGMR, MEMORY[0x277D10028]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMR, type metadata accessor for TrainingLoadViewModel);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMR, MEMORY[0x277D7E438]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR, MEMORY[0x277D7D9E0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVGMd, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVGMR, MEMORY[0x277D504F8]);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v41 = *(a1 + 16);
  if (!v41)
  {
    goto LABEL_24;
  }

  v42 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_24;
  }

  v40 = v3;
  v8 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a2 & 1);
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_30:
    _StringGuts.grow(_:)(30);
    MEMORY[0x20F30BC00](0xD00000000000001BLL, 0x800000020CB94310);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = v15;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_13:
  v19 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v20 = (v19[6] + 16 * v10);
  *v20 = v6;
  v20[1] = v7;
  *(v19[7] + 16 * v10) = v42;
  v21 = v19[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19[2] = v23;
  if (v41 != 1)
  {
    v24 = (v3 + 80);
    v25 = 1;
    while (v25 < *(v3 + 16))
    {
      v43 = *v24;
      v27 = *(v24 - 2);
      v26 = *(v24 - 1);

      if (!v26)
      {
        goto LABEL_24;
      }

      v28 = *a3;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v22 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v22)
      {
        goto LABEL_26;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_29;
        }
      }

      if (v34)
      {
        goto LABEL_10;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v27;
      v37[1] = v26;
      *(v36[7] + 16 * v29) = v43;
      v38 = v36[2];
      v22 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v22)
      {
        goto LABEL_27;
      }

      ++v25;
      v36[2] = v39;
      v24 += 2;
      v3 = v40;
      if (v41 == v25)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
}

unint64_t lazy protocol witness table accessor for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoScenarioProfile.CodingKeys and conformance DemoScenarioProfile.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues()
{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues and conformance DemoTrainingLoadValues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoWorkout and conformance DemoWorkout()
{
  result = lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout;
  if (!lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout;
  if (!lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout and conformance DemoWorkout);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DemoWorkout] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI04DemoA0VGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI04DemoA0VGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoTrainingLoadValues.CodingKeys and conformance DemoTrainingLoadValues.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity.CodingKeys and conformance DemoQuantity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.CodingKeys and conformance DemoGoal.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.EnergyCodingKeys and conformance DemoGoal.EnergyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoQuantity and conformance DemoQuantity()
{
  result = lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity;
  if (!lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity;
  if (!lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoQuantity and conformance DemoQuantity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.TimeCodingKeys and conformance DemoGoal.TimeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.DistanceCodingKeys and conformance DemoGoal.DistanceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys;
  if (!lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal.OpenCodingKeys and conformance DemoGoal.OpenCodingKeys);
  }

  return result;
}

uint64_t outlined copy of DemoGoal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t outlined init with copy of Measurement<NSUnitEnergy>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Measurement<NSUnitEnergy>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for HKQuantityType(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoWorkout.CodingKeys and conformance DemoWorkout.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoGoal and conformance DemoGoal()
{
  result = lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal;
  if (!lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal;
  if (!lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoGoal and conformance DemoGoal);
  }

  return result;
}

uint64_t outlined consume of DemoGoal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoScenarioProfile(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DemoScenarioProfile(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoTrainingLoadValues(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DemoTrainingLoadValues(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DemoQuantity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DemoQuantity(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_9WorkoutUI8DemoGoalO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t getEnumTagSinglePayload for DemoGoal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DemoGoal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DemoGoal(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DemoWorkout(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t storeEnumTagSinglePayload for DemoWorkout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoWorkout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DemoWorkout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DemoGoal.DistanceCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DemoGoal.DistanceCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DemoQuantity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DemoQuantity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DemoGoal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DemoGoal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized DemoScenarioProfile.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61567961446C6C61 && a2 == 0xEC0000007365756CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020CB958E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020CB95900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374756F6B726F77 && a2 == 0xE800000000000000)
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

uint64_t specialized DemoGoal.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000)
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

uint64_t specialized DemoWorkout.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020CB95920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x77536C6F6F507369 && a2 == 0xEA00000000006D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74726F666665 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020CB95940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020CB95960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7369446C61746F74 && a2 == 0xED000065636E6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020CB95980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74726165486E696DLL && a2 == 0xEC00000065746152 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x747261654878616DLL && a2 == 0xEC00000065746152 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t EffortMiniGraph.init(effort:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EffortMiniGraph();
  *(a2 + *(v4 + 24)) = &outlined read-only object #0 of EffortMiniGraph.init(effort:);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(a1, a2, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v5 = specialized static EffortMiniGraph.generateFillSections(effort:zoneSections:)(a1, &outlined read-only object #0 of EffortMiniGraph.init(effort:));
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(a1, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  *(a2 + *(v4 + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for EffortMiniGraph()
{
  result = type metadata singleton initialization cache for EffortMiniGraph;
  if (!type metadata singleton initialization cache for EffortMiniGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EffortMiniGraph.ZoneSection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EffortMiniGraph.ZoneSection()
{
  v1 = v0[1];
  MEMORY[0x20F30CD90](*v0);
  return MEMORY[0x20F30CD90](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EffortMiniGraph.ZoneSection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t EffortMiniGraph.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EffortMiniGraph();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of EffortMiniGraph(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of EffortMiniGraph(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = partial apply for closure #1 in EffortMiniGraph.body.getter;
  a1[1] = v7;
  return result;
}

uint64_t closure #1 in EffortMiniGraph.body.getter@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  GeometryProxy.size.getter();
  v7 = v6;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA6ZStackVyAIyAA15ModifiedContentVyAA0F0VyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAyOyAT14RightTrapezoidVAA06_FrameG0VGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AQyASyAzyOyA3_A10_GGGSgtGGtGGMd);
  return closure #1 in closure #1 in EffortMiniGraph.body.getter(a1, a2 + *(v8 + 44), 2.0, v5, v7, 2.0);
}

uint64_t closure #1 in closure #1 in EffortMiniGraph.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAqGyAL14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAKyArqGyAWA2_GGGSgtGGMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - v16);
  *v17 = static Alignment.bottomLeading.getter();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAuKyAP14RightTrapezoidVAA06_FrameG0VGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AMyAOyAvuKyA_A6_GGGSgtGGMd);
  closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter(a1, v17 + *(v19 + 44), a3, a4, a5, a6);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v17, v14, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAqGyAL14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAKyArqGyAWA2_GGGSgtGGMd);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAsIyAN14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAMyAtsIyAYA4_GGGSgtGGtMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v14, a2 + *(v20 + 48), &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAqGyAL14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAKyArqGyAWA2_GGGSgtGGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v17, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAqGyAL14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAKyArqGyAWA2_GGGSgtGGMd);
  return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v14, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAqGyAL14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAKyArqGyAWA2_GGGSgtGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v63 = a1;
  v74 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = (&v57 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v57 - v14;
  v15 = type metadata accessor for AppleExertionScale();
  v16 = *(v15 - 8);
  v66 = v15;
  v67 = v16;
  MEMORY[0x28223BE20](v15);
  v59 = v17;
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v68 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v71 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v70 = &v57 - v23;
  KeyPath = type metadata accessor for Color.RGBColorSpace();
  v24 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v69 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v57 - v31);
  *v32 = static VerticalAlignment.center.getter();
  v32[1] = a3;
  *(v32 + 16) = 0;
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAoA15ModifiedContentVyAJ14RightTrapezoidVAA06_FrameG0VGGGMd) + 44);
  v58 = type metadata accessor for EffortMiniGraph();
  v75 = *(a1 + *(v58 + 24));
  swift_getKeyPath();
  v33 = swift_allocObject();
  v33[2] = a4;
  v33[3] = a5;
  v33[4] = a6;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI15EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGMd);
  v35 = lazy protocol witness table accessor for type GeometryReader<HStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<RightTrapezoid, _FrameLayout>>>, _ForegroundStyleModifier<Color>>, HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>>>>?)>>)>>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type [EffortMiniGraph.ZoneSection] and conformance [A], &_sSay9WorkoutUI15EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGMd);
  v36 = lazy protocol witness table accessor for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection();
  lazy protocol witness table accessor for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v62 = v34;
  v37 = v65;
  v57 = v35;
  ForEach<>.init(_:id:content:)();
  (*(v24 + 104))(v26, *MEMORY[0x277CE0EE0], KeyPath);
  v38 = v63;
  v39 = Color.init(_:red:green:blue:opacity:)();
  v40 = *(v28 + 44);
  v41 = v66;
  *(v32 + v40) = v39;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v38, v37, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v42 = v67;
  if ((*(v67 + 48))(v37, 1, v41) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v37, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v43 = v70;
    (*(v72 + 56))(v70, 1, 1, v73);
  }

  else
  {
    v44 = *(v42 + 32);
    v45 = v68;
    v44(v68, v37, v41);
    v46 = static VerticalAlignment.center.getter();
    v47 = v61;
    *v61 = v46;
    *(v47 + 8) = a3;
    *(v47 + 16) = 0;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAoA15ModifiedContentVyARyAJ14RightTrapezoidVAA06_FrameG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd) + 44);
    v75 = *(v38 + *(v58 + 20));
    KeyPath = swift_getKeyPath();
    v48 = v60;
    (*(v42 + 16))(v60, v45, v41);
    v49 = *(v42 + 80);
    v63 = v36;
    v50 = (v49 + 40) & ~v49;
    v51 = swift_allocObject();
    v51[2] = a4;
    v51[3] = a5;
    v51[4] = a6;
    v44(v51 + v50, v48, v41);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    v43 = v70;
    outlined init with take of HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>>>>(v47, v70);
    (*(v72 + 56))(v43, 0, 1, v73);
    (*(v42 + 8))(v68, v41);
  }

  v52 = v69;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v32, v69, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v53 = v71;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v43, v71, &_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGSgMd);
  v54 = v74;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v52, v74, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEyAGyAnmCyAsZGGGSgtMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(v53, v54 + *(v55 + 48), &_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGSgMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v43, &_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGSgMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v32, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v53, &_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGSgMd);
  return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v52, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAmCyAH14RightTrapezoidVAA12_FrameLayoutVGGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = EffortGraphLayout.horizontalUnitDistance(level:)(*a1);
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = a5;
  v12 = EffortGraphLayout.horizontalUnitDistance(level:)(v10);
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
  }

  else if (!__OFADD__(v10 - v9, 1))
  {
    v13 = (a3 + a5 * -3.0) / 10.0;
    v14 = v13 * 0.5;
    v15 = v13 / a4;
    v16 = 1.0 - v13 / a4;
    v17 = v13 / a4 + v16 * v12;
    v18 = v15 + v16 * v11;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v14;
    *(a2 + 24) = v19;
    *(a2 + 40) = v20;
    *(a2 + 56) = v21;
    return;
  }

  __break(1u);
}

void closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = a1[1];
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v17 = EffortGraphLayout.horizontalUnitDistance(level:)(v15);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v18 = EffortGraphLayout.horizontalUnitDistance(level:)(v16);
  if (__OFSUB__(v16, v15))
  {
    __break(1u);
  }

  else if (!__OFADD__(v16 - v15, 1))
  {
    v19 = (a4 + a6 * -3.0) / 10.0;
    v20 = v19 * 0.5;
    v21 = v19 / a5;
    v22 = 1.0 - v19 / a5;
    v23 = v19 / a5 + v22 * v18;
    v24 = v21 + v22 * v17;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v25 = type metadata accessor for AppleExertionScale();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v14, a2, v25);
    (*(v26 + 56))(v14, 0, 1, v25);
    v27 = specialized static EffortColors.textColor(exertion:)(v14);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v14, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    *a3 = v24;
    *(a3 + 8) = v23;
    *(a3 + 16) = v20;
    v28 = v34;
    *(a3 + 24) = v33;
    *(a3 + 40) = v28;
    *(a3 + 56) = v35;
    *(a3 + 72) = v27;
    return;
  }

  __break(1u);
}

uint64_t protocol witness for View.body.getter in conformance EffortMiniGraph@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of EffortMiniGraph(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of EffortMiniGraph(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = closure #1 in EffortMiniGraph.body.getterpartial apply;
  a2[1] = v7;
  return result;
}

char *specialized static EffortMiniGraph.generateFillSections(effort:zoneSections:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExertionValue();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(a1, &v26 - v9, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v11 = type metadata accessor for AppleExertionScale();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(v10, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    return MEMORY[0x277D84F90];
  }

  AppleExertionScale.exertionValue.getter();
  (*(v12 + 8))(v10, v11);
  v13 = ExertionValue.level.getter();
  (*(v5 + 8))(v7, v4);
  v14 = *(a2 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a2 + 40);
  v16 = MEMORY[0x277D84F90];
  do
  {
    v19 = *(v15 - 1);
    if (v13 >= v19)
    {
      v17 = *v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v17 >= v13)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v24 = *(v16 + 3);
        v23 = v22 + 1;
        if (v22 >= v24 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v22 + 1, 1, v16);
        }

        v17 = v13;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
        }
      }

      *(v16 + 2) = v23;
      v18 = &v16[16 * v22];
      *(v18 + 4) = v19;
      *(v18 + 5) = v17;
    }

    v15 += 2;
    --v14;
  }

  while (v14);
  return v16;
}

uint64_t outlined init with copy of EffortMiniGraph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortMiniGraph();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of EffortMiniGraph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortMiniGraph();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for EffortMiniGraph()
{
  type metadata accessor for AppleExertionScale?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [EffortMiniGraph.ZoneSection]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AppleExertionScale?()
{
  if (!lazy cache variable for type metadata for AppleExertionScale?)
  {
    type metadata accessor for AppleExertionScale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppleExertionScale?);
    }
  }
}

void type metadata accessor for [EffortMiniGraph.ZoneSection]()
{
  if (!lazy cache variable for type metadata for [EffortMiniGraph.ZoneSection])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [EffortMiniGraph.ZoneSection]);
    }
  }
}

uint64_t getEnumTagSinglePayload for EffortMiniGraph.ZoneSection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EffortMiniGraph.ZoneSection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection()
{
  result = lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection;
  if (!lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection;
  if (!lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortMiniGraph.ZoneSection and conformance EffortMiniGraph.ZoneSection);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{
  v1 = *(type metadata accessor for EffortMiniGraph() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for AppleExertionScale();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EffortMiniGraph.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EffortMiniGraph() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in EffortMiniGraph.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid()
{
  result = lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid;
  if (!lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid;
  if (!lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid;
  if (!lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RightTrapezoid and conformance RightTrapezoid);
  }

  return result;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void partial apply for closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppleExertionScale() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortMiniGraph.body.getter(a1, v9, a2, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GeometryReader<HStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<RightTrapezoid, _FrameLayout>>>, _ForegroundStyleModifier<Color>>, HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>>>>?)>>)>>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeometryReader<HStack<TupleView<(Spacer, ZStack<TupleView<(ModifiedContent<HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<RightTrapezoid, _FrameLayout>>>, _ForegroundStyleModifier<Color>>, HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>>>>?)>>)>>> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of HStack<ForEach<[EffortMiniGraph.ZoneSection], EffortMiniGraph.ZoneSection, ModifiedContent<ModifiedContent<RightTrapezoid, _FrameLayout>, _ForegroundStyleModifier<Color>>>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay07WorkoutB015EffortMiniGraphV11ZoneSection33_30B6AFB1A3081E36B3BD33F7949E3DDALLVGAkA15ModifiedContentVyANyAF14RightTrapezoidVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TipKitViewWorkoutDetailTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307ED0](1, v10);
  v13 = MEMORY[0x277CE1A00];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

unint64_t lazy protocol witness table accessor for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip()
{
  result = lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip;
  if (!lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip;
  if (!lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip);
  }

  return result;
}

uint64_t protocol witness for Tip.options.getter in conformance TipKitViewWorkoutDetailTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307ED0](1, v10);
  v13 = MEMORY[0x277CE1A00];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t getEnumTagSinglePayload for TipKitViewWorkoutDetailTip(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TipKitViewWorkoutDetailTip(_WORD *result, int a2, int a3)
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

uint64_t static TipKitHelper.configure()()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v14 = *(v0 - 8);
  v15 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v12 = *(v3 - 8);
  v13 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_20CB5EA80;
  static Tips.ConfigurationOption.DisplayFrequency.system.getter();
  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v7 + 8))(v9, v6);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v12 + 8))(v5, v13);
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v14 + 8))(v2, v15);
  static Tips.configure(_:)();
}

uint64_t static TipKitHelper.sendWorkoutStartedTipEvent(for:)(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (((1 << a1) & 0x19) != 0)
  {

    return specialized static TipKitHelper.sendEvent(identifier:activityType:)(0xD00000000000002BLL, 0x800000020CB95A20);
  }

  else
  {
    static WOLog.tips.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v11 = NLWorkoutExperienceTypeDescription();
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v20[1] = v13;
      v20[2] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v16 = Optional.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

      *(v9 + 4) = v19;
      _os_log_impl(&dword_20C66F000, v7, v8, "Sending discoverability signal event is not supported for workoutExperienceType=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v10);
      MEMORY[0x20F30E080](v10, -1, -1);
      MEMORY[0x20F30E080](v9, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t static TipKitHelper.tipWithDesiredOutcomeMatchingIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a1 == 0xD000000000000036 && 0x800000020CB95A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = &type metadata for TipKitViewWorkoutDetailTip;
    v7 = lazy protocol witness table accessor for type TipKitViewWorkoutDetailTip and conformance TipKitViewWorkoutDetailTip();
LABEL_5:
    v8 = v7;
    result = outlined destroy of Tip?(a3);
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    return result;
  }

  if (a1 == 0xD000000000000036 && 0x800000020CB95AA0 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v6 = &type metadata for TipKitEditWorkoutTip;
    v7 = lazy protocol witness table accessor for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #1 in static TipKitHelper.sendEvent(identifier:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static TipKitHelper.sendEvent(identifier:activityType:), 0, 0);
}

uint64_t closure #1 in static TipKitHelper.sendEvent(identifier:activityType:)()
{

  Tips.Event.init<>(id:)();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in static TipKitHelper.sendEvent(identifier:activityType:);

  return MEMORY[0x282134AA8]();
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](closure #1 in static TipKitHelper.sendEvent(identifier:activityType:), 0, 0);
}

{
  v16 = v0;
  static WOLog.tips.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[5];
    v3 = v0[6];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
    _os_log_impl(&dword_20C66F000, v1, v2, "Sent discoverability signal event=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

id TipKitHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipKitHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipKitHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipKitHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipKitHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TipKitHelper.sendEvent(identifier:activityType:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Tips.InvalidationReason();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipKitHelper.tipWithDesiredOutcomeMatchingIdentifier(_:)(a1, a2, &v28);
  if (v29)
  {
    outlined init with take of Tip(&v28, v30);
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    (*(v12 + 104))(v14, *MEMORY[0x277CE1A08], v11);
    Tip.invalidate(reason:)();
    (*(v12 + 8))(v14, v11);
    static WOLog.tips.getter();
    outlined init with copy of Tip(v30, &v28);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      v19 = dispatch thunk of Tip.id.getter();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v28);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20C66F000, v15, v16, "Desired outcome performed for tip %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v18);
      MEMORY[0x20F30E080](v18, -1, -1);
      MEMORY[0x20F30E080](v17, -1, -1);

      (*(v8 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v28);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm_0(v30);
  }

  else
  {
    outlined destroy of Tip?(&v28);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = a1;
    v24[5] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in static TipKitHelper.sendEvent(identifier:activityType:), v24);
  }
}

uint64_t outlined destroy of Tip?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in static TipKitHelper.sendEvent(identifier:activityType:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static TipKitHelper.sendEvent(identifier:activityType:);

  return closure #1 in static TipKitHelper.sendEvent(identifier:activityType:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in static TipKitHelper.sendEvent(identifier:activityType:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with take of Tip(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of Tip(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip()
{
  result = lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip;
  if (!lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip;
  if (!lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitEditWorkoutTip and conformance TipKitEditWorkoutTip);
  }

  return result;
}

uint64_t static WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t WorkoutOnboardingCoordinator.OnboardingState.showWorkoutVoiceToggle.getter()
{
  v1 = *v0;
  if (v1 > 0xFD)
  {
    return 0;
  }

  if (v1 >> 6 == 1)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v1 >> 6)
  {
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

BOOL static WorkoutOnboardingCoordinator.OnboardingState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      return (v3 & 0xC0) == 0x40 && ((v3 ^ v2) & 1) == 0;
    }

    else
    {
      return v3 == 128;
    }
  }

  else
  {
    return v3 <= 0x3F && ((v3 ^ v2) & 1) == 0;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutOnboardingCoordinator.OnboardingState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      return v3 == 128;
    }

    if ((v3 & 0xC0) != 0x40)
    {
      return 0;
    }
  }

  else if (v3 > 0x3F)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t key path getter for WorkoutOnboardingCoordinator.state : WorkoutOnboardingCoordinator@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for WorkoutOnboardingCoordinator.state : WorkoutOnboardingCoordinator()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutOnboardingCoordinator.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WorkoutOnboardingCoordinator.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*WorkoutOnboardingCoordinator.state.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutOnboardingCoordinator.state.modify;
}

void WorkoutOnboardingCoordinator.state.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for WorkoutOnboardingCoordinator.$state : WorkoutOnboardingCoordinator()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutOnboardingCoordinator.$state : WorkoutOnboardingCoordinator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI0D21OnboardingCoordinatorC0F5StateO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t WorkoutOnboardingCoordinator.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutOnboardingCoordinator.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI0D21OnboardingCoordinatorC0F5StateO_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WorkoutOnboardingCoordinator.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI0D21OnboardingCoordinatorC0F5StateO_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutOnboardingCoordinator.$state.modify;
}

void WorkoutOnboardingCoordinator.$state.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t WorkoutOnboardingCoordinator.__allocating_init(workoutVoiceAvailabilityProvider:)(void *a1)
{
  swift_allocObject();
  v2 = specialized WorkoutOnboardingCoordinator.init(workoutVoiceAvailabilityProvider:)(a1);

  return v2;
}

uint64_t WorkoutOnboardingCoordinator.init(workoutVoiceAvailabilityProvider:)(void *a1)
{
  v2 = specialized WorkoutOnboardingCoordinator.init(workoutVoiceAvailabilityProvider:)(a1);

  return v2;
}

uint64_t WorkoutOnboardingCoordinator.determineOnboardingState()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x20F30BAD0](0xD000000000000024, 0x800000020CB95AE0);
  v8 = [v6 BOOLForKey_];

  v9 = FIHasSeenWorkoutVoiceOnboarding();
  v10 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();
  v11 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v10);
  v34 = v8;
  v32 = v9;
  if ((v8 & 1) == 0)
  {
    v12 = *(v1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutPlatterRedesignFeatureFlagEnabled);
    if (v9 & 1 | ((v11 & 1) == 0))
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = 0;
  v13 = 0;
  if (!(v9 & 1 | ((v11 & 1) == 0)))
  {
LABEL_6:
    v13 = *(v1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutVoiceFeatureFlagEnabled);
  }

LABEL_7:
  v14 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();
  v33 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v14);
  static WOLog.workoutVoice.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v13;
    v20 = v19;
    v35 = v19;
    *v18 = 136315906;
    v21 = _typeName(_:qualified:)();
    v29 = v2;
    v23 = v3;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v32;
    *(v18 + 18) = 1024;
    *(v18 + 20) = v34;
    *(v18 + 24) = 1024;
    *(v18 + 26) = v11 & 1;
    _os_log_impl(&dword_20C66F000, v15, v16, "%s Determining onboarding state. hasSeenWorkoutVoiceOnboarding: %{BOOL}d, hasSeenNewNavigationOnboarding: %{BOOL}d, isWorkoutVoiceSupported: %{BOOL}d", v18, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v20);
    v25 = v20;
    v13 = v30;
    MEMORY[0x20F30E080](v25, -1, -1);
    v26 = v18;
    LOBYTE(v18) = v31;
    MEMORY[0x20F30E080](v26, -1, -1);

    (*(v23 + 8))(v5, v29);
    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    if ((v12 & 1) == 0)
    {
LABEL_9:
      if (v13)
      {
        v38 = v33 & 1;
        v27 = &v38;
      }

      else
      {
        v39 = -2;
        v27 = &v39;
      }

      return WorkoutOnboardingCoordinator.updateOnboardingState(state:)(v27);
    }
  }

  if (v13)
  {
    v36 = v33 & 1 | 0x40;
    v27 = &v36;
  }

  else
  {
    v37 = 0x80;
    v27 = &v37;
  }

  return WorkoutOnboardingCoordinator.updateOnboardingState(state:)(v27);
}

uint64_t WorkoutOnboardingCoordinator.updateOnboardingState(state:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v6) = *a1;
  static WOLog.workoutVoice.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v6;
    v6 = v9;
    v10 = swift_slowAlloc();
    v22 = v10;
    *v6 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    v21 = v20;
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_20C66F000, v7, v8, "%s Updating workout state to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v10, -1, -1);
    v17 = v6;
    LOBYTE(v6) = v20;
    MEMORY[0x20F30E080](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v6;

  return static Published.subscript.setter();
}

Swift::Void __swiftcall WorkoutOnboardingCoordinator.enableWorkoutVoiceForAllActivityTypes()()
{
  v0 = [objc_opt_self() allActivityTypes];
  type metadata accessor for FIWorkoutActivityType();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F30C990](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 supportsWorkoutVoiceMotivation])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  isa = Array._bridgeToObjectiveC()().super.isa;

  FISetWorkoutVoiceIsEnabledForActivityTypes();
}

Swift::Void __swiftcall WorkoutOnboardingCoordinator.finishOnboarding(didEnable:selectedVoiceIndex:)(Swift::Bool didEnable, Swift::Int_optional selectedVoiceIndex)
{
  v59 = didEnable;
  v60 = *&selectedVoiceIndex.is_nil;
  value = selectedVoiceIndex.value;
  v3 = *v2;
  v4 = type metadata accessor for Logger();
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v65 = &v56[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v56[-v10];
  v12 = objc_opt_self();
  v63 = "-workout-views-visited";
  v13 = MEMORY[0x20F30BAD0](0xD000000000000024, 0x800000020CB95AE0);
  v62 = v12;
  [v12 fu:1 backupAndSetBool:v13 forKey:?];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v3;
  if (LOBYTE(aBlock[0]) - 254 >= 2 && LOBYTE(aBlock[0]) != 128)
  {
    v58 = v6;
    static WOLog.workoutVoice.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20C66F000, v14, v15, "%s Setting hasSeenWorkoutVoiceOnboarding to true.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v17);
      MEMORY[0x20F30E080](v17, -1, -1);
      MEMORY[0x20F30E080](v16, -1, -1);
    }

    (*(v66 + 8))(v11, v4);
    FISetHasSeenWorkoutVoiceOnboarding();
    v6 = v58;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LODWORD(v58) = SLOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v65;
  if (LOBYTE(aBlock[0]) > 0xFDu || LOBYTE(aBlock[0]) >> 6 > 1u)
  {
    v57 = 0;
  }

  else
  {
    v57 = LOBYTE(aBlock[0]);
  }

  static WOLog.workoutVoice.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = v6;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);

    *(v24 + 4) = v29;
    v6 = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = FIHasSeenWorkoutVoiceOnboarding();
    _os_log_impl(&dword_20C66F000, v22, v23, "%s hasSeenWorkoutVoiceOnboarding: %{BOOL}d.", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v25);
    MEMORY[0x20F30E080](v25, -1, -1);
    MEMORY[0x20F30E080](v24, -1, -1);

    v30 = *(v66 + 8);
    v30(v65, v4);
  }

  else
  {

    v30 = *(v66 + 8);
    v30(v21, v4);
  }

  static WOLog.workoutVoice.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315394;
    v35 = _typeName(_:qualified:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);
    v65 = v4;
    v38 = v37;

    *(v33 + 4) = v38;
    *(v33 + 12) = 1024;
    v39 = [v62 standardUserDefaults];
    v40 = MEMORY[0x20F30BAD0](0xD000000000000024, v63 | 0x8000000000000000);
    v41 = v6;
    v42 = [v39 BOOLForKey_];

    *(v33 + 14) = v42;
    _os_log_impl(&dword_20C66F000, v31, v32, "%s hasCompletedWorkoutOnboardingOnWatchKey: %{BOOL}d.", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v34);
    MEMORY[0x20F30E080](v34, -1, -1);
    MEMORY[0x20F30E080](v33, -1, -1);

    v43 = v65;
    v44 = v41;
  }

  else
  {

    v44 = v6;
    v43 = v4;
  }

  v30(v44, v43);
  LOBYTE(aBlock[0]) = -2;
  WorkoutOnboardingCoordinator.updateOnboardingState(state:)(aBlock);
  v45 = [objc_opt_self() sharedConnection];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 isHealthDataSubmissionAllowed];

    if (v47)
    {
      v48 = v57 & 1;
      v49 = (v58 & 0x80) == 0;
      v50 = v59;
      v51 = MEMORY[0x20F30BAD0](0xD000000000000033, 0x800000020CB94270);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = v50;
      *(v52 + 25) = v49;
      *(v52 + 26) = v48;
      v53 = value;
      *(v52 + 32) = value;
      v54 = v60 & 1;
      *(v52 + 40) = v60 & 1;
      *(v52 + 48) = v53;
      *(v52 + 56) = v54;
      aBlock[4] = _s9WorkoutUI0A24OnboardingAnalyticsEventV04senddE033_33BBD532864AE50CBDA4CF2D5EA9A1C79didEnable18selectedVoiceIndexySb_SiSgtFSDySSSo8NSObjectCGSgycfU_TA_0;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      aBlock[3] = &block_descriptor_8;
      v55 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v55);
    }
  }
}

uint64_t WorkoutOnboardingCoordinator.observerWorkoutVoiceAvailability()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA18PassthroughSubjectCy11WorkoutCore0G25VoiceAvailabilityProviderC5StateOs5NeverOGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v11[1] = WorkoutVoiceAvailabilityProvider.availabilityStatePublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd);
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State();
  Publisher<>.removeDuplicates()();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA18PassthroughSubjectCy11WorkoutCore0G25VoiceAvailabilityProviderC5StateOs5NeverOGGMd);
  v9 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  *(v1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutVoiceAvailabilityCancellable) = v9;
}

uint64_t closure #1 in WorkoutOnboardingCoordinator.observerWorkoutVoiceAvailability()(unint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static WOLog.workoutVoice.getter();
    outlined copy of WorkoutVoiceAvailabilityProvider.State(v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v20 = v2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = WorkoutVoiceAvailabilityProvider.State.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_20C66F000, v8, v9, "%s Availability state changed to: %s, calling determineOnboardingState.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v12, -1, -1);
      MEMORY[0x20F30E080](v11, -1, -1);

      (*(v3 + 8))(v5, v20);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    WorkoutOnboardingCoordinator.determineOnboardingState()();
  }

  return result;
}

uint64_t WorkoutOnboardingCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WorkoutOnboardingCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutOnboardingCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutOnboardingCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized WorkoutOnboardingCoordinator.init(workoutVoiceAvailabilityProvider:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI0C21OnboardingCoordinatorC0E5StateOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-1] - v5;
  v7 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator__state;
  LOBYTE(v17[0]) = -2;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutVoiceAvailabilityCancellable) = 0;
  v8 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutPlatterRedesignFeatureFlagEnabled;
  v9 = type metadata accessor for WorkoutFeatures();
  v18 = v9;
  v19 = _s11WorkoutCore0A8FeaturesOAC12FeatureFlags0dE3KeyAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DD88], v9);
  LOBYTE(v9) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm_1(v17);
  *(v1 + v8) = v9 & 1;
  v11 = OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutVoiceFeatureFlagEnabled;
  v12 = type metadata accessor for FitnessIntelligenceFeatures();
  v18 = v12;
  v19 = _s11WorkoutCore0A8FeaturesOAC12FeatureFlags0dE3KeyAAWlTm_0(&lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures, MEMORY[0x277D09F50]);
  v13 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D09F48], v12);
  LOBYTE(v12) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm_1(v17);
  *(v1 + v11) = v12 & 1;
  *(v1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutOnboardingCoordinator_workoutVoiceAvailabilityProvider) = a1;
  v14 = a1;
  WorkoutOnboardingCoordinator.determineOnboardingState()();
  WorkoutOnboardingCoordinator.observerWorkoutVoiceAvailability()();
  return v1;
}

unint64_t type metadata accessor for FIWorkoutActivityType()
{
  result = lazy cache variable for type metadata for FIWorkoutActivityType;
  if (!lazy cache variable for type metadata for FIWorkoutActivityType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIWorkoutActivityType);
  }

  return result;
}

unint64_t _s9WorkoutUI0A24OnboardingAnalyticsEventV04senddE033_33BBD532864AE50CBDA4CF2D5EA9A1C7LL9didEnable18selectedVoiceIndexySb_SiSgtFSDySSSo8NSObjectCGSgycfU_TA_0()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in WorkoutOnboardingAnalyticsEvent.sendAnalyticsEvent(didEnable:selectedVoiceIndex:)(*(v0 + 16), v2 | v3, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for WorkoutOnboardingCoordinator()
{
  result = type metadata singleton initialization cache for WorkoutOnboardingCoordinator;
  if (!type metadata singleton initialization cache for WorkoutOnboardingCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutOnboardingCoordinator()
{
  type metadata accessor for Published<WorkoutOnboardingCoordinator.OnboardingState>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<WorkoutOnboardingCoordinator.OnboardingState>()
{
  if (!lazy cache variable for type metadata for Published<WorkoutOnboardingCoordinator.OnboardingState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<WorkoutOnboardingCoordinator.OnboardingState>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutOnboardingCoordinator.OnboardingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_20;
  }

  v2 = a2 + 131;
  if (a2 + 131 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 131;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 131;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 131;
    }
  }

LABEL_20:
  v7 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v7 >= 0x7D)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutOnboardingCoordinator.OnboardingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 131;
  if (a3 + 131 >= 0xFFFF00)
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

  if (a3 < 0x7D)
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = ((a2 ^ 0x7F) >> 1) & 0xFE | ((a2 ^ 0x7F) << 6);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for WorkoutOnboardingCoordinator.OnboardingState(unsigned __int8 *a1)
{
  v1 = (*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_BYTE *destructiveInjectEnumTag for WorkoutOnboardingCoordinator.OnboardingState(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x7D)
  {
    LOBYTE(v2) = a2 - 126;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *destructiveInjectEnumTag for WorkoutOnboardingCoordinator.OnboardingState.OnboardingSection(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t outlined copy of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _s11WorkoutCore0A8FeaturesOAC12FeatureFlags0dE3KeyAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TipKitEditWorkoutTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307ED0](1, v10);
  v13 = MEMORY[0x277CE1A00];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t protocol witness for Tip.options.getter in conformance TipKitEditWorkoutTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307ED0](1, v10);
  v13 = MEMORY[0x277CE1A00];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t getEnumTagSinglePayload for TipKitEditWorkoutTip(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TipKitEditWorkoutTip(_WORD *result, int a2, int a3)
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

id TipKitIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipKitIdentifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipKitIdentifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipKitIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipKitIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for $shouldShowTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_allocate_value_buffer(v0, static TipKitGymKitNFCDisabledTip.$shouldShowTip);
  __swift_project_value_buffer(v0, static TipKitGymKitNFCDisabledTip.$shouldShowTip);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x20F30BAD0](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = MEMORY[0x20F30BAD0](0xD000000000000038, 0x800000020CB95DD0);
    [v6 BOOLForKey_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO15ParameterOptionVGMd);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t TipKitGymKitNFCDisabledTip.title.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t TipKitGymKitNFCDisabledTip.message.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t TipKitGymKitNFCDisabledTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  if (one-time initialization token for $shouldShowTip != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static TipKitGymKitNFCDisabledTip.$shouldShowTip);
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();

  return v5;
}

uint64_t closure #2 in TipKitGymKitNFCDisabledTip.rules.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>);
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t TipKitGymKitNFCDisabledTip.actions.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CB5DA70;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  Tips.Action.init<A>(id:title:perform:)();
  v8 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return v8;
}

uint64_t closure #1 in TipKitGymKitNFCDisabledTip.actions.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v51 = &v47 - v18;
  URL.init(string:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_13;
  }

  v49 = v1;
  v50 = v0;
  (*(v11 + 32))(v51, v9, v10);
  v19 = [objc_opt_self() defaultWorkspace];
  if (!v19)
  {
    __break(1u);
LABEL_13:
    outlined destroy of URL?(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v19;
  URL._bridgeToObjectiveC()(v20);
  v23 = v22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v21 openSensitiveURL:v23 withOptions:isa];

  v26 = (v11 + 16);
  if (v25)
  {
    static WOLog.app.getter();
    (*v26)(v16, v51, v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315138;
      v31 = URL.absoluteString.getter();
      v33 = v32;
      v48 = v6;
      v34 = *(v11 + 8);
      v34(v16, v10);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v52);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_20C66F000, v27, v28, "Opened Settings link: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F30E080](v30, -1, -1);
      MEMORY[0x20F30E080](v29, -1, -1);

      (*(v49 + 8))(v48, v50);
      return (v34)(v51, v10);
    }

    v46 = *(v11 + 8);
    v46(v16, v10);
    (*(v49 + 8))(v6, v50);
  }

  else
  {
    static WOLog.app.getter();
    (*v26)(v13, v51, v10);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315138;
      v41 = URL.absoluteString.getter();
      v43 = v42;
      v48 = v3;
      v44 = *(v11 + 8);
      v44(v13, v10);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v52);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_20C66F000, v37, v38, "Failed to open Settings link: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F30E080](v40, -1, -1);
      MEMORY[0x20F30E080](v39, -1, -1);

      (*(v49 + 8))(v48, v50);
      return (v44)(v51, v10);
    }

    v46 = *(v11 + 8);
    v46(v13, v10);
    (*(v49 + 8))(v3, v50);
  }

  return (v46)(v51, v10);
}

uint64_t protocol witness for Tip.rules.getter in conformance TipKitGymKitNFCDisabledTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  if (one-time initialization token for $shouldShowTip != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static TipKitGymKitNFCDisabledTip.$shouldShowTip);
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();

  return v5;
}

unint64_t lazy protocol witness table accessor for type TipKitGymKitNFCDisabledTip and conformance TipKitGymKitNFCDisabledTip()
{
  result = lazy protocol witness table cache variable for type TipKitGymKitNFCDisabledTip and conformance TipKitGymKitNFCDisabledTip;
  if (!lazy protocol witness table cache variable for type TipKitGymKitNFCDisabledTip and conformance TipKitGymKitNFCDisabledTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitGymKitNFCDisabledTip and conformance TipKitGymKitNFCDisabledTip);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipKitGymKitNFCDisabledTip(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TipKitGymKitNFCDisabledTip(_WORD *result, int a2, int a3)
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

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t one-time initialization function for $showSafetyCheckInTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_allocate_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  if ([objc_opt_self() zelkovaWorkoutEnabled])
  {
    FIIsWorkoutSafetyCheckInTipEnabled();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO15ParameterOptionVGMd);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t static TipKitSafetyCheckInTip.$showSafetyCheckInTip.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TipKitSafetyCheckInTip.$showSafetyCheckInTip.setter(uint64_t a1)
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TipKitSafetyCheckInTip.$showSafetyCheckInTip.modify())()
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  return static TipKitSafetyCheckInTip.$showSafetyCheckInTip.modify;
}

uint64_t key path getter for static TipKitSafetyCheckInTip.$showSafetyCheckInTip : TipKitSafetyCheckInTip.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static TipKitSafetyCheckInTip.$showSafetyCheckInTip : TipKitSafetyCheckInTip.Type(uint64_t a1)
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static TipKitSafetyCheckInTip.showSafetyCheckInTip.getter()
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t key path getter for static TipKitSafetyCheckInTip.showSafetyCheckInTip : TipKitSafetyCheckInTip.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v2, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t key path setter for static TipKitSafetyCheckInTip.showSafetyCheckInTip : TipKitSafetyCheckInTip.Type()
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t static TipKitSafetyCheckInTip.showSafetyCheckInTip.setter()
{
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static TipKitSafetyCheckInTip.showSafetyCheckInTip.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static TipKitSafetyCheckInTip.showSafetyCheckInTip.modify;
}

void static TipKitSafetyCheckInTip.showSafetyCheckInTip.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t TipKitSafetyCheckInTip.ActionType.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TipKitSafetyCheckInTip.ActionType.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TipKitSafetyCheckInTip.ActionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TipKitSafetyCheckInTip.ActionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TipKitSafetyCheckInTip.ActionType@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TipKitSafetyCheckInTip.ActionType, *a1);

  *a2 = v3 != 0;
  return result;
}

void __swiftcall TipKitSafetyCheckInTip.init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = [objc_allocWithZone(MEMORY[0x277D4AA68]) init];
  v5 = [v4 isMessagesAppInstalled];

  if ((v5 & 1) == 0)
  {
    static WOLog.safety.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C66F000, v6, v7, "[SafetyCheckIn] disable SafetyCheckInTip because Messages app is deleted", v8, 2u);
      MEMORY[0x20F30E080](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for $showSafetyCheckInTip != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
    __swift_project_value_buffer(v9, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
    v10[31] = 0;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }
}

uint64_t TipKitSafetyCheckInTip.title.getter()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t TipKitSafetyCheckInTip.actions.getter()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v4 = v10;
  v9[1] = 0;
  v9[2] = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  Tips.Action.init<A>(id:title:perform:)();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1);
    v4 = v10;
  }

  *(v4 + 16) = v6 + 1;
  (*(v1 + 32))(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v3, v0);
  v7 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v4);

  return v7;
}

uint64_t TipKitSafetyCheckInTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();

  return v5;
}

uint64_t closure #2 in TipKitSafetyCheckInTip.rules.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  a1[4] = lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t protocol witness for Tip.rules.getter in conformance TipKitSafetyCheckInTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  if (one-time initialization token for $showSafetyCheckInTip != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static TipKitSafetyCheckInTip.$showSafetyCheckInTip);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();

  return v5;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TipKitSafetyCheckInTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip();
  result = MEMORY[0x20F307D70](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v89 = type metadata accessor for AccessibilityTraits();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AccessibilityChildBehavior();
  v73 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TipViewStyleConfiguration();
  v10 = *(v9 - 8);
  v91 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGA50_yAA018ListRowInsetsTraitR0VGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAJyAA6VStackVyAA6HStackVyAA05TupleC0VyAJyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA4TextVSgAA06_FixedO6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA1_ySiSgGGA1_ySbGGA1_y12CoreGraphics7CGFloatVGGAA01_eT0VGAA010_FlexFrameT0VG_SNyASGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AJyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyAJyAJyAA5ImageVAA012_AspectRatioT0VGA5_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A18_GtGGGAA06_TraitwX0VyAA022ListRowBackgroundTraitV0VGGA55_yAA018ListRowInsetsTraitV0VGG_Qo_Md);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v17 = &v67 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAMyAA6VStackVyAA6HStackVyAA05TupleC0VyAMyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicsT0O5BoundRtd__lFQOyAMyAMyAMyAMyAMyAMyAMyAA4TextVSgAA06_FixedT6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_ySiSgGGA4_ySbGGA4_y12CoreGraphics7CGFloatVGGAA01_jY0VGAA010_FlexFrameY0VG_SNyAVGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAA5ImageVAA012_AspectRatioY0VGA8_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A21_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA58_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo_Md);
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAQyAA6VStackVyAA6HStackVyAA05TupleC0VyAQyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicyZ0O5BoundRtd__lFQOyAQyAQyAQyAQyAQyAQyAQyAA4TextVSgAA06_FixedZ6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA8_ySiSgGGA8_ySbGGA8_y12CoreGraphics7CGFloatVGGAA01_P6LayoutVGAA16_FlexFrameLayoutVG_SNyAZGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AQyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGA12_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A25_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA62_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo__Qo_Md);
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v95 = &v67 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA6VStackVyAA6HStackVyAA05TupleE0VyACyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicyZ0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedZ6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA8_ySiSgGGA8_ySbGGA8_y12CoreGraphics7CGFloatVGGAA01_R6LayoutVGAA16_FlexFrameLayoutVG_SNyAZGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA12_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A25_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA62_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo__Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x28223BE20](v83);
  v80 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v24;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAMyAMyAMyAMyAMyAMyAMyAA4TextVSgAA06_FixednG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_ySiSgGGA0_ySbGGA0_y12CoreGraphics7CGFloatVGGAA08_PaddingG0VGAA010_FlexFrameG0VG_SNyARGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AMyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAA5ImageVAA012_AspectRatioG0VGA4_GAA016_ForegroundStyleV0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A17_GtGGGMd) + 44)];
  *v25 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v25 + 1) = 0x4010000000000000;
  v25[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyAKyAKyAKyAKyAKyAKyAKyAA4TextVSgAA06_FixedmG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZySiSgGGAZySbGGAZy12CoreGraphics7CGFloatVGGAA08_PaddingG0VGAA010_FlexFrameG0VG_SNyAPGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AKyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGA2_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A15_GtGGMd);
  closure #1 in closure #1 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)(a1, &v25[*(v26 + 44)]);
  v96 = static Color.clear.getter();
  v27 = AnyView.init<A>(_:)();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd) + 36)] = v27;
  v28 = &v15[*(v13 + 36)];
  v28[32] = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  static Edge.Set.horizontal.getter();
  v29 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.scenePadding(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v15, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGA50_yAA018ListRowInsetsTraitR0VGGMd);
  v30 = *(v10 + 16);
  v31 = a1;
  v79 = v10 + 16;
  v77 = v30;
  v30(v12, a1, v9);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v76 = *(v10 + 80);
  v75 = v32 + v91;
  v33 = swift_allocObject();
  v34 = *(v10 + 32);
  v78 = v32;
  v88 = v12;
  v90 = v10 + 32;
  v91 = v9;
  v74 = v34;
  v34(v33 + v32, v12, v9);
  v96 = v13;
  v97 = v29;
  v35 = v68;
  v36 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v69;
  View.onTapGesture(count:perform:)();

  (*(v70 + 8))(v17, v38);
  v39 = v72;
  static AccessibilityChildBehavior.ignore.getter();
  v96 = v38;
  v97 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  View.accessibilityElement(children:)();
  (*(v73 + 8))(v39, v85);
  (*(v71 + 8))(v19, v35);
  v85 = v36;
  v41 = TipViewStyleConfiguration.title.getter();
  if (v44)
  {
    v45 = v41;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    v96 = String.init(localized:table:bundle:locale:comment:)();
    v97 = v50;
    lazy protocol witness table accessor for type String and conformance String();
    v45 = Text.init<A>(_:)();
  }

  v46 = v42;
  v47 = v43;
  v96 = v35;
  v97 = v40;
  swift_getOpaqueTypeConformance2();
  v51 = v80;
  v52 = v82;
  v53 = v95;
  View.accessibilityLabel(_:)();
  outlined consume of Text.Storage(v45, v46, v47 & 1);

  (*(v81 + 8))(v53, v52);
  v54 = v86;
  static AccessibilityTraits.isButton.getter();
  v55 = v84;
  MEMORY[0x20F308AB0](v54, v83);
  (*(v87 + 8))(v54, v89);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v51, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA6VStackVyAA6HStackVyAA05TupleE0VyACyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicyZ0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedZ6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA8_ySiSgGGA8_ySbGGA8_y12CoreGraphics7CGFloatVGGAA01_R6LayoutVGAA16_FlexFrameLayoutVG_SNyAZGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA12_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A25_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA62_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo__Qo_AA0I18AttachmentModifierVGMd);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  v56 = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v96 = String.init(localized:table:bundle:locale:comment:)();
  v97 = v58;
  lazy protocol witness table accessor for type String and conformance String();
  v59 = Text.init<A>(_:)();
  v61 = v60;
  LOBYTE(v51) = v62;
  v63 = v88;
  v64 = v91;
  v77(v88, v85, v91);
  v65 = swift_allocObject();
  v74(v65 + v78, v63, v64);
  ModifiedContent<>.accessibilityAction(named:_:)();

  outlined consume of Text.Storage(v59, v61, v51 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v55, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA6VStackVyAA6HStackVyAA05TupleE0VyACyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicyZ0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedZ6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA8_ySiSgGGA8_ySbGGA8_y12CoreGraphics7CGFloatVGGAA01_R6LayoutVGAA16_FlexFrameLayoutVG_SNyAZGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA12_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A25_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA62_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo__Qo_AA0I18AttachmentModifierVGMd);
}

uint64_t closure #1 in closure #1 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v104 = type metadata accessor for PlainButtonStyle();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TipViewStyleConfiguration();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = v5;
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGGMd);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x28223BE20](v6);
  v98 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundeQ0VyAA017HierarchicalShapeE0VGGG_AA05PlaingE0VQo_Md);
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x28223BE20](v8);
  v106 = &v83 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
  MEMORY[0x28223BE20](v105);
  v110 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v109 = &v83 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v87);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v83 - v18;
  v19 = type metadata accessor for DynamicTypeSize();
  v121 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v122 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v85);
  v123 = &v83 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAJyAJyAA4TextVSgAA06_FixedF6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAFGQo_Md);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
  MEMORY[0x28223BE20](v26 - 8);
  v97 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v83 - v29;
  MEMORY[0x28223BE20](v31);
  v95 = &v83 - v32;
  v96 = a1;
  v33 = TipViewStyleConfiguration.title.getter();
  v119 = v34;
  v120 = v33;
  v117 = v36;
  v118 = v35;
  v116 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v114 = swift_getKeyPath();
  v125[0] = 1;
  v113 = swift_getKeyPath();
  v112 = swift_getKeyPath();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v37 = swift_allocObject();
  v89 = xmmword_20CB5DA80;
  *(v37 + 16) = xmmword_20CB5DA80;
  v38 = static Edge.Set.top.getter();
  *(v37 + 32) = v38;
  v39 = static Edge.Set.bottom.getter();
  *(v37 + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v125[272] = 0;
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v126[6] + 7) = *&v126[21];
  *(&v126[8] + 7) = *&v126[23];
  *(&v126[10] + 7) = *&v126[25];
  *(&v126[12] + 7) = v127;
  *(v126 + 7) = *&v126[15];
  *(&v126[2] + 7) = *&v126[17];
  *(&v126[4] + 7) = *&v126[19];
  v124[0] = v120;
  v124[1] = v119;
  v124[2] = v118;
  v124[3] = v117;
  LOWORD(v124[4]) = 256;
  v124[5] = KeyPath;
  v124[6] = v116;
  v124[7] = v114;
  v124[8] = 0;
  LOBYTE(v124[9]) = 1;
  v124[10] = v113;
  LOBYTE(v124[11]) = 1;
  v124[12] = v112;
  v124[13] = 0x3FE0000000000000;
  LOBYTE(v124[14]) = v40;
  v124[15] = v42;
  v124[16] = v44;
  v124[17] = v46;
  v124[18] = v48;
  LOBYTE(v124[19]) = 0;
  *(&v124[27] + 1) = *&v126[8];
  *(&v124[29] + 1) = *&v126[10];
  *(&v124[31] + 1) = *&v126[12];
  v124[33] = *(&v127 + 1);
  *(&v124[19] + 1) = *v126;
  *(&v124[21] + 1) = *&v126[2];
  *(&v124[23] + 1) = *&v126[4];
  *(&v124[25] + 1) = *&v126[6];
  v49 = v121;
  v50 = *(v121 + 104);
  v51 = v23;
  v50(v23, *MEMORY[0x277CDF9E8], v19);
  v52 = v122;
  v50(v122, *MEMORY[0x277CDF9A8], v19);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v54 = *(v49 + 32);
    v55 = v83;
    v54(v83, v51, v19);
    v56 = v87;
    v54((v55 + *(v87 + 48)), v52, v19);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v55, v16);
    v122 = v30;
    v57 = *(v56 + 48);
    v54(v123, v16, v19);
    v58 = *(v49 + 8);
    v58(&v16[v57], v19);
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v55, v16);
    v59 = v123;
    v54(&v123[*(v85 + 36)], &v16[*(v56 + 48)], v19);
    v58(v16, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGAKy12CoreGraphics7CGFloatVGGAA08_PaddingH0VGAA010_FlexFrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    v60 = v84;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of ClosedRange<DynamicTypeSize>(v59, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    memcpy(v125, v124, 0x110uLL);
    outlined destroy of ClosedRange<DynamicTypeSize>(v125, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGAKy12CoreGraphics7CGFloatVGGAA08_PaddingH0VGAA010_FlexFrameH0VGMd);
    v61 = v122;
    (*(v86 + 32))(v122, v60, v88);
    v62 = v95;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v61, v95, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
    v64 = v92;
    v63 = v93;
    v65 = v94;
    (*(v93 + 16))(v92, v96, v94);
    v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v67 = swift_allocObject();
    (*(v63 + 32))(v67 + v66, v64, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    v68 = v98;
    Button.init(action:label:)();
    v69 = v101;
    PlainButtonStyle.init()();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeP0VGGGMd);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v70 = v106;
    v71 = v100;
    v72 = v104;
    View.buttonStyle<A>(_:)();
    (*(v102 + 8))(v69, v72);
    (*(v99 + 8))(v68, v71);
    v73 = swift_allocObject();
    *(v73 + 16) = v89;
    LOBYTE(v71) = static Edge.Set.top.getter();
    *(v73 + 32) = v71;
    v74 = static Edge.Set.bottom.getter();
    *(v73 + 33) = v74;
    v75 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v71)
    {
      v75 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v74)
    {
      v75 = Edge.Set.init(rawValue:)();
    }

    v76 = v103;
    (*(v107 + 32))(v103, v70, v108);
    v77 = v76 + *(v105 + 36);
    *v77 = v75;
    *(v77 + 8) = 0u;
    *(v77 + 24) = 0u;
    *(v77 + 40) = 1;
    v78 = v109;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v76, v109, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
    v79 = v97;
    outlined init with copy of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v62, v97, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
    v80 = v110;
    outlined init with copy of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v78, v110, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
    v81 = v111;
    outlined init with copy of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v79, v111, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioM0VGAVGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A7_GtMd);
    outlined init with copy of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(v80, v81 + *(v82 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v78, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
    outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGG_AA05PlainiG0VQo_AA08_PaddingM0VGMd);
    return outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedH6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARySiSgGGARySbGGARy12CoreGraphics7CGFloatVGGAA08_PaddingM0VGAA010_FlexFrameM0VG_SNyAHGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  static Font.system(size:weight:design:)();
  outlined destroy of ClosedRange<DynamicTypeSize>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  static Font.Weight.semibold.getter();
  v7 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.primary.getter();
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v7;
  *(a1 + 40) = result;
  return result;
}

uint64_t closure #2 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v5;
  MEMORY[0x28223BE20](v6);
  v21 = &v19 - v7;
  result = TipViewStyleConfiguration.actions.getter();
  v9 = result;
  v22 = *(result + 16);
  if (!v22)
  {
  }

  v10 = 0;
  v11 = 0x61746544776F6873;
  while (v10 < *(v9 + 16))
  {
    (*(v1 + 16))(v3, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v0);
    if (Tips.Action.id.getter() == v11 && v12 == 0xEA00000000006C69)
    {

LABEL_10:

      v15 = *(v1 + 32);
      v16 = v20;
      v15(v20, v3, v0);
      v17 = v21;
      v15(v21, v16, v0);
      v18 = Tips.Action.handler.getter();
      v18();

      return (*(v1 + 8))(v17, v0);
    }

    v13 = v11;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_10;
    }

    ++v10;
    result = (*(v1 + 8))(v3, v0);
    v11 = v13;
    if (v22 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TipViewStyleConfiguration.tip.getter();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  (*(v1 + 104))(v3, *MEMORY[0x277CE1A10], v0);
  Tip.invalidate(reason:)();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t TipKitGradientMask.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CB5EA80;
  v9 = *MEMORY[0x277CE0EE0];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  Color.init(_:red:green:blue:opacity:)();
  *(v8 + 32) = Gradient.Stop.init(color:location:)();
  *(v8 + 40) = v11;
  v10(v7, v9, v4);
  Color.init(_:red:green:blue:opacity:)();
  *(v8 + 48) = Gradient.Stop.init(color:location:)();
  *(v8 + 56) = v12;
  v10(v7, v9, v4);
  Color.init(_:red:green:blue:opacity:)();
  *(v8 + 64) = Gradient.Stop.init(color:location:)();
  *(v8 + 72) = v13;
  static UnitPoint.bottomLeading.getter();
  static UnitPoint.topTrailing.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v14 = v26[1];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
  v16 = *(*(v15 - 8) + 16);
  v16(a2, a1, v15);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA016_ForegroundStyleF0VyAA06LinearJ0VGGMd) + 36);
  *v17 = v14;
  v18 = v27;
  *(v17 + 24) = v28;
  *(v17 + 8) = v18;
  v19 = static Alignment.center.getter();
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA016_ForegroundStyleF0VyAA06LinearJ0VGGAA011_BackgroundF0VyACyAjA11_BlurEffectVGGGMd) + 36);
  v16(v22, a1, v15);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA11_BlurEffectVGMd) + 36);
  *v23 = 0x3FC999999999999ALL;
  *(v23 + 8) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA05_Viewd1_F0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA11_BlurEffectVGGMd);
  v25 = (v22 + *(result + 36));
  *v25 = v19;
  v25[1] = v21;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGA50_yAA018ListRowInsetsTraitR0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd);
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyAIyAIyAIyAIyAIyAIyAIyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AIyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAIyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGMd);
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)()
{
  type metadata accessor for TipViewStyleConfiguration();

  return closure #2 in TipKitSafetyCheckInTipViewStyle.makeBody(configuration:)();
}

unint64_t lazy protocol witness table accessor for type TipKitSafetyCheckInTip.ActionType and conformance TipKitSafetyCheckInTip.ActionType()
{
  result = lazy protocol witness table cache variable for type TipKitSafetyCheckInTip.ActionType and conformance TipKitSafetyCheckInTip.ActionType;
  if (!lazy protocol witness table cache variable for type TipKitSafetyCheckInTip.ActionType and conformance TipKitSafetyCheckInTip.ActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitSafetyCheckInTip.ActionType and conformance TipKitSafetyCheckInTip.ActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip()
{
  result = lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip;
  if (!lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip;
  if (!lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitSafetyCheckInTip and conformance TipKitSafetyCheckInTip);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipKitSafetyCheckInTip(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TipKitSafetyCheckInTip(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA6VStackVyAA6HStackVyAA05TupleE0VyACyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicyZ0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedZ6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA8_ySiSgGGA8_ySbGGA8_y12CoreGraphics7CGFloatVGGAA01_R6LayoutVGAA16_FlexFrameLayoutVG_SNyAZGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA12_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A25_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA62_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo__Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAMyAA6VStackVyAA6HStackVyAA05TupleC0VyAMyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicsT0O5BoundRtd__lFQOyAMyAMyAMyAMyAMyAMyAMyAA4TextVSgAA06_FixedT6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_ySiSgGGA4_ySbGGA4_y12CoreGraphics7CGFloatVGGAA01_jY0VGAA010_FlexFrameY0VG_SNyAVGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAA5ImageVAA012_AspectRatioY0VGA8_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A21_GtGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA58_yAA21ListRowInsetsTraitKeyVGG_Qo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAJyAA6VStackVyAA6HStackVyAA05TupleC0VyAJyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA4TextVSgAA06_FixedO6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA1_ySiSgGGA1_ySbGGA1_y12CoreGraphics7CGFloatVGGAA01_eT0VGAA010_FlexFrameT0VG_SNyASGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_AJyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyAJyAJyAA5ImageVAA012_AspectRatioT0VGA5_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A18_GtGGGAA06_TraitwX0VyAA022ListRowBackgroundTraitV0VGGA55_yAA018ListRowInsetsTraitV0VGG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA6HStackVyAA9TupleViewVyACyAA0H0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicjK0O5BoundRtd__lFQOyACyACyACyACyACyACyACyAA4TextVSgAA06_FixedK6LayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXySiSgGGAXySbGGAXy12CoreGraphics7CGFloatVGGAA08_PaddingP0VGAA010_FlexFrameP0VG_SNyANGQo_07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVG_ACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyAA5ImageVAA012_AspectRatioP0VGA0_GAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGG_AA16PlainButtonStyleVQo_A13_GtGGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGA50_yAA018ListRowInsetsTraitR0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6HStackVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeV0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentV0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeO0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA012_ConditionalD0Vy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleE0VyAA4TextV_A7_tGGGA3_yA5_yACyACyACyArTyAA4FontVSgGGAXGA_GSg_ACyAA6SpacerVAA12_FrameLayoutVGA7_A7_tGGGG_Qo_AA0i10AttachmentV0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAA08ModifiedE0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGGGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAA08ModifiedE0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleJ0VyAA4TextV_A1_tGGGAYyA_yAJyAJyAJyAlNyAA4FontVSgGGARGAUGSg_AJyAA6SpacerVAA12_FrameLayoutVGA1_A1_tGGGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayO0VyACyACyAA14GeometryReaderVyACyACyACyAA06_ShapeE0VyAA07RoundedL0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingX0VGASyAA05TupleE0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVA5_GA5_GA5_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingO0Vy12CoreGraphics7CGFloatVGGA19_ySiSgGG_AeAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVA2_GAPGASyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA42_GGGGAA09_PositionX0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGA2_GA19_yAA4FontVSgGGGG_Qo_AA0i10AttachmentO0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyACyACyAA14GeometryReaderVyACyACyACyAA10_ShapeViewVyAA07RoundedE0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingR0VGAMyAA05TupleN0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVA_GA_GA_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingH0Vy12CoreGraphics7CGFloatVGGA13_ySiSgGG_AA0N0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVAXGAJGAMyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA38_GGGGAA09_PositionR0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAXGA13_yAA4FontVSgGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalO5StyleVGAUyAA08AnyShapeX0VSgGGAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyAA14NavigationLinkVyAzCyA0_012IntervalStepw5ValueE0VAUyA0_28ConfigurationNavigationModelCSgGGGA2_GA7_G_A17_17BlockPresentationOSgQo_G_A0_0wO6DetailVtGG_Qo_AA0i10AttachmentT0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAA6ButtonVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalI5StyleVGAOyAA08AnyShapeR0VSgGGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAIyAA14NavigationLinkVyAtIyAV012IntervalStepq5ValueE0VAOyAV013ConfigurationY5ModelCSgGGGAXGA1_G_A13_17BlockPresentationOSgQo_G_AV0qI6DetailVtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, GoalButtonDetail)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAA6ButtonVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalI5StyleVGAOyAA08AnyShapeR0VSgGGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAIyAA14NavigationLinkVyAtIyAV012IntervalStepq5ValueE0VAOyAV013ConfigurationY5ModelCSgGGGAXGA1_G_A13_17BlockPresentationOSgQo_G_AV0qI6DetailVtGGMd);
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGG_Qo_AA0i10AttachmentT0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_AA0i10AttachmentU0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGAA06_TraitmN0VyAA017ListRowBackgroundqL0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GA104_yAA022ListRowBackgroundTraitN0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeModifier<Rectangle>>, _ContentShapeKindModifier<Circle>>?)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<TupleView<(MediaConfigurationRoomButton?, (<<opaque return type of View.environment<A>(_:)>>.0)?, ModifiedContent<ModifiedContent<<<opaque ret();
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6VStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVGAA05EmptyE0VGGAA06_FrameT0VGAA08_PaddingT0VGACyACyAA4TextV07WorkoutB006DetailE12FontModifierVGAA30_EnvironmentKeyWritingModifierVySiSgGGACyACyAQyASyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyA8_ACyACyAQyASyASyA9_04Goaly13ConfigurationE0VA9_08Intervaly13ConfigurationE0VGASyA9_05Pacery13ConfigurationE0VA9_04Racey13ConfigurationE0VGGSgGA14_y0Y4Core0Y23ConfigurationDataSourceCSgGGA14_yA9_28ConfigurationNavigationModelCSgGGG_AA16PlainButtonStyleVQo_A8_GGA11_GA14_yAA5ColorVSgGGAOtGGAA05_FlexvT0VG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVGAA05EmptyG0VGGAA06_FrameN0VGAA08_PaddingN0VGACyACyAA4TextV07WorkoutB006DetailG12FontModifierVGAA022_EnvironmentKeyWritingV0VySiSgGGACyACyAKyAMyAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyA2_ACyACyAKyAMyAMyA3_04Goals13ConfigurationG0VA3_08Intervals13ConfigurationG0VGAMyA3_05Pacers13ConfigurationG0VA3_04Races13ConfigurationG0VGGSgGA8_y0S4Core0S23ConfigurationDataSourceCSgGGA8_yA3_28ConfigurationNavigationModelCSgGGG_AA16PlainButtonStyleVQo_A2_GGA5_GA8_yAA5ColorVSgGGAItGGAA05_FlexpN0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, EmptyView>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, Text>>, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalN5StyleVGASyAA08AnyShapeW0VSgGG_AZ0vN6DetailVtGG_Qo_AA0i10AttachmentS0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ButtonVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalH5StyleVGAMyAA08AnyShapeQ0VSgGG_AT0pH6DetailVtGGMd);
    lazy protocol witness table accessor for type LazyVGrid<TupleView<(ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, GoalButtonStyle>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, GoalButtonDetail)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ButtonVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalH5StyleVGAMyAA08AnyShapeQ0VSgGG_AT0pH6DetailVtGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AOtGG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6VStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAeAE10fontWeightyQrAA4FontV0P0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyARSgGGAYyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGACyACyAA4TextV07WorkoutB006DetaileqV0VGAYy12CoreGraphics7CGFloatVGGAeAE0F14Representation14representationQrqd__yXE_tAaDRd__lFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA21_AA016_ForegroundStyleV0VyA2_GGG_AA16PlainButtonStyleVQo__AMyA17__A32_yAA05EmptyE0VGtGQo_AOtGGAA14_PaddingLayoutVG_Qo_AA0i10AttachmentV0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyANSgGGAUyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGACyACyAA4TextV07WorkoutB006DetailgkP0VGAUy12CoreGraphics7CGFloatVGGAkAE27accessibilityRepresentation14representationQrqd__yXE_tAaJRd__lFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA17_AA016_ForegroundStyleP0VyAZGGG_AA16PlainButtonStyleVQo__AGyA13__A28_yAA05EmptyG0VGtGQo_AItGGAA08_PaddingW0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlipForRTLEffect>, _FlexFrameLayout>, _OpacityEffect>, ModifiedContent<ModifiedContent<Text, DetailViewFontModifier>, _EnvironmentKeyWritingModifier<CGFloat>>, <<opaque return type of View.accessibilityRepresentation<A>(representation:)>>.0, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyACyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleS0VyAA014SelectionShapeY0VGGAA0i10AttachmentS0VGSgtGG_Qo_A14_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd);
    swift_getOpaqueTypeConformance2();
    _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeX0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentX0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_8(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(List<Never, TupleView<(Section<EmptyView, TupleView<(<<opaque return type of View.onTapGesture(count:perform:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)>, EmptyView>, Section<EmptyView, ModifiedContent<ForEach<[WorkoutStep], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>, EmptyView>?)>>, Spacer, ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyTransformModifier<Bool>>, PinnedBottomButtonModifierPhone>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(WorkoutStepRow, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_9(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
    swift_getOpaqueTypeConformance2();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGAKy12CoreGraphics7CGFloatVGGAA08_PaddingH0VGAA010_FlexFrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGAKy12CoreGraphics7CGFloatVGGAA08_PaddingH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGAKy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGAKySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVSgAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text?, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text?, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text?, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text?, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text?, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVSgAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type Text? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text?, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for TipViewStyleConfiguration();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ClosedRange<DynamicTypeSize>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>>, _BackgroundModifier<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _BlurEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>>, _BackgroundModifier<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _BlurEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>>, _BackgroundModifier<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _BlurEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA016_ForegroundStyleF0VyAA06LinearJ0VGGAA011_BackgroundF0VyACyAjA11_BlurEffectVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _BlurEffect>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA05_Viewd1_F0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA11_BlurEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>>, _BackgroundModifier<ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _BlurEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGAA016_ForegroundStyleF0VyAA06LinearJ0VGGMd);
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TipKitGradientMask> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB018TipKitGradientMask33_B066A2699F19F37EF76D1ADAC9749A5FLLVGMd);
    lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinearGradient> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA14LinearGradientVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TipKitGradientMask>, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<HStack<TupleView<(ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, TipKitGradientMask>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int WorkoutAnimationStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAnimationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAnimationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance WorkoutAnimationStyleKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type WorkoutAnimationStyle and conformance WorkoutAnimationStyle();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.workoutAnimationStyle.getter()
{
  lazy protocol witness table accessor for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey();

  return EnvironmentValues.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey()
{
  result = lazy protocol witness table cache variable for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey;
  if (!lazy protocol witness table cache variable for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey);
  }

  return result;
}

uint64_t (*EnvironmentValues.workoutAnimationStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.workoutAnimationStyle.modify;
}

uint64_t View.workoutAnimationStyle(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type WorkoutAnimationStyle and conformance WorkoutAnimationStyle()
{
  result = lazy protocol witness table cache variable for type WorkoutAnimationStyle and conformance WorkoutAnimationStyle;
  if (!lazy protocol witness table cache variable for type WorkoutAnimationStyle and conformance WorkoutAnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAnimationStyle and conformance WorkoutAnimationStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAnimationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutAnimationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G14AnimationStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

WorkoutUI::ElapsedTimeView __swiftcall ElapsedTimeView.init(elapsedTime:showSubseconds:)(Swift::Double elapsedTime, Swift::Bool showSubseconds)
{
  *v2 = elapsedTime;
  *(v2 + 8) = showSubseconds;
  result.elapsedTime = elapsedTime;
  result.showSubseconds = showSubseconds;
  return result;
}

uint64_t ElapsedTimeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v50 = type metadata accessor for AccessibilityTraits();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AccessibilityChildBehavior();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeO0VyAA16RoundedRectangleVGGMd);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA012_ConditionalK0VyAMyAA4TextVAOGAOGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_k5ShapeV0VyAA16RoundedRectangleVGG_Qo_Md);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v37 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6HStackVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeV0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentV0VGMd);
  MEMORY[0x28223BE20](v43);
  v41 = &v37 - v9;
  LOBYTE(v2) = *(v2 + 8);
  v10 = static VerticalAlignment.center.getter();
  closure #1 in ElapsedTimeView.body.getter(v2, v53);
  v11 = v54;
  v12 = v55;
  v38 = v53[0];
  v37 = v53[1];
  v56 = v55;
  KeyPath = swift_getKeyPath();
  LOBYTE(v53[0]) = 0;
  v14 = swift_getKeyPath();
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v17 = *MEMORY[0x277CDFA88];
  v18 = type metadata accessor for LayoutDirection();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = v14;
  *v7 = v10;
  *(v7 + 1) = 0;
  v7[16] = 0;
  *(v7 + 17) = v61[0];
  v19 = *(v61 + 3);
  *(v7 + 40) = v37;
  *(v7 + 24) = v38;
  v7[56] = v11;
  v7[57] = v12;
  *(v7 + 58) = v59;
  *(v7 + 31) = v60;
  *(v7 + 32) = 256;
  *(v7 + 66) = v57;
  *(v7 + 35) = v58;
  *(v7 + 9) = KeyPath;
  v7[80] = 0;
  v20 = v39;
  v21 = &v7[*(v39 + 36)];
  *(v7 + 5) = v19;
  v22 = *(type metadata accessor for RoundedRectangle() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = type metadata accessor for RoundedCornerStyle();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #5.0 }

  *v21 = _Q0;
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd) + 36)] = 0;
  static AccessibilityChildBehavior.ignore.getter();
  v30 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v31 = v40;
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v5, v45);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>>(v7);
  type metadata accessor for ElapsedTimeFormatter();
  *&v53[0] = static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)();
  *(&v53[0] + 1) = v32;
  v51 = v20;
  v52 = v30;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v33 = v41;
  v34 = v44;
  View.accessibilityLabel<A>(_:)();

  (*(v46 + 8))(v31, v34);
  v35 = v47;
  static AccessibilityTraits.updatesFrequently.getter();
  MEMORY[0x20F308AB0](v35, v43);
  (*(v48 + 8))(v35, v50);
  return sub_20C679EA4(v33);
}

double closure #1 in ElapsedTimeView.body.getter@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration.TimeFormatStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Double.showHoursInWorkoutTime.getter())
  {
    static Duration.seconds(_:)();
    v35 = v15;
    (*(v4 + 104))(v6, *MEMORY[0x277D84670], v3);
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v4 + 8))(v6, v3);
    static FormatStyle<>.time(pattern:)();
    (*(v8 + 8))(v10, v7);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0]);
    Duration.formatted<A>(_:)();
    (*(v12 + 8))(v14, v11);
    v37 = v40;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    *&v37 = v16;
    *(&v37 + 1) = v17;
    v21 = v20 & 1;
    *&v38 = v20 & 1;
    *(&v38 + 1) = v22;
    LOBYTE(v39) = 0;
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      static Duration.seconds(_:)();
      v35 = v26;
      (*(v4 + 104))(v6, *MEMORY[0x277D84670], v3);
      static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
      (*(v4 + 8))(v6, v3);
      static FormatStyle<>.time(pattern:)();
      (*(v8 + 8))(v10, v7);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0]);
      Duration.formatted<A>(_:)();
      (*(v12 + 8))(v14, v11);
      v37 = v40;
      lazy protocol witness table accessor for type String and conformance String();
      *&v37 = Text.init<A>(_:)();
      *(&v37 + 1) = v28;
      *&v38 = v27 & 1;
      *(&v38 + 1) = v29;
      v39 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_7;
    }

    static Duration.seconds(_:)();
    v35 = v23;
    (*(v4 + 104))(v6, *MEMORY[0x277D84670], v3);
    static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v4 + 8))(v6, v3);
    static FormatStyle<>.time(pattern:)();
    (*(v8 + 8))(v10, v7);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0]);
    Duration.formatted<A>(_:)();
    (*(v12 + 8))(v14, v11);
    v37 = v40;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    v21 = v24 & 1;
    *&v37 = v16;
    *(&v37 + 1) = v17;
    *&v38 = v24 & 1;
    *(&v38 + 1) = v25;
    LOBYTE(v39) = 1;
  }

  outlined copy of Text.Storage(v16, v17, v21);

  _ConditionalContent<>.init(storage:)();
  v37 = v40;
  v38 = v41;
  v39 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of Text.Storage(v18, v19, v21);

LABEL_7:
  result = *&v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v36;
  *v36 = v40;
  v34[1] = v31;
  *(v34 + 32) = v32;
  *(v34 + 33) = v33;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeO0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGMd);
    lazy protocol witness table accessor for type HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA4TextVAGGAGGGMd);
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeO0VyAA16RoundedRectangleVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ElapsedTimeView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ElapsedTimeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ExternalSeymourSessionStatusProvider.isExternalSessionActive.getter()
{
  v1 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void key path setter for ExternalSeymourSessionStatusProvider.observers : ExternalSeymourSessionStatusProvider(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ExternalSeymourSessionStatusProvider.observers.getter()
{
  v1 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id ExternalSeymourSessionStatusProvider.init(dependencies:appBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  static Date.distantPast.getter();
  v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive] = 0;
  v7 = &v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_appBundleIdentifier];
  *v7 = a2;
  v7[1] = a3;
  v8 = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient07SessionB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  outlined init with take of SessionClientProtocol(v15, &v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_sessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient16EventHubProtocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  v9 = *(&v15[0] + 1);
  v10 = &v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_eventHub];
  *v10 = *&v15[0];
  v10[1] = v9;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *&v4[OBJC_IVAR___NLExternalSeymourSessionStatusProvider_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ExternalSeymourSessionStatusProvider();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_getObjectType();
  type metadata accessor for SessionActivated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v11;

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v15);
  type metadata accessor for SessionDeactivated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v15);
  [v12 updateStatus];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t outlined init with take of SessionClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for ExternalSeymourSessionStatusProvider()
{
  result = type metadata singleton initialization cache for ExternalSeymourSessionStatusProvider;
  if (!type metadata singleton initialization cache for ExternalSeymourSessionStatusProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in ExternalSeymourSessionStatusProvider.init(dependencies:appBundleIdentifier:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong updateStatus];
  }
}

Swift::Void __swiftcall ExternalSeymourSessionStatusProvider.notifyObservers()()
{
  v1 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  v2 = [*(v0 + v1) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
    swift_beginAccess();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F30C990](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v7 statusDidChangeWith_];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

id ExternalSeymourSessionStatusProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExternalSeymourSessionStatusProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternalSeymourSessionStatusProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ExternalSeymourSessionStatusProvider.updateStatus()()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyAA7SessionVGMd);
  v63 = *(v65 - 8);
  v61 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v73 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v69 = *(v4 - 8);
  v70 = v4;
  v67 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v53 - v7;
  MEMORY[0x28223BE20](v8);
  v71 = &v53 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  Date.init()();
  v16 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_lastUpdateTimestamp;
  swift_beginAccess();
  (*(v11 + 40))(v0 + v16, v15, v10);
  swift_endAccess();
  v17 = *(v11 + 16);
  v74 = v15;
  v17(v15, v0 + v16, v10);
  v59 = v17;
  v60 = v11 + 16;
  v58 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___NLExternalSeymourSessionStatusProvider_sessionClient), *(v0 + OBJC_IVAR___NLExternalSeymourSessionStatusProvider_sessionClient + 24));
  dispatch thunk of SessionClientProtocol.queryActiveSession()();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v72;
  v20 = v15;
  v21 = v10;
  v54 = v10;
  v17(v72, v20, v10);
  v66 = v11;
  v22 = *(v11 + 80);
  v57 = (v22 + 16) & ~v22;
  v23 = (v12 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = v23;
  v24 = swift_allocObject();
  v56 = *(v11 + 32);
  v56(v24 + ((v22 + 16) & ~v22), v19, v21);
  *(v24 + v23) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in ExternalSeymourSessionStatusProvider.updateStatus();
  *(v25 + 24) = v24;
  v27 = v62;
  v26 = v63;
  v28 = v73;
  v29 = v65;
  (*(v63 + 16))(v62, v73, v65);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = (v61 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v26 + 32))(v32 + v30, v27, v29);
  v33 = (v32 + v31);
  *v33 = partial apply for specialized closure #1 in Promise.then<A>(_:);
  v33[1] = v25;
  v34 = v64;
  Promise.init(asyncOperation:)();
  (*(v26 + 8))(v28, v29);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = v72;
  v37 = v54;
  v59(v72, v74, v54);
  v38 = v55;
  v39 = swift_allocObject();
  v56(v39 + v57, v36, v37);
  *(v39 + v38) = v35;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for closure #2 in ExternalSeymourSessionStatusProvider.updateStatus();
  *(v40 + 24) = v39;
  v42 = v68;
  v41 = v69;
  v43 = v70;
  (*(v69 + 16))(v68, v34, v70);
  v44 = v41;
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v46 = (v67 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v44 + 32))(v47 + v45, v42, v43);
  v48 = (v47 + v46);
  *v48 = partial apply for specialized closure #1 in Promise.catch(_:);
  v48[1] = v40;
  v49 = v71;
  Promise.init(asyncOperation:)();
  v50 = *(v44 + 8);
  v50(v34, v43);
  v51 = Promise.operation.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  v51(partial apply for specialized closure #1 in Promise.resolve(_:), v52);

  v50(v49, v43);
  (*(v66 + 8))(v74, v37);
}

void closure #1 in ExternalSeymourSessionStatusProvider.updateStatus()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Date.init()();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v4 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    v7 = *(Strong + OBJC_IVAR___NLExternalSeymourSessionStatusProvider_appBundleIdentifier);
    v6 = *(Strong + OBJC_IVAR___NLExternalSeymourSessionStatusProvider_appBundleIdentifier + 8);
    v8 = Strong;

    if (Session.hostAppBundleIdentifier.getter() == v7 && v9 == v6)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
LABEL_8:
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (!v12)
        {
          return;
        }

        v13 = v12;
        v14 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
        swift_beginAccess();
        if (v13[v14])
        {
          goto LABEL_33;
        }

        v13[v14] = 1;
        v15 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
        swift_beginAccess();
        v16 = [*&v13[v15] allObjects];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMd);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v17 >> 62)
        {
          v18 = __CocoaSet.count.getter();
          if (v18)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
LABEL_12:
            if (v18 >= 1)
            {
              for (i = 0; i != v18; ++i)
              {
                if ((v17 & 0xC000000000000001) != 0)
                {
                  v20 = MEMORY[0x20F30C990](i, v17);
                }

                else
                {
                  v20 = *(v17 + 8 * i + 32);
                  swift_unknownObjectRetain();
                }

                [v20 statusDidChangeWith_];
                swift_unknownObjectRelease();
              }

              goto LABEL_32;
            }

            __break(1u);
LABEL_36:
            __break(1u);
            return;
          }
        }

LABEL_32:

LABEL_33:

        return;
      }
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      return;
    }

    v13 = v21;
    v22 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
    swift_beginAccess();
    if (v13[v22] != 1)
    {
      goto LABEL_33;
    }

    v13[v22] = 0;
    v23 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
    swift_beginAccess();
    v24 = [*&v13[v23] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMd);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      v26 = __CocoaSet.count.getter();
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    if (v26 >= 1)
    {
      for (j = 0; j != v26; ++j)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x20F30C990](j, v25);
        }

        else
        {
          v28 = *(v25 + 8 * j + 32);
          swift_unknownObjectRetain();
        }

        [v28 statusDidChangeWith_];
        swift_unknownObjectRelease();
      }

      goto LABEL_32;
    }

    goto LABEL_36;
  }
}

void closure #2 in ExternalSeymourSessionStatusProvider.updateStatus()()
{
  v0 = type metadata accessor for SessionError();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v8 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    swift_getErrorValue();
    v9 = Error.code.getter();
    (*(v1 + 104))(v3, *MEMORY[0x277D50358], v0);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SessionError and conformance SessionError, MEMORY[0x277D503C8]);
    v10 = Error.code.getter();
    (*(v1 + 8))(v3, v0);
    if (v9 == v10)
    {
      v11 = static os_log_type_t.default.getter();
      specialized static Log.print(_:type:_:)("[ExternalSeymourSessionStatusObserver] No active session found.", 63, 2, v11, MEMORY[0x277D84F90]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CB5DA70;
      swift_getErrorValue();
      v13 = MEMORY[0x20F30CD10](v26[12], v26[13]);
      v15 = v14;
      *(inited + 56) = MEMORY[0x277D837D0];
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v13;
      *(inited + 40) = v15;
      v16 = static os_log_type_t.default.getter();
      specialized static Log.print(_:type:_:)("[ExternalSeymourSessionStatusObserver] Error querying active session: %@", 72, 2, v16, inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 32);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
      swift_beginAccess();
      if (v18[v19] != 1)
      {
LABEL_17:

        return;
      }

      v18[v19] = 0;
      v20 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
      swift_beginAccess();
      v21 = [*&v18[v20] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMd);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_9:
          if (v23 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v23; ++i)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x20F30C990](i, v22);
            }

            else
            {
              v25 = *(v22 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            [v25 statusDidChangeWith_];
            swift_unknownObjectRelease();
          }
        }
      }

      goto LABEL_17;
    }
  }
}

id ExternalSeymourSessionStatusProvider.addObserver(_:)(uint64_t a1, SEL *a2)
{
  v5 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  return [*(v2 + v5) *a2];
}

id protocol witness for ExternalSeymourSessionStatusObservable.observers.getter in conformance ExternalSeymourSessionStatusProvider()
{
  v1 = *v0;
  v2 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id protocol witness for ExternalSeymourSessionStatusObservable.addObserver(_:) in conformance ExternalSeymourSessionStatusProvider(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *v4;
  v8 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  return [*(v7 + v8) *a4];
}

uint64_t partial apply for specialized closure #1 in Promise.then<A>(_:)(uint64_t a1)
{
  return specialized closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24), MEMORY[0x277D53AE0]);
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t specialized closure #1 in Promise.then<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, MEMORY[0x277D51C40]);
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, MEMORY[0x277D51A40]);
}

{
  v6 = type metadata accessor for CatalogWorkoutDetail();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  type metadata accessor for CatalogWorkoutDetailBridge();

  return Promise.init(asyncOperation:)();
}

{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return Promise.init(asyncOperation:)();
}

uint64_t specialized closure #1 in Promise.then<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);

  return Promise.init(asyncOperation:)();
}

uint64_t specialized closure #1 in Promise.catch(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return Promise.init(asyncOperation:)();
}

void specialized closure #1 in closure #1 in Promise.catch(_:)(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  outlined consume of Result<(), Error>(v6, 0);
}

uint64_t specialized closure #1 in Promise.catch(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v9 = Promise.operation.getter();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(partial apply for specialized closure #1 in closure #1 in Promise.catch(_:), v10);
}

uint64_t specialized closure #1 in closure #1 in Promise.catch(_:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = Promise.operation.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(closure #1 in Promise.resolve(_:)specialized partial apply, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18, v12);
  }
}

void specialized closure #1 in closure #1 in Promise.then<A>(_:)(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  outlined consume of Result<(), Error>(v6, 0);
}

{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  outlined consume of Result<CatalogWorkoutDetailBridge, Error>(v6);
}

uint64_t partial apply for specialized closure #1 in Promise.then<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyAA7SessionVGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, v2 + v6, *v7, v7[1], &_s11SeymourCore7PromiseVyAA7SessionVGMd, &_s11SeymourCore7PromiseVyAA7SessionVGMR, &unk_282391BB8, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, v2 + v6, v8, v9);
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyAA19ServiceSubscriptionVGMd, &_s11SeymourCore7PromiseVyAA19ServiceSubscriptionVGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMd, &_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyShyAA8BookmarkVGGMd, &_s11SeymourCore7PromiseVyShyAA8BookmarkVGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVySaySSGGMd, &_s11SeymourCore7PromiseVySaySSGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyAA20CatalogWorkoutDetailVGMd, &_s11SeymourCore7PromiseVyAA20CatalogWorkoutDetailVGMR, specialized closure #1 in Promise.then<A>(_:));
}

{
  return partial apply for specialized closure #1 in Promise.then<A>(_:)(a1, a2, &_s11SeymourCore7PromiseVyytGMd, &_s11SeymourCore7PromiseVyytGMR, specialized closure #1 in Promise.then<A>(_:));
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in Promise.catch(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return specialized closure #1 in Promise.catch(_:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t specialized closure #1 in Promise.then<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, &unk_282391AF0, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyAA19ServiceSubscriptionVGMd, &_s11SeymourCore7PromiseVyAA19ServiceSubscriptionVGMR, &unk_282391A78, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMd, &_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMR, &unk_282391A00, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, &unk_2823919B0, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyShyAA8BookmarkVGGMd, &_s11SeymourCore7PromiseVyShyAA8BookmarkVGGMR, &unk_282391960, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVySaySSGGMd, &_s11SeymourCore7PromiseVySaySSGGMR, &unk_282391870, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, &unk_2823918C0, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, &unk_282391910, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, &unk_282391820, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyAA20CatalogWorkoutDetailVGMd, &_s11SeymourCore7PromiseVyAA20CatalogWorkoutDetailVGMR, &unk_2823917A8, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

{
  return specialized closure #1 in Promise.then<A>(_:)(a1, a2, a3, a4, a5, &_s11SeymourCore7PromiseVyytGMd, &_s11SeymourCore7PromiseVyytGMR, &unk_282391758, partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:));
}

uint64_t specialized closure #1 in Promise.then<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v13 = Promise.operation.getter();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

void specialized closure #1 in closure #1 in Promise.then<A>(_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for Session();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SeymourCore7SessionVs5Error_pGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  outlined init with copy of Result<CatalogWorkoutDetail, Error>(a1, v20 - v14, &_ss6ResultOy11SeymourCore7SessionVs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = Promise.operation.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(closure #1 in Promise.resolve(_:)specialized partial apply, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for ServiceSubscription();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SeymourCore19ServiceSubscriptionVs5Error_pGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  outlined init with copy of Result<CatalogWorkoutDetail, Error>(a1, v20 - v14, &_ss6ResultOy11SeymourCore19ServiceSubscriptionVs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = Promise.operation.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(closure #1 in Promise.resolve(_:)specialized partial apply, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for ContentAvailability();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SeymourCore19ContentAvailabilityOs5Error_pGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  outlined init with copy of Result<CatalogWorkoutDetail, Error>(a1, v20 - v14, &_ss6ResultOy11SeymourCore19ContentAvailabilityOs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = Promise.operation.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(closure #1 in Promise.resolve(_:)specialized partial apply, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVy9WorkoutUI07CatalogD12DetailBridgeCGMd);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for CatalogWorkoutDetail();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SeymourCore20CatalogWorkoutDetailVs5Error_pGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  outlined init with copy of Result<CatalogWorkoutDetail, Error>(a1, v20 - v14, &_ss6ResultOy11SeymourCore20CatalogWorkoutDetailVs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = Promise.operation.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(partial apply for specialized closure #1 in Promise.resolve(_:), v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void specialized closure #1 in closure #1 in Promise.then<A>(_:)(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    v19 = a1;
    a5(&v24);
    v20 = a1;
    v21 = 1;
  }

  else
  {

    a3(&v24);
    v22 = Promise.operation.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v20 = a1;
    v21 = 0;
  }

  outlined consume of Result<[CatalogLockup], Error>(v20, v21);
}

{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    v19 = a1;
    a5(&v24);
    v20 = a1;
    v21 = 1;
  }

  else
  {

    a3(&v24);
    v22 = Promise.operation.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v20 = a1;
    v21 = 0;
  }

  outlined consume of Result<[CatalogLockup], Error>(v20, v21);
}

void specialized closure #1 in closure #1 in Promise.then<A>(_:)(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    v16 = a1;
    a5(&v19);
    outlined consume of Result<(), Error>(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(closure #1 in Promise.resolve(_:)specialized partial apply, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t specialized closure #1 in Promise.resolve(_:)(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t type metadata completion function for ExternalSeymourSessionStatusProvider()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(uint64_t a1)
{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, &_s11SeymourCore7PromiseVyytGMd, &_s11SeymourCore7PromiseVyytGMR, &unk_282391848, closure #1 in Promise.resolve(_:)specialized partial apply);
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, &unk_282391898, partial apply for specialized closure #1 in Promise.resolve(_:));
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, &_s11SeymourCore7PromiseVySaySSGGMd, &_s11SeymourCore7PromiseVySaySSGGMR, &unk_2823918E8, partial apply for specialized closure #1 in Promise.resolve(_:));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMd, &_s11SeymourCore7PromiseVyShyAA11AssetBundleVGGMR, &unk_282391938, partial apply for specialized closure #1 in Promise.resolve(_:));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, &unk_282391988, closure #1 in Promise.resolve(_:)specialized partial apply);
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMd, &_s11SeymourCore7PromiseVySayAA13CatalogLockupVGGMR, &unk_2823919D8, closure #1 in Promise.resolve(_:)specialized partial apply);
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, &_s11SeymourCore7PromiseVyytGMd, &_s11SeymourCore7PromiseVyytGMR, &unk_282391B18, closure #1 in Promise.resolve(_:)specialized partial apply);
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

void partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(void (*a1)(void **), uint64_t a2)
{
  v5 = *(type metadata accessor for CatalogWorkoutDetail() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, v6, v7, v8);
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, MEMORY[0x277D51A40]);
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, MEMORY[0x277D51C40]);
}

{
  partial apply for specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, MEMORY[0x277D53AE0]);
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, *(v2 + 16), *(v2 + 24), (v2 + 32));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, *(v2 + 16));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, *(v2 + 16), *(v2 + 24), (v2 + 32));
}

{
  specialized closure #1 in closure #1 in Promise.then<A>(_:)(a1, a2, *(v2 + 16), *(v2 + 24), (v2 + 32));
}

void outlined consume of Result<[CatalogLockup], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of Result<CatalogWorkoutDetail, Error>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in Promise.resolve(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t objectdestroy_51Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double ScreenAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}