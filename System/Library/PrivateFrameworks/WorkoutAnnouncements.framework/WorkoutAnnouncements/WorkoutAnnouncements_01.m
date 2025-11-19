uint64_t specialized PacerGoalCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t static BasicVoiceFeedbackAlerts.exerciseRingCompleted.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.exerciseRingCompleted;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.exerciseRingCompleted.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.exerciseRingCompleted = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.intervalEnded.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.intervalEnded;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.intervalEnded.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.intervalEnded = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.moveRingCompleted.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.moveRingCompleted;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.moveRingCompleted.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.moveRingCompleted = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceAheadOfGhost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceAheadOfGhost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceAheadOfGhost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceAheadOfGhost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceBehindGhost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceBehindGhost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceBehindGhost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceBehindGhost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceExpired.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceExpired;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceExpired.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceExpired = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOffRoute.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOffRoute;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOffRoute.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOffRoute = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOnRoute.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOnRoute;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOnRoute.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOnRoute = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.trackStatusChanged.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.trackStatusChanged;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.trackStatusChanged.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.trackStatusChanged = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutPaused.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutPaused;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutPaused.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutPaused = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutResumed.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutResumed;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutResumed.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutResumed = v1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BasicVoiceFeedbackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BasicVoiceFeedbackAlerts.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079547472656C61 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicVoiceFeedbackAlerts.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

uint64_t BasicVoiceFeedbackAlerts.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for BasicVoiceFeedbackAlerts(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  a1[2] = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  result = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts()
{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}

uint64_t sub_274C5CCA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.exerciseRingCompleted;
  return result;
}

uint64_t sub_274C5CCEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.exerciseRingCompleted = v1;
  return result;
}

uint64_t sub_274C5CD34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.intervalEnded;
  return result;
}

uint64_t sub_274C5CD80(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.intervalEnded = v1;
  return result;
}

uint64_t sub_274C5CDC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.moveRingCompleted;
  return result;
}

uint64_t sub_274C5CE14(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.moveRingCompleted = v1;
  return result;
}

uint64_t sub_274C5CE5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceAheadOfGhost;
  return result;
}

uint64_t sub_274C5CEA8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceAheadOfGhost = v1;
  return result;
}

uint64_t sub_274C5CEF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceBehindGhost;
  return result;
}

uint64_t sub_274C5CF3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceBehindGhost = v1;
  return result;
}

uint64_t sub_274C5CF84@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceExpired;
  return result;
}

uint64_t sub_274C5CFD0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceExpired = v1;
  return result;
}

uint64_t sub_274C5D018@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOffRoute;
  return result;
}

uint64_t sub_274C5D064(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOffRoute = v1;
  return result;
}

uint64_t sub_274C5D0AC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOnRoute;
  return result;
}

uint64_t sub_274C5D0F8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOnRoute = v1;
  return result;
}

uint64_t sub_274C5D140@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost;
  return result;
}

uint64_t sub_274C5D18C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost = v1;
  return result;
}

uint64_t sub_274C5D1D4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon;
  return result;
}

uint64_t sub_274C5D220(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon = v1;
  return result;
}

uint64_t sub_274C5D268@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.trackStatusChanged;
  return result;
}

uint64_t sub_274C5D2B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.trackStatusChanged = v1;
  return result;
}

uint64_t sub_274C5D2FC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutPaused;
  return result;
}

uint64_t sub_274C5D348(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutPaused = v1;
  return result;
}

uint64_t sub_274C5D390@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutResumed;
  return result;
}

uint64_t sub_274C5D3DC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutResumed = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for BasicVoiceFeedbackAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BasicVoiceFeedbackAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747065636361;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6573756170;
    }

    else
    {
      v4 = 0x54726F466574756DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEC0000007961646FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463656A6572;
    }

    else
    {
      v4 = 0x747065636361;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6573756170;
  if (a2 != 2)
  {
    v7 = 0x54726F466574756DLL;
    v6 = 0xEC0000007961646FLL;
  }

  if (a2)
  {
    v2 = 0x7463656A6572;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

id WorkoutReminderControlsDirectInvocation.asStartLocalRequest(device:)(void *a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v12 = MEMORY[0x277C66D70](0xD00000000000003ELL, 0x8000000274C70280);
  v13 = [v11 initWithIdentifier_];

  v21[8] = v8;
  v22 = v9;
  v23 = v10;
  WorkoutReminderControlsDirectInvocation.asDirectInvocation()();
  isa = Parse.DirectInvocation.userData.getter();
  (*(v4 + 8))(v7, v3);
  if (isa)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(isa);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v13 setUserData_];

  v15 = objc_opt_self();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = DeviceState.asInvocationContext.getter();
  v18 = [v15 runSiriKitExecutorCommandWithContext:v17 payload:v13];

  v19 = [v15 wrapCommandInStartLocalRequest_];
  return v19;
}

WorkoutAnnouncements::WorkoutReminderControlsDirectInvocation::Action_optional __swiftcall WorkoutReminderControlsDirectInvocation.Action.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReminderControlsDirectInvocation.Action.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t WorkoutReminderControlsDirectInvocation.Action.rawValue.getter()
{
  v1 = 0x747065636361;
  v2 = 0x6573756170;
  if (*v0 != 2)
  {
    v2 = 0x54726F466574756DLL;
  }

  if (*v0)
  {
    v1 = 0x7463656A6572;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutReminderControlsDirectInvocation.Action()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutReminderControlsDirectInvocation.Action()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutReminderControlsDirectInvocation.Action()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutReminderControlsDirectInvocation.Action(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747065636361;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (*v1 != 2)
  {
    v5 = 0x54726F466574756DLL;
    v4 = 0xEC0000007961646FLL;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t WorkoutReminderControlsDirectInvocation.init(directInvocation:)@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v75 = a2;
  v76 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v76);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Logger();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v78 = a1;
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x8000000274C70280 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v46 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      v47 = v77;
      (*(v7 + 16))(v11, v46, v77);
      v48 = v76;
      (*(v3 + 16))(v6, v78, v76);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v79._countAndFlagsBits = v74;
        *v51 = 136315394;
        *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v79._countAndFlagsBits);
        *(v51 + 12) = 2080;
        v52 = Parse.DirectInvocation.identifier.getter();
        v54 = v53;
        v55 = *(v3 + 8);
        v56 = v6;
        v57 = v76;
        v55(v56, v76);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v79._countAndFlagsBits);

        *(v51 + 14) = v58;
        _os_log_impl(&dword_274C46000, v49, v50, "Unsupported identifier for %s: %s", v51, 0x16u);
        v59 = v74;
        swift_arrayDestroy();
        MEMORY[0x277C67550](v59, -1, -1);
        MEMORY[0x277C67550](v51, -1, -1);

        v55(v78, v57);
        result = (*(v7 + 8))(v11, v77);
      }

      else
      {

        v60 = *(v3 + 8);
        v60(v78, v48);
        v60(v6, v48);
        result = (*(v7 + 8))(v11, v47);
      }

LABEL_27:
      v61 = v75;
      *v75 = 0;
      v61[1] = 0;
      v61[2] = 1;
      return result;
    }
  }

  v22 = v78;
  v23 = Parse.DirectInvocation.userData.getter();
  if (!v23)
  {
    v40 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    v41 = v77;
    (*(v7 + 16))(v14, v40, v77);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79._countAndFlagsBits = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v79._countAndFlagsBits);
      _os_log_impl(&dword_274C46000, v42, v43, "%s: No user data in the direct invocation", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x277C67550](v45, -1, -1);
      MEMORY[0x277C67550](v44, -1, -1);
    }

    (*(v3 + 8))(v22, v76);
    result = (*(v7 + 8))(v14, v41);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = v77;
  if (!*(v23 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F69746361, 0xE600000000000000), (v27 & 1) == 0) || (outlined init with copy of Any(*(v24 + 56) + 32 * v26, v80), (swift_dynamicCast() & 1) == 0) || (v28 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReminderControlsDirectInvocation.Action.init(rawValue:), v79), , v28 >= 4))
  {

    v34 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v7 + 16))(v17, v34, v25);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79._countAndFlagsBits = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v79._countAndFlagsBits);
      _os_log_impl(&dword_274C46000, v35, v36, "%s: Found no action in the direct invocation data", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x277C67550](v38, -1, -1);
      MEMORY[0x277C67550](v37, -1, -1);
    }

    (*(v3 + 8))(v22, v76);
    result = (*(v7 + 8))(v17, v25);
    goto LABEL_27;
  }

  if (*(v24 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x696669746E656469, 0xEA00000000007265), (v30 & 1) != 0))
  {
    outlined init with copy of Any(*(v24 + 56) + 32 * v29, v80);

    v31 = swift_dynamicCast();
    if (v31)
    {
      countAndFlagsBits = v79._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v31)
    {
      object = v79._object;
    }

    else
    {
      object = 0;
    }
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v62 = 0x747065636361;
  if (v28 > 2u)
  {
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0 && !object)
    {
      v64 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      v65 = v77;
      (*(v7 + 16))(v19, v64, v77);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v79._countAndFlagsBits = v74;
        *v68 = 136315394;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v79._countAndFlagsBits);
        *(v68 + 12) = 2080;
        if (v28)
        {
          if (v28 == 2)
          {
            v69 = 0xE500000000000000;
            v62 = 0x6573756170;
          }

          else
          {
            v69 = 0xE600000000000000;
            v62 = 0x7463656A6572;
          }
        }

        else
        {
          v69 = 0xE600000000000000;
        }

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v69, &v79._countAndFlagsBits);

        *(v68 + 14) = v71;
        _os_log_impl(&dword_274C46000, v66, v67, "%s: A prediction identifier is required for %s", v68, 0x16u);
        v72 = v74;
        swift_arrayDestroy();
        MEMORY[0x277C67550](v72, -1, -1);
        MEMORY[0x277C67550](v68, -1, -1);

        (*(v3 + 8))(v78, v76);
        (*(v7 + 8))(v19, v77);
      }

      else
      {

        (*(v3 + 8))(v78, v76);
        (*(v7 + 8))(v19, v65);
      }

      goto LABEL_27;
    }
  }

  result = (*(v3 + 8))(v78, v76);
  v70 = v75;
  *v75 = v28;
  v70[1] = countAndFlagsBits;
  v70[2] = object;
  return result;
}

uint64_t WorkoutReminderControlsDirectInvocation.asDirectInvocation()()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274C6E810;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  *(inited + 72) = v5;
  *(inited + 80) = 0x6E6F69746361;
  v6 = 0xE600000000000000;
  *(inited + 88) = 0xE600000000000000;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = 0xE500000000000000;
      v7 = 0x6573756170;
    }

    else
    {
      v6 = 0xEC0000007961646FLL;
      v7 = 0x54726F466574756DLL;
    }
  }

  else if (v1)
  {
    v7 = 0x7463656A6572;
  }

  else
  {
    v7 = 0x747065636361;
  }

  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v7;
  *(inited + 104) = v6;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  return Parse.DirectInvocation.init(identifier:userData:)();
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action;
  if (!lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20WorkoutAnnouncements0A32ReminderControlsDirectInvocationV6ActionOGMd, &_sSay20WorkoutAnnouncements0A32ReminderControlsDirectInvocationV6ActionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A]);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

WorkoutAnnouncements::VoiceFeedbackStepType_optional __swiftcall VoiceFeedbackStepType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [VoiceFeedbackStepType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20WorkoutAnnouncements21VoiceFeedbackStepTypeOGMd, &_sSay20WorkoutAnnouncements21VoiceFeedbackStepTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackStepType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType();
  *(a1 + 8) = result;
  return result;
}

uint64_t WorkoutReminderPromptStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[12] = a2;
  v3[13] = v4;
  v3[11] = a1;
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v14 = type metadata accessor for USOParse();
  v3[24] = v14;
  v15 = *(v14 - 8);
  v3[25] = v15;
  v16 = *(v15 + 64) + 15;
  v3[26] = swift_task_alloc();
  v17 = type metadata accessor for Input();
  v3[27] = v17;
  v18 = *(v17 - 8);
  v3[28] = v18;
  v19 = *(v18 + 64) + 15;
  v3[29] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v3[30] = v20;
  v21 = *(v20 - 8);
  v3[31] = v21;
  v22 = *(v21 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.parseValueResponse(input:), 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.parseValueResponse(input:)()
{
  v99 = v0;
  v2 = *(v0 + 240);
  v1 = (v0 + 240);
  v3 = v1[4];
  v4 = v1[1];
  v5 = *(v1 - 2);
  v6 = *(v1 - 1);
  v7 = *(v1 - 3);
  v8 = *(v1 - 18);
  v9 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v91 = *(v4 + 16);
  v92 = v9;
  v91(v3, v9, v2);
  (*(v5 + 16))(v6, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[4];
  v14 = *v1;
  v15 = v1[1];
  v17 = *(v1 - 2);
  v16 = *(v1 - 1);
  v18 = *(v1 - 3);
  if (v12)
  {
    v93 = v1[4];
    v19 = v96[13];
    v88 = v11;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v98 = v21;
    *v20 = 136315394;
    v22 = _typeName(_:qualified:)();
    v89 = v14;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v98);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v17 + 8))(v16, v18);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v98);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_274C46000, v10, v88, "%s Parsing Input: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C67550](v21, -1, -1);
    MEMORY[0x277C67550](v20, -1, -1);

    v29 = *(v15 + 8);
    v30 = v93;
    v31 = v89;
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v29 = *(v15 + 8);
    v30 = v13;
    v31 = v14;
  }

  v94 = v29;
  v29(v30, v31);
  v32 = v96;
  v33 = v96[23];
  v34 = v96[20];
  v35 = v96[21];
  v36 = v96[12];
  Input.parse.getter();
  if ((*(v35 + 88))(v33, v34) != *MEMORY[0x277D5C160])
  {
    (*(v96[21] + 8))(v96[23], v96[20]);
LABEL_10:
    v38 = v96 + 32;
    v49 = v96[32];
    v50 = v96[30];
    swift_beginAccess();
    v91(v49, v92, v50);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_274C46000, v51, v52, "Received unsupported type of input", v53, 2u);
      MEMORY[0x277C67550](v53, -1, -1);
    }

    v54 = v96[31];

    v97 = 4;
    v48 = v94;
    goto LABEL_13;
  }

  v38 = v96 + 26;
  v37 = v96[26];
  v39 = v96[25];
  v40 = v96[24];
  v90 = v96 + 24;
  v41 = v96[23];
  v43 = v96[15];
  v42 = v96[16];
  v44 = v96[14];
  (*(v96[21] + 96))(v41, v96[20]);
  (*(v39 + 32))(v37, v41, v40);
  v45 = USOParse.userParse.getter();
  v46 = MEMORY[0x277C66AE0](v45);
  (*(v43 + 8))(v42, v44);
  if (!*(v46 + 16))
  {
    (*(v96[25] + 8))(v96[26], v96[24]);

    goto LABEL_10;
  }

  (*(v96[18] + 16))(v96[19], v46 + ((*(v96[18] + 80) + 32) & ~*(v96[18] + 80)), v96[17]);

  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
LABEL_7:
    v47 = v96[25];
    (*(v96[18] + 8))(v96[19], v96[17]);
    v97 = 0;
    v48 = *(v47 + 8);
    v1 = v32 + 24;
    goto LABEL_13;
  }

  v69 = v96[19];
  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
  {
    v70 = v96[25];
    (*(v96[18] + 8))(v96[19], v96[17]);
    v48 = *(v70 + 8);
    v71 = 1;
  }

  else
  {
    v73 = v96[21];
    v72 = v96[22];
    v74 = v96[20];
    v75 = v96[12];
    Input.parse.getter();
    LOBYTE(v75) = isProbablyWorkout(from:requireWorkoutIdentifier:)();
    (*(v73 + 8))(v72, v74);
    if (v75)
    {
      goto LABEL_7;
    }

    v76 = v96[33];
    v77 = v96[30];
    swift_beginAccess();
    v91(v76, v92, v77);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_274C46000, v78, v79, "Parse did not contain accept, reject, or workout task", v80, 2u);
      MEMORY[0x277C67550](v80, -1, -1);
    }

    v81 = v96[33];
    v82 = v96[30];
    v83 = v96[31];
    v84 = v96[25];
    v86 = v96[18];
    v85 = v96[19];
    v87 = v96[17];

    v94(v81, v82);
    (*(v86 + 8))(v85, v87);
    v32 = v96;
    v48 = *(v84 + 8);
    v71 = 4;
  }

  v97 = v71;
  v1 = v90;
LABEL_13:
  v55 = *v38;
  v56 = *v1;
  v57 = v32[33];
  v58 = v32[34];
  v59 = v32[32];
  v60 = v32[29];
  v61 = v32[26];
  v63 = v32[22];
  v62 = v32[23];
  v64 = v32;
  v65 = v32[19];
  v95 = v64[16];
  v66 = v64[11];
  v48(v55, v56);
  *v66 = v97;

  v67 = v64[1];

  return v67();
}

uint64_t WorkoutReminderPromptStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = *v3;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for USOParse();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v80 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Parse();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v62 - v19;
  v20 = type metadata accessor for Input();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v31 = *(v26 + 16);
  v75 = v25;
  v31(v29, v30, v25);
  v32 = *(v21 + 16);
  v79 = a1;
  v32(v24, a1, v20);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v66 = v9;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v64 = a2;
    v37 = v36;
    v63 = swift_slowAlloc();
    v81 = v63;
    *v37 = 136315394;
    v38 = _typeName(_:qualified:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v81);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v21 + 8))(v24, v20);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v81);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_274C46000, v33, v34, "%s Handling Input: %s", v37, 0x16u);
    v45 = v63;
    swift_arrayDestroy();
    MEMORY[0x277C67550](v45, -1, -1);
    MEMORY[0x277C67550](v37, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  (*(v26 + 8))(v29, v75);
  v46 = v76;
  Input.parse.getter();
  v47 = isProbablyWorkout(from:requireWorkoutIdentifier:)();
  v49 = v77;
  v48 = v78;
  v50 = *(v77 + 8);
  v50(v46, v78);
  v51 = v80;
  if (v47)
  {
    return static ActionForInput.handle()();
  }

  v53 = v74;
  Input.parse.getter();
  if ((*(v49 + 88))(v53, v48) == *MEMORY[0x277D5C160])
  {
    (*(v49 + 96))(v53, v48);
    v55 = v71;
    v54 = v72;
    (*(v71 + 32))(v51, v53, v72);
    v56 = v68;
    v57 = USOParse.userParse.getter();
    v58 = MEMORY[0x277C66AE0](v57);
    (*(v69 + 8))(v56, v70);
    if (*(v58 + 16))
    {
      v59 = v65;
      v60 = v66;
      v61 = v67;
      (*(v66 + 16))(v65, v58 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v67);

      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        static ActionForInput.handle()();
        (*(v60 + 8))(v59, v61);
        return (*(v71 + 8))(v51, v72);
      }

      (*(v60 + 8))(v59, v61);
      (*(v71 + 8))(v51, v72);
    }

    else
    {
      (*(v55 + 8))(v51, v54);
    }
  }

  else
  {
    v50(v53, v48);
  }

  return static ActionForInput.ignore()();
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17DismissalSettingsVSgMd, &_s11SiriKitFlow17DismissalSettingsVSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for DismissalSettings();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = swift_task_alloc();
  v2[18] = v12;
  *v12 = v2;
  v12[1] = WorkoutReminderPromptStrategy.makePromptForValue();

  return WorkoutReminderPromptStrategy.announcementDialog()();
}

{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.makePromptForValue(), 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()()
{
  if (v0[19])
  {
    v1 = v0[17];
    v2 = v0[13];
    v3 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    static DialogPhase.confirmation.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    WorkoutReminderPromptStrategy.confirmationSDA()(v2);
    OutputGenerationManifest.nlContextUpdate.setter();
    OutputGenerationManifest.canUseServerTTS.setter();
    DismissalSettings.init(_:)();
    DismissalSettings.minimumAutoDismissalTimeInMs.setter();
    (*(v5 + 16))(v6, v4, v7);
    (*(v5 + 56))(v6, 0, 1, v7);
    OutputGenerationManifest.dismissalSettings.setter();
    v9 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
    v0[20] = v9;
    [v9 setNotificationType_];
    static AceService.currentAsync.getter();
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v12 = *(MEMORY[0x277D5BFB8] + 4);
    v13 = swift_task_alloc();
    v0[21] = v13;
    v14 = type metadata accessor for SABaseCommand();
    *v13 = v0;
    v13[1] = WorkoutReminderPromptStrategy.makePromptForValue();

    return MEMORY[0x2821BB6A0](v9, v10, v14, v11);
  }

  else
  {
    lazy protocol witness table accessor for type WorkoutReminderErrors and conformance WorkoutReminderErrors();
    swift_allocError();
    swift_willThrow();
    v15 = v0[17];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    v19 = v0[9];

    v20 = v0[1];

    return v20();
  }
}

{
  v1 = v0[19];
  v2 = v0[8];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  v5 = *(MEMORY[0x277D5BE50] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = WorkoutReminderPromptStrategy.makePromptForValue();
  v7 = v0[17];
  v8 = v0[7];

  return MEMORY[0x2821BB480](v8, v1, v7, v3, v4);
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  else
  {
    v3 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v12 = *(v0 + 72);

  (*(v9 + 8))(v7, v8);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v8 = *(v0 + 176);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 192);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()(void *a1)
{
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  else
  {

    v5 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.announcementDialog()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.announcementDialog(), 0, 0);
}

{
  v1 = [*(v0[2] + 16) predictionType];
  if (v1 == 3)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
LABEL_7:
    v3[1] = v4;
    v5 = v0[2];

    return v8(0, v2, v5);
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t WorkoutReminderPromptStrategy.announcementDialog()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {

    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v8 = *(v6 + 8);

  return v8(v7);
}

{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {

    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v8 = *(v6 + 8);

  return v8(v7);
}

{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {

    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v8 = *(v6 + 8);

  return v8(v7);
}

uint64_t WorkoutReminderPromptStrategy.confirmationSDA()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(v1 + 16) predictionType];
  if (v17 == 3)
  {
    v24 = type metadata accessor for UsoTaskBuilder_resume_common_Workout();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    UsoTaskBuilder_resume_common_Workout.init()();
  }

  else if (v17 == 2)
  {
    v21 = type metadata accessor for UsoTaskBuilder_stop_common_Workout();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    UsoTaskBuilder_stop_common_Workout.init()();
  }

  else
  {
    if (v17 != 1)
    {
      v32 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v13 + 16))(v16, v32, v12);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_274C46000, v33, v34, "Unknown prediction type - unable to build SystemDialogAct", v35, 2u);
        MEMORY[0x277C67550](v35, -1, -1);
      }

      (*(v13 + 8))(v16, v12);
      goto LABEL_13;
    }

    common_Workout = type metadata accessor for UsoTaskBuilder_create_common_Workout();
    v19 = *(common_Workout + 48);
    v20 = *(common_Workout + 52);
    swift_allocObject();
    UsoTaskBuilder_create_common_Workout.init()();
  }

  WorkoutReminderPromptStrategy.makeConfirmationAct(for:)(v27, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    outlined destroy of AceOutput?(v6, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
LABEL_13:
    v31 = 1;
    goto LABEL_14;
  }

  (*(v8 + 32))(v11, v6, v7);
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v28 = *(v8 + 72);
  v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_274C6DB40;
  (*(v8 + 16))(v30 + v29, v11, v7);
  NLContextUpdate.nluSystemDialogActs.setter();

  (*(v8 + 8))(v11, v7);
  v31 = 0;
LABEL_14:
  v36 = type metadata accessor for NLContextUpdate();
  return (*(*(v36 - 8) + 56))(a1, v31, 1, v36);
}

uint64_t WorkoutReminderPromptStrategy.makeConfirmationAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for Logger();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v57 - v10;
  v65 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v62 = *(v65 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v65);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v57 - v14;
  v71 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v15 = *(v71 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v57 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v57 - v32;
  v34 = a1;
  UsoTaskBuilder.toProtobufUsoGraph()();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of AceOutput?(v25, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    v35 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    v37 = v68;
    v36 = v69;
    v38 = v70;
    (*(v69 + 16))(v68, v35, v70);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v34;
      v74 = v42;
      *v41 = 136315138;
      type metadata accessor for UsoTaskBuilder();

      v43 = String.init<A>(describing:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v74);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_274C46000, v39, v40, "Failed to create protobuf UsoGraph from Task builder %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x277C67550](v42, -1, -1);
      MEMORY[0x277C67550](v41, -1, -1);
    }

    (*(v36 + 8))(v37, v38);
    v46 = 1;
    v47 = v72;
  }

  else
  {
    v48 = *(v27 + 32);
    v58 = v26;
    v59 = v33;
    v48(v33, v25, v26);
    Siri_Nlu_External_UserWantedToProceed.init()();
    (*(v27 + 16))(v31, v33, v26);
    v57 = v21;
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    v49 = v60;
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v15 + 16))(v19, v21, v71);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
    v50 = v63;
    Siri_Nlu_External_SystemOffered.init()();
    v51 = v62;
    v52 = v65;
    (*(v62 + 16))(v61, v49, v65);
    Siri_Nlu_External_SystemOffered.offeredAct.setter();
    v47 = v72;
    Siri_Nlu_External_SystemDialogAct.init()();
    v54 = v66;
    v53 = v67;
    (*(v66 + 16))(v64, v50, v67);
    Siri_Nlu_External_SystemDialogAct.offered.setter();
    (*(v54 + 8))(v50, v53);
    (*(v51 + 8))(v49, v52);
    (*(v15 + 8))(v57, v71);
    (*(v27 + 8))(v59, v58);
    v46 = 0;
  }

  v55 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  return (*(*(v55 - 8) + 56))(v47, v46, 1, v55);
}

uint64_t WorkoutReminderPromptStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return WorkoutReminderPromptStrategy.parseValueResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance WorkoutReminderPromptStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return WorkoutReminderPromptStrategy.makePromptForValue()(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B460] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B468] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B450] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return MEMORY[0x2821B9D38](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B458] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderErrors and conformance WorkoutReminderErrors()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors;
  if (!lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors;
  if (!lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

void __swiftcall BelowTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::BelowTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  v8 = targetZone->unit._object;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v11 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneExitedBelow;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v11;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BelowTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BelowTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BelowTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v19 = *(v1 + 3);
  v20 = v11;
  LODWORD(v11) = v1[32];
  v17 = v1[33];
  v18 = v11;
  HIDWORD(v16) = v1[34];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = v9;
  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v17;
    v14 = BYTE4(v16);
    v27 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v13;
    v23 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v14;
    v21 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t BelowTargetZoneModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v30 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v31;
  v29 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v28 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v26;
  v23 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21 & 1;
  (*(v6 + 8))(v9, v5);
  v19 = v24;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 33) = v20;
  *(a2 + 34) = v19;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for BelowTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  result = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.goalCompletion(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.goalHalfwayPoint(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalEnded(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingHeartRateZone(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingNonPace(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isCadence:isFirstWindow:isHeartRate:isLastWindow:isNextWindowLastWindow:isPower:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a13 + 48);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v13 + 16) = v20;
  *v20 = v13;
  v20[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return (v22)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingPace(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 56);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingSpeed(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 64);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.lapCompletionPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.lapCompletionSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.moveRingCompleted(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.pacerGoalCompletion(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 96);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceAheadOfGhost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceBehindGhost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceExpired(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceOffRoute(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceOnRoute(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceRouteCompleteRaceWon(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceRouteCompletedRaceLost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.segmentMarked(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 160);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.trackStatusChanged(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableDistancePace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 176);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableDistanceSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 184);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableTime(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 192);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.workoutPaused(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.workoutResumed(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredNonPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 216);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 224);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 232);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAboveNonPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 240);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAbovePace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 248);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAboveSpeed(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 256) + **(a6 + 256));
  v13 = *(*(a6 + 256) + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowNonPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 264) + **(a6 + 264));
  v13 = *(*(a6 + 264) + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 272) + **(a6 + 272));
  v13 = *(*(a6 + 272) + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowSpeed(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 280) + **(a6 + 280));
  v13 = *(*(a6 + 280) + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for WorkoutVoiceFeedbackCATPatternsExecutor()
{
  result = type metadata singleton initialization cache for WorkoutVoiceFeedbackCATPatternsExecutor;
  if (!type metadata singleton initialization cache for WorkoutVoiceFeedbackCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceFeedbackCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

id SAUIAudioDescription.init(asbd:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 32);
  v4 = v2;
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setBitsPerChannel_];

  v6 = *(a1 + 24);
  v7 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setBytesPerFrame_];

  v8 = *(a1 + 16);
  v9 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setBytesPerPacket_];

  v10 = *(a1 + 28);
  v11 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setChannelsPerFrame_];

  v12 = *(a1 + 12);
  v13 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setFormatFlags_];

  v14 = *(a1 + 8);
  v15 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setFormatID_];

  v16 = *(a1 + 20);
  v17 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setFramesPerPacket_];

  v18 = *(a1 + 36);
  v19 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setReserved_];

  v20 = MEMORY[0x277C66E20](*a1);
  [v4 setSampleRate_];

  switch(v14)
  {
    case 778924083:
      v21 = MEMORY[0x277D48B48];
      break;
    case 1819304813:
      v21 = MEMORY[0x277D48B40];
      break;
    case 1869641075:
      v21 = MEMORY[0x277D48B50];
      break;
    default:
      v21 = MEMORY[0x277D48B58];
      break;
  }

  [v4 setFormat_];
  return v4;
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedEndWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedStartWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedResumeWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.end(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.start(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.resume(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for WorkoutRemindersCATPatternsExecutor()
{
  result = type metadata singleton initialization cache for WorkoutRemindersCATPatternsExecutor;
  if (!type metadata singleton initialization cache for WorkoutRemindersCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutRemindersResumeParameters.asKeyValuePairs()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_274C6F060;
  *(v1 + 32) = 0x646E497473727562;
  *(v1 + 40) = 0xEA00000000007865;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = MEMORY[0x277D839F8];
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000274C701C0;
  v5 = MEMORY[0x277D839B0];
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = v5;
  *(v1 + 128) = 0x74756F6B726F77;
  *(v1 + 136) = 0xE700000000000000;
  if (*(v0 + 24))
  {
    v6 = 0;
    v7 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = MEMORY[0x277D839F8];
  }

  *(v1 + 144) = v6;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0x4C74756F6B726F77;
  *(v1 + 184) = 0xEF6E6F697461636FLL;
  if (*(v0 + 40))
  {
    v8 = 0;
    v9 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v8;
  *(v1 + 216) = v9;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000274C70430;
  if (*(v0 + 56))
  {
    v10 = 0;
    v11 = 0;
    *(v1 + 248) = 0;
    *(v1 + 256) = 0;
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = MEMORY[0x277D839F8];
  }

  *(v1 + 240) = v10;
  *(v1 + 264) = v11;
  *(v1 + 272) = 0xD000000000000017;
  *(v1 + 280) = 0x8000000274C70450;
  v12 = *(v0 + 72);
  if (v12)
  {
    v13 = *(v0 + 64);
    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *(v1 + 304) = 0;
  }

  *(v1 + 288) = v13;
  *(v1 + 296) = v12;
  *(v1 + 312) = v14;
  outlined init with copy of WorkoutRemindersResumeParameters(v0, &v16);
  return v2;
}

uint64_t WorkoutRemindersCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = [*(v1 + 16) workoutType];
  v4 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_274C6F070;
  *(v5 + 32) = 0x646E497473727562;
  *(v5 + 40) = 0xEA00000000007865;
  v6 = MEMORY[0x277D839F8];
  *(v5 + 48) = v4;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000274C701C0;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  *(v5 + 120) = v7;
  *(v5 + 128) = 0x5474756F6B726F77;
  *(v5 + 136) = 0xEB00000000657079;
  *(v5 + 168) = v6;
  *(v5 + 144) = v3;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:);
  v10 = *(v0 + 16);

  return v12(0xD000000000000016, 0x8000000274C703D0, v5);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:), 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = [*(v1 + 16) workoutType];
  v4 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_274C6F070;
  *(v5 + 32) = 0x646E497473727562;
  *(v5 + 40) = 0xEA00000000007865;
  v6 = MEMORY[0x277D839F8];
  *(v5 + 48) = v4;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000274C701C0;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  *(v5 + 120) = v7;
  *(v5 + 128) = 0x5474756F6B726F77;
  *(v5 + 136) = 0xEB00000000657079;
  *(v5 + 168) = v6;
  *(v5 + 144) = v3;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:);
  v10 = *(v0 + 16);

  return v12(0xD000000000000014, 0x8000000274C703F0, v5);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:), 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  *(v3 + 145) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 145);
  *(v0 + 144) = 1;
  v3 = *(v1 + 16);
  v4 = [v3 workoutActivityType];
  v5 = [v3 workoutLocationType];
  v6 = [v3 workoutSwimmingLocationType];
  v7 = AFSiriWorkoutReminder.workoutAnnouncementDialogIdentifier.getter();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 25) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0;
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  *(v0 + 64) = v6;
  *(v0 + 72) = 0;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = WorkoutRemindersResumeParameters.asKeyValuePairs()();
  *(v0 + 112) = v9;
  outlined destroy of WorkoutRemindersResumeParameters(v0 + 16);
  v10 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);
  v12 = *(v0 + 96);

  return v14(0xD000000000000017, 0x8000000274C70410, v9);
}

{
  return (*(v0 + 8))(*(v0 + 136));
}

{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);
  }

  else
  {
    v8 = *(v4 + 112);

    *(v4 + 136) = a1;
    v7 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutRemindersResumeParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for WorkoutRemindersResumeParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t AFSiriWorkoutReminder.workoutAnnouncementDialogIdentifier.getter()
{
  if ([v0 workoutActivityType] != 46)
  {
    if ([v0 workoutLocationType] != 1)
    {
      v7 = [v0 workoutActivityType];
      v8 = vdupq_n_s64(v7);
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2883D6BF8, v8), vceqq_s64(unk_2883D6C08, v8)))) & 1) != 0 || qword_2883D6C18 == v7 || unk_2883D6C20 == v7 || qword_2883D6C28 == v7)
      {
        v10 = [v0 workoutLocationType];
        v2 = 0xE700000000000000;
        v3 = 0xE700000000000000;
        v4 = 0x726F6F6474756FLL;
        v5 = 0x726F6F646E69;
        if (v10 == 2)
        {
          v2 = 0xE600000000000000;
        }

        else
        {
          v5 = 0x6E776F6E6B6E75;
        }

        v6 = v10 == 3;
        goto LABEL_17;
      }
    }

    return HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  }

  if (![v0 workoutSwimmingLocationType])
  {
    return HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  }

  v14 = 0;
  v1 = [v0 workoutSwimmingLocationType];
  v2 = 0xE700000000000000;
  v3 = 0xEA00000000007265;
  v4 = 0x7461775F6E65706FLL;
  v5 = 1819242352;
  if (v1 == 1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  v6 = v1 == 2;
LABEL_17:
  if (v6)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v6)
  {
    v12 = v3;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x277C66DB0](v11, v12);

  MEMORY[0x277C66DB0](95, 0xE100000000000000);
  v13 = HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  MEMORY[0x277C66DB0](v13);

  return v14;
}

uint64_t HKWorkoutActivityType.dialogIdentifier.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x79726568637261;
  switch(v1)
  {
    case 0:
      return 0xD000000000000011;
    case 1:
      return result;
    case 2:
    case 70:
      return 0xD000000000000013;
    case 3:
      return 0x6F746E696D646162;
    case 4:
      v6 = 1702060386;
      return v6 | 0x6C6C616200000000;
    case 5:
      v4 = 0x74656B736162;
      goto LABEL_64;
    case 6:
      v7 = 1819766626;
      return v7 | 0x676E6900000000;
    case 7:
      return 0x676E69786F62;
    case 8:
      return 0x676E69626D696C63;
    case 9:
      return 0x74656B63697263;
    case 10:
      return 0x72745F73736F7263;
    case 11:
      v7 = 1819440483;
      return v7 | 0x676E6900000000;
    case 12:
      v7 = 1818458467;
      return v7 | 0x676E6900000000;
    case 13:
      return 0x65636E6164;
    case 14:
      return 0xD000000000000017;
    case 15:
      return 0x63697470696C6C65;
    case 16:
      return 0xD000000000000011;
    case 17:
      v7 = 1668179302;
      return v7 | 0x676E6900000000;
    case 18:
      v7 = 1752394086;
      return v7 | 0x676E6900000000;
    case 19:
      return 0xD00000000000001CLL;
    case 20:
      return 1718382439;
    case 21:
      return 0x697473616E6D7967;
    case 22:
      v6 = 1684955496;
      return v6 | 0x6C6C616200000000;
    case 23:
      return 0x676E696B6968;
    case 24:
      return 0x79656B636F68;
    case 25:
      v7 = 1953396072;
      return v7 | 0x676E6900000000;
    case 26:
      return 0x6573736F7263616CLL;
    case 27:
      return 0x5F6C61697472616DLL;
    case 28:
      return 0x646E615F646E696DLL;
    case 29:
      return 0xD00000000000001FLL;
    case 30:
      return 0x735F656C64646170;
    case 31:
      return 2036427888;
    case 32:
      return 0xD000000000000018;
    case 33:
      return 0x6274657571636172;
    case 34:
      return 0x676E69776F72;
    case 35:
      return 0x7962677572;
    case 36:
      v7 = 1852732786;
      return v7 | 0x676E6900000000;
    case 37:
      v7 = 1818845555;
      return v7 | 0x676E6900000000;
    case 38:
      v8 = 1952541555;
      return v8 | 0x5F676E6900000000;
    case 39:
      v9 = 2003791475;
      return v9 | 0x6F70735F00000000;
    case 40:
      return 0x726563636F73;
    case 41:
      v6 = 1952870259;
      return v6 | 0x6C6C616200000000;
    case 42:
      return 0x687361757173;
    case 43:
      return 0x6C635F7269617473;
    case 44:
      v8 = 1718777203;
      return v8 | 0x5F676E6900000000;
    case 45:
      return 0x676E696D6D697773;
    case 46:
      return 0x65745F656C626174;
    case 47:
      return 0x73696E6E6574;
    case 48:
      return 0x6E615F6B63617274;
    case 49:
      return 0xD00000000000001DLL;
    case 50:
      v4 = 0x79656C6C6F76;
      goto LABEL_64;
    case 51:
      v7 = 1802264951;
      return v7 | 0x676E6900000000;
    case 52:
      return 0x69665F7265746177;
    case 53:
      return 0x6F705F7265746177;
    case 54:
      return 0x70735F7265746177;
    case 55:
      return 0x6E696C7473657277;
    case 56:
      return 1634168697;
    case 57:
      return 0x6572726162;
    case 58:
      v5 = 1701998435;
      return v5 | 0x6172745F00000000;
    case 59:
    case 69:
      return 0xD000000000000014;
    case 60:
      return 0x6C6C69686E776F64;
    case 61:
      return 0x6C69626978656C66;
    case 62:
      return 0xD000000000000020;
    case 63:
      return 0x706F725F706D756ALL;
    case 64:
      return 0x69786F626B63696BLL;
    case 65:
      return 0x736574616C6970;
    case 66:
      return 0x72616F62776F6E73;
    case 67:
      return 0x737269617473;
    case 68:
      v5 = 1885697139;
      return v5 | 0x6172745F00000000;
    case 71:
      return 0x6968635F696174;
    case 72:
      return 0x61635F646578696DLL;
    case 73:
      return 0x6379635F646E6168;
    case 74:
      v9 = 1668508004;
      return v9 | 0x6F70735F00000000;
    case 75:
      return 0x5F7373656E746966;
    case 76:
      v3 = 0x6F6964726163;
      goto LABEL_15;
    case 77:
      v3 = 0x6C6169636F73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x645F000000000000;
      break;
    case 78:
      v4 = 0x656C6B636970;
LABEL_64:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 79:
      result = 0x6E776F646C6F6F63;
      break;
    case 81:
      result = 0x6B69625F6D697773;
      break;
    case 82:
      result = 0x697469736E617274;
      break;
    case 83:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackMetricType_optional __swiftcall VoiceFeedbackMetricType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VoiceFeedbackMetricType.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 4) > 0xC)
  {
    *a2 = 8;
  }

  else
  {
    *a2 = byte_274C6F51A[result - 4];
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackMetricType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackMetricType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackMetricType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VoiceFeedbackWorkoutStep.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v42) = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v13 & 1;
    LOBYTE(v42) = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v35 = v14;
    LOBYTE(v42) = 2;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v17 < 4)
    {
      v34 = v17;
      v62 = 3;
      lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v19 = v54;
      v18 = v55;
      v30 = v54;
      v31 = v55;
      v20 = v56;
      v21 = v57;
      v28 = v59;
      v29 = v58;
      HIDWORD(v27) = v60;

      v33 = v12;
      *&v37 = v12;
      v32 = v61;
      BYTE8(v37) = v61;
      *&v38 = v35;
      *(&v38 + 1) = v16;
      LOBYTE(v39) = v34;
      *(&v39 + 1) = v19;
      *&v40 = v18;
      *(&v40 + 1) = v20;
      *&v41[0] = v21;
      v22 = v28;
      v23 = v29;
      *(&v41[0] + 1) = v29;
      *&v41[1] = v28;
      LOWORD(v19) = WORD2(v27);
      WORD4(v41[1]) = WORD2(v27);
      v24 = v40;
      a2[2] = v39;
      a2[3] = v24;
      a2[4] = v41[0];
      *(a2 + 74) = *(v41 + 10);
      v25 = v38;
      *a2 = v37;
      a2[1] = v25;
      outlined init with copy of VoiceFeedbackWorkoutStep(&v37, &v42);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      v42 = v33;
      v43 = v32;
      v44 = v35;
      v45 = v16;
      v46 = v34;
      v47 = v30;
      v48 = v31;
      v49 = v20;
      v50 = v21;
      v51 = v23;
      v52 = v22;
      v53 = v19;
      return outlined destroy of VoiceFeedbackWorkoutStep(&v42);
    }

    LOBYTE(v42) = 2;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>();
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys()
{
  v1 = 0x647574696E67616DLL;
  v2 = 0x6570795470657473;
  if (*v0 != 2)
  {
    v2 = 0x6F5A746567726174;
  }

  if (*v0)
  {
    v1 = 1953066613;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceFeedbackWorkoutStep.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized VoiceFeedbackWorkoutStep.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceFeedbackWorkoutStep.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v33 = *(v1 + 32);
  v11 = *(v1 + 7);
  v20 = *(v1 + 5);
  v21 = v11;
  v12 = v1[9];
  v23 = v1[10];
  v24 = v12;
  v22 = *(v1 + 44);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v28) = 0;
  v14 = v27;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v14)
  {
    v16 = v33;
    v17 = v22;
    v19 = v23;
    v18 = v24;
    LOBYTE(v28) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v28) = v16;
    v34 = 2;
    lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v21;
    v28 = v20;
    v30 = v18;
    v31 = v19;
    v32 = v17;
    v34 = 3;
    lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_13;
    }
  }

  if (!v6)
  {
    v21 = 0;
    if (!v13 && v7 == v14)
    {
      goto LABEL_20;
    }

    return v21 & 1;
  }

  if (!v13)
  {
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  if (v5 == *(a2 + 16) && v6 == v13)
  {
    if (v7 != v14)
    {
      goto LABEL_13;
    }

LABEL_20:
    if (v10)
    {
      v36 = v8;
      *v37 = v9;
      *&v37[8] = v10;
      *&v37[24] = v11;
      v38 = v12;
      if (v17)
      {
        v27 = v15;
        *v28 = v16;
        *&v28[8] = v17;
        *&v28[24] = v18;
        v29 = v19;
        v21 = specialized static VoiceFeedbackTargetZone.== infix(_:_:)(&v36, &v27);
        v30[0] = v27;
        v30[1] = *v28;
        v30[2] = *&v28[16];
        v31 = v29;

        swift_bridgeObjectRetain_n();
        outlined destroy of VoiceFeedbackTargetZone(v30);
        v32 = v36;
        v33 = *v37;
        v34 = *&v37[16];
        v35 = v38;
        outlined destroy of VoiceFeedbackTargetZone(&v32);

        return v21 & 1;
      }

      v32 = v36;
      v33 = *v37;
      v34 = *&v37[16];
      v35 = v38;
      swift_bridgeObjectRetain_n();
      outlined destroy of VoiceFeedbackTargetZone(&v32);
    }

    else
    {
      if (!v17)
      {

        v21 = 1;
        return v21 & 1;
      }
    }

    v21 = 0;
    return v21 & 1;
  }

  v23 = v10;
  v24 = v8;
  v25 = *(a2 + 40);
  v26 = *(a2 + 64);
  v21 = 0;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v15 = v25;
    v17 = v26;
    v10 = v23;
    v8 = v24;
    if (v7 == v14)
    {
      goto LABEL_20;
    }
  }

  return v21 & 1;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackWorkoutStep(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for VoiceFeedbackWorkoutStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t specialized VoiceFeedbackWorkoutStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795470657473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5A746567726174 && a2 == 0xEA0000000000656ELL)
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

WorkoutAnnouncements::SegmentModel __swiftcall SegmentModel.init(index:)(WorkoutAnnouncements::SegmentModel index)
{
  *v1 = 18;
  *(v1 + 8) = *&index.alertType;
  return index;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SegmentModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x7079547472656C61;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SegmentModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SegmentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SegmentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

uint64_t SegmentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v17;
    v15 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for SegmentModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  a1[2] = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  result = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel()
{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

void __swiftcall UpcomingIntervalModel.init(completedStep:nextStep:)(WorkoutAnnouncements::UpcomingIntervalModel *__return_ptr retstr, WorkoutAnnouncements::VoiceFeedbackWorkoutStep_optional *completedStep, WorkoutAnnouncements::VoiceFeedbackWorkoutStep *nextStep)
{
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_intervalUpcoming;
  *(&retstr->completedStep.value.magnitude.value + 7) = 0.0;
  *(&retstr->completedStep.value.magnitude + 15) = 0;
  *(&retstr->completedStep.value.unit.value._countAndFlagsBits + 7) = 0;
  *(&retstr->completedStep.value.unit.value._object + 7) = 1;
  *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6) = 0u;
  *(&retstr->completedStep.value.targetZone.value.unit + 6) = 0u;
  *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4) = 0u;
  *&retstr->completedStep.value.targetZone.is_nil = 0u;
  v6 = *(&retstr->completedStep.value.targetZone.value.unit + 6);
  v12[2] = *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6);
  v12[3] = v6;
  v13[0] = *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4);
  *(v13 + 10) = *&retstr->completedStep.value.targetZone.is_nil;
  v7 = *(&retstr->completedStep.value.unit + 7);
  v12[0] = *(&retstr->completedStep.value.magnitude.value + 7);
  v12[1] = v7;
  outlined destroy of AceOutput?(v12, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  v8 = *(&completedStep->value.targetZone.value.maxMagnitude + 7);
  *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6) = *&completedStep->value.stepType;
  *(&retstr->completedStep.value.targetZone.value.unit + 6) = v8;
  *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4) = *(&completedStep->value.targetZone.value.unit._object + 7);
  *&retstr->completedStep.value.targetZone.is_nil = *(&completedStep->value.targetZone.value.zoneIndex.value + 7);
  unit = completedStep->value.unit;
  *(&retstr->completedStep.value.magnitude.value + 7) = *&completedStep->value.magnitude.value;
  *(&retstr->completedStep.value.unit + 7) = unit;
  v10 = *(&nextStep->targetZone.value.maxMagnitude + 7);
  *(&retstr->nextStep.targetZone.value.minMagnitude + 7) = *&nextStep->stepType;
  *(&retstr->nextStep.targetZone.value.unit + 7) = v10;
  *(&retstr->nextStep.targetZone.value.zoneIndex.value + 5) = *(&nextStep->targetZone.value.unit._object + 7);
  *(&retstr->nextStep.targetZone + 1) = *(&nextStep->targetZone.value.zoneIndex.value + 7);
  v11 = nextStep->unit;
  *&retstr->nextStep.magnitude.is_nil = *&nextStep->magnitude.value;
  *&retstr->nextStep.unit.value._object = v11;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UpcomingIntervalModel.CodingKeys()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x706574537478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UpcomingIntervalModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized UpcomingIntervalModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UpcomingIntervalModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UpcomingIntervalModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpcomingIntervalModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 56);
  v34 = *(v1 + 40);
  v35 = v9;
  v36[0] = *(v1 + 72);
  *(v36 + 10) = *(v1 + 82);
  v10 = *(v1 + 24);
  v32 = *(v1 + 8);
  v33 = v10;
  v11 = *(v1 + 152);
  v39 = *(v1 + 136);
  v40 = v11;
  v41[0] = *(v1 + 168);
  *(v41 + 10) = *(v1 + 178);
  v12 = *(v1 + 120);
  v37 = *(v1 + 104);
  v38 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = v8;
  LOBYTE(v24[0]) = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  v14 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v29 = v34;
    v30 = v35;
    v31[0] = v36[0];
    *(v31 + 10) = *(v36 + 10);
    v27 = v32;
    v28 = v33;
    v26 = 1;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v32, v24);
    lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24[2] = v29;
    v24[3] = v30;
    *v25 = v31[0];
    *&v25[10] = *(v31 + 10);
    v24[0] = v27;
    v24[1] = v28;
    outlined destroy of AceOutput?(v24, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
    v21 = v39;
    v22 = v40;
    v23[0] = v41[0];
    *(v23 + 10) = *(v41 + 10);
    v19 = v37;
    v20 = v38;
    v18 = 2;
    outlined init with copy of VoiceFeedbackWorkoutStep(&v37, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[2] = v21;
    v16[3] = v22;
    *v17 = v23[0];
    *&v17[10] = *(v23 + 10);
    v16[0] = v19;
    v16[1] = v20;
    outlined destroy of VoiceFeedbackWorkoutStep(v16);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UpcomingIntervalModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v40 = 0;
    v89 = 0;
    v38 = 0;
    v39 = 0;
    v41 = 0;
    v37 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v48 = 0;
    v49 = 0;
    *&v50 = 0;
    *(&v50 + 1) = 1;
    v51 = 0;
    v52 = v40;
    v53 = v89;
    v54 = v39;
    v55 = v38;
    v56 = v41;
    v57 = v37;
    LOWORD(v58) = 0;
    return outlined destroy of AceOutput?(&v48, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  }

  else
  {
    v35 = v6;
    LOBYTE(v42[0]) = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v48;
    v76[31] = 1;
    lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v12;
    v32 = v77;
    v33 = v78;
    v13 = v79;
    v34 = v80;
    v40 = v81;
    v89 = v82;
    v38 = v84;
    v39 = v83;
    v41 = v85;
    v37 = v86;
    v14 = v87;
    memset(v72, 0, sizeof(v72));
    v73 = 1;
    v74 = 0u;
    v75 = 0u;
    memset(v76, 0, 26);
    outlined destroy of AceOutput?(v72, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
    v66 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 8))(v9, v5);
    *&v88[38] = v69;
    *&v88[54] = v70;
    *&v88[70] = v71[0];
    *&v88[80] = *(v71 + 10);
    *&v88[6] = v67;
    *&v88[22] = v68;
    LOBYTE(v42[0]) = v31;
    *(&v42[0] + 1) = v32;
    v42[1] = v33;
    *&v43 = v13;
    v30 = v13;
    v16 = v39;
    v15 = v40;
    *(&v43 + 1) = v34;
    *&v44 = v40;
    *(&v44 + 1) = v89;
    *&v45 = v39;
    v17 = v37;
    v18 = v38;
    *(&v45 + 1) = v38;
    *&v46 = v41;
    *(&v46 + 1) = v37;
    *v47 = v14;
    *&v47[82] = *(v71 + 10);
    *&v47[50] = *&v88[48];
    *&v47[34] = *&v88[32];
    *&v47[2] = *v88;
    *&v47[18] = *&v88[16];
    *&v47[66] = *&v88[64];
    v19 = v42[0];
    v20 = v33;
    v21 = v44;
    *(a2 + 32) = v43;
    *(a2 + 48) = v21;
    *a2 = v19;
    *(a2 + 16) = v20;
    v22 = v45;
    v23 = v46;
    v24 = *&v47[16];
    *(a2 + 96) = *v47;
    *(a2 + 112) = v24;
    *(a2 + 64) = v22;
    *(a2 + 80) = v23;
    v25 = *&v47[32];
    v26 = *&v47[48];
    v27 = *&v47[64];
    v28 = *&v47[80];
    *(a2 + 192) = *&v47[96];
    *(a2 + 160) = v27;
    *(a2 + 176) = v28;
    *(a2 + 128) = v25;
    *(a2 + 144) = v26;
    outlined init with copy of UpcomingIntervalModel(v42, &v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v62 = *&v88[32];
    v63 = *&v88[48];
    v64 = *&v88[64];
    v65 = *&v88[80];
    v60 = *v88;
    LOBYTE(v48) = v31;
    v49 = v32;
    v50 = v33;
    v51 = v30;
    v52 = v34;
    v53 = v15;
    v54 = v89;
    v55 = v16;
    v56 = v18;
    v57 = v41;
    v58 = v17;
    v59 = v14;
    v61 = *&v88[16];
    return outlined destroy of UpcomingIntervalModel(&v48);
  }
}

uint64_t specialized static UpcomingIntervalModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v61 = *(a1 + 40);
  v62 = v3;
  v63[0] = *(a1 + 72);
  *(v63 + 10) = *(a1 + 82);
  v4 = *(a1 + 24);
  v59 = *(a1 + 8);
  v60 = v4;
  v5 = *(a1 + 120);
  v64 = *(a1 + 104);
  v65 = v5;
  v6 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = *(a1 + 168);
  *(v68 + 10) = *(a1 + 178);
  v67 = v7;
  v68[0] = v8;
  v66 = v6;
  v9 = *a2;
  *(v73 + 10) = *(a2 + 82);
  v10 = *(a2 + 56);
  v71 = *(a2 + 40);
  v72 = v10;
  v11 = *(a2 + 24);
  v69 = *(a2 + 8);
  v70 = v11;
  v73[0] = *(a2 + 72);
  *(v78 + 10) = *(a2 + 178);
  v12 = *(a2 + 168);
  v13 = *(a2 + 136);
  v77 = *(a2 + 152);
  v78[0] = v12;
  v14 = *(a2 + 104);
  v75 = *(a2 + 120);
  v76 = v13;
  v74 = v14;
  if (v2 != v9)
  {
    goto LABEL_9;
  }

  v16 = *(&v60 + 1);
  *&v58[6] = *(a2 + 8);
  *&v58[22] = *(a2 + 3);
  v17 = *(&v70 + 1);
  if (*(&v60 + 1) == 1)
  {
    if (*(&v70 + 1) == 1)
    {
      v48 = *(a1 + 8);
      *&v49 = *(a1 + 3);
      *(&v49 + 1) = 1;
      v18 = *(a1 + 56);
      v50 = *(a1 + 40);
      v51 = v18;
      *v52 = *(a1 + 72);
      *&v52[10] = *(a1 + 82);
      outlined init with copy of VoiceFeedbackWorkoutStep?(&v59, &v43);
      outlined init with copy of VoiceFeedbackWorkoutStep?(&v69, &v43);
      outlined destroy of AceOutput?(&v48, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
LABEL_12:
      v40 = v66;
      v41 = v67;
      v42[0] = v68[0];
      *(v42 + 10) = *(v68 + 10);
      v38 = v64;
      v39 = v65;
      v35 = v76;
      v36 = v77;
      v37[0] = v78[0];
      *(v37 + 10) = *(v78 + 10);
      v33 = v74;
      v34 = v75;
      outlined init with copy of VoiceFeedbackWorkoutStep(&v64, &v48);
      outlined init with copy of VoiceFeedbackWorkoutStep(&v74, &v48);
      v25 = specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(&v38, &v33);
      v45 = v35;
      v46 = v36;
      v47[0] = v37[0];
      *(v47 + 10) = *(v37 + 10);
      v43 = v33;
      v44 = v34;
      outlined destroy of VoiceFeedbackWorkoutStep(&v43);
      v50 = v40;
      v51 = v41;
      *v52 = v42[0];
      *&v52[10] = *(v42 + 10);
      v48 = v38;
      v49 = v39;
      outlined destroy of VoiceFeedbackWorkoutStep(&v48);
      return v25 & 1;
    }

    v21 = a2;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v59, &v48);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v69, &v48);
    goto LABEL_8;
  }

  v19 = *(a1 + 3);
  v48 = *(a1 + 8);
  *&v49 = v19;
  *(&v49 + 1) = *(&v60 + 1);
  *v52 = *(a1 + 72);
  *&v52[10] = *(a1 + 82);
  v20 = *(a1 + 56);
  v50 = *(a1 + 40);
  v51 = v20;
  v45 = v50;
  v46 = v20;
  *(v47 + 10) = *&v52[10];
  v47[0] = *v52;
  v43 = v48;
  v44 = v49;
  if (*(&v70 + 1) == 1)
  {
    v21 = a2;
    v40 = v50;
    v41 = v51;
    v42[0] = *v52;
    *(v42 + 10) = *&v52[10];
    v38 = v48;
    v39 = v49;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v59, &v33);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v69, &v33);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v48, &v33);
    outlined destroy of VoiceFeedbackWorkoutStep(&v38);
LABEL_8:
    v48 = *(a1 + 8);
    *&v49 = *(a1 + 3);
    *(&v49 + 1) = v16;
    v22 = *(a1 + 56);
    v50 = *(a1 + 40);
    v51 = v22;
    *v52 = *(a1 + 72);
    *&v52[10] = *(a1 + 82);
    *&v53[14] = *&v58[14];
    *v53 = *v58;
    v54 = v17;
    *(v57 + 10) = *(v21 + 82);
    v23 = *(v21 + 72);
    v24 = *(v21 + 40);
    v56 = *(v21 + 56);
    v57[0] = v23;
    v55 = v24;
    outlined destroy of AceOutput?(&v48, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSg_ADtMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSg_ADtMR);
    goto LABEL_9;
  }

  v38 = *(a2 + 8);
  v27 = *(a2 + 3);
  v28 = *(a2 + 56);
  v40 = *(a2 + 40);
  v41 = v28;
  v42[0] = *(a2 + 72);
  *(v42 + 10) = *(a2 + 82);
  *&v39 = v27;
  *(&v39 + 1) = *(&v70 + 1);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v59, &v33);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v69, &v33);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v48, &v33);
  v29 = specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(&v43, &v38);
  v31[2] = v40;
  v31[3] = v41;
  v32[0] = v42[0];
  *(v32 + 10) = *(v42 + 10);
  v31[0] = v38;
  v31[1] = v39;
  outlined destroy of VoiceFeedbackWorkoutStep(v31);
  v35 = v45;
  v36 = v46;
  v37[0] = v47[0];
  *(v37 + 10) = *(v47 + 10);
  v33 = v43;
  v34 = v44;
  outlined destroy of VoiceFeedbackWorkoutStep(&v33);
  v38 = *(a1 + 8);
  *&v39 = *(a1 + 3);
  *(&v39 + 1) = v16;
  v30 = *(a1 + 56);
  v40 = *(a1 + 40);
  v41 = v30;
  v42[0] = *(a1 + 72);
  *(v42 + 10) = *(a1 + 82);
  outlined destroy of AceOutput?(&v38, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

unint64_t lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of VoiceFeedbackWorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UpcomingIntervalModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  a1[2] = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  result = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel()
{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20WorkoutAnnouncements013VoiceFeedbackA4StepVSg(uint64_t a1)
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

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for UpcomingIntervalModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 194))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t storeEnumTagSinglePayload for UpcomingIntervalModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 194) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 194) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t specialized UpcomingIntervalModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xED00007065745364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void __swiftcall EnteredTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::EnteredTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  v8 = targetZone->unit._object;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v11 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneEntered;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v11;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EnteredTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EnteredTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnteredTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v19 = *(v1 + 3);
  v20 = v11;
  LODWORD(v11) = v1[32];
  v17 = v1[33];
  v18 = v11;
  HIDWORD(v16) = v1[34];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = v9;
  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v17;
    v14 = BYTE4(v16);
    v27 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v13;
    v23 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v14;
    v21 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t EnteredTargetZoneModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v30 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v31;
  v29 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v28 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v26;
  v23 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21 & 1;
  (*(v6 + 8))(v9, v5);
  v19 = v24;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 33) = v20;
  *(a2 + 34) = v19;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnteredTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  result = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackPaceFormat_optional __swiftcall VoiceFeedbackPaceFormat.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceFeedbackPaceFormat@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackPaceFormat(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  *(a1 + 8) = result;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}