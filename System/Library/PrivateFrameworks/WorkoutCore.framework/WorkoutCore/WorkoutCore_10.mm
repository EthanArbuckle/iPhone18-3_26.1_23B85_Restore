double Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

unint64_t Apple_Workout_Core_RaceFilter.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_RaceFilter.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_RaceFilter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_RaceFilter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_RaceFilter@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_RaceFilter(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RaceFilter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceFilter(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RaceFilter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RaceFilter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.routePoints.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Apple_Workout_Core_RaceInformationPublisher.raceFilter.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.raceFilter.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_RaceChartPoint.clearOdometerMDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify;
}

uint64_t Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_RaceChartPoint.clearAltitudeMDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_RaceChartPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RaceChartPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 9)
      {
        if (result == 10 || result == 11)
        {
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 9)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0 + 8))
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();
    v4 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0 + 24) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!*(v0 + 32) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      v5 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RaceInformationPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RaceInformationPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RaceInformationPublisher;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceInformationPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_RaceFilter._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_RaceChartPoint.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      v4 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
LABEL_13:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
      goto LABEL_13;
    }
  }
}

uint64_t Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)()
{
  result = closure #1 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    closure #2 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(v0);
    if (*v0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (v0[1])
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_RaceInformationPublisher.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RaceChartPoint@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = a2 + a1[6];
  result = UnknownStorage.init()();
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RaceChartPoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RaceChartPoint;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RaceFilter@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RaceInformationPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceChartPoint()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RaceInformationPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_RaceInformationPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C15_RaceChartPointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    v6 = *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Apple_Workout_Core_RaceChartPoint.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[8];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v15 = v4[6];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RaceFilter] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B11_RaceFilterOGMd, &_sSay11WorkoutCore06Apple_a1_B11_RaceFilterOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RaceFilter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RaceFilter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_RaceFilter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RaceFilter(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_RaceInformationPublisher()
{
  type metadata accessor for [Apple_Workout_Core_RaceChartPoint]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_RaceChartPoint]()
{
  if (!lazy cache variable for type metadata for [Apple_Workout_Core_RaceChartPoint])
  {
    type metadata accessor for Apple_Workout_Core_RaceChartPoint(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Apple_Workout_Core_RaceChartPoint]);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_RaceChartPoint()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t TargetZone.ZoneType.displayString(activityType:)(void *a1)
{
  v2 = *v1;
  if (v2 <= 3)
  {
    if (*v1 <= 1u)
    {
      if (!*v1)
      {
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = [objc_opt_self() bundleForClass_];
        v5 = 0xD00000000000001DLL;
        v6 = 0x800000020B457D40;
LABEL_31:
        v27 = MEMORY[0x20F2E6C00](v5, v6);
        v28 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v29 = [v4 localizedStringForKey:v27 value:0 table:v28];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v24;
      }

      v17 = FIUIDistanceTypeForActivityType();
      v18 = MEMORY[0x20F2E8410](v17);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v19 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v18 == 4)
      {
        v13 = "AVERAGE_SPEED_LONG_DESCRIPTION";
        goto LABEL_16;
      }

      v26 = "AVERAGE_PACE_LONG_DESCRIPTION";
LABEL_27:
      v23 = v26 - 32;
      v5 = 0xD00000000000001DLL;
      goto LABEL_30;
    }

    if (v2 == 2)
    {
      v10 = FIUIDistanceTypeForActivityType();
      v11 = MEMORY[0x20F2E8410](v10);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v12 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v11 == 4)
      {
        v13 = "CURRENT_SPEED_LONG_DESCRIPTION";
LABEL_16:
        v6 = (v13 - 32) | 0x8000000000000000;
LABEL_19:
        v5 = 0xD00000000000001ELL;
        goto LABEL_31;
      }

      v26 = "CURRENT_PACE_LONG_DESCRIPTION";
      goto LABEL_27;
    }

    v21 = MEMORY[0x20F2E8390]([a1 effectiveTypeIdentifier]);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v22 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    if (v21)
    {
      v9 = "CURRENT_CADENCE_LONG_DESCRIPTION_PEDOMETER";
      goto LABEL_22;
    }

    v25 = "CURRENT_CADENCE_LONG_DESCRIPTION_CYCLING";
    goto LABEL_29;
  }

  if (*v1 <= 5u)
  {
    if (v2 == 4)
    {
      v7 = MEMORY[0x20F2E8390]([a1 effectiveTypeIdentifier]);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v8 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v7)
      {
        v9 = "AVERAGE_CADENCE_LONG_DESCRIPTION_PEDOMETER";
LABEL_22:
        v23 = v9 - 32;
        v5 = 0xD00000000000002ALL;
LABEL_30:
        v6 = v23 | 0x8000000000000000;
        goto LABEL_31;
      }

      v25 = "AVERAGE_CADENCE_LONG_DESCRIPTION_CYCLING";
LABEL_29:
      v23 = v25 - 32;
      v5 = 0xD000000000000028;
      goto LABEL_30;
    }

    v14 = "AVERAGE_POWER_LONG_DESCRIPTION";
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v20 = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
LABEL_18:
    v4 = v16;
    v6 = v14 | 0x8000000000000000;
    goto LABEL_19;
  }

  if (v2 == 6)
  {
    v14 = "tePoints";
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v15 = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    goto LABEL_18;
  }

  return 0;
}

Swift::Int StartButtonState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StartButtonState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StartButtonState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StartButtonState and conformance StartButtonState()
{
  result = lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState;
  if (!lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartButtonState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StartButtonState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t HKWorkout.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x800000020B457D60), (v7 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        UUID.init(uuidString:)();
      }
    }

    else
    {
    }
  }

  v9 = type metadata accessor for UUID();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t static HKWorkout.shouldTrackPaceWithOdometer(for:)(void *a1)
{
  v2 = [a1 identifier];
  if ((v2 - 70) < 2)
  {
    return 1;
  }

  if (v2 == 13)
  {
    return [a1 isIndoor] ^ 1;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BreakthroughMomentCheckerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BreakthroughMomentCheckerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t BreakthroughMomentChecker.startChecking()()
{
  v1[5] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v0, 0);
}

{
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *(v0[5] + 136);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[12] = v6;
    v0[13] = v5;

    return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v6, v5);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.workoutVoice);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "No delegate, exiting without starting checking for breakthrough moments", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v0[14] = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v5, 0);
}

{
  v39 = v0;
  v1 = v0[10];
  v2 = WorkoutState.activityType.getter();
  v3 = [v2 supportsWorkoutVoiceMotivationBreakthroughMoments];

  if (!v3)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[10];
    v8 = v0[8];
    v9 = v0[6];
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.workoutVoice);
    v6(v8, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[10];
    v14 = v0[11];
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    if (v13)
    {
      v37 = v0[6];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;
      v21 = WorkoutState.activityType.getter();
      v22 = [v21 localizedName];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v15;
      v25 = v24;

      v26 = *(v17 + 8);
      v26(v16, v37);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v38);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v11, v12, "Current Activity type %s doesn't support breakthrough moments", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);

      swift_unknownObjectRelease();
      v26(v36, v37);
    }

    else
    {

      swift_unknownObjectRelease();
      v28 = *(v17 + 8);
      v28(v16, v18);
      v28(v15, v18);
    }

    goto LABEL_9;
  }

  if (*(v0[5] + 112))
  {
    v4 = v0[11];
    (*(v0[7] + 8))(v0[10], v0[6]);
    swift_unknownObjectRelease();
LABEL_9:
    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[8];

    v32 = v0[1];

    return v32();
  }

  v34 = v0[12];
  v35 = v0[13];

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v34, v35);
}

{
  v1 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 72), *(v0 + 88) + *(v0 + 112), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = BreakthroughMomentChecker.startChecking();
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  return BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 144) = v7;
  *(v1 + 152) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v6, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];
  swift_unknownObjectRelease();
  v2(v4, v5);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WorkoutVoiceMomentType();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v1, 0);
}

uint64_t BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  *(*(v0 + 24) + 112) = 1;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Requesting a Breakthrough Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v18 = *(v0 + 16);
    (*(*(v0 + 40) + 104))(*(v0 + 48), *MEMORY[0x277D0A460], *(v0 + 32));
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    v7[1] = vextq_s8(v18, v18, 8uLL);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 16);

    return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v9, v10, v11, &async function pointer to partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v7);
  }

  else
  {
    v13 = *(v0 + 56);
    v14 = type metadata accessor for InferenceResult();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    _sSo8NSObjectCSgWOhTm_1(v13, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    *(*(v0 + 24) + 112) = 0;

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 96) = v0;

  swift_unknownObjectRelease();

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = *(v2 + 24);
    v11 = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  else
  {
    v12 = *(v2 + 24);
    _sSo8NSObjectCSgWOhTm_1(*(v2 + 56), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v11 = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
    v10 = v12;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  *(v0[3] + 112) = 0;

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Check or infer Breakthrough moment with error: %@", v8, 0xCu);
    _sSo8NSObjectCSgWOhTm_1(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  v12 = v0[7];
  *(v0[3] + 112) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

uint64_t closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  v1 = *(v0[3] + 120);
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A460], v0[10]);
  v2 = *(MEMORY[0x277D0A340] + 4);
  v8 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  else
  {
    v6 = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v42 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of WorkoutVoiceMoment?(v0[14], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    _sSo8NSObjectCSgWOhTm_1(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    _sSo8NSObjectCSgWOhTm_1(v4, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    (*(v0[6] + 56))(v0[2], 1, 1, v0[5]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[9];
    v15 = v0[5];
    v16 = v0[6];
    v17 = *(v16 + 32);
    v0[17] = v17;
    v0[18] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v14, v13, v15);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[5];
    v21 = v0[6];
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.workoutVoice);
    v23 = *(v21 + 16);
    v23(v18, v19, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[8];
    if (v26)
    {
      v28 = v0[6];
      v29 = v0[7];
      v30 = v0[5];
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v31 = 136315138;
      v23(v29, v27, v30);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = *(v28 + 8);
      v35(v27, v30);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Breakthrough moment: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    else
    {
      v37 = v0[5];
      v38 = v0[6];

      v35 = *(v38 + 8);
      v35(v27, v37);
    }

    v0[19] = v35;
    v39 = v0[3];

    return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v39, 0);
  }
}

{
  *(v0 + 160) = *(*(v0 + 24) + 112);
  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

{
  if (*(v0 + 160) == 3)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 48) + 8;
    (*(v0 + 152))(*(v0 + 72), *(v0 + 40));
    _sSo8NSObjectCSgWOhTm_1(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 24);

    return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v11, 0);
  }
}

{
  *(*(v0 + 24) + 112) = 2;
  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[2];
  _sSo8NSObjectCSgWOhTm_1(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v2(v5, v3, v4);
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  (*(v0[6] + 56))(v0[2], 0, 1, v0[5]);

  v12 = v0[1];

  return v12();
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

Swift::Void __swiftcall BreakthroughMomentChecker.stopChecking()()
{
  v1 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Stopping checking for breakthroughs", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  *(v1 + 112) = 3;
}

uint64_t BreakthroughMomentChecker.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  outlined destroy of weak BreakthroughMomentCheckerDelegate?(v0 + 128);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for BreakthroughMomentCheckerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BreakthroughMomentCheckerState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState()
{
  result = lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState;
  if (!lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState);
  }

  return result;
}

uint64_t partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);

  return closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of WorkoutVoiceMoment?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PowerZonesAlertTargetZone.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v3 = *(*(v101 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v101);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v95 = &v91 - v6;
  v94 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v7 = *(*(v94 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v94);
  v96 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v91 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_Zone();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v105 = &v91 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v106 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v104 = *(v106 - 8);
  v21 = *(v104 + 64);
  v22 = MEMORY[0x28223BE20](v106);
  *&v103.f64[0] = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v91 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  *&v107.f64[0] = &v91 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v91 - v29;
  v31 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v93 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v97 = &v91 - v35;
  v36 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v37 = *(v36 - 8);
  v99 = *(v37 + 56);
  v100 = v36;
  v98 = v37 + 56;
  v99(a1, 1, 1);
  v38 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0) + 20);
  UnknownStorage.init()();
  v39 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v41 = *v39;
  result = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = v42 >> 6;
  if (v42 >> 6 <= 1)
  {
    v95 = *v39;
    v91 = a1;
    if (!v43)
    {
      *(v11 + 1) = 0;
      v11[16] = 1;
      v44 = &v11[*(v94 + 24)];
      v45 = result;
      UnknownStorage.init()();
      v46 = v96;
      *v11 = v95;
      *(v11 + 1) = v45;
      v11[16] = 1;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v11, v46, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v47 = v91;
      outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v91, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v46, v47, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v48 = v100;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      return (v99)(v47, 0, 1, v48);
    }

    v96 = v42;
    v57 = *(v31 + 24);
    v101 = result;

    v58 = v97;
    result = UnknownStorage.init()();
    if (v95 < 0xFFFFFFFF80000000)
    {
      goto LABEL_45;
    }

    if (v95 > 0x7FFFFFFF)
    {
      goto LABEL_46;
    }

    *v58 = v95;
    v59 = v101;
    if (v101)
    {
      if (v101 >> 62)
      {
        goto LABEL_47;
      }

      v60 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
        while (v60 >= 1)
        {
          v102 = v12;
          if ((v59 & 0xC000000000000001) != 0)
          {
            v16 = 0;
            v61 = (v92 + 56);
            v62 = MEMORY[0x277D84F90];
            v103 = vdupq_n_s64(0x4059000000000000uLL);
            while (1)
            {
              v26 = MEMORY[0x20F2E7A20](v16, v101);
              v63 = v106;
              v64 = &v30[*(v106 + 24)];
              UnknownStorage.init()();
              v65 = *(v63 + 28);
              v66 = *v61;
              (*v61)(&v30[v65], 1, 1, v12);
              *v30 = vrndaq_f64(vmulq_f64(*(v26 + 3), v103));
              v67 = &v20[*(v12 + 32)];
              UnknownStorage.init()();
              *v20 = *(v26 + 1);
              v68 = *(v26 + 4);
              if (v68 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v68 > 0x7FFFFFFF)
              {
                goto LABEL_38;
              }

              *(v20 + 4) = v68;
              v69 = *(v26 + 5);
              if (v69 < 0xFFFFFFFF80000000)
              {
                goto LABEL_39;
              }

              if (v69 > 0x7FFFFFFF)
              {
                goto LABEL_40;
              }

              *(v20 + 5) = v69;
              v70 = v105;
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v20, v105, type metadata accessor for Apple_Workout_Core_Zone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(&v30[v65], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
              v71 = v70;
              v12 = v102;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v71, &v30[v65], type metadata accessor for Apple_Workout_Core_Zone);
              v66(&v30[v65], 0, 1, v12);
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v30, *&v107.f64[0], type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
              }

              v73 = v62[2];
              v72 = v62[3];
              if (v73 >= v72 >> 1)
              {
                v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1, v62);
              }

              ++v16;
              swift_unknownObjectRelease();
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v20, type metadata accessor for Apple_Workout_Core_Zone);
              v62[2] = v73 + 1;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(*&v107.f64[0], v62 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v73, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v30, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if (v60 == v16)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
          }

          else
          {
            v77 = (v59 + 32);
            v78 = (v92 + 56);
            v62 = MEMORY[0x277D84F90];
            v107 = vdupq_n_s64(0x4059000000000000uLL);
            while (1)
            {
              v20 = v60;
              v30 = *v77;
              v79 = v106;
              v80 = *(v106 + 24);

              UnknownStorage.init()();
              v81 = *(v79 + 28);
              v82 = *v78;
              (*v78)(&v26[v81], 1, 1, v12);
              *v26 = vrndaq_f64(vmulq_f64(*(v30 + 3), v107));
              v83 = &v16[*(v12 + 32)];
              UnknownStorage.init()();
              *v16 = *(v30 + 1);
              v84 = *(v30 + 4);
              if (v84 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v84 > 0x7FFFFFFF)
              {
                goto LABEL_42;
              }

              *(v16 + 4) = v84;
              v85 = *(v30 + 5);
              if (v85 < 0xFFFFFFFF80000000)
              {
                goto LABEL_43;
              }

              if (v85 > 0x7FFFFFFF)
              {
                goto LABEL_44;
              }

              *(v16 + 5) = v85;
              v86 = v105;
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v16, v105, type metadata accessor for Apple_Workout_Core_Zone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(&v26[v81], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
              v87 = v86;
              v12 = v102;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v87, &v26[v81], type metadata accessor for Apple_Workout_Core_Zone);
              v82(&v26[v81], 0, 1, v12);
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v26, *&v103.f64[0], type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
              }

              v89 = v62[2];
              v88 = v62[3];
              if (v89 >= v88 >> 1)
              {
                v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1, v62);
              }

              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v16, type metadata accessor for Apple_Workout_Core_Zone);
              v62[2] = v89 + 1;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(*&v103.f64[0], v62 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v89, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v26, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              ++v77;
              v60 = (v20 - 1);
              if (v20 == 1)
              {
                goto LABEL_49;
              }
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          result = __CocoaSet.count.getter();
          v59 = v101;
          v60 = result;
          if (!result)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        return result;
      }

LABEL_48:
      v62 = MEMORY[0x277D84F90];
LABEL_49:
      outlined consume of PowerZonesAlertZoneType(v95, v101, v96);
      v74 = v91;
      v76 = v99;
      v75 = v100;
      v58 = v97;
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
      v74 = v91;
      v76 = v99;
      v75 = v100;
    }

    *(v58 + 8) = v62;
    v90 = v93;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v58, v93, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v74, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v90, v74, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    swift_storeEnumTagMultiPayload();
    (v76)(v74, 0, 1, v75);
    return outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v58, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  }

  if (v43 == 2)
  {
    v47 = a1;
    v49 = v42 & 0x3F;
    v50 = v101;
    v51 = v95;
    v52 = v95 + *(v101 + 24);
    v53 = v41;
    v54 = result;
    UnknownStorage.init()();
    v55 = v51 + *(v50 + 28);
    *v51 = v53;
    v51[1] = v54;
    *v55 = v49;
    *(v55 + 4) = 1;
    v56 = v102;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v51, v102, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v47, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v56, v47, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v48 = v100;
    goto LABEL_6;
  }

  return result;
}

id Apple_Workout_Core_PowerZonesAlertTargetZone.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v1, v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v25 = 0.0;
    v26 = 0.0;
    v27 = -64;
LABEL_9:
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v34 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    return PowerZonesAlertTargetZone.init(type:)(&v38);
  }

  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v16, v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, v22, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v25 = *v12;
    v29 = *(v12 + 16);
    v38 = v12[1];
    LOBYTE(v39) = v29;
    Apple_Workout_Core_ZoneType.decoded.getter(&v37);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v27 = 0;
    *&v26 = v37;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v8, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    Apple_Workout_Core_PowerZoneAutomatic.decoded.getter(&v38);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v8, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v25 = v38;
    v26 = v39;
    v27 = v40;
    goto LABEL_9;
  }

  outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v30 = v36;
  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v36, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  v32 = *v30;
  v31 = v30[1];
  result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v30, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  if (v32 <= v31)
  {
    v25 = v32;
    v26 = v31;
    v27 = -123;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.decoded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = type metadata accessor for Apple_Workout_Core_Zone();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v67 = (&v58 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = (&v58 - v24);
  v66 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v26 = *(*(v66 - 8) + 64);
  result = MEMORY[0x28223BE20](v66);
  v30 = (&v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + 1);
  v32 = *(v31 + 16);
  if (!v32)
  {
    v57 = 0;
LABEL_29:
    *a1 = *v1;
    *(a1 + 8) = v57;
    *(a1 + 16) = 64;
    return result;
  }

  v63 = v21;
  v69 = v13;
  v59 = v1;
  v60 = a1;
  v71 = MEMORY[0x277D84F90];
  v33 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v70 = *(v28 + 72);
  v34 = (v15 + 48);
  v61 = v25;
  v62 = v11;
  while (1)
  {
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v33, v30, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    if (!v71)
    {
      goto LABEL_4;
    }

    v35 = *(v66 + 28);
    v36 = v69;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v30 + v35, v69, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v37 = *v34;
    if ((*v34)(v36, 1, v14) == 1)
    {
      *v25 = 0.0;
      v25[1] = 0.0;
      v25[2] = 0.0;
      v38 = v25 + *(v14 + 32);
      UnknownStorage.init()();
      if (v37(v36, 1, v14) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v69, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v36, v25, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v39 = *v25;
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v25, type metadata accessor for Apple_Workout_Core_Zone);
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v30 + v35, v11, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v40 = v37(v11, 1, v14);
    v41 = v68;
    if (v40 == 1)
    {
      v42 = v67;
      *v67 = 0.0;
      v42[1] = 0.0;
      v42[2] = 0.0;
      v43 = v42 + *(v14 + 32);
      UnknownStorage.init()();
      if (v37(v11, 1, v14) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v11, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      v42 = v67;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v11, v67, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v44 = v42[1];
    result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v42, type metadata accessor for Apple_Workout_Core_Zone);
    if (v39 > v44)
    {
      break;
    }

    v45 = *v30;
    v46 = v30[1];
    if (*v30 > v46)
    {
      goto LABEL_31;
    }

    v47 = v64;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v30 + v35, v64, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v37(v47, 1, v14) == 1)
    {
      v48 = v63;
      *v63 = 0;
      v48[1] = 0;
      v48[2] = 0;
      v49 = v48 + *(v14 + 32);
      UnknownStorage.init()();
      if (v37(v47, 1, v14) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v47, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      v48 = v63;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v47, v63, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v50 = *(v48 + 4);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v48, type metadata accessor for Apple_Workout_Core_Zone);
    v51 = v30 + v35;
    v52 = v65;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v51, v65, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v37(v52, 1, v14) == 1)
    {
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      v53 = v41 + *(v14 + 32);
      UnknownStorage.init()();
      if (v37(v52, 1, v14) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v52, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v52, v41, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v54 = *(v41 + 20);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v41, type metadata accessor for Apple_Workout_Core_Zone);
    type metadata accessor for CyclingPowerZone();
    result = swift_allocObject();
    *(result + 48) = v45;
    *(result + 56) = v46;
    v55 = floor(v39);
    v56 = floor(v44);
    if (v55 > v56)
    {
      goto LABEL_32;
    }

    *(result + 16) = v55;
    *(result + 24) = v56;
    *(result + 32) = v50;
    *(result + 40) = v54;
    MEMORY[0x20F2E6F30]();
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v25 = v61;
    v11 = v62;
LABEL_4:
    result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v30, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    v33 += v70;
    if (!--v32)
    {
      v57 = v71;
      v1 = v59;
      a1 = v60;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void RouteDetectorFactory.createLocalRouteDetector(delegate:)(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for RouteDetectorDataSource();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC11WorkoutCore23RouteDetectorDataSource_type] = a2;
  v20.receiver = v9;
  v20.super_class = v8;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = type metadata accessor for RouteDetectorAdapter();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_routeDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a1;
  swift_unknownObjectWeakAssign();
  v12[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_type] = a2;
  v19.receiver = v12;
  v19.super_class = v11;
  v13 = objc_msgSendSuper2(&v19, sel_init);
  swift_beginAccess();
  v14 = v13;
  MEMORY[0x20F2E6F30]();
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  v15 = v10;
  MEMORY[0x20F2E6F30]();
  if (*((v5[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((v5[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v16 = [objc_allocWithZone(MEMORY[0x277D279F0]) initWithInitiator:*MEMORY[0x277D27930] delegate:v14 dataSource:v15 delegateQueue:v5[2]];
  a3[3] = type metadata accessor for MRRelevantRouteDetector(0, &lazy cache variable for type metadata for MRRelevantRouteDetector, 0x277D279F0);
  a3[4] = &protocol witness table for MRRelevantRouteDetector;

  *a3 = v16;
}

uint64_t RouteDetectorFactory.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v3 = *(v0 + 32);
  *(v0 + 32) = v2;

  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = v2[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_type];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (v9)
  {
    v11 = &async function pointer to partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);
  }

  else
  {
    v11 = &async function pointer to partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = v2;
  v14 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, v11, v12);
}

uint64_t closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

{
  _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_19didDetectLocalRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(*(v0 + 40), *(v0 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

{
  _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_23didDetectCompanionRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(*(v0 + 40), *(v0 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

id BluetoothHeadphonesMonitor.init(routeDetectorFactory:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  swift_getObjectType();
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  swift_defaultActor_initialize();
  *(v1 + 264) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  swift_unknownObjectWeakInit();
  v23[1] = type metadata accessor for MRRelevantRouteDetector(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(16);
  v11 = _typeName(_:qualified:)();
  v13 = v12;

  *&v29 = v11;
  *(&v29 + 1) = v13;
  MEMORY[0x20F2E6D80](0x746167656C65642ELL, 0xEE00657565755165);
  static DispatchQoS.unspecified.getter();
  *&v29 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v24);
  v14 = v25;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 120) = v15;
  outlined init with copy of RouteDetecting?(v14, &v27, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
  if (v28)
  {

    outlined init with take of RouteDetectorBuilding(&v27, &v29);
  }

  else
  {
    v16 = type metadata accessor for RouteDetectorFactory();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D84F90];
    v17[3] = MEMORY[0x277D84F90];
    v17[4] = v18;
    v17[2] = v15;
    v30 = v16;
    v31 = &protocol witness table for RouteDetectorFactory;
    v19 = v15;

    *&v29 = v17;
    if (v28)
    {
      outlined destroy of RouteDetecting?(&v27, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
    }
  }

  outlined init with take of RouteDetectorBuilding(&v29, v2 + 216);
  *(v2 + 112) = 0;
  *(v2 + 208) = 0;
  v20 = type metadata accessor for BluetoothHeadphonesMonitor();
  v26.receiver = v2;
  v26.super_class = v20;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  outlined destroy of RouteDetecting?(v14, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
  return v21;
}

uint64_t BluetoothHeadphonesMonitor.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-v8];
  v3[33] = a2;
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.workoutVoice);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] Initial Overall Route Connected: false", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  if (a1)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = a1;
    *(v19 + 40) = 0;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply, v19);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?((v3 + 16), v26, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  v20 = v27;
  outlined destroy of RouteDetecting?(v26, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (!v20)
  {
    v21 = *__swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
    RouteDetectorFactory.createLocalRouteDetector(delegate:)(&protocol witness table for BluetoothHeadphonesMonitor, v26);
    swift_beginAccess();
    outlined assign with take of RouteDetecting?(v26, (v3 + 16));
    swift_endAccess();
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?((v3 + 21), v26, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  v22 = v27;
  result = outlined destroy of RouteDetecting?(v26, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (!v22)
  {
    v24 = *__swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
    RouteDetectorFactory.createCompanionRouteDetector(delegate:)(&protocol witness table for BluetoothHeadphonesMonitor, v26);
    swift_beginAccess();
    outlined assign with take of RouteDetecting?(v26, (v3 + 21));
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall BluetoothHeadphonesMonitor.beginObserving()()
{
  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 128, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 168, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }
}

Swift::Void __swiftcall BluetoothHeadphonesMonitor.stopObserving()()
{
  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 128, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 168, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }
}

void BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  if (*(v0 + 113))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v0 + 208);
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static WOLog.workoutVoice);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v8;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v6;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[%s] Overall Route Connected: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v17 = *(v1 + 112);
  *(v1 + 112) = v6;
  if (v6 != v17)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v30);

      *(v20 + 4) = v24;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v6;
      _os_log_impl(&dword_20AEA4000, v18, v19, "[%s] Notifying Observer of connection status update: %{BOOL}d", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v26;
      *(v28 + 40) = v6;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:), v28);
    }
  }
}

uint64_t BluetoothHeadphonesMonitor.__deallocating_deinit()
{
  outlined destroy of RouteDetecting?(v0 + 128, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  outlined destroy of RouteDetecting?(v0 + 168, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm_0((v0 + 216));
  sub_20AEC989C(v0 + 256);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RouteDetectorDataSource.RouteType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RouteDetectorDataSource.RouteType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

id RouteDetectorAdapter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for RouteDetectorDataSource.RouteType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RouteDetectorDataSource.RouteType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType()
{
  result = lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType;
  if (!lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType);
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:);

  return closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);

  return closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);

  return closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(a1, v4, v5, v6, v7, v8);
}

void _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_19didDetectLocalRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(char a1, uint64_t a2)
{
  swift_getObjectType();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Setting Local Route Connected: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(a2 + 113) = a1 & 1;
  BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()();
}

void _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_23didDetectCompanionRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(char a1, uint64_t a2)
{
  swift_getObjectType();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Setting Companion Route Connected: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(a2 + 208) = a1 & 1;
  BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()();
}

uint64_t outlined init with copy of RouteDetecting(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of RouteDetecting?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(a1, v4, v5, v6, v7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for MRRelevantRouteDetector(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of RouteDetecting?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of RouteDetecting?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of RouteDetectorBuilding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t UnlockedSinceBootMonitor.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t UnlockedSinceBootMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*UnlockedSinceBootMonitor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnlockedSinceBootMonitor.delegate.modify;
}

uint64_t UnlockedSinceBootMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UnlockedSinceBootMonitor.init()()
{
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v13 = static OS_dispatch_queue.main.getter();
    v18 = v5;
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification();
    *(v15 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_23_0;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v16);
    _Block_release(v16);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v18);
  }
}

uint64_t closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
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
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 67109378;
      *(v5 + 4) = MKBDeviceUnlockedSinceBoot() == 1;

      *(v5 + 8) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + 32);
      v16[1] = Strong;
      v16[2] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33UnlockedSinceBootDelegateProtocol_pSgMd, &_s11WorkoutCore33UnlockedSinceBootDelegateProtocol_pSgMR);
      v9 = Optional.description.getter();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v16);

      *(v5 + 10) = v12;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[UnlockedSinceBoot] handleKeyBagLockStatusNotification, unlocked: %{BOOL}d, delegate: %s", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      v15 = MKBDeviceUnlockedSinceBoot() == 1;
      (*(v13 + 8))(v15, ObjectType, v13);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t UnlockedSinceBootMonitor.deinit()
{
  UnlockedSinceBootMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedSinceBootDelegateProtocol?(v0 + 24);
  return v0;
}

uint64_t UnlockedSinceBootMonitor.__deallocating_deinit()
{
  UnlockedSinceBootMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedSinceBootDelegateProtocol?(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UnlockedSinceBootMonitor.startMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedSinceBootMonitor.startMonitoring()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedSinceBootMonitor.startMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_11;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

void closure #1 in UnlockedSinceBootMonitor.startMonitoring()()
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + 16) != -1)
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.app);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[UnlockedSinceBoot] already monitoring lock status notifications", v10, 2u);
      v11 = v10;
LABEL_18:
      MEMORY[0x20F2E9420](v11, -1, -1);
LABEL_19:

      goto LABEL_20;
    }

    out_token = -1;
    type metadata accessor for OS_dispatch_queue();
    (*(v1 + 104))(v4, *MEMORY[0x277D851C8], v0);
    v12 = static OS_dispatch_queue.global(qos:)();
    (*(v1 + 8))(v4, v0);
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in UnlockedSinceBootMonitor.startMonitoring();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_27;
    v14 = _Block_copy(aBlock);

    v15 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v12, v14);
    _Block_release(v14);

    if (v15 || out_token == -1)
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.app);
      v8 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v22))
      {
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v8, v22, "[UnlockedSinceBoot] error registering for lock status notifications, result: %u", v23, 8u);
      v11 = v23;
      goto LABEL_18;
    }

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020B4580A0, aBlock);
      _os_log_impl(&dword_20AEA4000, v17, v18, "[UnlockedSinceBoot] registered for lock status notifications: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    *(v6 + 16) = out_token;
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t closure #1 in closure #1 in UnlockedSinceBootMonitor.startMonitoring()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()();
  }

  return result;
}

uint64_t protocol witness for UnlockedSinceBootMonitorProtocol.delegate.getter in conformance UnlockedSinceBootMonitor()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 32);
  return result;
}

uint64_t (*protocol witness for UnlockedSinceBootMonitorProtocol.delegate.modify in conformance UnlockedSinceBootMonitor(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for UnlockedSinceBootMonitorProtocol.delegate.modify in conformance UnlockedSinceBootMonitor;
}

void UnlockedSinceBootMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t LiveZone.elapsedTimeInZone.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiveZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiveZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiveZone.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance LiveZone.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LiveZone.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance LiveZone.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LiveZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LiveZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  result = swift_beginAccess();
  *(v10 + 48) = a5;
  v12 = floor(a3);
  v13 = floor(a4);
  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v12;
    *(v10 + 24) = v13;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    return v10;
  }

  return result;
}

uint64_t LiveZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 48) = 0;
  result = swift_beginAccess();
  *(v5 + 48) = a5;
  v12 = floor(a3);
  v13 = floor(a4);
  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    return v5;
  }

  return result;
}

uint64_t LiveZone.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-1] - v7;
  *(v1 + 48) = 0;
  outlined init with copy of Decoder(a1, v15);
  v9 = Zone.init(from:)(v15);
  if (!v2)
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    *(v9 + 48) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

uint64_t LiveZone.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  result = Zone.encode(to:)(a1);
  if (!v2)
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    swift_beginAccess();
    v11 = *(v1 + 48);
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

double protocol witness for LiveZoneProtocol.elapsedTimeInZone.getter in conformance LiveZone()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t protocol witness for LiveZoneProtocol.elapsedTimeInZone.setter in conformance LiveZone(double a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 48) = a1;
  return result;
}

uint64_t (*protocol witness for LiveZoneProtocol.elapsedTimeInZone.modify in conformance LiveZone())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for LiveZoneProtocol.elapsedTimeInZone.modify in conformance LiveZone;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LiveZone@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(*v1 + 32);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LiveZone.logString.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(49);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](40, 0xE100000000000000);
  v7 = v0[4];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v8 = v0[5];
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0x616C707369642029, 0xEF203A6E61705379);
  v9 = v0[3];
  v10 = v0[2];
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B458120);
  swift_beginAccess();
  v5 = v0[6];
  Double.write<A>(to:)();
  return 0;
}

uint64_t getEnumTagSinglePayload for LiveZone.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LiveZone.CodingKeys(_WORD *result, int a2, int a3)
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

Swift::Double __swiftcall HKWorkoutBuilderQuantity.valueFor(unit:)(HKUnit unit)
{
  v3 = [v1 quantity];
  [v3 doubleValueForUnit_];
  v5 = v4;

  return v5;
}

uint64_t HKWorkoutBuilderQuantity.startDate.getter(void (*a1)(void))
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  a1();
  return (*(v4 + 8))(v7, v3);
}

Swift::Double __swiftcall HKQuantitySample.valueFor(unit:)(HKUnit unit)
{
  v2 = [v1 quantity];
  [v2 _value];
  v4 = v3;

  return v4;
}

Swift::Bool __swiftcall HKQuantitySample.useSampleDuration()()
{
  v1 = [v0 quantityType];
  v2 = [v1 aggregationStyle];

  return v2 == 0;
}

void protocol witness for ChartableSample.startDate.getter in conformance HKQuantitySample(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

double protocol witness for ChartableSample.valueFor(unit:) in conformance HKQuantitySample()
{
  v1 = [*v0 quantity];
  [v1 _value];
  v3 = v2;

  return v3;
}

BOOL protocol witness for ChartableSample.useSampleDuration() in conformance HKQuantitySample()
{
  v1 = [*v0 quantityType];
  v2 = [v1 aggregationStyle];

  return v2 == 0;
}

uint64_t protocol witness for ChartableSample.startDate.getter in conformance HKWorkoutBuilderQuantity(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*v3 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  a3();
  return (*(v6 + 8))(v9, v5);
}

double protocol witness for ChartableSample.valueFor(unit:) in conformance HKWorkoutBuilderQuantity(uint64_t a1)
{
  v3 = [*v1 quantity];
  [v3 doubleValueForUnit_];
  v5 = v4;

  return v5;
}

uint64_t ElevationSample.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Double __swiftcall ElevationSample.valueFor(unit:)(HKUnit unit)
{
  v3 = *(v1 + *(type metadata accessor for ElevationSample() + 20));

  [v3 doubleValueForUnit_];
  return result;
}

uint64_t protocol witness for ChartableSample.startDate.getter in conformance ElevationSample@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_Activity.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Workout_Core_Activity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Activity.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_Activity.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.stringValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v8 - v3);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v8 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      result = *v4;
      v7 = v4[1];
      return result;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.stringValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v12 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v10 = *v7;
      v11 = v7[1];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.stringValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *a2 = v4;
  a2[1] = v3;
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.stringValue.setter(uint64_t a1, uint64_t a2)
{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Apple_Workout_Core_ActivityMetadataValue.stringValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[3] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[4] = v10;
  v11 = *(v10 - 8);
  v6[5] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = v9[1];
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_12:
  *v6 = v12;
  v6[1] = v13;
  return Apple_Workout_Core_ActivityMetadataValue.stringValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.stringValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    v10 = v2[1];
  }

  else
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?((*a1)[2], &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.quantityValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a1, type metadata accessor for Apple_Workout_Core_HKQuantity);
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_HKQuantity() + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.quantityValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v7, type metadata accessor for Apple_Workout_Core_HKQuantity);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.quantityValue.setter(uint64_t a1)
{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v1, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v3 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v8, v12, type metadata accessor for Apple_Workout_Core_HKQuantity);
  return Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_HKQuantity((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_HKQuantity);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v5, v8, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(**a1, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v6, v8, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

double Apple_Workout_Core_ActivityMetadataValue.doubleValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v7 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v4;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0.0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.doubleValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_6;
  }

  v10 = *v7;
LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.doubleValue.setter(double a1)
{
  return Apple_Workout_Core_ActivityMetadataValue.doubleValue.setter(a1);
}

{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v1, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v1 = a1;
  v3 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
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
  *(v5 + 8) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[2] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[3] = v10;
  v11 = *(v10 - 8);
  v6[4] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify(uint64_t **a1)
{
  Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify(a1);
}

{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v5, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

double Apple_Workout_Core_ActivityMetadataValue.dateValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v7 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v4;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0.0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.dateValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_6;
  }

  v10 = *v7;
LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.doubleValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t *a1, void *a2)
{
  v3 = *a1;
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *a2 = v3;
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

void (*Apple_Workout_Core_ActivityMetadataValue.dateValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
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
  *(v5 + 8) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[2] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[3] = v10;
  v11 = *(v10 - 8);
  v6[4] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return Apple_Workout_Core_ActivityMetadataValue.dateValue.modify;
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 5)
    {
      closure #5 in Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Apple_Workout_Core_Activity.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          if (!*(*(v0 + 16) + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
          {
            v3 = v0 + *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Activity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Activity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Activity;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Activity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Activity()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_Activity._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        closure #3 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(a1, v5);
      }
    }

    else if (result == 1)
    {
      closure #1 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(a1, v5);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v9 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    if (v11 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, v14, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v14, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v14, v22, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    outlined init with take of Apple_Workout_Core_HKQuantity(v22, v20, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v28, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_HKQuantity(v20, v44, type metadata accessor for Apple_Workout_Core_HKQuantity);
      outlined init with take of Apple_Workout_Core_HKQuantity(v35, v28, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v20, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v28, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v28, v36, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v28, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v36, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_HKQuantity(v36, v43, type metadata accessor for Apple_Workout_Core_HKQuantity);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v28, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v42, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v39, v40, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    if (v12 != 1)
    {
      v13 = v15;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        result = closure #3 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = closure #4 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3, a1, a2, a3);
      result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v11, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v11, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      result = closure #1 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v10 - v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v5, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    v8 = v5[1];
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v5, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v12, type metadata accessor for Apple_Workout_Core_HKQuantity);
    lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v9 - v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v5, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v5, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v9 - v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v5, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v5, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

Swift::Int Apple_Workout_Core_Activity.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ActivityMetadataValue;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Activity@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Activity()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivityMetadataValue()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Activity()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_ActivityMetadataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, v12, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
LABEL_6:
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v21 = specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v4 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v38 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v38 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v38 - v22;
  v24 = &v38 + *(v21 + 56) - v22;
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, &v38 - v22, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a2, v24, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_Core_HKQuantity(v23, v13, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      v28 = *v13;
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_HKQuantity(v23, v10, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      v28 = *v10;
    }

    v32 = v28 == *v24;
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v23, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    return v32;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_HKQuantity(v23, v16, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
      goto LABEL_21;
    }

    v29 = v39;
    outlined init with take of Apple_Workout_Core_HKQuantity(v24, v39, type metadata accessor for Apple_Workout_Core_HKQuantity);
    if (*v16 != *v29 || (*(v16 + 1) == *(v29 + 8) ? (v30 = *(v16 + 2) == *(v29 + 16)) : (v30 = 0), !v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v31 = *(v38 + 24), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)))
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v29, type metadata accessor for Apple_Workout_Core_HKQuantity);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
      goto LABEL_25;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v29, type metadata accessor for Apple_Workout_Core_HKQuantity);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
LABEL_33:
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v23, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    return 1;
  }

  outlined init with copy of Apple_Workout_Core_HKQuantity(v23, v18, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v27 = *v18;
  v26 = v18[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    if (v27 != *v24 || v26 != *(v24 + 1))
    {
      v35 = *(v24 + 1);
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_33;
      }

LABEL_25:
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v23, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      return 0;
    }

    v37 = *(v24 + 1);

    goto LABEL_33;
  }

LABEL_21:
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v23, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMR);
  return 0;
}

uint64_t specialized static Apple_Workout_Core_Activity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueVTt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Apple_Workout_Core_Activity(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for Apple_Workout_Core_Activity()
{
  type metadata accessor for [String : Apple_Workout_Core_ActivityMetadataValue]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_ActivityMetadataValue()
{
  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)
  {
    type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue()
{
  result = type metadata accessor for Apple_Workout_Core_HKQuantity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with take of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int FIUIWorkoutActivityType.configurationTypes.getter()
{
  v1 = v0;
  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of FIUIWorkoutActivityType.configurationTypes.getter);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static WorkoutDevicesProvider.shared;
  v2 = static WorkoutDevicesProvider.shared;
  v3 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

  if (v3)
  {
    if ([v1 effectiveTypeIdentifier] != 82)
    {
      specialized Set._Variant.insert(_:)(&v7, 1);
    }

    if ([v1 supportsRaceRoute])
    {
      specialized Set._Variant.insert(_:)(&v7, 2);
    }

    v4 = [v1 isIndoor];
    v5 = [v1 effectiveTypeIdentifier];
    if (v4)
    {
      if (v5 != 37 && v5 != 71)
      {
        return v8;
      }

LABEL_14:
      specialized Set._Variant.insert(_:)(&v7, 3);
      return v8;
    }

    if ((v5 - 13) <= 0x3A && ((1 << (v5 - 13)) & 0x400000001000001) != 0)
    {
      goto LABEL_14;
    }
  }

  return v8;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = specialized RawRepresentable<>._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v30 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v9 == 6)
          {
            v13 = 0x5F65676172657661;
            v14 = 0xED00007265776F70;
          }

          else
          {
            v14 = 0xE400000000000000;
            v13 = 1701736302;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v13 = 0x5F65676172657661;
          }

          else
          {
            v13 = 0xD000000000000013;
          }

          if (v9 == 4)
          {
            v14 = 0xEF65636E65646163;
          }

          else
          {
            v14 = 0x800000020B4544E0;
          }
        }
      }

      else
      {
        v10 = 0xD000000000000015;
        if (v9 == 2)
        {
          v10 = 0xD000000000000012;
          v11 = 0x800000020B454490;
        }

        else
        {
          v11 = 0x800000020B4544B0;
        }

        if (*(*(v4 + 48) + v8))
        {
          v12 = 0x5F65676172657661;
        }

        else
        {
          v12 = 0x5F676E696C6C6F72;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v13 = v12;
        }

        else
        {
          v13 = v10;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v14 = 0xEC00000065636170;
        }

        else
        {
          v14 = v11;
        }
      }

      v15 = 1701736302;
      if (a2 == 6)
      {
        v15 = 0x5F65676172657661;
      }

      v16 = 0xED00007265776F70;
      if (a2 != 6)
      {
        v16 = 0xE400000000000000;
      }

      if (a2 == 4)
      {
        v17 = 0x5F65676172657661;
      }

      else
      {
        v17 = 0xD000000000000013;
      }

      v18 = 0xEF65636E65646163;
      if (a2 != 4)
      {
        v18 = 0x800000020B4544E0;
      }

      if (a2 <= 5u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0xD000000000000015;
      if (a2 == 2)
      {
        v19 = 0xD000000000000012;
        v20 = 0x800000020B454490;
      }

      else
      {
        v20 = 0x800000020B4544B0;
      }

      if (a2)
      {
        v21 = 0x5F65676172657661;
      }

      else
      {
        v21 = 0x5F676E696C6C6F72;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = 0xEC00000065636170;
      }

      v22 = a2 <= 3u ? v19 : v15;
      v23 = a2 <= 3u ? v20 : v16;
      if (v13 == v22 && v14 == v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_57;
      }

      v8 = (v8 + 1) & v30;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_55:
    v25 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
}

{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a2 + 1);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_60:
    v15 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_63;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xED00007265687369;
    v11 = 0x6C6275506C616F67;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v11 = 0xD00000000000001BLL;
        v10 = 0x800000020B4541D0;
        break;
      case 2:
        v11 = 0xD000000000000016;
        v10 = 0x800000020B4541F0;
        break;
      case 3:
        break;
      case 4:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454220;
        break;
      case 5:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454240;
        break;
      case 6:
        v11 = 0xD000000000000014;
        v10 = 0x800000020B454260;
        break;
      case 7:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454280;
        break;
      case 8:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B4542A0;
        break;
      case 9:
        v11 = 0xD000000000000010;
        v10 = 0x800000020B4542C0;
        break;
      case 0xA:
        v11 = 0xD000000000000015;
        v10 = 0x800000020B4542E0;
        break;
      case 0xB:
        v11 = 0xD000000000000020;
        v10 = 0x800000020B454300;
        break;
      case 0xC:
        v11 = 0xD000000000000018;
        v10 = 0x800000020B454330;
        break;
      case 0xD:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B454350;
        break;
      case 0xE:
        v11 = 0xD00000000000001CLL;
        v10 = 0x800000020B454370;
        break;
      case 0xF:
        v10 = 0xE800000000000000;
        v11 = 0x6C6576654C706F54;
        break;
      case 0x10:
        v11 = 0xD000000000000015;
        v10 = 0x800000020B4543A0;
        break;
      case 0x11:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B4543C0;
        break;
      default:
        v11 = 0xD00000000000001FLL;
        v10 = 0x800000020B4541B0;
        break;
    }

    v12 = 0x6C6275506C616F67;
    v13 = 0xED00007265687369;
    switch(a2)
    {
      case 1:
        v13 = 0x800000020B4541D0;
        if (v11 == 0xD00000000000001BLL)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 2:
        v13 = 0x800000020B4541F0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 3:
        goto LABEL_53;
      case 4:
        v13 = 0x800000020B454220;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 5:
        v13 = 0x800000020B454240;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 6:
        v13 = 0x800000020B454260;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 7:
        v13 = 0x800000020B454280;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 8:
        v13 = 0x800000020B4542A0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 9:
        v13 = 0x800000020B4542C0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 10:
        v12 = 0xD000000000000015;
        v13 = 0x800000020B4542E0;
LABEL_53:
        if (v11 == v12)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 11:
        v13 = 0x800000020B454300;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 12:
        v13 = 0x800000020B454330;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 13:
        v13 = 0x800000020B454350;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 14:
        v13 = 0x800000020B454370;
        if (v11 != 0xD00000000000001CLL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 15:
        v13 = 0xE800000000000000;
        if (v11 != 0x6C6576654C706F54)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 16:
        v13 = 0x800000020B4543A0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 17:
        v13 = 0x800000020B4543C0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      default:
        v13 = 0x800000020B4541B0;
        if (v11 != 0xD00000000000001FLL)
        {
          goto LABEL_55;
        }

LABEL_54:
        if (v10 != v13)
        {
LABEL_55:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_62;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_60;
          }

          continue;
        }

LABEL_62:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_63:
        *a1 = a2;
        return result;
    }
  }
}

{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = Hasher.init(_seed:)();
  MetricPlatterType.rawValue.getter(v7);
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_55:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_58;
  }

  v11 = ~v9;
  while (2)
  {
    v12 = 0xE800000000000000;
    v13 = 0x647261646E617473;
    switch(*(*(v5 + 48) + v10))
    {
      case 1:
        v13 = 0x647261646E617473;
        goto LABEL_13;
      case 2:
        v13 = 0x6C61767265746E69;
        break;
      case 3:
        v13 = 0x6C61767265746E69;
LABEL_13:
        v12 = 0xEE00646E6F636553;
        break;
      case 4:
        v12 = 0xE500000000000000;
        v13 = 0x7265636170;
        break;
      case 5:
        v12 = 0xE400000000000000;
        v13 = 1701011826;
        break;
      case 6:
        v12 = 0xE700000000000000;
        v13 = 0x746E656D676573;
        break;
      case 7:
        v13 = 0x7974697669746361;
        v12 = 0xED000073676E6952;
        break;
      case 8:
        v12 = 0xE500000000000000;
        v13 = 0x6F65646976;
        break;
      case 9:
        v12 = 0xE500000000000000;
        v13 = 0x74696C7073;
        break;
      case 0xA:
        v13 = 0x7461527472616568;
        v12 = 0xEE0073656E6F5A65;
        break;
      case 0xB:
        v12 = 0xEA00000000007472;
        v13 = 0x6F707369746C756DLL;
        break;
      case 0xC:
        v12 = 0xE500000000000000;
        v13 = 0x7265776F70;
        break;
      case 0xD:
        v13 = 0x6E6F5A7265776F70;
        v12 = 0xEA00000000007365;
        break;
      case 0xE:
        v13 = 0x6F69746176656C65;
        v12 = 0xE90000000000006ELL;
        break;
      case 0xF:
        v13 = 0x656D6F6465657073;
        v12 = 0xEB00000000726574;
        break;
      default:
        break;
    }

    v14 = 0xE800000000000000;
    v15 = 0x647261646E617473;
    switch(a2)
    {
      case 1:
        v16 = 0x647261646E617473;
        goto LABEL_37;
      case 2:
        if (v13 != 0x6C61767265746E69)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 3:
        v16 = 0x6C61767265746E69;
LABEL_37:
        v14 = 0xEE00646E6F636553;
        if (v13 != v16)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 4:
        v14 = 0xE500000000000000;
        v17 = 1701011824;
        goto LABEL_28;
      case 5:
        v14 = 0xE400000000000000;
        if (v13 != 1701011826)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 6:
        v14 = 0xE700000000000000;
        if (v13 != 0x746E656D676573)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 7:
        v14 = 0xED000073676E6952;
        if (v13 != 0x7974697669746361)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 8:
        v14 = 0xE500000000000000;
        if (v13 != 0x6F65646976)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 9:
        v14 = 0xE500000000000000;
        if (v13 != 0x74696C7073)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 10:
        v15 = 0x7461527472616568;
        v14 = 0xEE0073656E6F5A65;
        goto LABEL_48;
      case 11:
        v14 = 0xEA00000000007472;
        if (v13 != 0x6F707369746C756DLL)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 12:
        v14 = 0xE500000000000000;
        v17 = 1702326128;
LABEL_28:
        if (v13 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 13:
        v14 = 0xEA00000000007365;
        if (v13 != 0x6E6F5A7265776F70)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 14:
        v14 = 0xE90000000000006ELL;
        if (v13 != 0x6F69746176656C65)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 15:
        v14 = 0xEB00000000726574;
        if (v13 != 0x656D6F6465657073)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      default:
LABEL_48:
        if (v13 != v15)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v12 != v14)
        {
LABEL_50:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_57;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
        }

LABEL_57:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v10);
LABEL_58:
        *a1 = a2;
        return result;
    }
  }
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11WorkoutCore0C23ConfigurationFilterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore0C23ConfigurationFilterTypeOGMR);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x20F2E7FD0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      swift_dynamicCast();
      result = 0;
      *a1 = v33[0];
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore0E28ConfigurationOccurrenceStoreC0eG6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_Tt1g5(v7, result + 1);
        v33[0] = v28;
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          specialized _NativeSet.resize(capacity:)(v29 + 1);
          v28 = v33[0];
        }

        specialized _NativeSet._unsafeInsertNew(_:)(v30, v28);

        *v3 = v28;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v31 = v2;
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 16);
    v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    MEMORY[0x20F2E7FF0](*(v11 + v12) + 1);
    v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v14 = *(v11 + v13);
    NSObject.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = v15 & ~v16;
    if ((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      v19 = type metadata accessor for WorkoutConfiguration();
      while (1)
      {
        v20 = *(*(*(v6 + 48) + 8 * v17) + 16);
        v21 = a2;
        v22 = *(a2 + 16);
        v33[3] = v19;
        v33[4] = &protocol witness table for WorkoutConfiguration;
        v33[0] = v22;
        v23 = *((*MEMORY[0x277D85000] & *v20) + 0x1D0);

        v24 = v22;
        LOBYTE(v20) = v23(v33);

        __swift_destroy_boxed_opaque_existential_1(v33);
        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        a2 = v21;
        if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v17);

      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = *v31;

      specialized _NativeSet.insertNew(_:at:isUnique:)(v27, v17, isUniquelyReferenced_nonNull_native);
      *v31 = v33[0];
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore0E28ConfigurationOccurrenceStoreC0eG6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      do
      {
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1);
        }

        v2 = v20;
        v3 = *(v20 + 40);
        Hasher.init(_seed:)();
        v4 = *(v19 + 16);
        v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        MEMORY[0x20F2E7FF0](*(v4 + v5) + 1);
        v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v7 = *(v4 + v6);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore20ActivityTypeListItemC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ActivityTypeListItem();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v18 + 1);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      result = MEMORY[0x20F2E7FD0](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
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
      v20 = *(v18 + 16);
      v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v20 + v21) + 1);
      v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v23 = *(v20 + v22);
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 16);
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v5 + v6) + 1);
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v8 = *(v5 + v7);
  NSObject.hash(into:)();

  Hasher._finalize()();
  v9 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
      goto LABEL_61;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = specialized RawRepresentable<>._rawHashValue(seed:)();
  v33 = v7;
  v34 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = ~v9;
    v10 = 0x5F676E696C6C6F72;
    do
    {
      v11 = *(*(v33 + 48) + a2);
      if (v11 > 3)
      {
        if (*(*(v33 + 48) + a2) > 5u)
        {
          if (v11 == 6)
          {
            v15 = 0x5F65676172657661;
            v16 = 0xED00007265776F70;
          }

          else
          {
            v16 = 0xE400000000000000;
            v15 = 1701736302;
          }
        }

        else
        {
          if (v11 == 4)
          {
            v15 = 0x5F65676172657661;
          }

          else
          {
            v15 = 0xD000000000000013;
          }

          if (v11 == 4)
          {
            v16 = 0xEF65636E65646163;
          }

          else
          {
            v16 = 0x800000020B4544E0;
          }
        }
      }

      else
      {
        v12 = 0xD000000000000015;
        if (v11 == 2)
        {
          v12 = 0xD000000000000012;
          v13 = 0x800000020B454490;
        }

        else
        {
          v13 = 0x800000020B4544B0;
        }

        if (*(*(v33 + 48) + a2))
        {
          v14 = 0x5F65676172657661;
        }

        else
        {
          v14 = v10;
        }

        if (*(*(v33 + 48) + a2) <= 1u)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        if (*(*(v33 + 48) + a2) <= 1u)
        {
          v16 = 0xEC00000065636170;
        }

        else
        {
          v16 = v13;
        }
      }

      v17 = 1701736302;
      if (v35 == 6)
      {
        v17 = 0x5F65676172657661;
      }

      v18 = 0xED00007265776F70;
      if (v35 != 6)
      {
        v18 = 0xE400000000000000;
      }

      if (v35 == 4)
      {
        v19 = 0x5F65676172657661;
      }

      else
      {
        v19 = 0xD000000000000013;
      }

      v20 = 0xEF65636E65646163;
      if (v35 != 4)
      {
        v20 = 0x800000020B4544E0;
      }

      if (v35 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = 0xD000000000000015;
      if (v35 == 2)
      {
        v21 = 0xD000000000000012;
        v22 = 0x800000020B454490;
      }

      else
      {
        v22 = 0x800000020B4544B0;
      }

      v23 = v10;
      if (v35)
      {
        v10 = 0x5F65676172657661;
      }

      if (v35 <= 1u)
      {
        v21 = v10;
        v22 = 0xEC00000065636170;
      }

      v24 = v35 <= 3u ? v21 : v17;
      v25 = v35 <= 3u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        goto LABEL_64;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_65;
      }

      a2 = (a2 + 1) & v32;
      v10 = v23;
    }

    while (((*(v34 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_61:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v35;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_64:

LABEL_65:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v4 + 1);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
        goto LABEL_67;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    KnownPublishers.rawValue.getter(v5);
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xED00007265687369;
        v13 = 0x6C6275506C616F67;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v13 = 0xD00000000000001BLL;
            v12 = 0x800000020B4541D0;
            break;
          case 2:
            v13 = 0xD000000000000016;
            v12 = 0x800000020B4541F0;
            break;
          case 3:
            break;
          case 4:
            v13 = 0xD000000000000019;
            v12 = 0x800000020B454220;
            break;
          case 5:
            v13 = 0xD000000000000019;
            v12 = 0x800000020B454240;
            break;
          case 6:
            v13 = 0xD000000000000014;
            v12 = 0x800000020B454260;
            break;
          case 7:
            v13 = 0xD000000000000019;
            v12 = 0x800000020B454280;
            break;
          case 8:
            v13 = 0xD00000000000001ALL;
            v12 = 0x800000020B4542A0;
            break;
          case 9:
            v13 = 0xD000000000000010;
            v12 = 0x800000020B4542C0;
            break;
          case 0xA:
            v13 = 0xD000000000000015;
            v12 = 0x800000020B4542E0;
            break;
          case 0xB:
            v13 = 0xD000000000000020;
            v12 = 0x800000020B454300;
            break;
          case 0xC:
            v13 = 0xD000000000000018;
            v12 = 0x800000020B454330;
            break;
          case 0xD:
            v13 = 0xD00000000000001ALL;
            v12 = 0x800000020B454350;
            break;
          case 0xE:
            v13 = 0xD00000000000001CLL;
            v12 = 0x800000020B454370;
            break;
          case 0xF:
            v12 = 0xE800000000000000;
            v13 = 0x6C6576654C706F54;
            break;
          case 0x10:
            v13 = 0xD000000000000015;
            v12 = 0x800000020B4543A0;
            break;
          case 0x11:
            v13 = 0xD00000000000001ALL;
            v12 = 0x800000020B4543C0;
            break;
          default:
            v13 = 0xD00000000000001FLL;
            v12 = 0x800000020B4541B0;
            break;
        }

        v14 = 0x6C6275506C616F67;
        v15 = 0xED00007265687369;
        switch(v5)
        {
          case 1:
            v15 = 0x800000020B4541D0;
            if (v13 == 0xD00000000000001BLL)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          case 2:
            v15 = 0x800000020B4541F0;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 3:
            goto LABEL_60;
          case 4:
            v15 = 0x800000020B454220;
            if (v13 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 5:
            v15 = 0x800000020B454240;
            if (v13 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 6:
            v15 = 0x800000020B454260;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 7:
            v15 = 0x800000020B454280;
            if (v13 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 8:
            v15 = 0x800000020B4542A0;
            if (v13 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 9:
            v15 = 0x800000020B4542C0;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 10:
            v14 = 0xD000000000000015;
            v15 = 0x800000020B4542E0;
LABEL_60:
            if (v13 == v14)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          case 11:
            v15 = 0x800000020B454300;
            if (v13 != 0xD000000000000020)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 12:
            v15 = 0x800000020B454330;
            if (v13 != 0xD000000000000018)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 13:
            v15 = 0x800000020B454350;
            if (v13 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 14:
            v15 = 0x800000020B454370;
            if (v13 != 0xD00000000000001CLL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 15:
            v15 = 0xE800000000000000;
            if (v13 != 0x6C6576654C706F54)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 16:
            v15 = 0x800000020B4543A0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 17:
            v15 = 0x800000020B4543C0;
            if (v13 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          default:
            v15 = 0x800000020B4541B0;
            if (v13 != 0xD00000000000001FLL)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v12 == v15)
            {
              goto LABEL_70;
            }

LABEL_62:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              goto LABEL_71;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_67:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_70:

LABEL_71:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
        goto LABEL_62;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    v11 = Hasher.init(_seed:)();
    MetricPlatterType.rawValue.getter(v11);
    String.hash(into:)();

    result = Hasher._finalize()();
    v12 = -1 << *(v9 + 32);
    a2 = result & ~v12;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      while (2)
      {
        v14 = 0xE800000000000000;
        v15 = 0x647261646E617473;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v15 = 0x647261646E617473;
            goto LABEL_20;
          case 2:
            v15 = 0x6C61767265746E69;
            break;
          case 3:
            v15 = 0x6C61767265746E69;
LABEL_20:
            v14 = 0xEE00646E6F636553;
            break;
          case 4:
            v14 = 0xE500000000000000;
            v15 = 0x7265636170;
            break;
          case 5:
            v14 = 0xE400000000000000;
            v15 = 1701011826;
            break;
          case 6:
            v14 = 0xE700000000000000;
            v15 = 0x746E656D676573;
            break;
          case 7:
            v15 = 0x7974697669746361;
            v14 = 0xED000073676E6952;
            break;
          case 8:
            v14 = 0xE500000000000000;
            v15 = 0x6F65646976;
            break;
          case 9:
            v14 = 0xE500000000000000;
            v15 = 0x74696C7073;
            break;
          case 0xA:
            v15 = 0x7461527472616568;
            v14 = 0xEE0073656E6F5A65;
            break;
          case 0xB:
            v14 = 0xEA00000000007472;
            v15 = 0x6F707369746C756DLL;
            break;
          case 0xC:
            v14 = 0xE500000000000000;
            v15 = 0x7265776F70;
            break;
          case 0xD:
            v15 = 0x6E6F5A7265776F70;
            v14 = 0xEA00000000007365;
            break;
          case 0xE:
            v15 = 0x6F69746176656C65;
            v14 = 0xE90000000000006ELL;
            break;
          case 0xF:
            v15 = 0x656D6F6465657073;
            v14 = 0xEB00000000726574;
            break;
          default:
            break;
        }

        v16 = 0xE800000000000000;
        v17 = 0x647261646E617473;
        switch(v6)
        {
          case 1:
            v18 = 0x647261646E617473;
            goto LABEL_44;
          case 2:
            if (v15 != 0x6C61767265746E69)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 3:
            v18 = 0x6C61767265746E69;
LABEL_44:
            v16 = 0xEE00646E6F636553;
            if (v15 != v18)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 4:
            v16 = 0xE500000000000000;
            v19 = 1701011824;
            goto LABEL_35;
          case 5:
            v16 = 0xE400000000000000;
            if (v15 != 1701011826)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 6:
            v16 = 0xE700000000000000;
            if (v15 != 0x746E656D676573)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 7:
            v16 = 0xED000073676E6952;
            if (v15 != 0x7974697669746361)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 8:
            v16 = 0xE500000000000000;
            if (v15 != 0x6F65646976)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 9:
            v16 = 0xE500000000000000;
            if (v15 != 0x74696C7073)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 10:
            v17 = 0x7461527472616568;
            v16 = 0xEE0073656E6F5A65;
            goto LABEL_55;
          case 11:
            v16 = 0xEA00000000007472;
            if (v15 != 0x6F707369746C756DLL)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 12:
            v16 = 0xE500000000000000;
            v19 = 1702326128;
LABEL_35:
            if (v15 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 13:
            v16 = 0xEA00000000007365;
            if (v15 != 0x6E6F5A7265776F70)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 14:
            v16 = 0xE90000000000006ELL;
            if (v15 != 0x6F69746176656C65)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 15:
            v16 = 0xEB00000000726574;
            if (v15 != 0x656D6F6465657073)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          default:
LABEL_55:
            if (v15 != v17)
            {
              goto LABEL_57;
            }

LABEL_56:
            if (v14 == v16)
            {
              goto LABEL_65;
            }

LABEL_57:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_66;
            }

            a2 = (a2 + 1) & v13;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_62:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_65:

LABEL_66:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = *(v25 + 16);
  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v9 + v10) + 1);
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v12 = *(v9 + v11);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v13 = -1 << *(v7 + 32);
  a2 = result & ~v13;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
    v15 = type metadata accessor for WorkoutConfiguration();
    do
    {
      v16 = *(*(*(v7 + 48) + 8 * a2) + 16);
      v17 = *(v25 + 16);
      v26[3] = v15;
      v26[4] = &protocol witness table for WorkoutConfiguration;
      v26[0] = v17;
      v18 = *((*MEMORY[0x277D85000] & *v16) + 0x1D0);

      v19 = v17;
      LOBYTE(v16) = v18(v26);

      result = __swift_destroy_boxed_opaque_existential_1(v26);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x20F2E7FD0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v6);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
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

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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