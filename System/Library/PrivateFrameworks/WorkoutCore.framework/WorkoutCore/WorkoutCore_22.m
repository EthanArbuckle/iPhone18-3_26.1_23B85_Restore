uint64_t WorkoutStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized WorkoutStatePublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WorkoutStatePublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  WorkoutStatePublisher.protobuf.getter(v4);
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v6 = Message.serializedData(partial:)();
  _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v4, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static WorkoutStatePublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized WorkoutStatePublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLWorkoutPausedReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLWorkoutPausedReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVACSeAAWlTm_1(a2, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
    _s10Foundation4DateVACSeAAWlTm_1(a2, MEMORY[0x277CC88A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UInt] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd, &_sSaySuGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t specialized static NLWorkoutPausedReason.from(protobufValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  do
  {
    if (*v4 == 1)
    {
      v5 = *(v4 - 1);
      v6 = result | 2;
      if (v5 != 1)
      {
        v6 = result | 4;
      }

      if (v5)
      {
        result = v6;
      }

      else
      {
        result |= 1uLL;
      }
    }

    v4 += 16;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized static WorkoutStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutStatePublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  WorkoutStatePublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(v14);
    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v10, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return v14;
}

uint64_t specialized WorkoutStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v12 = type metadata accessor for WorkoutStatePublisher();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v3 = swift_allocObject();
    WorkoutStatePublisher.init()();

    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(v15);

    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v11, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return v3;
}

uint64_t type metadata accessor for WorkoutStatePublisher()
{
  result = type metadata singleton initialization cache for WorkoutStatePublisher;
  if (!type metadata singleton initialization cache for WorkoutStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutStatePublisher()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<[DateInterval]>, &_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
      if (v7 <= 0x3F)
      {
        v14 = *(v6 - 8) + 64;
        type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
        if (v9 <= 0x3F)
        {
          v15 = *(v8 - 8) + 64;
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>);
          if (v11 <= 0x3F)
          {
            v16 = *(v10 - 8) + 64;
            type metadata accessor for Published<NLWorkoutPausedReason>();
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Date?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<NLWorkoutPausedReason>()
{
  if (!lazy cache variable for type metadata for Published<NLWorkoutPausedReason>)
  {
    type metadata accessor for NLWorkoutPausedReason(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NLWorkoutPausedReason>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutStatePublisher.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStatePublisher.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

WorkoutCore::IntervalWorkoutKeyPath __swiftcall IntervalWorkoutKeyPath.init(block:blockCount:step:)(Swift::Int block, Swift::Int blockCount, Swift::Int step)
{
  *v3 = block;
  v3[1] = blockCount;
  v3[2] = step;
  result.step = step;
  result.blockCount = blockCount;
  result.block = block;
  return result;
}

double static IntervalWorkoutKeyPath.InitialState.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for InitialState != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27C729E28;
  result = *&static IntervalWorkoutKeyPath.InitialState;
  *a1 = static IntervalWorkoutKeyPath.InitialState;
  *(a1 + 16) = v1;
  return result;
}

WorkoutCore::IntervalWorkoutKeyPath_optional __swiftcall IntervalWorkoutKeyPath.init(serializedString:)(Swift::String serializedString)
{
  object = serializedString._object;
  countAndFlagsBits = serializedString._countAndFlagsBits;
  v4 = v1;
  v49 = serializedString;
  v5 = lazy protocol witness table accessor for type String and conformance String();
  v6 = MEMORY[0x20F2E7810](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v5);
  v7 = v6;
  if (v6[2] == 3)
  {
    v8 = v6[4];
    v9 = v6[5];
    if ((v9 ^ v8) >> 14)
    {
      v11 = v6[6];
      v10 = v6[7];
      v12 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v6[4], v6[5], v11, v10, 10);
      if ((v13 & 0x100) != 0)
      {

        v48 = specialized _parseInteger<A, B>(ascii:radix:)(v8, v9, v11, v10, 10);
        v22 = v21;

        if (v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v48 = v12;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      if (v7[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_33;
      }

      v23 = v7[8];
      v24 = v7[9];
      if ((v24 ^ v23) >> 14)
      {
        v26 = v7[10];
        v25 = v7[11];
        v27 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v7[8], v7[9], v26, v25, 10);
        if ((v28 & 0x100) != 0)
        {

          v29 = specialized _parseInteger<A, B>(ascii:radix:)(v23, v24, v26, v25, 10);
          v31 = v30;

          if ((v31 & 1) == 0)
          {
LABEL_25:
            if (v7[2] >= 3uLL)
            {
              v38 = v7[12];
              v39 = v7[13];
              v40 = v7[14];
              v41 = v7[15];

              if (!((v39 ^ v38) >> 14))
              {
                goto LABEL_17;
              }

              v42 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v38, v39, v40, v41, 10);
              if ((v43 & 0x100) != 0)
              {
                v44 = specialized _parseInteger<A, B>(ascii:radix:)(v38, v39, v40, v41, 10);
                v47 = v46;

                if ((v47 & 1) == 0)
                {
LABEL_31:

                  *v4 = v48;
                  *(v4 + 8) = v29;
                  *(v4 + 16) = v44;
                  *(v4 + 24) = 0;
                  goto LABEL_35;
                }
              }

              else
              {
                v44 = v42;
                v45 = v43;

                if ((v45 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

LABEL_18:
              if (one-time initialization token for core != -1)
              {
                swift_once();
              }

              v32 = type metadata accessor for Logger();
              __swift_project_value_buffer(v32, static WOLog.core);

              v15 = Logger.logObject.getter();
              v16 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                v18 = swift_slowAlloc();
                v49._countAndFlagsBits = v18;
                *v17 = 136315138;
                v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v49._countAndFlagsBits);

                *(v17 + 4) = v33;
                v20 = "One of the terms in '%s' does not convert to Int";
                goto LABEL_22;
              }

LABEL_23:

              goto LABEL_24;
            }

LABEL_33:
            __break(1u);
          }
        }

        else if ((v28 & 1) == 0)
        {
          v29 = v27;
          goto LABEL_25;
        }
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.core);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_23;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v49._countAndFlagsBits = v18;
  *v17 = 136315138;
  v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v49._countAndFlagsBits);

  *(v17 + 4) = v19;
  v20 = "String did not have three components: %s";
LABEL_22:
  _os_log_impl(&dword_20AEA4000, v15, v16, v20, v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x20F2E9420](v18, -1, -1);
  MEMORY[0x20F2E9420](v17, -1, -1);
LABEL_24:

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
LABEL_35:
  result.value.step = v36;
  result.value.blockCount = v35;
  result.value.block = v34;
  result.is_nil = v37;
  return result;
}

uint64_t IntervalWorkoutKeyPath.serializedString.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](46, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](46, 0xE100000000000000);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  return v7;
}

unint64_t IntervalWorkoutKeyPath.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  _StringGuts.grow(_:)(37);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0x203A7265746920, 0xE700000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](0x203A7065747320, 0xE700000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F2E6DC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutKeyPath(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalWorkoutKeyPath(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

WorkoutCore::RunningTrackProximity_optional __swiftcall RunningTrackProximity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t RunningTrackProximity.description.getter()
{
  v1 = 0x6172742061206E4FLL;
  v2 = 0x742061207261654ELL;
  if (*v0 != 2)
  {
    v2 = 0x61206E6F20746F4ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t lazy protocol witness table accessor for type RunningTrackProximity and conformance RunningTrackProximity()
{
  result = lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RunningTrackProximity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RunningTrackProximity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance RunningTrackProximity()
{
  v1 = 0x6172742061206E4FLL;
  v2 = 0x742061207261654ELL;
  if (*v0 != 2)
  {
    v2 = 0x61206E6F20746F4ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t getEnumTagSinglePayload for RunningTrackProximity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RunningTrackProximity(uint64_t result, unsigned int a2, unsigned int a3)
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

void Apple_Workout_Core_RunningTrackProximity.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a1 = v3;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.ts.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + *(v7 + 24), v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  Google_Protobuf_Timestamp.init()();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.ts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(v1 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.message.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(v1 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  outlined init with take of Apple_Workout_Core_DataLinkMessage(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.entries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_DataLinkMessage(v6, a1);
  }

  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessageEntry.message : Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_DataLinkMessage(v7, a2);
  }

  v11 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessageEntry.message : Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_DataLinkMessage(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(a2 + v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t outlined init with copy of Google_Protobuf_Timestamp?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void (*Apple_Workout_Core_DataLinkMessageEntry.message.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, v14);
  }

  return Apple_Workout_Core_DataLinkMessageEntry.message.modify;
}

void Apple_Workout_Core_DataLinkMessageEntry.message.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_DataLinkMessage((*a1)[5], v4);
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v5);
  }

  else
  {
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_DataLinkMessageEntry.hasMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Google_Protobuf_Timestamp?(v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_DataLinkMessageEntry.clearMessage()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(v0 + v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessageEntry.ts : Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v8 + 24), v7, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  Google_Protobuf_Timestamp.init()();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v7, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessageEntry.ts : Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(a2 + v9, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_DataLinkMessageEntry.ts.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + v15, v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    Google_Protobuf_Timestamp.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return Apple_Workout_Core_DataLinkMessageEntry.ts.modify;
}

void Apple_Workout_Core_DataLinkMessageEntry.ts.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_DataLinkMessageEntry.hasTs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v0 + *(v5 + 24), v4, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v6 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Google_Protobuf_Timestamp?(v4, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_DataLinkMessageEntry.clearTs()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(v0 + v1, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v2 = type metadata accessor for Google_Protobuf_Timestamp();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0), lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_DataLinkMessageBatch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DataLinkMessageBatch@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessageBatch@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DataLinkMessageBatch;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessageBatch()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  type metadata accessor for Google_Protobuf_Timestamp();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570]);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v13);
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v14 + 24), v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  (*(v10 + 32))(v13, v8, v9);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570]);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return (*(v10 + 8))(v13, v9);
}

Swift::Int Apple_Workout_Core_DataLinkMessageBatch.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_DataLinkMessageBatch@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_DataLinkMessageBatch()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessageEntry()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_DataLinkMessageBatch()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessageEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54 = a1;
  v2 = type metadata accessor for Google_Protobuf_Timestamp();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v47 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v47 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v25 = *(v24 + 20);
  v26 = *(v20 + 56);
  outlined init with copy of Google_Protobuf_Timestamp?(v54 + v25, v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v27 = v53 + v25;
  v28 = v53;
  outlined init with copy of Google_Protobuf_Timestamp?(v27, &v23[v26], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v29 = *(v11 + 48);
  if (v29(v23, 1, v10) != 1)
  {
    outlined init with copy of Google_Protobuf_Timestamp?(v23, v18, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    if (v29(&v23[v26], 1, v10) != 1)
    {
      outlined init with take of Apple_Workout_Core_DataLinkMessage(&v23[v26], v14);
      v33 = static Apple_Workout_Core_DataLinkMessage.== infix(_:_:)(v18, v14);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v14);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v18);
      outlined destroy of Google_Protobuf_Timestamp?(v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v18);
LABEL_6:
    v30 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR;
    v32 = v23;
LABEL_14:
    outlined destroy of Google_Protobuf_Timestamp?(v32, v30, v31);
    goto LABEL_15;
  }

  if (v29(&v23[v26], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Google_Protobuf_Timestamp?(v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
LABEL_8:
  v34 = *(v24 + 24);
  v35 = v50;
  v36 = *(v49 + 48);
  outlined init with copy of Google_Protobuf_Timestamp?(v54 + v34, v50, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  outlined init with copy of Google_Protobuf_Timestamp?(v28 + v34, v35 + v36, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 48);
  if (v39(v35, 1, v52) == 1)
  {
    if (v39(v35 + v36, 1, v37) == 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v35, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_13;
  }

  v40 = v48;
  outlined init with copy of Google_Protobuf_Timestamp?(v35, v48, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if (v39(v35 + v36, 1, v37) == 1)
  {
    (*(v38 + 8))(v40, v37);
LABEL_13:
    v30 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd;
    v31 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR;
    v32 = v35;
    goto LABEL_14;
  }

  v43 = v35 + v36;
  v44 = v47;
  (*(v38 + 32))(v47, v43, v37);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v38 + 8);
  v46(v44, v37);
  v46(v40, v37);
  outlined destroy of Google_Protobuf_Timestamp?(v35, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if (v45)
  {
    goto LABEL_18;
  }

LABEL_15:
  v41 = 0;
  return v41 & 1;
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessageBatch()
{
  type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for [Apple_Workout_Core_DataLinkMessageEntry], type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessageEntry()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for Apple_Workout_Core_DataLinkMessage?, type metadata accessor for Apple_Workout_Core_DataLinkMessage, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for Google_Protobuf_Timestamp?, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of Google_Protobuf_Timestamp?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id MirroredHostSummaryUpdate.hkWorkout.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

WorkoutCore::MirroredHostSummaryUpdate __swiftcall MirroredHostSummaryUpdate.init(hkWorkout:)(HKWorkout hkWorkout)
{
  v1->super.super.super.isa = hkWorkout.super.super.super.isa;
  result.hkWorkout.value = hkWorkout;
  return result;
}

uint64_t MirroredHostSummaryUpdate.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v43 - v8;
  v10 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v43 - v16;
  v18 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v19 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredBlob?(a1 + v18, v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    *v17 = 0;
    v17[8] = 1;
    *(v17 + 1) = xmmword_20B42FB30;
    v21 = &v17[*(v10 + 24)];
    UnknownStorage.init()();
    if (v20(v9, 1, v10) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v9, v17);
  }

  v22 = *v17;
  v23 = v17[8];
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v17, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v44 = v22;
  v45 = v23;
  MirroredBlobContentType.init(protobuf:)(&v44, &v46);
  v24 = v46;
  if (!v46)
  {
    v27 = v43[0];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.dataLink);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "[mirrored] cannot deserialize hkWorkout from protobuf (not supported)";
    v33 = v30;
    v34 = v29;
    v35 = v31;
    v36 = 2;
    goto LABEL_18;
  }

  if (v46 != 1)
  {
    v27 = v43[0];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.dataLink);
    v29 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v38))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v24;
    v32 = "[mirrored] cannot deserialize hkWorkout from unknown default: %ld";
    v33 = v38;
    v34 = v29;
    v35 = v31;
    v36 = 12;
LABEL_18:
    _os_log_impl(&dword_20AEA4000, v34, v33, v32, v35, v36);
    MEMORY[0x20F2E9420](v31, -1, -1);
LABEL_21:

    result = _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v19, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    v41 = 0;
    goto LABEL_22;
  }

  outlined init with copy of Apple_Workout_Core_MirroredBlob?(v19 + v18, v7);
  if (v20(v7, 1, v10) == 1)
  {
    *v15 = 0;
    v15[8] = 1;
    *(v15 + 1) = xmmword_20B42FB30;
    v25 = &v15[*(v10 + 24)];
    UnknownStorage.init()();
    v26 = v20(v7, 1, v10);
    v27 = v43[0];
    if (v26 != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v7, v15);
    v27 = v43[0];
  }

  _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
  v39 = *(v15 + 2);
  v40 = *(v15 + 3);
  outlined copy of Data._Representation(v39, v40);
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v41 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v19, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  result = outlined consume of Data._Representation(v39, v40);
LABEL_22:
  *v27 = v41;
  return result;
}

uint64_t MirroredHostSummaryUpdate.protobuf.getter()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return static Message.with(_:)();
}

void closure #1 in MirroredHostSummaryUpdate.protobuf.getter(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = objc_opt_self();
    v34[0] = 0;
    v10 = a2;
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v34];
    v12 = v34[0];
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v33[1] = v33;
      MEMORY[0x28223BE20](v16);
      LOBYTE(v33[-4]) = 1;
      v33[-3] = v13;
      v33[-2] = v15;
      outlined copy of Data._Representation(v13, v15);
      lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      static Message.with(_:)();
      outlined consume of Data._Representation(v13, v15);

      outlined consume of Data._Representation(v13, v15);
      v17 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(a1 + v17, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      outlined init with take of Apple_Workout_Core_MirroredBlob(v8, a1 + v17);
      (*(v5 + 56))(a1 + v17, 0, 1, v4);
    }

    else
    {
      v22 = v12;
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static WOLog.dataLink);
      v25 = v23;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = v23;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_20AEA4000, v26, v27, "[mirrored] cannot serialize hkWorkout using NSKeyedArchiver to protobuf, error: %@", v28, 0xCu);
        _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v29, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.dataLink);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "[mirrored] skip serialize hkWorkout to protobuf, hkWorkout is nil", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t MirroredHostSummaryUpdate.description.getter()
{
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9HKWorkoutCSgMd, &_sSo9HKWorkoutCSgMR);
  v1 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v1);

  return 0x756F6B726F576B68;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostSummaryUpdate()
{
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9HKWorkoutCSgMd, &_sSo9HKWorkoutCSgMR);
  v1 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v1);

  return 0x756F6B726F576B68;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostSummaryUpdate()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return static Message.with(_:)();
}

uint64_t static MirroredHostSummaryUpdate.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void MirroredHostSummaryUpdate.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MirroredHostSummaryUpdate.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostSummaryUpdate()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MirroredHostSummaryUpdate()
{
  v1 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostSummaryUpdate()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MirroredHostSummaryUpdate(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for MirroredHostSummaryUpdate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate()
{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostSummaryUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MirroredHostSummaryUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v4 = specialized static MetricPlatterProvider.featuredPlatters(workoutConfiguration:workoutSettingsManager:)(*(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration));
  v5 = static MetricPlatterProvider.nonFeaturedPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  result = specialized Array.append<A>(contentsOf:)(v5);
  v7 = 0;
  v8 = v4;
  v9 = *(v4 + 2);
  v10 = MEMORY[0x277D84F90];
LABEL_2:
  v11 = 16 * v7;
  while (1)
  {
    if (v9 == v7)
    {

      return v10;
    }

    if (v7 >= *(v8 + 2))
    {
      break;
    }

    ++v7;
    v12 = v11 + 16;
    v13 = v8[v11 + 33];
    v11 += 16;
    if (v13)
    {
      v14 = v8[v12 + 16];
      v15 = *&v8[v12 + 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 33) = 1;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MetricPlatterProvider.nonFeaturedPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v105 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v105 - v10;
  v12 = LiveWorkoutConfiguration.currentActivityType.getter();
  v122 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode);
  v124 = a1;
  outlined init with copy of CatalogWorkout?(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v11, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v13 = type metadata accessor for CatalogWorkout();
  v14 = *(v13 - 8);
  v15 = v12;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    outlined destroy of CatalogWorkout?(v11, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v16 = 0;
  }

  else
  {
    v17 = CatalogWorkout.mediaType.getter();
    v19 = v18;
    v20 = a2;
    v22 = v21;
    (*(v14 + 8))(v11, v13);
    v23 = v22 & 1;
    a2 = v20;
    v128 = v17;
    v129 = v19;
    v130 = v23;
    v125 = xmmword_20B438AF0;
    v126 = 1;
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    v16 = static PortableEnum<>.== infix(_:_:)();
    outlined consume of PortableEnum<CatalogMediaType>(v128, v129, v130);
  }

  v24 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  v25 = v124;
  swift_beginAccess();
  outlined init with copy of CatalogWorkout?(v25 + v24, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = type metadata accessor for UUID();
  v27 = (*(*(v26 - 8) + 48))(v7, 1, v26);
  outlined destroy of CatalogWorkout?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  v28 = swift_allocObject();
  v29 = v28;
  *(v28 + 16) = xmmword_20B423A90;
  if (v16)
  {
    *(v28 + 32) = 264;
    *(v28 + 40) = 0;

    return v29;
  }

  v123 = xmmword_20B423A90;
  v121 = v27;
  v30 = FIUIWorkoutSettingsManager.userConfiguredSupportedMetricsButDuration.getter();
  *(v29 + 32) = 256;
  *(v29 + 40) = v30;
  v31 = v15;
  if (*(v25 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform) != 1)
  {
    v36 = specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(v29, v25, a2);

    return v36;
  }

  inited = swift_initStackObject();
  inited[1] = v123;
  static MetricPlatterProvider.standardSecondPlatter(workoutSettingsManager:activityType:)(a2, v15, (inited + 2));
  v33 = [v15 supportsSegments];
  v116 = a2;
  if (v33)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v123;
    v35 = [v31 effectiveTypeIdentifier];
    *(v34 + 32) = 6;
    *(v34 + 40) = 0;
    *(v34 + 33) = v35 == 37;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v37 = v122;
  if ([v31 supportsDistanceSplits])
  {
    v120 = swift_allocObject();
    *(v120 + 16) = v123;
    v38 = [v31 effectiveTypeIdentifier];
    if ((v38 - 13) <= 0x3A && ((1 << (v38 - 13)) & 0x400800001400001) != 0)
    {
      v39 = [v31 isIndoor];
      v40 = v120;
      *(v120 + 32) = 9;
      *(v40 + 40) = 0;
      *(v40 + 33) = v39 ^ 1;
    }

    else
    {
      v104 = v120;
      *(v120 + 32) = 9;
      *(v104 + 40) = 0;
    }
  }

  else
  {
    v120 = MEMORY[0x277D84F90];
  }

  v41 = swift_initStackObject();
  *(v41 + 16) = v123;
  *(v41 + 32) = 263;
  v113 = v41 + 32;
  v119 = v41;
  *(v41 + 40) = 0;
  v42 = objc_opt_self();
  v43 = [v31 identifier];
  v44 = [v31 isIndoor];
  v115 = v42;
  if ([v42 fiui:v43 isHeartRateSupportedForActivityType:v44 isIndoor:?])
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v123;
    v46 = [v31 effectiveTypeIdentifier];
    *(v45 + 32) = 10;
    *(v45 + 40) = 0;
    v118 = v45;
    *(v45 + 33) = ((v46 - 13) < 0x3B) & (0x404C00081400009uLL >> (v46 - 13));
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

  v47 = [v31 effectiveTypeIdentifier];
  if (v47 == 13 || v47 == 37 && ([v31 isIndoor] & 1) == 0 && objc_msgSend(objc_opt_self(), sel_isRunningFormAvailable))
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v123;
    if ([v31 effectiveTypeIdentifier] == 13)
    {
      v49 = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      *(v48 + 32) = 12;
      *(v48 + 40) = 0;
      *(v48 + 33) = v49;
    }

    else
    {
      *(v48 + 32) = 12;
      *(v48 + 40) = 0;
    }
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  if ([v31 effectiveTypeIdentifier] == 13)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v123;
    v51 = [v31 effectiveTypeIdentifier];
    v117 = v50;
    if (v51 == 13)
    {
      v52 = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      *(v50 + 32) = 13;
      *(v50 + 40) = 0;
      *(v50 + 33) = v52;
    }

    else
    {
      *(v50 + 32) = 13;
      *(v50 + 40) = 0;
    }
  }

  else
  {
    v117 = MEMORY[0x277D84F90];
  }

  if ([v31 effectiveTypeIdentifier] == 13 && objc_msgSend(v115, sel_fiui_activitySupportsMetricType_activityType_activityMoveMode_, 1, v31, 1))
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v123;
    *(v53 + 32) = 271;
    *(v53 + 40) = 0;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v54 = [v31 effectiveTypeIdentifier];
  if (v54 == 70 || v54 == 52)
  {
    goto LABEL_40;
  }

  v55 = [v31 effectiveTypeIdentifier];
  v56 = MEMORY[0x277D84F90];
  v57 = v55 - 13;
  if ((v55 - 13) <= 0x3A)
  {
    if (((1 << v57) & 0x400000001000001) == 0)
    {
      if (((1 << v57) & 0x800000000800) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

LABEL_40:
    if ([v31 &selRef_dataProvider_didChangeActivityTypeTo_ + 7])
    {
      v56 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

LABEL_43:
    v58 = swift_allocObject();
    *(v58 + 16) = v123;
    v59 = [v31 effectiveTypeIdentifier] - 13;
    if (v59 <= 0x3A)
    {
      if (((1 << v59) & 0x400000001000001) != 0)
      {
        v60 = [v31 &selRef_dataProvider_didChangeActivityTypeTo_ + 7] ^ 1;
LABEL_49:
        v56 = v58;
        *(v58 + 32) = 14;
        *(v58 + 40) = 0;
        *(v58 + 33) = v60;
        goto LABEL_50;
      }

      if (((1 << v59) & 0x800000000800) != 0)
      {
        v60 = 1;
        goto LABEL_49;
      }
    }

    v60 = 0;
    goto LABEL_49;
  }

LABEL_50:
  v127 = v29;
  v61 = v56;

  v115 = inited;
  specialized Array.append<A>(contentsOf:)(v62);

  specialized Array.append<A>(contentsOf:)(v63);

  v114 = v34;
  specialized Array.append<A>(contentsOf:)(v64);

  specialized Array.append<A>(contentsOf:)(v65);

  v110 = v61;
  specialized Array.append<A>(contentsOf:)(v66);

  v112 = v48;
  specialized Array.append<A>(contentsOf:)(v67);

  specialized Array.append<A>(contentsOf:)(v68);

  specialized Array.append<A>(contentsOf:)(v69);

  specialized Array.append<A>(contentsOf:)(v70);
  v71 = v127;
  v72 = specialized static MetricPlatterStore.read(for:)(v31);
  v107 = specialized static MetricPlatterProvider.addMissingSupportedPlatters(userConfiguredMetricPlatters:supportedMetricPlatters:)(v72, v71);
  v73 = specialized static MetricPlatterProvider.filterSupportedMetricPlatters(allMetricPlatters:supportedMetricPlatters:)(v107, v71);
  v74 = v73;
  v109 = v71;
  v108 = v72;
  if (v121 != 1)
  {
    v75 = specialized static MetricPlatterProvider.addGymKitMetrics(platters:workoutSettingsManager:)(v73, v116);

    v74 = v75;
  }

  v111 = v53;
  *&v123 = v29;
  v76 = *(v74 + 16);
  if (!v76)
  {
    v79 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v77 = 0;
  v78 = v74 + 32;
  v105 = v76 - 1;
  v79 = MEMORY[0x277D84F90];
  v106 = v74 + 32;
  do
  {
    v80 = (v78 + 16 * v77);
    v81 = v77;
    while (1)
    {
      if (v81 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v82 = *v80;
      v83 = v80[1];
      v84 = *(v80 + 1);
      if (v37 != 2)
      {
        if (v37 != 1)
        {
          goto LABEL_81;
        }

LABEL_63:
        v86 = *(v80 + 1);

        goto LABEL_65;
      }

      if (v82 == 12)
      {
        break;
      }

      if (v82 != 13)
      {
        goto LABEL_63;
      }

LABEL_56:
      ++v81;
      v80 += 16;
      if (v76 == v81)
      {
        goto LABEL_72;
      }
    }

    v85 = *(v80 + 1);

    if ([v31 effectiveTypeIdentifier] != 13)
    {

      goto LABEL_56;
    }

    LOBYTE(v82) = 12;
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v125 = v79;
    v88 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 16) + 1, 1);
      v79 = v125;
    }

    v90 = *(v79 + 16);
    v89 = *(v79 + 24);
    if (v90 >= v89 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
      v79 = v125;
    }

    *(v79 + 16) = v90 + 1;
    v91 = v79 + 16 * v90;
    *(v91 + 32) = v82;
    v77 = v81 + 1;
    *(v91 + 33) = v83;
    *(v91 + 40) = v84;
    v31 = v88;
    v37 = v122;
    v78 = v106;
  }

  while (v105 != v81);
LABEL_72:
  v92 = v116;
  v93 = specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(v79, v124, v116);
  v94 = [v92 defaultMetricsProvider];
  if (v94)
  {
    v95 = v94;
    v96 = v121 != 1;

    v97 = v115;
    swift_setDeallocating();
    v98 = v97[2];
    swift_arrayDestroy();

    v99 = v119;
    swift_setDeallocating();
    v100 = *(v99 + 16);
    swift_arrayDestroy();
    v101 = [v95 supportedMetricsWithIsMachineWorkout:v96 activityType:v31];

    if (v101)
    {
      type metadata accessor for NSNumber();
      v102 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v102 = MEMORY[0x277D84F90];
    }

    v29 = specialized static MetricPlatterProvider.filterUnsupportedMetrics(from:supportedMetrics:)(v93, v102);

    return v29;
  }

  else
  {
LABEL_80:
    __break(1u);
LABEL_81:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void static MetricPlatterProvider.standardSecondPlatter(workoutSettingsManager:activityType:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 defaultMetricsProvider];
  if (!v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 defaultSecondPlatterMetrics];

  if (!v7)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v21 = a2;
  v22 = a3;
  type metadata accessor for NSNumber();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      *&v11[8 * v17 + 32] = v15;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:

  if ([v21 effectiveTypeIdentifier] == 13)
  {
    v18 = objc_opt_self();
    v19 = v22;
    if ([v18 hasHadPairedCyclingPowerSensors])
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 hasHadPairedCyclingCadenceSensors];
    }
  }

  else
  {
    v20 = 0;
    v19 = v22;
  }

  *v19 = 1;
  *(v19 + 8) = v11;
  *(v19 + 1) = v20;
}

void static MetricPlatterProvider.filterEmptyMetricPlatters(from:liveWorkoutConfiguration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v46 = a1 + 32;
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v44 = *(a1 + 16);
  v41 = MEMORY[0x277D84F90];
  v42 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform;
  v49 = *MEMORY[0x277CCCB40];
  while (1)
  {
    if (v4 >= v2)
    {
      goto LABEL_59;
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = (v46 + 16 * v4);
    v8 = v7[1];
    v9 = *(v7 + 1);
    ++v4;
    v10 = *v7;
    if (v10 == 1)
    {
      if (!v9)
      {
        goto LABEL_6;
      }

      v45 = v7[1];
      v47 = v6;
      v48 = v6;
      v56 = *(v9 + 16);
      if (v56)
      {
        v11 = *(a2 + v43);
        v55 = *(a2 + v42);
        v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        v13 = one-time initialization token for core;

        if (v13 != -1)
        {
          swift_once();
        }

        v53 = v9 + 32;
        v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        v54 = v12;
        swift_beginAccess();
        v57 = v11;
        v50 = v14;
        swift_beginAccess();
        v15 = 0;
        v51 = MEMORY[0x277D84F90];
        v52 = v9;
        while (1)
        {
          if (v15 >= *(v9 + 16))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v16 = *(v53 + 8 * v15);
          v17 = type metadata accessor for Logger();
          __swift_project_value_buffer(v17, static WOLog.core);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_20AEA4000, v18, v19, "[UltraMode] Not supported for hardware, returning false", v20, 2u);
            MEMORY[0x20F2E9420](v20, -1, -1);
          }

          v21 = 0x3FC1FFFFFuLL >> v16;
          if (v16 > 0x24)
          {
            LOBYTE(v21) = 1;
          }

          v22 = *(v57 + v54) == 1 ? v21 : 1;
          if ((v55 & 1) == 0)
          {
            break;
          }

          v23 = v22;
LABEL_41:
          if (v23)
          {
            v34 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1);
              v34 = v51;
            }

            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            v9 = v52;
            if (v36 >= v35 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v34 = v51;
            }

            *(v34 + 16) = v36 + 1;
            v51 = v34;
            *(v34 + 8 * v36 + 32) = v16;
            goto LABEL_16;
          }

LABEL_15:
          v9 = v52;
LABEL_16:
          if (v56 == ++v15)
          {
            goto LABEL_4;
          }
        }

        if (v16 - 37 < 4 || v16 == 5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v23 = v58;
          if (v16 <= 0x30)
          {
LABEL_30:
            if (((1 << v16) & 0x1061800C44112) != 0)
            {
              v24 = *(v57 + v50);
              if ([v24 isIndoor])
              {
                v25 = a2;
                [v24 effectiveTypeIdentifier];
                v26 = _HKWorkoutDistanceTypeForActivityType();
                if (!v26)
                {
                  goto LABEL_61;
                }

                v27 = v26;
                v28 = [v26 identifier];
                v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v31 = v30;

                if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
                {

                  a2 = v25;
LABEL_37:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if ((v22 & v58 & 1) == 0)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_41;
                }

                v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                a2 = v25;
                if (v33)
                {
                  goto LABEL_37;
                }
              }
            }
          }
        }

        else
        {
          v23 = 1;
          if (v16 <= 0x30)
          {
            goto LABEL_30;
          }
        }

        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_41;
      }

      v51 = MEMORY[0x277D84F90];
LABEL_4:
      v5 = *(v51 + 16);

      if (v5)
      {
        LOBYTE(v10) = 1;
        v2 = v44;
        goto LABEL_51;
      }

      v2 = v44;
      v6 = v47;
      v4 = v48;
LABEL_6:
      if (v6 == v2)
      {
        return;
      }
    }

    else
    {
      v45 = v7[1];
      v47 = v6;
      v48 = v6;

LABEL_51:
      v37 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1);
        v37 = v41;
      }

      v4 = v48;
      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v4 = v48;
        v37 = v41;
      }

      *(v37 + 16) = v39 + 1;
      v41 = v37;
      v40 = v37 + 16 * v39;
      *(v40 + 32) = v10;
      *(v40 + 33) = v45;
      *(v40 + 40) = v9;
      if (v47 == v2)
      {
        return;
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t key path getter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(char *a1, void **a2)
{
  return key path setter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

char *specialized static MetricPlatterProvider.featuredPlatters(workoutConfiguration:workoutSettingsManager:)(uint64_t a1)
{
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = MEMORY[0x277D84F90];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v13 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v13 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v6 + 1, 1, v4);
      }

      v8 = 5;
    }

    else if (v3 == 3)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      }

      v8 = 4;
    }

    else
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v14 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v14 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6 + 1, 1, v4);
      }

      v8 = 11;
    }

LABEL_19:
    *(v4 + 2) = v7;
    v15 = &v4[16 * v6];
    v15[32] = v8;
    v15[33] = 1;
    *(v15 + 5) = 0;
    return v4;
  }

  if (*(a1 + v2))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    v11 = v9 >> 1;
    v6 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      v9 = *(v4 + 3);
      v11 = v9 >> 1;
    }

    *(v4 + 2) = v6;
    v12 = &v4[16 * v10];
    *(v12 + 16) = 258;
    *(v12 + 5) = 0;
    v7 = v10 + 2;
    if (v11 < v7)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7, 1, v4);
    }

    v8 = 3;
    goto LABEL_19;
  }

  return v4;
}

uint64_t outlined init with copy of CatalogWorkout?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CatalogWorkout?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized static MetricPlatterProvider.addMissingSupportedPlatters(userConfiguredMetricPlatters:supportedMetricPlatters:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v26;
    v6 = (a1 + 32);
    v7 = *(v26 + 16);
    do
    {
      v9 = *v6;
      v6 += 16;
      v8 = v9;
      v10 = *(v26 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
      }

      *(v26 + 16) = v7 + 1;
      *(v26 + v7++ + 32) = v8;
      --v4;
    }

    while (v4);
  }

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore17MetricPlatterTypeO_SayAFGTt0g5Tf4g_n(v5);

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a2 + 32;
    v16 = MEMORY[0x277D84F90];
    v25 = v15;
    do
    {
      v17 = v15 + 16 * v14;
      v18 = v14;
      while (1)
      {
        if (v18 >= v13)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_23;
        }

        v19 = *(v17 + 8);
        v20 = *(v17 + 1);
        v21 = *v17;

        if ((specialized Set.contains(_:)(v21, v11) & 1) == 0)
        {
          break;
        }

        ++v18;
        v17 += 16;
        if (v14 == v13)
        {
          goto LABEL_21;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 33) = v20;
      *(v24 + 40) = v19;
      v15 = v25;
    }

    while (v14 != v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_21:

  specialized Array.append<A>(contentsOf:)(v16);
  return a1;
}

uint64_t specialized static MetricPlatterProvider.filterSupportedMetricPlatters(allMetricPlatters:supportedMetricPlatters:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v25;
    v6 = (a2 + 32);
    v7 = *(v25 + 16);
    do
    {
      v9 = *v6;
      v6 += 16;
      v8 = v9;
      v10 = *(v25 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
      }

      *(v25 + 16) = v7 + 1;
      *(v25 + v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore17MetricPlatterTypeO_SayAFGTt0g5Tf4g_n(v4);

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a1 + 32;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = v15 + 16 * v14;
      v18 = v14;
      while (1)
      {
        if (v18 >= v13)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_23;
        }

        v19 = *(v17 + 8);
        v20 = *(v17 + 1);
        v21 = *v17;

        if (specialized Set.contains(_:)(v21, v11))
        {
          break;
        }

        ++v18;
        v17 += 16;
        if (v14 == v13)
        {
          goto LABEL_21;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 33) = v20;
      *(v24 + 40) = v19;
    }

    while (v14 != v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v16;
}

uint64_t specialized static MetricPlatterProvider.addGymKitMetrics(platters:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v2 = a1;
  v20 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 32;

    v6 = 0;
    while (2)
    {
      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v7)
          {
            goto LABEL_9;
          }

          ++v6;
          v5 += 16;
          if (v3 == v6)
          {
            return v2;
          }

          continue;
        default:

LABEL_9:
          v8 = *(v5 + 1);
          v9 = *(v5 + 8);
          v16[0] = *v5;
          v16[1] = v8;
          v17 = v9;

          static MetricPlatter.addGymKitMetrics(to:workoutSettingsManager:)(a2, v16, v18);

          v10 = v18[0];
          v11 = v18[1];
          v12 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
          result = swift_initStackObject();
          *(result + 16) = xmmword_20B423A90;
          *(result + 32) = v10;
          *(result + 33) = v11;
          *(result + 40) = v12;
          if (!__OFADD__(v6, 1))
          {
            v14 = result;
            specialized Array.replaceSubrange<A>(_:with:)(v6, v6 + 1, result);
            swift_setDeallocating();
            v15 = *(v14 + 16);
            swift_arrayDestroy();
            return v20;
          }

          __break(1u);
          break;
      }

      break;
    }
  }

  else
  {

    return v2;
  }

  return result;
}

uint64_t specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(char *a1, uint64_t a2, void *a3)
{

  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 effectiveTypeIdentifier];

  if (v6 == 13)
  {
    v124 = [objc_opt_self() hasHadPairedCyclingCadenceSensors];
    v7 = *(a1 + 2);
    if (!v7)
    {
      return a1;
    }
  }

  else
  {
    v124 = 0;
    v7 = *(a1 + 2);
    if (!v7)
    {
      return a1;
    }
  }

  v8 = 0;
  v135 = a1 + 32;
  v9 = 5;
  if (v124)
  {
    v9 = 15;
  }

  v122 = v9;
  v125 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v123 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform;
  v128 = *MEMORY[0x277CCCB40];
  v138 = a2;
  v126 = v7;
  while (1)
  {
    v12 = &v135[16 * v8];
    v13 = *(v12 + 1);
    v14 = *v12;
    v141 = v13;
    if (v14 > 9)
    {
      switch(v14)
      {
        case 10:

          v22 = specialized static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)(a3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
          }

          if (v8 >= *(a1 + 2))
          {
            goto LABEL_196;
          }

          break;
        case 12:
          v58 = *(a2 + v125);
          type metadata accessor for MultiSportWorkoutConfiguration();
          if (swift_dynamicCastClass())
          {
            swift_getKeyPath();
            swift_getKeyPath();

            v59 = v58;
            static Published.subscript.getter();

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            if (v144 >> 62)
            {
              v60 = __CocoaSet.count.getter();
            }

            else
            {
              v60 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v144 >= v60)
            {
              goto LABEL_206;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            if ((v144 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x20F2E7A20](v144, v144);
            }

            else
            {
              if ((v144 & 0x8000000000000000) != 0)
              {
                goto LABEL_199;
              }

              if (v144 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_200;
              }

              v61 = *(9 * v144 + 0x20);
            }

            v62 = v61;

            v63 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
            swift_beginAccess();
            v64 = *&v62[v63];

            a2 = v138;
          }

          else
          {
            v69 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
            swift_beginAccess();
            v70 = *&v58[v69];

            v64 = v70;
          }

          v71 = [v64 effectiveTypeIdentifier];

          if (v71 == 13)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
            v22 = swift_allocObject();
            *(v22 + 1) = xmmword_20B423A20;
            *(v22 + 4) = 11;
            *(v22 + 5) = v122;
            *(v22 + 6) = 49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
            }

            if (v8 >= *(a1 + 2))
            {
              goto LABEL_202;
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
            }

            v22 = &outlined read-only object #0 of static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:);
            if (v8 >= *(a1 + 2))
            {
              goto LABEL_201;
            }
          }

          break;
        case 13:

          v22 = specialized static PowerZonesPlatterMetricsProvider.metrics(workoutSettingsManager:shouldShowCadenceMetrics:)(a3, v124);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
          }

          if (v8 >= *(a1 + 2))
          {
            goto LABEL_195;
          }

          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v14 >= 2)
    {
      if (v14 == 6)
      {

        v51 = [a3 supportedMetrics];
        if (!v51)
        {
          goto LABEL_204;
        }

        v52 = v51;
        type metadata accessor for NSNumber();
        lazy protocol witness table accessor for type NSNumber and conformance NSObject();
        v53 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v131 = v8;
        v134 = a1;
        if ((v53 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v53 = v145;
          v54 = v146;
          v55 = v147;
          v56 = v148;
          v57 = v149;
        }

        else
        {
          v93 = -1 << *(v53 + 32);
          v54 = v53 + 56;
          v55 = ~v93;
          v94 = -v93;
          if (v94 < 64)
          {
            v95 = ~(-1 << v94);
          }

          else
          {
            v95 = -1;
          }

          v57 = v95 & *(v53 + 56);

          v56 = 0;
        }

        v96 = (v55 + 64) >> 6;
        v97 = MEMORY[0x277D84F90];
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_150;
        }

LABEL_147:
        v98 = __CocoaSet.Iterator.next()();
        if (v98)
        {
          v143 = v98;
          swift_dynamicCast();
          v99 = v144;
          v100 = v56;
          v101 = v57;
          if (v144)
          {
            while (1)
            {
              v104 = [v99 unsignedIntegerValue];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 2) + 1, 1, v97);
              }

              v106 = *(v97 + 2);
              v105 = *(v97 + 3);
              if (v106 >= v105 >> 1)
              {
                v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v97);
              }

              *(v97 + 2) = v106 + 1;
              *&v97[8 * v106 + 32] = v104;
              v56 = v100;
              v57 = v101;
              if (v53 < 0)
              {
                goto LABEL_147;
              }

LABEL_150:
              v102 = v56;
              v103 = v57;
              v100 = v56;
              if (!v57)
              {
                break;
              }

LABEL_154:
              v101 = (v103 - 1) & v103;
              v99 = *(*(v53 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v103)))));
              if (!v99)
              {
                goto LABEL_161;
              }
            }

            while (1)
            {
              v100 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_192;
              }

              if (v100 >= v96)
              {
                break;
              }

              v103 = *(v54 + 8 * v100);
              ++v102;
              if (v103)
              {
                goto LABEL_154;
              }
            }
          }
        }

LABEL_161:
        outlined consume of Set<NSNumber>.Iterator._Variant();

        v107 = specialized Sequence<>.contains(_:)(1, v97);
        v108 = &qword_282243038;
        if (!v107)
        {
          v108 = &qword_282243078;
        }

        v109 = *v108;
        if (*v108)
        {
          if (v107)
          {
            v110 = &outlined read-only object #0 of one-time initialization function for metricsWithDistance;
          }

          else
          {
            v110 = &outlined read-only object #0 of one-time initialization function for metricsWithoutDistance;
          }

          v111 = v110 + 32;

          v112 = 0;
          v22 = MEMORY[0x277D84F90];
          do
          {
            v115 = *&v111[8 * v112];
            v116 = *(v97 + 2);
            v117 = 32;
            while (v116)
            {
              v118 = *&v97[v117];
              v117 += 8;
              --v116;
              if (v118 == v115)
              {
                v144 = v22;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1);
                }

                v114 = *(v22 + 2);
                v113 = *(v22 + 3);
                if (v114 >= v113 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1);
                }

                *(v22 + 2) = v114 + 1;
                *&v22[8 * v114 + 32] = v115;
                break;
              }
            }

            ++v112;
          }

          while (v112 != v109);
        }

        else
        {

          v22 = MEMORY[0x277D84F90];
        }

        a1 = v134;
        a2 = v138;
        v7 = v126;
        v8 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v134);
        }

        if (v131 >= *(a1 + 2))
        {
          goto LABEL_197;
        }

        goto LABEL_8;
      }

      if (v14 != 9)
      {
        goto LABEL_9;
      }

      v15 = [a3 supportedMetrics];
      if (!v15)
      {
        goto LABEL_205;
      }

      v16 = v15;
      type metadata accessor for NSNumber();
      lazy protocol witness table accessor for type NSNumber and conformance NSObject();
      v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v129 = v8;
      v132 = a1;
      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v17 = v150;
        v18 = v151;
        v19 = v152;
        v20 = v153;
        v21 = v154;
      }

      else
      {
        v72 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v19 = ~v72;
        v73 = -v72;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v21 = v74 & *(v17 + 56);

        v20 = 0;
      }

      v75 = (v19 + 64) >> 6;
      v76 = MEMORY[0x277D84F90];
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_116;
      }

      while (1)
      {
        v77 = __CocoaSet.Iterator.next()();
        if (!v77)
        {
          break;
        }

        v143 = v77;
        swift_dynamicCast();
        v78 = v144;
        i = v20;
        v80 = v21;
        if (!v144)
        {
          break;
        }

        while (1)
        {
          v83 = [v78 unsignedIntegerValue];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
          }

          v85 = *(v76 + 2);
          v84 = *(v76 + 3);
          if (v85 >= v84 >> 1)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v76);
          }

          *(v76 + 2) = v85 + 1;
          *&v76[8 * v85 + 32] = v83;
          v20 = i;
          v21 = v80;
          if (v17 < 0)
          {
            break;
          }

LABEL_116:
          v81 = v20;
          v82 = v21;
          for (i = v20; !v82; ++v81)
          {
            i = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_191;
            }

            if (i >= v75)
            {
              goto LABEL_127;
            }

            v82 = *(v18 + 8 * i);
          }

          v80 = (v82 - 1) & v82;
          v78 = *(*(v17 + 48) + ((i << 9) | (8 * __clz(__rbit64(v82)))));
          if (!v78)
          {
            goto LABEL_127;
          }
        }
      }

LABEL_127:
      outlined consume of Set<NSNumber>.Iterator._Variant();

      if (!specialized Sequence<>.contains(_:)(1, v76))
      {
        goto LABEL_206;
      }

      v86 = 0;
      v22 = MEMORY[0x277D84F90];
      a2 = v138;
      do
      {
        v89 = outlined read-only object #0 of one-time initialization function for metricsWithDistance[v86 + 4];
        v90 = *(v76 + 2);
        v91 = 32;
        while (v90)
        {
          v92 = *&v76[v91];
          v91 += 8;
          --v90;
          if (v92 == v89)
          {
            v144 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1);
            }

            v88 = *(v22 + 2);
            v87 = *(v22 + 3);
            if (v88 >= v87 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
            }

            *(v22 + 2) = v88 + 1;
            *&v22[8 * v88 + 32] = v89;
            break;
          }
        }

        ++v86;
      }

      while (v86 != 4);

      a1 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v132);
      }

      v7 = v126;
      v8 = v129;

      if (v129 >= *(a1 + 2))
      {
        goto LABEL_198;
      }

      goto LABEL_8;
    }

    v130 = v8;
    v133 = a1;
    if (!v13)
    {
      v65 = 0;
      v29 = MEMORY[0x277D84F90];
      goto LABEL_88;
    }

    v23 = *(v13 + 16);
    if (v23)
    {
      break;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_82:
    swift_beginAccess();
    if (static MetricSlotProvider.standardMetricsAllowed < 0)
    {
      goto LABEL_194;
    }

    v66 = v29[2];
    if (v66 >= static MetricSlotProvider.standardMetricsAllowed)
    {
      v66 = static MetricSlotProvider.standardMetricsAllowed;
    }

    if (static MetricSlotProvider.standardMetricsAllowed)
    {
      v65 = v66;
    }

    else
    {
      v65 = 0;
    }

LABEL_88:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = MEMORY[0x277D84F90];
    }

    v68 = *(v67 + 16);
    swift_unknownObjectRelease();

    if (v68 == v65)
    {
      v22 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v22)
      {
        goto LABEL_94;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (v65)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
        v22 = swift_allocObject();
        v119 = _swift_stdlib_malloc_size_3(v22);
        v120 = v119 - 32;
        if (v119 < 32)
        {
          v120 = v119 - 25;
        }

        *(v22 + 2) = v65;
        *(v22 + 3) = 2 * (v120 >> 3);
        memcpy(v22 + 32, v29 + 4, 8 * v65);
        goto LABEL_93;
      }
    }

    v22 = MEMORY[0x277D84F90];
LABEL_93:
    swift_unknownObjectRelease();
LABEL_94:
    a1 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
    }

    v7 = v126;
    v8 = v130;
    if (v130 >= *(a1 + 2))
    {
      goto LABEL_193;
    }

LABEL_8:
    v10 = &a1[16 * v8];
    v11 = *(v10 + 5);
    *(v10 + 5) = v22;

LABEL_9:
    if (++v8 == v7)
    {
      return a1;
    }
  }

  v24 = *(a2 + v125);
  v140 = *(a2 + v123);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  v26 = one-time initialization token for core;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v137 = v27;
  swift_beginAccess();
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v30 = v141;
  v142 = v24;
  v139 = v25;
  while (v28 < *(v30 + 16))
  {
    v31 = *(v30 + 8 * v28 + 32);
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.core);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20AEA4000, v33, v34, "[UltraMode] Not supported for hardware, returning false", v35, 2u);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    v36 = 0x3FC1FFFFFuLL >> v31;
    if (v31 > 0x24)
    {
      LOBYTE(v36) = 1;
    }

    if (*(v24 + v25) == 1)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1;
    }

    if ((v140 & 1) == 0)
    {
      if (v31 - 37 < 4 || v31 == 5)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v38 = v143;
        if (v31 <= 0x30)
        {
LABEL_44:
          if (((1 << v31) & 0x1061800C44112) != 0)
          {
            v39 = *(v142 + v137);
            if ([v39 isIndoor])
            {
              v136 = v29;
              v40 = v23;
              [v39 effectiveTypeIdentifier];
              v41 = _HKWorkoutDistanceTypeForActivityType();
              if (!v41)
              {
                goto LABEL_203;
              }

              v42 = v41;
              v43 = [v41 identifier];
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v45;

              if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
              {

                v23 = v40;
                v29 = v136;
LABEL_51:
                swift_getKeyPath();
                swift_getKeyPath();
                a2 = v138;
                static Published.subscript.getter();

                if ((v37 & v143 & 1) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_55;
              }

              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = v40;
              v29 = v136;
              if (v48)
              {
                goto LABEL_51;
              }
            }

            a2 = v138;
          }
        }
      }

      else
      {
        v38 = 1;
        if (v31 <= 0x30)
        {
          goto LABEL_44;
        }
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_55;
    }

    v38 = v37;
LABEL_55:
    if (v38)
    {
      v144 = v29;
      v25 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1);
      }

      v50 = v29[2];
      v49 = v29[3];
      v24 = v142;
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      }

      v29[2] = v50 + 1;
      v29[v50 + 4] = v31;
      goto LABEL_30;
    }

LABEL_29:
    v24 = v142;
    v25 = v139;
LABEL_30:
    ++v28;
    v30 = v141;
    if (v23 == v28)
    {

      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static MetricPlatterProvider.filterUnsupportedMetrics(from:supportedMetrics:)(uint64_t a1, unint64_t a2)
{
  v37 = a2;
  v2 = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    return v2;
  }

  v5 = 0;
  v36 = v2 + 32;
  v35 = xmmword_20B423A90;
  while (1)
  {
    v6 = &v36[16 * v5];
LABEL_4:
    if (v5 >= v3)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_40;
    }

    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v6[1];
    v38 = v7;
    v39 = v5 + 1;
    switch(v7)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          switch(v38)
          {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
              v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v11)
              {
                goto LABEL_14;
              }

              ++v5;
              v6 += 16;
              if (v39 == v3)
              {
                return v2;
              }

              goto LABEL_4;
            default:
              goto LABEL_13;
          }
        }

        break;
      default:

LABEL_13:

        break;
    }

LABEL_14:
    v42 = v9;
    if (v8)
    {
      v12 = *(v8 + 16);
      if (v12)
      {
        v33 = v3;
        v34 = v2;

        v13 = 32;
        v14 = MEMORY[0x277D84F90];
        do
        {
          v17 = *(v8 + v13);
          isa = UInt._bridgeToObjectiveC()().super.super.isa;
          v40 = isa;
          MEMORY[0x28223BE20](isa);
          v32[2] = &v40;
          v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v32, v37);

          if (v19)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
              v14 = v41;
            }

            v16 = *(v14 + 16);
            v15 = *(v14 + 24);
            if (v16 >= v15 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
              v14 = v41;
            }

            *(v14 + 16) = v16 + 1;
            *(v14 + 8 * v16 + 32) = v17;
          }

          v13 += 8;
          --v12;
        }

        while (v12);
        swift_bridgeObjectRelease_n();
        v9 = v42;
        v3 = v33;
        v2 = v34;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v14 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
    result = swift_initStackObject();
    *(result + 16) = v35;
    v21 = v39;
    *(result + 32) = v38;
    *(result + 33) = v9;
    *(result + 40) = v14;
    v22 = *(v2 + 2);
    if (v22 < v21)
    {
      goto LABEL_41;
    }

    v23 = __OFSUB__(v21, v5);
    v24 = v21 - v5;
    if (v23)
    {
      goto LABEL_42;
    }

    v23 = __OFSUB__(1, v24);
    v25 = 1 - v24;
    if (v23)
    {
      goto LABEL_43;
    }

    v26 = v22 + v25;
    if (__OFADD__(v22, v25))
    {
      goto LABEL_44;
    }

    v27 = result;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v2;
    if (!v28 || v26 > *(v2 + 3) >> 1)
    {
      if (v22 <= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v22;
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v29, 1, v2);
      v43 = v2;
    }

    v30 = v5;
    v5 = v39;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v30, v39, 1, v27);
    swift_setDeallocating();
    v31 = *(v27 + 16);
    swift_arrayDestroy();

    if (v5 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricPlatterProvider(_WORD *result, int a2, int a3)
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

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Station.Mood();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), v1, 0);
}

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)()
{
  HKWorkoutActivityType.moodForWorkoutType.getter([*(v0 + 16) identifier], *(v0 + 48));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = MediaPlaybackController.initiateMoodStationPlayback(for:);
  v2 = *(v0 + 48);

  return MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(v2);
}

{
  v1 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  if (v1)
  {

    return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), 0, 0);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "No mood station identifier returned from request", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = v0[6];

    v7 = v0[1];

    return v7();
  }
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = static MusicSiriRepresentationAppIntentDispatcher.shared;
  v3 = unk_27C7299A0;
  v0[10] = static MusicSiriRepresentationAppIntentDispatcher.shared;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = MediaPlaybackController.initiateMoodStationPlayback(for:);
  v5 = v0[8];

  return MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(v5, v1, v2, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v1 + 48);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), v5, 0);
}

id static NLSessionActivityFactory.make(configuration:uuid:formattingManager:elevationUnit:healthStore:builder:experienceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(NLSessionActivity);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithConfiguration:a1 UUID:isa formattingManager:a3 elevationUnit:a4 healthStore:a5 builder:a6 experienceType:a7];

  return v15;
}

id NLSessionActivityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLSessionActivityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLSessionActivityFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NLSessionActivityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLSessionActivityFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static PowerZonesPlatterMetricsProvider.metrics(workoutSettingsManager:shouldShowCadenceMetrics:)(void *a1, char a2)
{
  v30 = xmmword_20B438CD0;
  v2 = 5;
  if (a2)
  {
    v2 = 15;
  }

  v31 = 43;
  v32 = v2;
  v3 = [a1 supportedMetrics];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = (v5 & 0xC000000000000001) == 0;
    v7 = v5 == 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    v7 = 1;
  }

  v8 = 0;
  v9 = v5 + 56;
  v10 = MEMORY[0x277D84F90];
  v26 = v7;
  v27 = v6;
  do
  {
    if (v7)
    {
      goto LABEL_9;
    }

    v11 = *(&v30 + v8);
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v13 = v12;
    if (v6)
    {
      if (!*(v5 + 16))
      {

        goto LABEL_9;
      }

      v28 = v11;
      v14 = v10;
      type metadata accessor for NSNumber();
      v15 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v16 = -1 << *(v5 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
LABEL_7:

        v7 = v26;
        v6 = v27;
LABEL_8:
        v10 = v14;
        goto LABEL_9;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(v5 + 48) + 8 * v17);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v7 = v26;
      v6 = v27;
      v11 = v28;
    }

    else
    {
      v14 = v10;
      v21 = __CocoaSet.contains(_:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = v14;
    v29 = v14;
    v22 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
      v10 = v29;
    }

    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v10 = v29;
    }

    *(v10 + 16) = v24 + 1;
    *(v10 + 8 * v24 + 32) = v22;
LABEL_9:
    ++v8;
  }

  while (v8 != 4);

  return v10;
}

uint64_t getEnumTagSinglePayload for PowerZonesPlatterMetricsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PowerZonesPlatterMetricsProvider(_WORD *result, int a2, int a3)
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

uint64_t HKActivityMoveMode.supportsMetricPlatterType(_:activityType:)(unsigned __int8 *a1, id a2, uint64_t a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v3 = *a1;
    if (v3 == 13)
    {
      return 0;
    }

    if (v3 == 12)
    {
      return [a2 effectiveTypeIdentifier] == 13;
    }
  }

  return 1;
}

double key path getter for LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t key path setter for LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(__int128 *a1, void **a2)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t key path getter for ActivityPausedRingsObserver.isPaused : ActivityPausedRingsObserver@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void key path setter for ActivityPausedRingsObserver.isPaused : ActivityPausedRingsObserver(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  static Published.subscript.setter();
  ActivityPausedRingsObserver.isPaused.didset();
}

uint64_t specialized FIUIWorkoutActivityType.supportsMetricPlatterType(_:isGymKit:)(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 1;
  switch(v2)
  {
    case 2:
    case 3:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 1;
      goto LABEL_20;
    case 4:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 3;
      goto LABEL_20;
    case 5:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 2;
LABEL_20:
      v11 = specialized Set.contains(_:)(v5, v4);

      return v11;
    case 6:
      v9 = sel_supportsSegments;
      return [v1 v9];
    case 9:
      v9 = sel_supportsDistanceSplits;
      return [v1 v9];
    case 10:
      return [objc_opt_self() fiui:objc_msgSend(v1 isHeartRateSupportedForActivityType:sel_identifier) isIndoor:{objc_msgSend(v1, sel_isIndoor)}];
    case 11:
      v9 = sel_isPartOfMultiSport;
      return [v1 v9];
    case 12:
      v10 = [v1 effectiveTypeIdentifier];
      if (v10 == 13)
      {
        goto LABEL_26;
      }

      if (v10 != 37 || ([v1 isIndoor] & 1) != 0)
      {
LABEL_16:
        result = 0;
      }

      else
      {
        result = [objc_opt_self() isRunningFormAvailable];
      }

      break;
    case 13:
      return [v1 effectiveTypeIdentifier] == 13;
    case 14:
      v6 = [v1 effectiveTypeIdentifier];
      if (v6 == 70 || v6 == 52)
      {
        goto LABEL_7;
      }

      v7 = [v1 effectiveTypeIdentifier];
      result = 0;
      v8 = v7 - 13;
      if (v8 <= 0x3A)
      {
        if (((1 << v8) & 0x400000001000001) != 0)
        {
LABEL_7:
          result = [v1 isIndoor] ^ 1;
        }

        else if (((1 << v8) & 0x800000000800) != 0)
        {
LABEL_26:
          result = 1;
        }
      }

      break;
    case 15:
      if ([v1 effectiveTypeIdentifier] != 13)
      {
        goto LABEL_16;
      }

      result = [objc_opt_self() fiui:1 activitySupportsMetricType:v1 activityType:1 activityMoveMode:?];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11WorkoutCore0D28ConfigurationOccurrenceStoreC0dF6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCG_AF0dF0Cs5NeverOTg504_s11d8Core0A28fgh19C11deduplicate33_41jklmno25CLLySayAA0aC0CGAHFAgC0aC6I57AELLCcfu0_32b7aaa5b2ee757458ba0f95a71f2c664dAjGTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v26 = result;
  v27 = v6;
  v28 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v26;
    v10 = v27;
    v12 = v28;
    v13 = *(specialized Set.subscript.getter(v26, v27, v28, a1) + 16);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = *(v29 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy11WorkoutCore0B28ConfigurationOccurrenceStoreC0bD6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_GMd, &_sSh5IndexVy11WorkoutCore0B28ConfigurationOccurrenceStoreC0bD6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v25, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v11 >> 6;
      v17 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v17 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v11, v10, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v10;
      v28 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void specialized Collection.firstIndex(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t WorkoutConfigurationOccurrenceStore.loadDelegate.getter()
{
  v1 = v0 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutConfigurationOccurrenceStore.loadDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WorkoutConfigurationOccurrenceStore.loadDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return WorkoutConfigurationOccurrenceStore.loadDelegate.modify;
}

void WorkoutConfigurationOccurrenceStore.loadDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t WorkoutConfigurationOccurrenceStore.modificationCountPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutConfigurationOccurrenceStore.modificationCountPublished.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WorkoutConfigurationOccurrenceStore.count.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t WorkoutConfigurationOccurrenceStore.syncComplete.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutConfigurationOccurrenceStore.syncComplete.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[3];
  v20 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  *(&v19 + 1) = v15;
  *&v19 = v20;
  v17 = specialized WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v10, v13, v16, a4, a5, a6, v24, v9, v14, v12, v19, v11);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a3);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v17;
}

char *WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a4;
  v33 = a5;
  v9 = a1[3];
  v31 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a2[3];
  v30 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = a3[3];
  v22 = a3[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(a3, v21);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v13, v19, v26, v32, v33, v34, v35, v9, v21, v15, v31, v22, v30);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a3);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v28;
}

void closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[WOSync] ConfigurationStore received %@, reloading workout_configurations", v7, 0xCu);
    _sSo8NSObjectCSgWOhTm_3(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    WorkoutConfigurationOccurrenceStore.reload()();
  }
}

id WorkoutConfigurationOccurrenceStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t closure #1 in static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9)
{
  swift_beginAccess();
  v18 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  v19 = *(a4 + 16);
  *(a4 + 16) = a2;
  v20 = a2;

  swift_beginAccess();
  v21 = *(a3 + 16);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v55 = *(a3 + 16);
    }

    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  v58 = a8;
  if (v22)
  {
    v61 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v22 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x20F2E7A20](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      v27 = specialized WorkoutConfiguration.sanitized()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = *(v61 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v22 != v24);

    v23 = v61;
  }

  a8 = a5;
  swift_beginAccess();
  v29 = *(a5 + 16);
  *(a5 + 16) = v23;

  static Date.timeIntervalSinceReferenceDate.getter();
  v31 = v30;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WOLog.app);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    a9 = v31 - a9;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v60[0] = v22;
    *v21 = 134218498;
    swift_beginAccess();
    v33 = *(a3 + 16);
    if (!(v33 >> 62))
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
      *(v21 + 4) = v34;

      *(v21 + 12) = 2080;
      swift_beginAccess();
      v59 = *(a4 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v35 = Optional.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v60);

      *(v21 + 14) = v37;
      *(v21 + 22) = 2048;
      *(v21 + 24) = a9;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[ConfigurationStore] loaded %ld workout_configurations from database, error: %s, elapsed time: %f seconds", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v22);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);

      goto LABEL_18;
    }

LABEL_34:
    v34 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_18:
  swift_beginAccess();
  v38 = *(a4 + 16);
  swift_beginAccess();
  *(a6 + 16) = v38 == 0;
  if (v38)
  {
    v39 = v38;
    v40 = _convertErrorToNSError(_:)();
    v41 = [v40 code];

    if (v41 == 101)
    {

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109120;
        swift_beginAccess();
        *(v44 + 4) = *(a6 + 16);

        _os_log_impl(&dword_20AEA4000, v42, v43, "[ConfigurationStore] cannot load workout_configurations before first unlock (loaded: %{BOOL}d), start monitoring first unlock", v44, 8u);
        MEMORY[0x20F2E9420](v44, -1, -1);
      }

      else
      {
      }

      v45 = a7[3];
      v46 = a7[4];
      __swift_project_boxed_opaque_existential_1(a7, v45);
      (*(v46 + 40))(v45, v46);
    }
  }

  swift_beginAccess();
  if (*(a6 + 16) == 1)
  {
    v47 = a7[3];
    v48 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v47);
    (*(v48 + 48))(v47, v48);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20AEA4000, v49, v50, "[ConfigurationStore] workout_configurations loaded, stop monitoring first unlock", v51, 2u);
      MEMORY[0x20F2E9420](v51, -1, -1);
    }
  }

  swift_beginAccess();
  v52 = *(a6 + 16);
  swift_beginAccess();
  v53 = *(a8 + 16);

  v58(v52, v53);
}

uint64_t WorkoutConfigurationOccurrenceStore.fetchConfigurationSynchronously(configurationUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v64 = v9;
  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static WOLog.app);
  v68 = v3[2];
  v68(v11, a1, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v65 = a1;
    v63 = v17;
    v70 = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v13;
    v21 = v20;
    v69 = v3[1];
    v69(v11, v2);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, &v70);
    v13 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[ConfigurationStore] loading workout_configuration with id %s from database", v16, 0xCu);
    v23 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm_6(v63);
    a1 = v65;
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    v69 = v3[1];
    v69(v11, v2);
  }

  v24 = *(v67 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24);
  v25 = *(v67 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32);
  __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient), v24);
  v26 = (*(v25 + 32))(a1, v24, v25);
  v28 = v27;
  v67 = v3;
  if (v27)
  {
    v29 = v64;
    v68(v64, a1, v2);
    v30 = v28;
    v31 = v28;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v63 = v13;
      v35 = v34;
      v36 = swift_slowAlloc();
      v65 = a1;
      v61 = v36;
      v62 = swift_slowAlloc();
      v70 = v62;
      *v35 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v60 = v32;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v69(v29, v2);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v70);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      v41 = v28;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v42;
      v43 = v61;
      *v61 = v42;
      v44 = v33;
      v45 = v60;
      _os_log_impl(&dword_20AEA4000, v60, v44, "[ConfigurationStore] Error loading configuration with uuid: %s: %@", v35, 0x16u);
      _sSo8NSObjectCSgWOhTm_3(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      a1 = v65;
      MEMORY[0x20F2E9420](v43, -1, -1);
      v46 = v62;
      __swift_destroy_boxed_opaque_existential_1Tm_6(v62);
      MEMORY[0x20F2E9420](v46, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    else
    {

      v69(v29, v2);
    }
  }

  v47 = v66;
  v68(v66, a1, v2);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v26;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v70 = v52;
    *v51 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v69(v47, v2);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v70);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_20AEA4000, v48, v49, "[ConfigurationStore] loaded workout_configuration with id %s from database", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v52);
    MEMORY[0x20F2E9420](v52, -1, -1);
    v57 = v51;
    v26 = v50;
    MEMORY[0x20F2E9420](v57, -1, -1);
  }

  else
  {

    v69(v47, v2);
  }

  return v26;
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(Swift::Bool enteringForeground)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v75 = v11;
  MEMORY[0x28223BE20](v8);
  v13 = &v69 - v12;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = v1;
  v16 = Logger.logObject.getter();
  LODWORD(v77) = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v16, v77);
  v18 = &unk_27C729000;
  v74 = v10;
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 67110144;
    v20 = v15[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded];
    *(v19 + 4) = v20 ^ 1;
    v73 = v3;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v20;
    *(v19 + 14) = 1024;
    v21 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    *(v19 + 16) = v15[v21];
    *(v19 + 20) = 1024;
    v22 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v15[v22], v79);
    v23 = enteringForeground;
    v24 = v13;
    v25 = v4;
    v26 = v80;
    v27 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v28 = *(v27 + 32);
    v29 = v26;
    enteringForeground = v23;
    v18 = &unk_27C729000;
    v30 = v27;
    v4 = v25;
    v13 = v24;
    LOBYTE(v22) = v28(v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v79);
    *(v19 + 22) = v22 & 1;

    *(v19 + 26) = 1024;
    v3 = v73;
    *(v19 + 28) = enteringForeground;
    _os_log_impl(&dword_20AEA4000, v16, v77, "[ConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, syncComplete: %{BOOL}d, unlockedSinceBoot: %{BOOL}d, enteringForeground: %{BOOL}d", v19, 0x20u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {
  }

  if (v15[v18[487]])
  {
    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(enteringForeground);
  }

  else
  {
    v31 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    if (v15[v31] == 1)
    {
      v32 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
      swift_beginAccess();
      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v15[v32], v79);
      v33 = v80;
      v34 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      LOBYTE(v33) = (*(v34 + 32))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v79);
      if (v33)
      {
        UUID.init()();
        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v15[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], v79);
        v35 = v80;
        v36 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        v78[0] = 3;
        v37 = (*(v36 + 8))(v78, v13, 0xD00000000000002CLL, 0x800000020B45CFD0, v35, v36, 15.0);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v79);
        v38 = v74;
        v77 = *(v4 + 16);
        v77(v74, v13, v3);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v71 = v40;
          v72 = v13;
          v41 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v79[0] = v70;
          *v41 = 136315650;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, v79);
          *(v41 + 12) = 2080;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v38;
          v44 = v42;
          v46 = v45;
          v73 = v4;
          v74 = *(v4 + 8);
          v74(v43, v3);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v79);

          *(v41 + 14) = v47;
          *(v41 + 22) = 2080;
          if (v37)
          {
            if (v37 == 2)
            {
              v48 = 0xEC00000065746165;
              v49 = 0x7243746F6E6E6163;
            }

            else if (v37 == 1)
            {
              v48 = 0xED00007374736978;
              v49 = 0x4579646165726C61;
            }

            else
            {
              v49 = 0;
              v48 = 0xE000000000000000;
            }
          }

          else
          {
            v48 = 0xE700000000000000;
            v49 = 0x73736563637573;
          }

          v4 = v73;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v79);

          *(v41 + 24) = v59;
          _os_log_impl(&dword_20AEA4000, v39, v71, "[ConfigurationStore] load background assertion (%s, %s) acquired: %s", v41, 0x20u);
          v60 = v70;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v60, -1, -1);
          MEMORY[0x20F2E9420](v41, -1, -1);

          v13 = v72;
          v58 = v74;
        }

        else
        {

          v58 = *(v4 + 8);
          v58(v38, v3);
        }

        v61 = &v15[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v62 = *(v61 + 1);
          ObjectType = swift_getObjectType();
          (*(v62 + 8))(ObjectType, v62);
          swift_unknownObjectRelease();
        }

        v64 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient;
        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v15[v32], v79);
        v65 = v76;
        v77(v76, v13, v3);
        v66 = (*(v4 + 80) + 25) & ~*(v4 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v15;
        *(v67 + 24) = 3;
        (*(v4 + 32))(v67 + v66, v65, v3);
        v68 = v15;
        specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(&v15[v64], v79, partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:), v67);

        __swift_destroy_boxed_opaque_existential_1Tm_6(v79);
        v58(v13, v3);
      }

      else
      {
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_20AEA4000, v53, v54, "[ConfigurationStore] Device is locked since boot, skip load workout_configurations, start monitoring first unlock", v55, 2u);
          MEMORY[0x20F2E9420](v55, -1, -1);
        }

        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v15[v32], v79);
        v56 = v80;
        v57 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        (*(v57 + 40))(v56, v57);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v79);
      }
    }

    else
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_20AEA4000, v50, v51, "[ConfigurationStore] Paired sync in progress, skip load workout_configurations", v52, 2u);
        MEMORY[0x20F2E9420](v52, -1, -1);
      }
    }
  }
}

uint64_t closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(char a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v41) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  *(a3 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded) = a1;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v15 + 16);
  v21(v19, a5, v14);
  v42 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v42, v19, v14);
  v22 = v41;
  v23 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = a2;
  *(v24 + 32) = v22;
  (*(v15 + 32))(v24 + v23, v19, v14);
  v25 = objc_opt_self();

  if ([v25 isMainThread])
  {
    v26 = v42;
    closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(v20, a2, v22, v42);

    v27 = v26;
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v41 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = partial apply for closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:);
    *(v28 + 24) = v24;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_127;
    v29 = _Block_copy(aBlock);

    v30 = v35;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v31 = v37;
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v41;
    MEMORY[0x20F2E7580](0, v30, v31, v29);
    _Block_release(v29);

    (*(v39 + 8))(v31, v32);
    (*(v36 + 8))(v30, v38);
    v27 = v42;
  }

  (*(v15 + 8))(v27, v14);
}

void closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v87 = a4;
  v88 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v89 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v87 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v100[0] = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v96 = v5;
    v92 = v6;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v6 = a2 & 0xC000000000000001;
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v14 = MEMORY[0x20F2E7A20](v12, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v14 = *(a2 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (*&v15[v17])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v100[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v12;
      if (v16 == i)
      {
        v18 = v100[0];
        v5 = v96;
        v6 = v92;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:
  v19 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(v18);

  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v20;
  if (v20)
  {
    v21 = 0;
    v95 = v19 & 0xC000000000000001;
    v94 = v19 & 0xFFFFFFFFFFFFFF8;
    v97 = (v6 + 16);
    v93 = (v6 + 8);
    v22 = MEMORY[0x277D84F98];
    v6 = v91;
    while (1)
    {
      if (v95)
      {
        v25 = MEMORY[0x20F2E7A20](v21, v19);
      }

      else
      {
        if (v21 >= *(v94 + 16))
        {
          goto LABEL_72;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      a2 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_71;
      }

      v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v28 = *v97;
      v29 = &v26[v27];
      v30 = v98;
      (*v97)(v98, v29, v5);
      v31 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v22;
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      v34 = v22[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_73;
      }

      v37 = v33;
      if (v22[3] >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v22 = v100[0];
          if (v33)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v22 = v100[0];
          if (v37)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v98);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_78;
        }

        v5 = v38;
        v22 = v100[0];
        if (v37)
        {
LABEL_21:
          v23 = v22[7];
          v24 = *(v23 + 8 * v5);
          *(v23 + 8 * v5) = v31;

          v5 = v96;
          (*v93)(v98, v96);
          goto LABEL_22;
        }
      }

      v22[(v5 >> 6) + 8] |= 1 << v5;
      v40 = v92;
      v6 = v98;
      v41 = v96;
      v28(v22[6] + *(v92 + 72) * v5, v98, v96);
      *(v22[7] + 8 * v5) = v31;
      v5 = v41;

      (*(v40 + 8))(v6, v41);
      v42 = v22[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_74;
      }

      v22[2] = v44;
      v6 = v91;
LABEL_22:
      ++v21;
      if (a2 == v6)
      {
        goto LABEL_40;
      }
    }
  }

  v22 = MEMORY[0x277D84F98];
LABEL_40:

  v45 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v46 = Strong;
  swift_beginAccess();
  v47 = *&v46[v45];
  *&v46[v45] = v22;

  WorkoutConfigurationOccurrenceStore.configurations.didset();
  v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 1;
  if (v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] != 1)
  {
    goto LABEL_53;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static WOLog.app);
  v49 = v46;
  v50 = v46;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = *(*&v49[v45] + 16);

    _os_log_impl(&dword_20AEA4000, v51, v52, "[ConfigurationStore] loaded %ld workout_configurations", v53, 0xCu);
    MEMORY[0x20F2E9420](v53, -1, -1);
  }

  else
  {

    v51 = v50;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = static Published.subscript.modify();
  if (!__OFADD__(*v55, 1))
  {
    ++*v55;
    v54(v100, 0);

    v56 = v50;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v59 + 4) = v100[0];

      _os_log_impl(&dword_20AEA4000, v57, v58, "[ConfigurationStore] modificationCountPublished: %ld, post data updated notification for loaded workout_configurations", v59, 0xCu);
      MEMORY[0x20F2E9420](v59, -1, -1);
    }

    else
    {

      v57 = v56;
    }

    v5 = v96;

    v60 = v56 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(v60 + 1);
      ObjectType = swift_getObjectType();
      (*(v61 + 16))(ObjectType, v61);
      swift_unknownObjectRelease();
    }

    v63 = [objc_opt_self() defaultCenter];
    [v63 postNotificationName:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0 userInfo:0];

    v46 = Strong;
LABEL_53:
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], v100);
    v64 = v101;
    v65 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v99 = v88;
    v66 = v87;
    (*(v65 + 16))(&v99, v87, v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v100);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static WOLog.app);
    v68 = v92;
    v69 = v89;
    (*(v92 + 16))(v89, v66, v5);
    v70 = v5;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v100[0] = v74;
      v75 = v88;
      v76 = 0xE700000000000000;
      v77 = 0x6E6F6973736553;
      *v73 = 136315394;
      if (v75 == 1)
      {
        v77 = 0x797265766F636552;
        v76 = 0xE800000000000000;
      }

      if (!v75)
      {
        v77 = 1702256979;
        v76 = 0xE400000000000000;
      }

      if (v75 <= 2)
      {
        v78 = v77;
      }

      else
      {
        v78 = 1702256979;
      }

      if (v75 <= 2)
      {
        v79 = v76;
      }

      else
      {
        v79 = 0xE400000000000000;
      }

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v100);

      *(v73 + 4) = v80;
      *(v73 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v81 = v89;
      v82 = v96;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      (*(v92 + 8))(v81, v82);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v100);

      *(v73 + 14) = v86;
      _os_log_impl(&dword_20AEA4000, v71, v72, "[ConfigurationStore] load background assertion (%s, %s) released", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v74, -1, -1);
      MEMORY[0x20F2E9420](v73, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
    }

    return;
  }

  __break(1u);
LABEL_78:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void $defer #1 () in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager, v28);
  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  HIBYTE(v27) = a2;
  (*(v12 + 16))(&v27 + 7, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v28);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  (*(v7 + 16))(v10, a3, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v16 = 136315394;
    if (a2 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a2)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a2 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a2 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v28);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v28);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[ConfigurationStore] load background assertion (%s, %s) released", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.reload()()
{
  v1 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[ConfigurationStore] reload workout_configurations", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded) = 0;

  WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(0);
}

void *WorkoutConfigurationOccurrenceStore.cachedConfiguration(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *WorkoutConfigurationOccurrenceStore.alternativeConfiguration(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v5)
  {
    v6 = *(*(v2 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t WorkoutConfigurationOccurrenceStore.deletedConfiguration(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24);
  v4 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient), v3);
  v5 = (*(v4 + 48))(a1, v3, v4);

  return v5;
}

uint64_t closure #1 in WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:)(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = [*a1 openGoalUUID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  _s10Foundation4UUIDVSgWOcTm_0(v20, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4UUIDVSgWOcTm_0(v18, &v11[v24], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v32;
    _s10Foundation4UUIDVSgWOcTm_0(v11, v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v11[v24], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v28, v4);
      _sSo8NSObjectCSgWOhTm_3(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _sSo8NSObjectCSgWOhTm_3(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v29(v32, v4);
      _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    _sSo8NSObjectCSgWOhTm_3(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  _sSo8NSObjectCSgWOhTm_3(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _sSo8NSObjectCSgWOhTm_3(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

uint64_t WorkoutConfigurationOccurrenceStore.goalConfiguration(for:goal:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v90 - v9;
  MEMORY[0x28223BE20](v8);
  v98 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v90 - v13;
  v93 = a2;
  v95 = a1;
  if (!a2)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v15 = 0;
    goto LABEL_53;
  }

  v92 = v14;
  v15 = a2;
  v16 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v17 = v16;
  v103[0] = MEMORY[0x277D84F90];
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v20 = MEMORY[0x277D84F90];
    if (i)
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      do
      {
        v23 = v21;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x20F2E7A20](v23, v17);
          }

          else
          {
            if (v23 >= *(v18 + 16))
            {
              goto LABEL_35;
            }

            v24 = *(v17 + 8 * v23 + 32);
          }

          v25 = v24;
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          type metadata accessor for GoalWorkoutConfiguration();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v23;
          if (v21 == i)
          {
            goto LABEL_21;
          }
        }

        MEMORY[0x20F2E6F30]();
        if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v103[0];
      }

      while (v21 != i);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v103[0] = v20;
    if (v22 >> 62)
    {
      break;
    }

    v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_40;
    }

LABEL_23:
    v28 = 0;
    v100 = (v22 & 0xC000000000000001);
    while (1)
    {
      if (v100)
      {
        v29 = MEMORY[0x20F2E7A20](v28, v22);
      }

      else
      {
        if (v28 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v29 = *(v22 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v17 = v22;
      _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v32 = v102;
      v33 = static NSObject.== infix(_:_:)();

      if (v33)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v34 = *(v103[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v28;
      if (v31 == v18)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v18 = __CocoaSet.count.getter();
  if (v18)
  {
    goto LABEL_23;
  }

LABEL_40:

  v103[0] = specialized Array._copyToContiguousArray()(v35);
  specialized MutableCollection<>.sort(by:)(v103);

  v36 = v103[0];
  if (v103[0] < 0 || (v103[0] & 0x4000000000000000) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_52;
    }

LABEL_43:
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x20F2E7A20](0, v36);
    }

    else
    {
      if (!*(v36 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v37 = *(v36 + 32);
    }

    v38 = v37;

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.app);
    v40 = v15;
    v41 = v38;
    v42 = v95;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v103[0] = v47;
      *v45 = 136315650;
      v48 = WorkoutConfiguration.logDisplayName.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v103);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v40;
      *(v45 + 22) = 2112;
      *(v45 + 24) = v42;
      *v46 = v93;
      v46[1] = v42;
      v51 = v40;
      v52 = v42;
      _os_log_impl(&dword_20AEA4000, v43, v44, "[goalConfiguration] found goal workout_configuration %s for optionalGoal: %@, activityType: %@", v45, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    v53 = v92;
    (*(v96 + 56))(v92, 1, 1, v97);
    v54 = GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(v42, 0, v53, 0);

    _sSo8NSObjectCSgWOhTm_3(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v54;
  }

  if (*(v103[0] + 16))
  {
    goto LABEL_43;
  }

LABEL_52:

  v27 = v15;
LABEL_53:
  v92 = v15;
  v55 = v27;
  v56 = v98;
  UUID.init()();
  v91 = specialized Occurrence.__allocating_init(count:)(0);
  v57 = v96;
  v58 = *(v96 + 16);
  v59 = v99;
  v60 = v56;
  v61 = v97;
  v58(v99, v60, v97);
  v62 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
  swift_beginAccess();
  v102 = v55;
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v100 = v55;
  Published.init(initialValue:)();
  swift_endAccess();
  v63 = v94;
  v58(v94, v59, v61);
  v64 = v58;
  *&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v65 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v66 = type metadata accessor for Date();
  v67 = *(*(v66 - 8) + 56);
  v67(&v62[v65], 1, 1, v66);
  v67(&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v66);
  v68 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v69 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v69 - 8) + 56))(&v62[v68], 1, 1, v69);
  (*(v57 + 56))(&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v61);
  v70 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v64(&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v63, v61);
  v71 = v95;
  *&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v95;
  v62[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v62[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v91;
  swift_beginAccess();
  *&v62[v70] = 0;
  v62[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v72 = type metadata accessor for WorkoutConfiguration();
  v101.receiver = v62;
  v101.super_class = v72;
  v73 = v71;
  v74 = objc_msgSendSuper2(&v101, sel_init);

  v75 = *(v57 + 8);
  v75(v63, v61);
  v75(v99, v61);
  v75(v98, v61);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static WOLog.app);
  v77 = v92;
  v78 = v73;
  v54 = v74;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v102 = v83;
    *v81 = 136315650;
    v84 = WorkoutConfiguration.logDisplayName.getter();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v102);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2112;
    *(v81 + 14) = v77;
    *(v81 + 22) = 2112;
    *(v81 + 24) = v78;
    *v82 = v93;
    v82[1] = v78;
    v87 = v77;
    v88 = v78;
    _os_log_impl(&dword_20AEA4000, v79, v80, "[goalConfiguration] goal workout_configuration not found, created transient %s for optionalGoal: %@, activityType: %@", v81, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v82, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v83);
    MEMORY[0x20F2E9420](v83, -1, -1);
    MEMORY[0x20F2E9420](v81, -1, -1);
  }

  return v54;
}

void *WorkoutConfigurationOccurrenceStore.allConfigurations()()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(*(v2 + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, v4 + 4, v3, v2);

  sub_20AEBDF2C();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t WorkoutConfigurationOccurrenceStore.allManagedConfigurations()()
{
  v0 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

uint64_t WorkoutConfigurationOccurrenceStore.configurations(for:)(uint64_t a1)
{
  v2 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v3 = *(v2 + 136);

  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t WorkoutConfigurationOccurrenceStore.stopSyncing(for:)(uint64_t a1)
{
  WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  WorkoutManagedConfigurationsStore.stopSyncing(for:)(a1);
}

uint64_t WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.logString.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(39);

  v2 = *(v0 + 16);
  v3 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45D2B0);
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = v4;
    WorkoutConfiguration.logString.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = Optional.description.getter();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0x72756769666E6F63;
}

uint64_t WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v2) + 1);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v2) + 1);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v2) + 1);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v7[3] = type metadata accessor for WorkoutConfiguration();
  v7[4] = &protocol witness table for WorkoutConfiguration;
  v7[0] = v3;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x1D0);
  v5 = v3;
  LOBYTE(v3) = v4(v7);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v7);
  return v3 & 1;
}

void WorkoutConfiguration.appendAlternativeUUIDs(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = type metadata accessor for UUID();
  *(v3 + 56) = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v3 + 32));
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v7 = *(v4 - 8);
  (*(v7 + 16))(boxed_opaque_existential_0Tm, a1 + v6, v4);
  v8 = objc_allocWithZone(MEMORY[0x277CBEB40]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray_];

  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v12 = MEMORY[0x277D84F90];
  if (*(v1 + v11))
  {
    v13 = *(v1 + v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  specialized _arrayForceCast<A, B>(_:)(v13);

  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v10 addObjectsFromArray_];

  v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  if (*(a1 + v15))
  {
    v16 = *(a1 + v15);
  }

  else
  {
    v16 = v12;
  }

  specialized _arrayForceCast<A, B>(_:)(v16);

  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v10 addObjectsFromArray_];

  v18 = [v10 array];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = specialized _arrayConditionalCast<A, B>(_:)(v19);

  if (v20)
  {
    if (*(v20 + 16) < 0x65uLL)
    {
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v20, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, 0xC9uLL);
      v22 = v21;

      v20 = v22;
    }

    v23 = *(v1 + v11);
    *(v1 + v11) = v20;
  }

  else
  {
  }
}

uint64_t closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(uint64_t a1, unint64_t a2, char *a3)
{
  v37 = a3;
  v36 = type metadata accessor for UUID();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.app);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_10;
  }

  v3 = swift_slowAlloc();
  *v3 = 134218240;
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    *(v3 + 4) = i;

    *(v3 + 12) = 2048;
    v14 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 14) = v14;

    _os_log_impl(&dword_20AEA4000, v10, v11, "[deduplicate] found %ld duplicates in %ld workout_configurations", v3, 0x16u);
    MEMORY[0x20F2E9420](v3, -1, -1);

LABEL_10:
    result = swift_beginAccess();
    v16 = *(a1 + 16);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v28 = *(a1 + 16);
      }

      result = __CocoaSet.count.getter();
      v10 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return result;
      }
    }

    if (v10 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_25:
    ;
  }

  v32 = &v37[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient];
  v30 = (v6 + 16);
  v31 = v16 & 0xC000000000000001;
  v29 = (v6 + 8);

  v17 = 0;
  v33 = v10;
  v34 = v16;
  v18 = v36;
  do
  {
    if (v31)
    {
      v19 = MEMORY[0x20F2E7A20](v17, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v17 + 32);
    }

    ++v17;
    v20 = *(v32 + 4);
    v38 = *(v32 + 3);
    __swift_project_boxed_opaque_existential_1(v32, v38);
    v21 = *(v19 + 16);
    v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v23 = v35;
    (*v30)(v35, v21 + v22, v18);
    v24 = swift_allocObject();
    v25 = v37;
    *(v24 + 16) = v19;
    *(v24 + 24) = v25;
    v26 = *(v20 + 72);

    v27 = v25;
    v26(v23, partial apply for closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:), v24, v38, v20);

    (*v29)(v23, v18);
    v16 = v34;
  }

  while (v33 != v17);
}

void closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(int a1, void *a2, uint64_t a3, char *a4)
{
  v79 = a1;
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static WOLog.app);
  v14 = v11;
  v15 = a2;
  v78 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v75 = a3;
    v76 = a4;
    v18 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v83[0] = v74;
    *v18 = 136315906;
    v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v20 = v80;
    (*(v80 + 16))(v10, &v14[v19], v7);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v83);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v79 & 1;
    *(v18 + 18) = 2080;
    v77 = v7;
    if (a2)
    {
      swift_getErrorValue();
      v25 = MEMORY[0x20F2E7F50](v81, v82);
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v84[1] = v25;
    v84[2] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v50 = Optional.description.getter();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v83);

    *(v18 + 20) = v53;
    *(v18 + 28) = 2080;
    v54 = WorkoutConfiguration.logString.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v83);

    *(v18 + 30) = v56;
    _os_log_impl(&dword_20AEA4000, v16, v17, "[deduplicate] Remove duplicated workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v18, 0x26u);
    v57 = v74;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v57, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v7 = v77;
    a4 = v76;
    a3 = v75;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a2)
    {
LABEL_13:
      v58 = *(a3 + 24);
      if (v58)
      {
        v59 = *&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24];
        v60 = *&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32];
        __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient], v59);
        v61 = swift_allocObject();
        v61[2] = v58;
        v61[3] = a4;
        v61[4] = v14;
        v62 = a4;
        v63 = *(v60 + 64);
        v64 = v58;
        v65 = v14;
        v66 = v64;
        v67 = v62;
        v63(v66, partial apply for closure #1 in closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:), v61, v59, v60);
      }

      else
      {
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_20AEA4000, v68, v69, "[deduplicate] Failed to save alternativeUUIDs from duplicated holder", v70, 2u);
          MEMORY[0x20F2E9420](v70, -1, -1);
        }

        v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
        swift_beginAccess();
        v72 = v80;
        (*(v80 + 16))(v10, &v14[v71], v7);
        WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v10);
        (*(v72 + 8))(v10, v7);
      }

      return;
    }
  }

  v28 = v14;
  v29 = a2;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v7;
    v78 = swift_slowAlloc();
    v84[0] = v78;
    *v32 = 136315906;
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v35 = v80;
    (*(v80 + 16))(v10, &v28[v34], v33);

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v35 + 8))(v10, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v84);

    *(v32 + 4) = v39;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v79 & 1;
    *(v32 + 18) = 2080;
    swift_getErrorValue();
    v83[0] = MEMORY[0x20F2E7F50](v83[3], v83[4]);
    v83[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v41 = Optional.description.getter();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v84);

    *(v32 + 20) = v44;
    *(v32 + 28) = 2080;
    v45 = WorkoutConfiguration.logString.getter();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v84);

    *(v32 + 30) = v48;
    _os_log_impl(&dword_20AEA4000, v30, v31, "[deduplicate] Failed to remove duplicated workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v32, 0x26u);
    v49 = v78;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v32, -1, -1);
  }

  else
  {
  }
}