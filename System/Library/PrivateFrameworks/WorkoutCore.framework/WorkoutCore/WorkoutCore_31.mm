uint64_t closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
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
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v14, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v14, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v14, v22, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    outlined init with take of Apple_Workout_Core_Goal(v22, v20, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Goal(v20, v44, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
      outlined init with take of Apple_Workout_Core_Goal(v35, v28, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v20, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v28, v36, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v36, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Goal(v36, v43, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Goal?(v42, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v39, v40, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v11, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZonesAlertTargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HeartRateTargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZonesAlertTargetZone;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZonesAlertTargetZone()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PowerZoneTarget.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneTarget;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneTarget()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (specialized == infix<A>(_:_:)(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneAutomatic@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneAutomatic;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneAutomatic()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #3 in Apple_Workout_Core_CyclingPowerZone.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  type metadata accessor for Apple_Workout_Core_Zone();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in Apple_Workout_Core_CyclingPowerZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Zone();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 28), v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Zone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Zone);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_CyclingPowerZone@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Workout_Core_Zone();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_CyclingPowerZone;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_CyclingPowerZone()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_StepType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_CyclingPowerZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerZoneCustom.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t Apple_Workout_Core_CyclingPowerZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (!*v5 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v6))
  {
    if (!v5[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v6))
    {
      result = a4(v5, a1, a2, a3);
      if (!v6)
      {
        v13 = v5 + *(a5(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZoneCustom.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v3 = (a1 + *(result + 28));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_IntervalsMetricsPublisher.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneCustom@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PowerZoneTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerZoneCustom;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_StepType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneCustom()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v17, v12, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
LABEL_6:
    outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_Goal(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v21 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZoneTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, &v40 - v26, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a2, &v27[v28], type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep(v27, v22, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v33 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget;
      v34 = v22;
LABEL_14:
      outlined destroy of Apple_Workout_Core_WorkoutStep(v34, v33);
      outlined destroy of Apple_Workout_Core_Goal?(v27, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMR);
LABEL_16:
      v32 = 0;
      return v32 & 1;
    }

    outlined init with take of Apple_Workout_Core_Goal(&v27[v28], v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v32 = specialized static Apple_Workout_Core_PowerZoneTarget.== infix(_:_:)(v22, v12);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v37 = v22;
    v38 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget;
LABEL_18:
    outlined destroy of Apple_Workout_Core_WorkoutStep(v37, v38);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v27, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep(v27, v17, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v33 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom;
      v34 = v17;
      goto LABEL_14;
    }

    v35 = &v27[v28];
    v36 = v42;
    outlined init with take of Apple_Workout_Core_Goal(v35, v42, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v32 = specialized static Apple_Workout_Core_PowerZoneCustom.== infix(_:_:)(v17, v36);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v36, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v37 = v17;
    v38 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom;
    goto LABEL_18;
  }

  outlined init with copy of Apple_Workout_Core_WorkoutStep(v27, v20, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic;
    v34 = v20;
    goto LABEL_14;
  }

  v30 = v43;
  outlined init with take of Apple_Workout_Core_Goal(&v27[v28], v43, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  if (*v20 != *v30 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(v20 + 1), *(v30 + 8)) & 1) == 0 || (v31 = *(v41 + 24), type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v30, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v20, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v27, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_16;
  }

  outlined destroy of Apple_Workout_Core_WorkoutStep(v30, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v20, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v27, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v32 = 1;
  return v32 & 1;
}

uint64_t specialized static Apple_Workout_Core_IntervalsMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  v78 = v9;
  v79 = v15;
  v80 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v24 = v80[15];
  v25 = *(v18 + 48);
  v82 = a1;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v24, v23, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v81 = a2;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2 + v24, &v23[v25], &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v26 = *(v5 + 48);
  if (v26(v23, 1, v4) == 1)
  {
    if (v26(&v23[v25], 1, v4) == 1)
    {
      v27 = v4;
      outlined destroy of Apple_Workout_Core_Goal?(v23, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v23, v17, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if (v26(&v23[v25], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v17, type metadata accessor for Apple_Workout_Core_WorkoutStep);
LABEL_7:
    v28 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd;
    v29 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR;
LABEL_8:
    v30 = v23;
LABEL_19:
    outlined destroy of Apple_Workout_Core_Goal?(v30, v28, v29);
    goto LABEL_20;
  }

  v31 = &v23[v25];
  v32 = v83;
  outlined init with take of Apple_Workout_Core_Goal(v31, v83, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v27 = v4;
  v33 = *(v4 + 20);
  v34 = *&v17[v33];
  v35 = *(v32 + v33);
  if (v34 != v35)
  {
    v36 = *&v17[v33];

    v37 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v34, v35);

    if (!v37)
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v32, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      outlined destroy of Apple_Workout_Core_WorkoutStep(v17, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v28 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd;
      v29 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_WorkoutStep(v32, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v17, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  outlined destroy of Apple_Workout_Core_Goal?(v23, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v39 = v80;
  v40 = v80[16];
  v41 = *(v18 + 48);
  v42 = v84;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v82 + v40, v84, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v43 = v81;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v81 + v40, v42 + v41, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v44 = v27;
  if (v26(v42, 1, v27) != 1)
  {
    v45 = v39;
    v46 = v79;
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v42, v79, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    if (v26((v42 + v41), 1, v44) != 1)
    {
      v49 = v78;
      outlined init with take of Apple_Workout_Core_Goal(v42 + v41, v78, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v50 = *(v44 + 20);
      v51 = *(v46 + v50);
      v52 = *(v49 + v50);
      if (v51 == v52 || (v53 = *(v46 + v50), , , v54 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v51, v52), , , v54))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_WorkoutStep(v49, type metadata accessor for Apple_Workout_Core_WorkoutStep);
        outlined destroy of Apple_Workout_Core_WorkoutStep(v46, type metadata accessor for Apple_Workout_Core_WorkoutStep);
        outlined destroy of Apple_Workout_Core_Goal?(v42, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
        v39 = v45;
        if ((v55 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      outlined destroy of Apple_Workout_Core_WorkoutStep(v49, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      outlined destroy of Apple_Workout_Core_WorkoutStep(v46, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v28 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd;
      v29 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR;
      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v46, type metadata accessor for Apple_Workout_Core_WorkoutStep);
LABEL_17:
    v28 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd;
    v29 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR;
LABEL_18:
    v30 = v42;
    goto LABEL_19;
  }

  if (v26((v42 + v41), 1, v27) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of Apple_Workout_Core_Goal?(v42, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
LABEL_25:
  if (v82[1] != v43[1] || v82[2] != v43[2] || v82[3] != v43[3] || v82[4] != v43[4] || v82[5] != v43[5] || v82[6] != v43[6] || v82[7] != v43[7] || v82[8] != v43[8])
  {
    goto LABEL_20;
  }

  v56 = v39[17];
  v57 = (v82 + v56);
  v58 = *(v82 + v56 + 8);
  v59 = (v43 + v56);
  v60 = *(v43 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_20;
    }
  }

  v61 = v39[18];
  v62 = (v82 + v61);
  v63 = *(v82 + v61 + 8);
  v64 = (v43 + v61);
  v65 = *(v43 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_20;
    }
  }

  v66 = v39[19];
  v67 = (v82 + v66);
  v68 = *(v82 + v66 + 4);
  v69 = (v43 + v66);
  v70 = *(v43 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_20;
    }
  }

  if (*(v82 + 18) == *(v43 + 18))
  {
    v71 = v39[20];
    v72 = (v82 + v71);
    v73 = *(v82 + v71 + 8);
    v74 = (v43 + v71);
    v75 = *(v43 + v71 + 8);
    if (v73)
    {
      if (v75)
      {
LABEL_60:
        v76 = v80[14];
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v47 & 1;
      }
    }

    else
    {
      if (*v72 != *v74)
      {
        LOBYTE(v75) = 1;
      }

      if ((v75 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_20:
  v47 = 0;
  return v47 & 1;
}

uint64_t specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_11:
  v6 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v7 = v6[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v23 = v6[5];
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_CyclingPowerZone.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 28);
  v21 = *(v13 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v18 + v20, v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v19 + v20, &v16[v21], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
LABEL_12:
      v26 = *(v27[0] + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_8;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_Zone);
LABEL_8:
    outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_Goal(&v16[v21], v8, type metadata accessor for Apple_Workout_Core_Zone);
  v25 = specialized static Apple_Workout_Core_Zone.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_Zone);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_Zone);
  outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZoneCustom.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v5 = *(v4 + 28);
  v6 = a1 + v5;
  v7 = *(a1 + v5 + 9);
  v8 = a2 + v5;
  v9 = *(a2 + v5 + 9);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      return 0;
    }

    v10 = v4;
    v11 = specialized == infix<A>(_:_:)(*v6, v6[8] & 1, *v8, v8[8] & 1);
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    v12 = *(v4 + 24);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_Core_TargetZone.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (*&v2 != 6)
          {
            return 0;
          }
        }

        else if (*&v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (*&v2 != 4)
        {
          return 0;
        }
      }

      else if (*&v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (*&v2 != 2)
        {
          return 0;
        }
      }

      else if (*&v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (*&v2 != 1)
      {
        return 0;
      }
    }

    else if (v2 != 0.0)
    {
      return 0;
    }
  }

  else if (*&v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    v4 = *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_StepType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_IntervalsMetricsPublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutStep?, type metadata accessor for Apple_Workout_Core_WorkoutStep, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutStep()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_TargetZone()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_HeartRateTargetZone()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_PowerZonesAlertTargetZone()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_WorkoutStep?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type()
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_PowerZoneTarget()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_PowerZoneAutomatic()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_CyclingPowerZone], type metadata accessor for Apple_Workout_Core_CyclingPowerZone, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_CyclingPowerZone()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Zone?, type metadata accessor for Apple_Workout_Core_Zone, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void type metadata completion function for Apple_Workout_Core_PowerZoneCustom()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_Core_ZoneType?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void _sSdSgMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutStep._StorageClass()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Goal?, type metadata accessor for Apple_Workout_Core_Goal, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?, type metadata accessor for Apple_Workout_Core_Activity, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v10 = *(v2 - 8) + 64;
      type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HeartRateTargetZone?, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerZonesAlertTargetZone?, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Goal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PowerZone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

uint64_t PowerZone.init(from:)(uint64_t *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = Zone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PowerZone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t PowerZone.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = Zone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v2, 0xD00000000000002FLL, 0x800000020B45B7B0);

  return v3;
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B7E0, a1);
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B820, a1);
}

uint64_t HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v2, 0xD000000000000032, 0x800000020B45B860);

  return v3;
}

void HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = type metadata accessor for PropertyListEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    PropertyListEncoder.init()();
    type metadata accessor for CyclingPowerZonesConfiguration();
    lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, type metadata accessor for CyclingPowerZonesConfiguration);
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002FLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B462A70;
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    outlined copy of Data._Representation(v8, v10);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = closure #1 in HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_3_4;
    v13 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v13];
    _Block_release(v13);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;

      v19 = CyclingPowerZonesConfiguration.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] Saved in workout metadata cycling configuration: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
      outlined consume of Data._Representation(v8, v10);
    }

    else
    {

      outlined consume of Data._Representation(v8, v10);
    }
  }

  else
  {
    v6 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B462A70);
    v27 = closure #2 in HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_47;
    v7 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v7);
  }
}

void HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = type metadata accessor for PropertyListEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    PropertyListEncoder.init()();
    type metadata accessor for FunctionalThresholdPower();
    lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower);
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002ELL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B462AA0;
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    outlined copy of Data._Representation(v8, v10);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = closure #1 in HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_9_5;
    v13 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v13];
    _Block_release(v13);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;

      v19 = FunctionalThresholdPower.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] Saved in workout metadata automatic FTP: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
      outlined consume of Data._Representation(v8, v10);
    }

    else
    {

      outlined consume of Data._Representation(v8, v10);
    }
  }

  else
  {
    v6 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B462AA0);
    v27 = closure #2 in HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_6_4;
    v7 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v7);
  }
}

void HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5)
{
  v208 = a5;
  v209 = a4;
  v210 = a1;
  v215 = a3;
  v7 = type metadata accessor for UUID();
  v212 = *(v7 - 8);
  v213 = v7;
  v8 = *(v212 + 64);
  MEMORY[0x28223BE20](v7);
  v211 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v214 = (&v196 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v196 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v206 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v216 = &v196 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v196 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v207 = &v196 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v196 - v27;
  v29 = [v5 currentWorkoutActivity];
  if (v29)
  {
    v30 = v29;
    v205 = v5;
    outlined init with copy of Date?(a2, v15);
    v31 = v17[6];
    v32 = v31(v15, 1, v16);
    v217 = v30;
    if (v32 == 1)
    {
      v203 = v31;
      v204 = v17 + 6;
      _sSS_yptWOhTm_2(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static WOLog.core);
      v34 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136315138;
        v39 = [v34 debugDescription];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v202 = v17;
        v41 = v16;
        v42 = v40;
        v44 = v43;

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &aBlock);
        v30 = v217;

        *(v37 + 4) = v45;
        v16 = v41;
        v17 = v202;
        _os_log_impl(&dword_20AEA4000, v35, v36, "[CyclingPowerZones] No lastProcessedEntryDate to write to activity metadata, current activity: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F2E9420](v38, -1, -1);
        MEMORY[0x20F2E9420](v37, -1, -1);
      }
    }

    else
    {
      v202 = v17[4];
      (v202)(v28, v15, v16);
      v50 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v28);
      if (v51 >> 60 == 15)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static WOLog.core);
        v53 = v16;
        (v17[2])(v24, v28, v16);
        v54 = v217;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = v17;
          v58 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          aBlock = v217;
          *v58 = 136315394;
          lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          LODWORD(v216) = v56;
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v60;
          v215 = v55;
          v62 = v57[1];
          v62(v24, v53);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &aBlock);

          *(v58 + 4) = v63;
          *(v58 + 12) = 2080;
          v64 = [v54 debugDescription];
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &aBlock);

          *(v58 + 14) = v68;
          v69 = v215;
          _os_log_impl(&dword_20AEA4000, v215, v216, "[CyclingPowerZones] Failed to serialize lastProcessedEntryDate: %s, current activity: %s", v58, 0x16u);
          v70 = v217;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v70, -1, -1);
          MEMORY[0x20F2E9420](v58, -1, -1);

          v62(v28, v53);
        }

        else
        {

          v194 = v17[1];
          v194(v24, v53);
          v194(v28, v53);
        }

        return;
      }

      v71 = v51;
      v203 = v31;
      v204 = v17 + 6;
      v201 = v50;
      v72 = [v217 UUID];
      v73 = v211;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v212 + 8))(v73, v213);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B7E0;
      v75 = v201;
      *(inited + 48) = v201;
      *(inited + 56) = v71;
      outlined copy of Data?(v75, v71);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v197 = Dictionary._bridgeToObjectiveC()().super.isa;

      v76 = v17[2];
      v77 = v28;
      v198 = v28;
      v78 = v207;
      v76(v207, v77, v16);
      v79 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v80 = swift_allocObject();
      (v202)(v80 + v79, v78, v16);
      v30 = v217;
      *(v80 + ((v18 + v79 + 7) & 0xFFFFFFFFFFFFFFF8)) = v217;
      v222 = partial apply for closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v223 = v80;
      aBlock = MEMORY[0x277D85DD0];
      v219 = 1107296256;
      v220 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v221 = &block_descriptor_30_0;
      v81 = _Block_copy(&aBlock);
      v82 = v30;

      v83 = isa;
      v84 = v197;
      [v205 updateActivityWithUUID:isa addMedatata:v197 completion:v81];
      _Block_release(v81);

      outlined consume of Data?(v201, v71);
      (v17[1])(v198, v16);
    }

    v85 = v216;
    v86 = v214;
    outlined init with copy of Date?(v215, v214);
    if (v203(v86, 1, v16) == 1)
    {
      _sSS_yptWOhTm_2(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v88 = v209;
      v87 = v210;
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static WOLog.core);
      v90 = v30;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v93 = 136315138;
        v95 = [v90 debugDescription];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &aBlock);

        *(v93 + 4) = v99;
        _os_log_impl(&dword_20AEA4000, v91, v92, "[CyclingPowerZones] No lastProcessedEventDate to write to activity metadata, current activity: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x20F2E9420](v94, -1, -1);
        MEMORY[0x20F2E9420](v93, -1, -1);
      }

      if (v208)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v112 = v17[4];
      v112(v85, v86, v16);
      v113 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v85);
      if (v114 >> 60 == 15)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        __swift_project_value_buffer(v115, static WOLog.core);
        v116 = v206;
        (v17[2])(v206, v85, v16);
        v117 = v30;
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = v16;
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          LODWORD(v215) = v119;
          v123 = v116;
          v217 = v122;
          aBlock = v122;
          *v121 = 136315394;
          lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v200 = v120;
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v214 = v118;
          v126 = v125;
          v127 = v17[1];
          v127(v123, v120);
          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &aBlock);

          *(v121 + 4) = v128;
          *(v121 + 12) = 2080;
          v129 = [v117 debugDescription];
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v85;
          v133 = v132;

          v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v133, &aBlock);

          *(v121 + 14) = v134;
          v135 = v214;
          _os_log_impl(&dword_20AEA4000, v214, v215, "[CyclingPowerZones] Failed to serialize lastProcessedEventDate: %s, current activity: %s", v121, 0x16u);
          v136 = v217;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v136, -1, -1);
          MEMORY[0x20F2E9420](v121, -1, -1);

          v127(v131, v200);
        }

        else
        {

          v195 = v17[1];
          v195(v116, v16);
          v195(v85, v16);
        }

        return;
      }

      v137 = v113;
      v215 = v114;
      v138 = [v30 UUID];
      v200 = v16;
      v139 = v211;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v214 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v212 + 8))(v139, v213);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v140 = swift_initStackObject();
      *(v140 + 16) = xmmword_20B423A90;
      *(v140 + 32) = 0xD000000000000038;
      *(v140 + 72) = MEMORY[0x277CC9318];
      *(v140 + 40) = 0x800000020B45B820;
      v204 = v137;
      v141 = v215;
      *(v140 + 48) = v137;
      *(v140 + 56) = v141;
      outlined copy of Data?(v137, v141);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v140);
      v142 = v85;
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v140 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v143 = v17;
      v144 = Dictionary._bridgeToObjectiveC()().super.isa;

      v145 = v207;
      v146 = v200;
      (v143[2])(v207, v142, v200);
      v147 = (*(v143 + 80) + 16) & ~*(v143 + 80);
      v148 = (v18 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
      v149 = swift_allocObject();
      v112(v149 + v147, v145, v146);
      v150 = v217;
      *(v149 + v148) = v217;
      v222 = partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v223 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v219 = 1107296256;
      v220 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v221 = &block_descriptor_24_3;
      v151 = _Block_copy(&aBlock);
      v152 = v150;

      v153 = v214;
      [v205 updateActivityWithUUID:v214 addMedatata:v144 completion:v151];
      _Block_release(v151);

      outlined consume of Data?(v204, v215);
      (v143[1])(v216, v146);
      v88 = v209;
      v87 = v210;
      if (v208)
      {
LABEL_27:
        v100 = v217;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v101 = type metadata accessor for Logger();
        __swift_project_value_buffer(v101, static WOLog.core);
        v102 = v100;
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          aBlock = v106;
          *v105 = 136315138;
          v107 = [v102 debugDescription];
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;

          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &aBlock);

          *(v105 + 4) = v111;
          _os_log_impl(&dword_20AEA4000, v103, v104, "[CyclingPowerZones] No currentZoneIndex to write to activity metadata, current activity: %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v106);
          MEMORY[0x20F2E9420](v106, -1, -1);
          MEMORY[0x20F2E9420](v105, -1, -1);
        }

        goto LABEL_44;
      }
    }

    v154 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(v88);
    if (v155 >> 60 != 15)
    {
      v168 = v154;
      v169 = v217;
      v170 = v155;
      v171 = [v217 UUID];
      v172 = v211;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v173 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v212 + 8))(v172, v213);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v174 = swift_initStackObject();
      *(v174 + 16) = xmmword_20B423A90;
      *(v174 + 32) = 0xD000000000000032;
      *(v174 + 72) = MEMORY[0x277CC9318];
      *(v174 + 40) = 0x800000020B45B860;
      *(v174 + 48) = v168;
      *(v174 + 56) = v170;
      outlined copy of Data?(v168, v170);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v174);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v174 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v175 = Dictionary._bridgeToObjectiveC()().super.isa;

      v176 = swift_allocObject();
      *(v176 + 16) = v88;
      *(v176 + 24) = v169;
      v222 = partial apply for closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v223 = v176;
      aBlock = MEMORY[0x277D85DD0];
      v219 = 1107296256;
      v220 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v221 = &block_descriptor_18_1;
      v177 = _Block_copy(&aBlock);
      v178 = v169;

      [v205 updateActivityWithUUID:v173 addMedatata:v175 completion:v177];
      _Block_release(v177);

      outlined consume of Data?(v168, v170);
LABEL_44:
      v179 = type metadata accessor for PropertyListEncoder();
      v180 = *(v179 + 48);
      v181 = *(v179 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      aBlock = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
      lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
      v182 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v184 = v183;

      v185 = v217;
      v186 = [v217 UUID];
      v187 = v211;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v188 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v212 + 8))(v187, v213);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v189 = swift_initStackObject();
      *(v189 + 16) = xmmword_20B423A90;
      *(v189 + 32) = 0xD00000000000002FLL;
      *(v189 + 72) = MEMORY[0x277CC9318];
      *(v189 + 40) = 0x800000020B45B7B0;
      *(v189 + 48) = v182;
      *(v189 + 56) = v184;
      outlined copy of Data._Representation(v182, v184);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v189);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v189 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v190 = Dictionary._bridgeToObjectiveC()().super.isa;

      v191 = swift_allocObject();
      *(v191 + 16) = v87;
      *(v191 + 24) = v185;
      v222 = partial apply for closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v223 = v191;
      aBlock = MEMORY[0x277D85DD0];
      v219 = 1107296256;
      v220 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v221 = &block_descriptor_12_2;
      v192 = _Block_copy(&aBlock);
      v193 = v185;

      [v205 updateActivityWithUUID:v188 addMedatata:v190 completion:v192];
      _Block_release(v192);

      outlined consume of Data._Representation(v182, v184);
      return;
    }

    v156 = v217;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v157 = type metadata accessor for Logger();
    __swift_project_value_buffer(v157, static WOLog.core);
    v158 = v156;
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      aBlock = v162;
      *v161 = 134218242;
      *(v161 + 4) = v88;
      *(v161 + 12) = 2080;
      v163 = [v158 debugDescription];
      v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v166 = v165;

      v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v166, &aBlock);

      *(v161 + 14) = v167;
      _os_log_impl(&dword_20AEA4000, v159, v160, "[CyclingPowerZones] Failed to serialize currentZoneIndex: %ld, current activity: %s", v161, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x20F2E9420](v162, -1, -1);
      MEMORY[0x20F2E9420](v161, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static WOLog.core);
    v217 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v217, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20AEA4000, v217, v47, "[CyclingPowerZones] Builder failed to provide a workout activity", v48, 2u);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    v49 = v217;
  }
}

void HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = type metadata accessor for PropertyListEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002FLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B45B7B0;
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    outlined copy of Data._Representation(v8, v10);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = closure #1 in HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_36_0;
    v13 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v13];
    _Block_release(v13);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;
      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] Saved in workout metadata elapsed time in zones: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
      outlined consume of Data._Representation(v8, v10);
    }

    else
    {
      outlined consume of Data._Representation(v8, v10);
    }
  }

  else
  {
    v6 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B45B7B0);
    v27 = closure #2 in HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_33;
    v7 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v7);
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _sSS_yptWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v18 = MEMORY[0x20F2E6C00](0xD000000000000038, 0x800000020B45B7E0);
    v66 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v65 = &block_descriptor_39_1;
    v19 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v19);

    return _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    v21 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v17);
    if (v22 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static WOLog.core);
      (*(v8 + 16))(v12, v17, v7);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v60 = v17;
        v61 = a1;
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v26 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v27 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v29 = [v27 stringFromDate_];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = *(v8 + 8);
        v33(v12, v7);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

        *(v26 + 4) = v34;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[CyclingPowerZones] Failed to serialize last processed entry date: %s", v26, 0xCu);
        v35 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);

        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v33)(v60, v7);
      }

      else
      {

        _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = *(v8 + 8);
        v55(v12, v7);
        return (v55)(v17, v7);
      }
    }

    else
    {
      v36 = v21;
      v37 = v22;
      v61 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B7E0;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
      outlined copy of Data?(v36, v37);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v39 = Dictionary._bridgeToObjectiveC()().super.isa;

      v66 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v65 = &block_descriptor_42_0;
      v40 = _Block_copy(&aBlock);
      [v1 addMetadata:v39 completion:v40];
      _Block_release(v40);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static WOLog.core);
      (*(v8 + 16))(v15, v17, v7);
      v42 = Logger.logObject.getter();
      v43 = v17;
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v44))
      {
        v59 = v36;
        v60 = v43;
        v45 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v45 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v46 = static WOLog.logDateFormatter;
        v47 = Date._bridgeToObjectiveC()().super.isa;
        v48 = [v46 stringFromDate_];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = *(v8 + 8);
        v52(v15, v7);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_20AEA4000, v42, v44, "[CyclingPowerZones] Saved in workout metadata last processed entry date: %s", v45, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x20F2E9420](v54, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        outlined consume of Data?(v59, v37);
        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v52)(v60, v7);
      }

      else
      {

        outlined consume of Data?(v36, v37);
        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v56 = *(v8 + 8);
        v56(v15, v7);
        return (v56)(v43, v7);
      }
    }
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _sSS_yptWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v18 = MEMORY[0x20F2E6C00](0xD000000000000038, 0x800000020B45B820);
    v66 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v65 = &block_descriptor_45_2;
    v19 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v19);

    return _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    v21 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v17);
    if (v22 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static WOLog.core);
      (*(v8 + 16))(v12, v17, v7);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v60 = v17;
        v61 = a1;
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v26 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v27 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v29 = [v27 stringFromDate_];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = *(v8 + 8);
        v33(v12, v7);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

        *(v26 + 4) = v34;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[CyclingPowerZones] Failed to serialize last processed event date: %s", v26, 0xCu);
        v35 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);

        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v33)(v60, v7);
      }

      else
      {

        _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = *(v8 + 8);
        v55(v12, v7);
        return (v55)(v17, v7);
      }
    }

    else
    {
      v36 = v21;
      v37 = v22;
      v61 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B820;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
      outlined copy of Data?(v36, v37);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v39 = Dictionary._bridgeToObjectiveC()().super.isa;

      v66 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v65 = &block_descriptor_48_0;
      v40 = _Block_copy(&aBlock);
      [v1 addMetadata:v39 completion:v40];
      _Block_release(v40);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static WOLog.core);
      (*(v8 + 16))(v15, v17, v7);
      v42 = Logger.logObject.getter();
      v43 = v17;
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v44))
      {
        v59 = v36;
        v60 = v43;
        v45 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v45 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v46 = static WOLog.logDateFormatter;
        v47 = Date._bridgeToObjectiveC()().super.isa;
        v48 = [v46 stringFromDate_];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = *(v8 + 8);
        v52(v15, v7);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_20AEA4000, v42, v44, "[CyclingPowerZones] Saved in workout metadata last processed event date: %s", v45, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x20F2E9420](v54, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        outlined consume of Data?(v59, v37);
        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v52)(v60, v7);
      }

      else
      {

        outlined consume of Data?(v36, v37);
        _sSS_yptWOhTm_2(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v56 = *(v8 + 8);
        v56(v15, v7);
        return (v56)(v43, v7);
      }
    }
  }
}

void HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = MEMORY[0x20F2E6C00](0xD000000000000032, 0x800000020B45B860);
    v25 = closure #2 in HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v24 = &block_descriptor_51_1;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }

  else
  {
    v6 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(a1);
    if (v7 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.core);
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, oslog, v9, "[CyclingPowerZones] Failed to serialize current zone index: %ld", v10, 0xCu);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }
    }

    else
    {
      v11 = v6;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000032;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B860;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      outlined copy of Data?(v11, v12);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = closure #1 in HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter;
      v26 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v24 = &block_descriptor_54_1;
      v15 = _Block_copy(&aBlock);
      [v2 addMetadata:isa completion:v15];
      _Block_release(v15);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.core);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, v17, v18, "[CyclingPowerZones] Saved in workout metadata current zone index: %ld", v19, 0xCu);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      outlined consume of Data?(v11, v12);
    }
  }
}

uint64_t unpackedCyclingPowerZonesConfiguration(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002FLL, 0x800000020B462A70);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CyclingPowerZonesConfiguration();
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, type metadata accessor for CyclingPowerZonesConfiguration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v8, v9);

  return v10[0];
}

uint64_t unpackedCyclingPowerZonesAutomaticFTP(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x800000020B462AA0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for FunctionalThresholdPower();
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v8, v9);

  return v10[0];
}

uint64_t HKWorkout.cyclingPowerZonesConfiguration.getter(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1(v5);

  return v6;
}

uint64_t HKWorkout.elapsedTimeInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v3, 0xD00000000000002FLL, 0x800000020B45B7B0);

  return v4;
}

uint64_t (*HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedCyclingPowerZonesConfiguration(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify;
}

uint64_t HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.getter(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a1(v4);

  return v5;
}

uint64_t key path getter for HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = [*a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a2(v6);

  *a3 = v7;
  return result;
}

uint64_t (*HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedCyclingPowerZonesAutomaticFTP(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.modify;
}

uint64_t HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t key path getter for HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B45B7B0);

  *a2 = v5;
  return result;
}

void (*HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B45B7B0);

  *a1 = v5;
  return HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify;
}

void HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(v5);
  }

  else
  {
    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(*a1);
  }
}

uint64_t key path getter for HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B7E0, a2);
}

void (*HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000038, 0x800000020B45B7E0, v6);

  return HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify;
}

uint64_t key path getter for HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B820, a2);
}

uint64_t key path setter for HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones : HKLiveWorkoutBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  outlined init with copy of Date?(a1, &v14 - v10);
  v12 = *a2;
  return a5(v11);
}

void (*HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000038, 0x800000020B45B820, v6);

  return HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.modify;
}

void HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    outlined init with copy of Date?(v5, v4);
    a3(v4);
    _sSS_yptWOhTm_2(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

uint64_t key path getter for HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD000000000000032, 0x800000020B45B860);
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

void (*HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD000000000000032, 0x800000020B45B860);
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  return HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.modify;
}

void closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4, const char *a5, const char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.core);
    (*(v13 + 16))(v16, a3, v12);
    v18 = a4;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136315394;
      lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = a5;
      v25 = v24;
      (*(v13 + 8))(v16, v12);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v50);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = [v18 debugDescription];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v50);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, v19, v20, v48, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.core);
    v33 = a4;
    v34 = a2;
    v48 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315394;
      v38 = [v33 debugDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v50);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v49 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v43 = Optional.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v50);

      *(v36 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v48, v35, a6, v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    else
    {
      v46 = v48;
    }
  }
}

void closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.core);
    v7 = a4;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 134218242;
      *(v9 + 4) = a3;
      *(v9 + 12) = 2080;
      v11 = [v7 debugDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v33);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_20AEA4000, oslog, v8, "[CyclingPowerZones] Saved in activity metadata currentZoneIndex: %ld, current activity: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      v16 = v9;
LABEL_10:
      MEMORY[0x20F2E9420](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);
    v19 = a4;
    v20 = a2;
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315394;
      v24 = [v19 debugDescription];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v29 = Optional.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, oslog, v21, "[CyclingPowerZones] Failed to save in activity metadata currentZoneIndex, current activity: %s, error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v23, -1, -1);
      v16 = v22;
      goto LABEL_10;
    }
  }
}

void closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);

    v6 = a4;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315394;
      v10 = Dictionary.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v38);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [v6 debugDescription];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v38);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_20AEA4000, oslog, v7, "[CyclingPowerZones] Saved in activity metadata elapsed time in zones: %s, current activity: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v9, -1, -1);
      v18 = v8;
LABEL_10:
      MEMORY[0x20F2E9420](v18, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.core);

    v21 = a4;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315650;
      v26 = Dictionary.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v38);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = [v21 debugDescription];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v34 = Optional.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v38);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_20AEA4000, oslog, v23, "[CyclingPowerZones] Failed to save in activity metadata elapsed time in zones: %s, current activity: %s, error: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v25, -1, -1);
      v18 = v24;
      goto LABEL_10;
    }
  }
}

uint64_t _sSS_yptWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, const char *a3, const char *a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(a1, a2, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t keypath_setTm_5(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Apple_Workout_Core_TrackRunningCoordinator.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator() + 20)];
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningCoordinator;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator() + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_TrackRunningCoordinator.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator() + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_TrackRunningCoordinator.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_TrackRunningCoordinator@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TrackRunningCoordinator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_TrackRunningCoordinator;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_TrackRunningCoordinator@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_TrackRunningCoordinator()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TrackRunningCoordinator()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_TrackRunningCoordinator()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_TrackRunningCoordinator(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_TrackRunningCoordinator()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

void *ElevationAccumulator.elevationGain.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ElevationAccumulator.elevationGain.setter(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();

    _Block_release(v7);
  }

  else
  {
  }
}

void key path setter for ElevationAccumulator.elevationGain : ElevationAccumulator(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  v7 = [v3 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();

    _Block_release(v8);
  }

  else
  {
  }
}

void (*ElevationAccumulator.elevationGain.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ElevationAccumulator.elevationGain.modify;
}

void ElevationAccumulator.elevationGain.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 24) updateHandler];
    if (v4)
    {
      v5 = v4;
      (*(v4 + 2))();

      _Block_release(v5);
    }
  }
}

void *ElevationAccumulator.minimumAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*ElevationAccumulator.minimumAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.minimumAltitude.modify;
}

void *ElevationAccumulator.maximumAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void @objc ElevationAccumulator.minimumAltitude.setter(char *a1, uint64_t a2, void *a3, uint64_t *a4, SEL *a5)
{
  v9 = *a4;
  swift_beginAccess();
  v10 = *&a1[v9];
  *&a1[v9] = a3;
  v11 = a3;
  v12 = a1;

  ElevationAccumulator.minimumAltitude.didset(a4, a5);
}

void ElevationAccumulator.minimumAltitude.setter(void *a1, uint64_t *a2, SEL *a3)
{
  v5 = v3;
  v7 = *a2;
  swift_beginAccess();
  v8 = *&v5[v7];
  *&v5[v7] = a1;
  v9 = a1;

  v10 = [v5 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }

  v12 = *&v5[v7];
  if (v12 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v14 = Strong;
    v15 = v12;
    [v14 *a3];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t key path setter for ElevationAccumulator.minimumAltitude : ElevationAccumulator(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, SEL *a6)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a5;
  swift_beginAccess();
  v11 = *(v9 + v10);
  *(v9 + v10) = v8;
  v12 = v8;

  return ElevationAccumulator.minimumAltitude.didset(a5, a6);
}

uint64_t ElevationAccumulator.minimumAltitude.didset(uint64_t *a1, SEL *a2)
{
  v5 = [v2 updateHandler];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))();
    _Block_release(v6);
  }

  v7 = *a1;
  result = swift_beginAccess();
  v9 = *&v2[v7];
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = v9;
      [v10 *a2];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*ElevationAccumulator.maximumAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.maximumAltitude.modify;
}

void ElevationAccumulator.minimumAltitude.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = [*(v5 + 24) updateHandler];
    if (v6)
    {
      v7 = v6;
      (*(v6 + 2))();
      _Block_release(v7);
    }

    v8 = *(*(v5 + 24) + *(v5 + 32));
    if (v8)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = v8;
        [v10 *a3];
        swift_unknownObjectRelease();
      }
    }
  }

  free(v5);
}

void key path setter for ElevationAccumulator.invalidationTimer : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *ElevationAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ElevationAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void ElevationAccumulator.updateMinimumAltitude(withAltitude:)(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    if ([v5 compare_] != 1)
    {
      goto LABEL_8;
    }

    v6 = *&v1[v3];
    *&v1[v3] = a1;
    v7 = a1;

    v8 = [v1 updateHandler];
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))();
      _Block_release(v9);
    }

    v10 = *&v1[v3];
    if (!v10 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
LABEL_8:

      return;
    }

    v12 = Strong;
    v13 = v10;
    [v12 didUpdateMinimumAltitude_];

    goto LABEL_14;
  }

  *&v1[v3] = a1;
  v14 = a1;
  v15 = [v1 updateHandler];
  if (v15)
  {
    v16 = v15;
    (*(v15 + 2))();
    _Block_release(v16);
  }

  v17 = *&v1[v3];
  if (v17)
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = v17;
      [v19 didUpdateMinimumAltitude_];

LABEL_14:
      swift_unknownObjectRelease();
    }
  }
}

void ElevationAccumulator.updateMaximumAltitude(withAltitude:)(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    if ([v5 compare_] != -1)
    {
      goto LABEL_3;
    }

    v13 = *&v1[v3];
    *&v1[v3] = a1;
    v14 = a1;

    v15 = [v1 updateHandler];
    if (v15)
    {
      v16 = v15;
      (*(v15 + 2))();
      _Block_release(v16);
    }

    v17 = *&v1[v3];
    if (!v17 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
LABEL_3:

      return;
    }

    v19 = Strong;
    v20 = v17;
    [v19 didUpdateMaximumAltitude_];

    goto LABEL_14;
  }

  *&v1[v3] = a1;
  v6 = a1;
  v7 = [v1 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();
    _Block_release(v8);
  }

  v9 = *&v1[v3];
  if (v9)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      [v11 didUpdateMaximumAltitude_];

LABEL_14:
      swift_unknownObjectRelease();
    }
  }
}

void *ElevationAccumulator.currentAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t ElevationAccumulator.currentAltitude.setter(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v7);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v7);
  }

  v8 = [v1 updateHandler];
  if (v8)
  {
    v9 = v8;
    (*(v8 + 2))();
    _Block_release(v9);
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in ElevationAccumulator.currentAltitude.didset, v10);
}

uint64_t key path setter for ElevationAccumulator.currentAltitude : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return ElevationAccumulator.currentAltitude.didset();
}

uint64_t ElevationAccumulator.currentAltitude.didset()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v3);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v3);
  }

  v4 = [v0 updateHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();
    _Block_release(v5);
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v6);
}

void closure #1 in ElevationAccumulator.currentAltitude.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ElevationAccumulator.elevationDidBecomeStale()();
  }
}

void (*ElevationAccumulator.currentAltitude.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.currentAltitude.modify;
}

void ElevationAccumulator.currentAltitude.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *&v4[v3[4]];
    if (v5)
    {
      v6 = v5;
      ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v6);
      ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v6);

      v4 = v3[3];
    }

    v7 = [v4 updateHandler];
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))();
      _Block_release(v8);
    }

    v9 = v3[3];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v10);
  }

  free(v3);
}

uint64_t ElevationAccumulator.chartDataElements.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v3;
}

id ElevationAccumulator.chartUnit.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ElevationAccumulator.chartUnit.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for ElevationAccumulator.chartUnit : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t key path setter for ElevationAccumulator.elevationChartDataProvider : ElevationAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t ElevationAccumulator.elevationChartDataProvider.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ElevationAccumulator.elevationChartDataProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ElevationAccumulator.__allocating_init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain] = 0;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude] = 0;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude] = 0;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer] = 0;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider] = 0;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit] = a5;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore] = a2;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration] = a3;
  *&v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager] = a4;
  v13 = a5;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v12[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled] = specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v15, v16) & 1;
  swift_unknownObjectWeakAssign();
  v22.receiver = v12;
  v22.super_class = v6;
  v17 = objc_msgSendSuper2(&v22, sel_initWithBuilder_, a1);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v20 addObserver:v19 selector:? name:? object:?];

  swift_unknownObjectRelease();
  return v19;
}

id ElevationAccumulator.init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit] = a5;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore] = a2;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration] = a3;
  *&v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager] = a4;
  v11 = a5;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v5[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled] = specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v13, v14) & 1;
  swift_unknownObjectWeakAssign();
  v20.receiver = v5;
  v20.super_class = type metadata accessor for ElevationAccumulator();
  v15 = objc_msgSendSuper2(&v20, sel_initWithBuilder_, a1);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v18 addObserver:v17 selector:? name:? object:?];

  swift_unknownObjectRelease();
  return v17;
}

void ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.app);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Elevation recovery", v10, 2u);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v14 = objc_allocWithZone(MEMORY[0x277CCDC88]);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);
  v17 = [v14 initWithActiveWorkoutUUID:isa dataHandler:v16];
  _Block_release(v16);

  [*(v2 + OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore) executeQuery_];
}

uint64_t closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v98 = a6;
  v109 = a5;
  v97 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v99 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ElevationSample();
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v20 = *(v108 - 1);
  v21 = *(v20 + 8);
  result = MEMORY[0x28223BE20](v108);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25 = a2 >> 62;
    v104 = a2;
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v25 = a2 >> 62;
      v26 = result;
    }

    else
    {
      v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v104;
    if (v26)
    {
      v107 = v104 & 0xC000000000000001;
      v95 = v8;
      v94 = v9;
      v93 = v13;
      v92 = v12;
      v91 = v14;
      v89 = v25;
      v106 = v20;
      if ((v104 & 0xC000000000000001) == 0)
      {
        v28 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          v29 = v26 - 1;
          if (!__OFSUB__(v26, 1))
          {
            if (v29 >= v28)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v30 = *(v104 + 32 + 8 * v29);
            v8 = *(v104 + 32);
            v27 = v30;
            goto LABEL_10;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v96 = MEMORY[0x20F2E7A20](0, v104);
      result = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        __break(1u);
        return result;
      }

      v27 = MEMORY[0x20F2E7A20](result, v27);
      v8 = v96;
LABEL_10:
      v96 = v8;
      v31 = objc_opt_self();
      v13 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      v32 = [v31 meterUnit];
      [v27 altitude];
      v34 = v33;
      v35 = objc_opt_self();
      v90 = [v35 quantityWithUnit:v32 doubleValue:v34];

      v101 = v31;
      v36 = [v31 meterUnit];
      [v8 altitude];
      v100 = v35;
      v37 = [v35 quantityWithUnit:v36 doubleValue:?];

      v38 = v37;
      [v96 altitude];
      if (v26 >= 1)
      {
        v40 = v39;
        v41 = v26;
        v42 = 0;
        v43 = v106 + 8;
        v13 = MEMORY[0x277D84F90];
        v6 = 0.0;
        v105 = v38;
        v106 = v38;
        v8 = v104;
        do
        {
          v44 = v27;
          if (v107)
          {
            v45 = MEMORY[0x20F2E7A20](v42, v8);
          }

          else
          {
            v45 = *(v8 + 8 * v42 + 32);
          }

          v46 = v45;
          v47 = [v45 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v47) = static Date.< infix(_:_:)();
          (*v43)(v24, v108);
          if (v47)
          {
          }

          else
          {
            [v46 altitude];
            v49 = v48;
            v50 = [v101 meterUnit];
            v51 = [v100 quantityWithUnit:v50 doubleValue:v49];

            v52 = v106;
            if ([v106 compare_] == 1)
            {

              v106 = v51;
            }

            v53 = v105;
            if ([v105 compare_] == -1)
            {

              v105 = v51;
            }

            v54 = [v46 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            *&v19[*(v103 + 20)] = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v13[2] + 1), 1, v13);
            }

            v56 = v13[2];
            v55 = v13[3];
            if (v56 >= v55 >> 1)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v13);
            }

            v13[2] = (v56 + 1);
            outlined init with take of ElevationSample(v19, v13 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v56);
            v6 = v6 + fmax(v49 - v40, 0.0);
            v40 = v49;
            v8 = v104;
          }

          ++v42;
          v27 = v44;
        }

        while (v41 != v42);
        if (one-time initialization token for app == -1)
        {
LABEL_28:
          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, static WOLog.app);

          v58 = v96;
          v59 = v27;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *v62 = 134218498;
            if (v89)
            {
              v64 = __CocoaSet.count.getter();
            }

            else
            {
              v64 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v62 + 4) = v64;

            *(v62 + 12) = 2112;
            *(v62 + 14) = v58;
            *(v62 + 22) = 2112;
            *(v62 + 24) = v59;
            *v63 = v58;
            v63[1] = v59;
            v65 = v58;
            v66 = v59;
            _os_log_impl(&dword_20AEA4000, v60, v61, "Recovered samples from locations: %ld, starting at: %@, ending at: %@", v62, 0x20u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v63, -1, -1);
            MEMORY[0x20F2E9420](v62, -1, -1);
          }

          else
          {
          }

          v109 = v58;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v68 = Strong;
            v69 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
            swift_beginAccess();
            if (*&v68[v69])
            {
              v70 = *&v68[v69];

              v71 = specialized _arrayForceCast<A, B>(_:)(v13);

              ChartDataProvider.add(samples:)(v71);

LABEL_39:
              v108 = v59;
              swift_beginAccess();
              v72 = swift_unknownObjectWeakLoadStrong();
              if (v72)
              {
                v73 = v72;
                v74 = *(v72 + OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore);

                [v74 stopQuery_];
              }

              type metadata accessor for OS_dispatch_queue();
              v75 = static OS_dispatch_queue.main.getter();
              v76 = swift_allocObject();
              swift_beginAccess();
              v77 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v78 = swift_allocObject();
              *(v78 + 16) = v76;
              *(v78 + 24) = v6;
              v79 = v106;
              v80 = v105;
              *(v78 + 32) = v106;
              *(v78 + 40) = v80;
              v81 = v90;
              *(v78 + 48) = v90;
              aBlock[4] = partial apply for specialized closure #1 in closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:);
              aBlock[5] = v78;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
              aBlock[3] = &block_descriptor_45_3;
              v82 = _Block_copy(aBlock);
              v83 = v81;
              v84 = v79;
              v85 = v80;

              v86 = v99;
              static DispatchQoS.unspecified.getter();
              aBlock[0] = MEMORY[0x277D84F90];
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              v87 = v92;
              v88 = v95;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              MEMORY[0x20F2E7580](0, v86, v87, v82);
              _Block_release(v82);

              (*(v94 + 8))(v87, v88);
              return (*(v91 + 8))(v86, v93);
            }
          }

          goto LABEL_39;
        }

LABEL_50:
        swift_once();
        goto LABEL_28;
      }

      goto LABEL_48;
    }
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(double a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
    swift_beginAccess();
    if (!*&v10[v11])
    {
      v12 = [objc_opt_self() meterUnit];
      v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:a1];

      v14 = *&v10[v11];
      *&v10[v11] = v13;
      v15 = v13;

      v16 = [v10 updateHandler];
      if (v16)
      {
        v17 = v16;
        (*(v16 + 2))();

        _Block_release(v17);
      }

      else
      {
      }
    }

    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(a3);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(a4);
    v18 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
    swift_beginAccess();
    v19 = *&v10[v18];
    *&v10[v18] = a5;
    v20 = a5;

    v21 = *&v10[v18];
    if (v21)
    {
      v22 = v21;
      ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v22);
      ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v22);
    }

    v23 = [v10 updateHandler];
    if (v23)
    {
      v24 = v23;
      (*(v23 + 2))();
      _Block_release(v24);
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v25);
  }

  return result;
}

uint64_t ElevationAccumulator.activateElevationChartDataProvider(startDate:)(uint64_t a1)
{
  v47 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = &v42 - v12;
  v14 = type metadata accessor for Date();
  v43 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v18;
  v19 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v45 = v1;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 meterUnit];
  v24 = [objc_opt_self() quantityWithUnit:v23 doubleValue:10.0];

  [v24 doubleValueForUnit_];
  v26 = v25;

  v55 = 48;
  v56 = xmmword_20B440800;
  v57 = 4;
  v58 = 1;
  v59 = 0x4014000000000000;
  v60 = 0x6F69746176656C45;
  v61 = 0xE90000000000006ELL;
  v62 = 1;
  v63 = v26;
  v64 = 1;
  (*(v15 + 16))(v18, v47, v14);
  v27 = *(v1 + v19);
  v28 = v56;
  v47 = v55;
  v29 = type metadata accessor for ChartDataProvider();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v34 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v42 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v32 + v33, v13, v46);
  v35 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v32 + v35) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v34);
  v36 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v54 = v34;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v52 + 104))(v51, *MEMORY[0x277D85260], v53);
  v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined destroy of WorkoutChartProperties(&v55);
  *(v32 + v36) = v37;
  (*(v15 + 32))(v32 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v44, v43);
  *(v32 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v42;
  *(v32 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = v28;
  *(v32 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v47;
  *(v32 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 1;
  v38 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  v39 = v45;
  swift_beginAccess();
  v40 = *(v39 + v38);
  *(v39 + v38) = v32;
}

Swift::Void __swiftcall ElevationAccumulator.accumulatorDidStop()()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  [*(v0 + v1) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

uint64_t ElevationAccumulator.process(sample:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMR);
  v3 = *(type metadata accessor for ElevationSample() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B423A90;
  outlined init with copy of ElevationSample(a1 + OBJC_IVAR___WOElevationSample_bridgedValue, v6 + v5);
  v7 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*(v1 + v7))
  {

    v8 = specialized _arrayForceCast<A, B>(_:)(v6);
    swift_setDeallocating();
    outlined destroy of ElevationSample(v6 + v5);
    swift_deallocClassInstance();
    ChartDataProvider.add(samples:)(v8);
  }

  else
  {
    swift_setDeallocating();
    outlined destroy of ElevationSample(v6 + v5);
    return swift_deallocClassInstance();
  }
}

Swift::Void __swiftcall ElevationAccumulator.process(samples:)(Swift::OpaquePointer samples)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = specialized _arrayForceCast<A, B>(_:)(samples._rawValue);
    ChartDataProvider.add(samples:)(v4);
  }
}

uint64_t ElevationAccumulator.elevationDidBecomeStale()()
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
    _os_log_impl(&dword_20AEA4000, v3, v4, "Elevation became stale", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = 0;

  v8 = *&v1[v6];
  if (v8)
  {
    v9 = v8;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v9);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v9);
  }

  v10 = [v1 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v12);

  v13 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  result = swift_beginAccess();
  if (*&v1[v13])
  {

    v15 = specialized _arrayForceCast<A, B>(_:)(MEMORY[0x277D84F90]);
    ChartDataProvider.add(samples:)(v15);
  }

  return result;
}

id ElevationAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id ElevationAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElevationAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance ElevationAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance ElevationAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  result = static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  v3 = result;
  v4 = -*(result + 16);
  v5 = -1;
  v6 = 32;
  while (2)
  {
    v8 = v4 + v5;
    if (v4 + v5 == -1)
    {
LABEL_7:

      return v8 != -1;
    }

    else
    {
      if (++v5 < *(v3 + 16))
      {
        v9 = v6;
        v6 += 16;
        switch(*(v3 + v9))
        {
          case 0xE:

            goto LABEL_7;
          default:
            v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v7 & 1) == 0)
            {
              continue;
            }

            goto LABEL_7;
        }
      }

      __break(1u);
    }

    return result;
  }
}

uint64_t partial apply for closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(a1, a2, a3, a4, (v4 + v10), v11);
}

void specialized ElevationAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  if (*(v1 + OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled) == 1)
  {
    outlined init with copy of Date?(a1, v6);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      __break(1u);
    }

    else
    {
      ElevationAccumulator.activateElevationChartDataProvider(startDate:)(v6);
      (*(v8 + 8))(v6, v7);
    }
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.app);
    v14 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v10, "Elevation chart not enabled, not accumulating.", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v14;
  }
}

id keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void specialized ElevationAccumulator.handleMetricPlattersUpdated(notification:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled;
  v19 = v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled];
  v20 = specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration], *&v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager]);
  v1[v18] = v20 & 1;
  if (v19 != (v20 & 1))
  {
    v45 = v10;
    v49 = v17;
    v47 = v13;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    v22 = v1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v46 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v1[v18];

      _os_log_impl(&dword_20AEA4000, v23, v24, "Elevation metric platter enablement changed. enabled=%{BOOL}d", v26, 8u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    else
    {

      v23 = v22;
    }

    v27 = [v22 builder];
    v28 = [v27 startDate];

    if (v28)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = [v22 builder];
      v30 = [v29 _currentSnapshot];

      if (v30)
      {
        v31 = [v30 fiui_finalWorkoutUUID];

        v32 = v46;
        if (v31)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        v37 = v45;
        (*(v45 + 56))(v6, v33, 1, v9);
        outlined init with take of UUID?(v6, v8);
        if ((*(v37 + 48))(v8, 1, v9) != 1)
        {
          v41 = v48;
          (*(v37 + 32))(v48, v8, v9);
          if (v1[v18] == 1)
          {
            v42 = v49;
            ElevationAccumulator.activateElevationChartDataProvider(startDate:)(v49);
            ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(v42);
            (*(v37 + 8))(v41, v9);
            (*(v32 + 8))(v42, v47);
          }

          else
          {
            (*(v37 + 8))(v41, v9);
            (*(v32 + 8))(v49, v47);
            v43 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
            swift_beginAccess();
            v44 = *(&v22->isa + v43);
            *(&v22->isa + v43) = 0;
          }

          return;
        }
      }

      else
      {
        (*(v45 + 56))(v8, 1, 1, v9);
        v32 = v46;
      }

      _s10Foundation4UUIDVSgWOhTm_2(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_20AEA4000, v38, v39, "builder doesn't have a workout UUID, cannot activate elevation chart data provider", v40, 2u);
        MEMORY[0x20F2E9420](v40, -1, -1);
      }

      (*(v32 + 8))(v49, v47);
    }

    else
    {
      v49 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_20AEA4000, v49, v34, "builder doesn't have a start date, cannot activate elevation chart data provider", v35, 2u);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      v36 = v49;
    }
  }
}

uint64_t _s10Foundation4UUIDVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static RaceCoordinatorFactory.make(configuration:builder:healthStore:)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for RaceCoordinator());
    v9 = v5;
    v10 = a2;
    v11 = a3;
    v12 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(v7, v10, v11);

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id RaceCoordinatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceCoordinatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceCoordinatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RaceCoordinatorFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceCoordinatorFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static WorkoutVoiceAlert.makeConfiguredAlerts(activityType:unitManager:)(void *a1, void *a2)
{
  v4 = type metadata accessor for WorkoutVoiceAlert();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  v55 = *(v52 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v44 - v11;
  v12 = [a2 userDistanceHKUnitForActivityType_];
  v13 = [a1 identifier];
  v14 = [a1 isIndoor];
  v15 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v13 isIndoor:v14];
  v16 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, v15);
  if (v16 && (v17 = specialized TargetZone.__allocating_init(dict:)(v16)) != 0)
  {
    v18 = v17;
  }

  else
  {
    type metadata accessor for TargetZone();
    v18 = swift_allocObject();
    *(v18 + 16) = 1;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
  }

  swift_beginAccess();
  v20 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v19 = off_27C728570;

  v21 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v20, v19, v15);

  if (!v21 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v21), !v22))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v22 = static HeartRateTargetZone.defaultZone;
  }

  v53 = v22;
  v23 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, v15);
  if (!v23 || (v54 = specialized TargetZone.__allocating_init(dict:)(v23)) == 0)
  {
    type metadata accessor for TargetZone();
    v24 = swift_allocObject();
    *(v24 + 16) = 4;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    v54 = v24;
    *(v24 + 40) = 0;
  }

  v25 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, v15);
  if (v25 && (v26 = specialized TargetZone.__allocating_init(dict:)(v25)) != 0)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for TargetZone();
    v27 = swift_allocObject();
    *(v27 + 16) = 6;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 timeSplitForActivityType_];
  v49 = v15;
  v51 = v12;
  v30 = [v28 distanceSplitForActivityType:v15 userDistanceUnit:v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVSgGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVSgGMR);
  v31 = *(v55 + 72);
  v32 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v33 = 6;
  v45 = swift_allocObject();
  v34 = v45 + v32;
  v50 = v18;
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v18, v45 + v32);
  static WorkoutVoiceAlert.transformHeartRateTargetZone(targetZone:)(v53, v34 + v31);
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v54, v34 + 2 * v31);
  v48 = v27;
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v27, v34 + 3 * v31);
  v47 = v29;
  static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)(v29, v34 + 4 * v31);
  v46 = v30;
  static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)(v30, v34 + 5 * v31);
  v35 = (v56 + 48);
  v36 = MEMORY[0x277D84F90];
  v37 = (v56 + 32);
  v44 = v34;
  v55 = v4;
  do
  {
    v38 = v57;
    outlined init with copy of WorkoutVoiceAlert?(v34, v57);
    outlined init with take of WorkoutVoiceAlert?(v38, v10);
    if ((*v35)(v10, 1, v4) == 1)
    {
      outlined destroy of WorkoutVoiceAlert?(v10, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
    }

    else
    {
      v39 = *v37;
      (*v37)(v58, v10, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v41 = v36[2];
      v40 = v36[3];
      if (v41 >= v40 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v36);
      }

      v36[2] = v41 + 1;
      v42 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v41;
      v4 = v55;
      v39(v42, v58, v55);
    }

    v34 += v31;
    --v33;
  }

  while (v33);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v36;
}

uint64_t static WorkoutVoiceAlert.transformTargetZone(targetZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = type metadata accessor for WorkoutVoiceAlert.Value();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v46 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for WorkoutVoiceAlert.ValueType();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v46 - v21;
  v54 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v23 = *(v54 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v54);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v53 = &v46 - v28;
  swift_beginAccess();
  if (*(a1 + 40) != 1)
  {
    v33 = 1;
    v34 = v55;
    goto LABEL_15;
  }

  v29 = [a1 primaryType];
  if ((v29 - 1) >= 3)
  {
    v33 = 1;
    (*(v23 + 56))(v22, 1, 1, v54);
    v35 = &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMd;
    v36 = &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMR;
    v37 = v22;
    goto LABEL_9;
  }

  v30 = v54;
  (*(v23 + 104))(v22, **(&unk_277D8B420 + (v29 - 1)), v54);
  (*(v23 + 56))(v22, 0, 1, v30);
  (*(v23 + 32))(v53, v22, v30);
  v31 = *(a1 + 16);
  v32 = MEMORY[0x277D0A230];
  if (v31 <= 7)
  {
    if (((1 << v31) & 0x2C) != 0)
    {
      v32 = MEMORY[0x277D0A228];
      goto LABEL_11;
    }

    if (((1 << v31) & 0x52) != 0)
    {
      v32 = MEMORY[0x277D0A220];
      goto LABEL_11;
    }

    if (v31 != 7)
    {
      goto LABEL_11;
    }

    v33 = 1;
    (*(v51 + 56))(v15, 1, 1, v16);
    (*(v23 + 8))(v53, v54);
    v35 = &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd;
    v36 = &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR;
    v37 = v15;
LABEL_9:
    outlined destroy of WorkoutVoiceAlert?(v37, v35, v36);
    v34 = v55;
    goto LABEL_15;
  }

LABEL_11:
  v38 = v51;
  (*(v51 + 104))(v15, *v32, v16);
  v47 = *(v38 + 56);
  v48 = v38 + 56;
  v47(v15, 0, 1, v16);
  (*(v38 + 32))(v52, v15, v16);
  swift_beginAccess();
  v39 = *(a1 + 24);
  swift_beginAccess();
  v40 = *(a1 + 32);
  *v8 = v39;
  if (v39 == v40)
  {
    v41 = MEMORY[0x277D0A218];
  }

  else
  {
    v8[1] = v40;
    v41 = MEMORY[0x277D0A208];
  }

  v34 = v55;
  v42 = v50;
  (*(v3 + 104))(v8, *v41, v50);
  (*(v23 + 16))(v27, v53, v54);
  v43 = v51;
  (*(v51 + 16))(v13, v52, v16);
  v47(v13, 0, 1, v16);
  (*(v3 + 16))(v49, v8, v42);
  WorkoutVoiceAlert.init(type:valueType:value:)();
  (*(v3 + 8))(v8, v42);
  (*(v43 + 8))(v52, v16);
  (*(v23 + 8))(v53, v54);
  v33 = 0;
LABEL_15:
  v44 = type metadata accessor for WorkoutVoiceAlert();
  return (*(*(v44 - 8) + 56))(v34, v33, 1, v44);
}

uint64_t static WorkoutVoiceAlert.transformHeartRateTargetZone(targetZone:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for Logger();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = type metadata accessor for WorkoutVoiceAlert.Value();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - v17;
  v19 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[OBJC_IVAR___WOCoreHeartRateTargetZone_type])
  {
    v30 = &a1[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
    swift_beginAccess();
    if (v30[8])
    {
      static Log.default.getter();
      v31 = a1;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60 = v35;
        *v34 = 136315138;
        v36 = v30[8];
        v58 = *v30;
        v59 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v37 = Optional.description.getter();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v60);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_20AEA4000, v32, v33, "Unexpectedly found no zone index for automatic HeartRateTargetZone.Type. ZoneIndex %s.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      (*(v55 + 8))(v9, v56);
      goto LABEL_11;
    }

    v50 = *v30;
    result = HeartRateTargetZone.applicableRange.getter();
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      return result;
    }

    *v23 = v50 + 1;
    v23[8] = 0;
    (*(v20 + 104))(v23, *MEMORY[0x277D0A200], v19);
    v51 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v51 - 8) + 56))(v18, 1, 1, v51);
    v49 = MEMORY[0x277D0A210];
    goto LABEL_18;
  }

  if (a1[OBJC_IVAR___WOCoreHeartRateTargetZone_type] == 1)
  {
    v24 = HeartRateTargetZone.applicableRange.getter();
    if (v26)
    {
      static Log.default.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20AEA4000, v27, v28, "Unexpectedly found no range for automatic HeartRateTargetZone.Type", v29, 2u);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      (*(v55 + 8))(v7, v56);
LABEL_11:
      v40 = type metadata accessor for WorkoutVoiceAlert();
      return (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
    }

    v46 = v24;
    v47 = v25;
    *v23 = 0;
    v23[8] = 1;
    (*(v20 + 104))(v23, *MEMORY[0x277D0A200], v19);
    v48 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
    *v14 = v46;
    v14[1] = v47;
    v49 = MEMORY[0x277D0A208];
LABEL_18:
    (*(v11 + 104))(v14, *v49, v10);
    v52 = v57;
    WorkoutVoiceAlert.init(type:valueType:value:)();
    v53 = type metadata accessor for WorkoutVoiceAlert();
    return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  }

  v42 = type metadata accessor for WorkoutVoiceAlert();
  v43 = *(*(v42 - 8) + 56);
  v44 = v42;
  v45 = v57;

  return v43(v45, 1, 1, v44);
}

uint64_t static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for WorkoutVoiceAlert.Value();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  if ([a1 type] && objc_msgSend(a1, sel_enabled))
  {
    v20 = [a1 type];
    v21 = MEMORY[0x277D0A1F0];
    if (v20 != 1)
    {
      v21 = MEMORY[0x277D0A1F8];
    }

    (*(v13 + 104))(v19, *v21, v12);
    (*(v13 + 16))(v17, v19, v12);
    v22 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    [a1 value];
    *v7 = v23;
    (*(v4 + 104))(v7, *MEMORY[0x277D0A218], v3);
    v24 = v32;
    WorkoutVoiceAlert.init(type:valueType:value:)();
    (*(v13 + 8))(v19, v12);
    v25 = type metadata accessor for WorkoutVoiceAlert();
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  else
  {
    v27 = type metadata accessor for WorkoutVoiceAlert();
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v30 = v32;

    return v28(v30, 1, 1, v29);
  }
}

uint64_t outlined init with copy of WorkoutVoiceAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutVoiceAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WorkoutVoiceAlert?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void _HKWorkoutGoalType.displayName(formattingManager:)(void *a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B462E90);
      v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v2 = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B462E30);
      v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
LABEL_12:
      v13 = v6;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }

LABEL_9:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v10 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B462DE0);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v12 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B462E10);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  if (a2 != 3)
  {
    goto LABEL_9;
  }

  v8 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B462E60);
  v4 = [a1 localizationKeyForEnergyBaseKey_];

  if (v4)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v9 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t LivePowerZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
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

uint64_t LivePowerZone.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of Any(a1, v7);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v3 = *(v1 + 48);
  swift_beginAccess();
  if (v3 != *(v6 + 48))
  {

LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v7[3] = v2;
  v7[0] = v6;

  v4 = Zone.isEqual(to:)(v7);

  __swift_destroy_boxed_opaque_existential_1Tm_9(v7);
  return v4 & 1;
}

uint64_t static LivePowerZone.minCanonicalPowerZones()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440900;
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B4322F0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B440930;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B42FA20;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B440960;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B440970;
  *(v5 + 32) = xmmword_20B440980;
  *(v0 + 64) = v5;
  return v0;
}

uint64_t static LivePowerZone.maxCanonicalPowerZones()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440990;
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B4409A0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B4409B0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B4409C0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B4409D0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B4409E0;
  *(v5 + 32) = xmmword_20B4290B0;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 48) = 0;
  swift_beginAccess();
  *(v6 + 48) = 0;
  *(v6 + 16) = xmmword_20B4409F0;
  *(v6 + 32) = xmmword_20B440A00;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 48) = 0;
  *(v7 + 16) = xmmword_20B440A10;
  *(v7 + 32) = xmmword_20B440A20;
  *(v0 + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  swift_beginAccess();
  *(v8 + 48) = 0;
  *(v8 + 16) = xmmword_20B440A30;
  *(v8 + 32) = xmmword_20B440A40;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t LivePowerZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
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

uint64_t LivePowerZone.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_9(a1);
  return v2;
}

uint64_t LivePowerZone.init(from:)(uint64_t *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_9(a1);
  return v2;
}

uint64_t specialized static LivePowerZone.canonicals()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440A50;
  type metadata accessor for LivePowerZone();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B440A60;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B440A70;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B440A80;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B42C8E0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B4409E0;
  *(v5 + 32) = xmmword_20B440A90;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 48) = 0;
  swift_beginAccess();
  *(v6 + 48) = 0;
  *(v6 + 16) = xmmword_20B4409F0;
  *(v6 + 32) = xmmword_20B440AA0;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 48) = 0;
  *(v7 + 16) = xmmword_20B440AB0;
  *(v7 + 32) = xmmword_20B440AC0;
  *(v0 + 80) = v7;
  return v0;
}

WorkoutCore::DistanceSampler::AggregateSample __swiftcall DistanceSampler.AggregateSample.adding(_:)(HKQuantitySample a1)
{
  v3 = v2;
  v27 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = [v3 quantityType];
  v14 = [v3 quantity];
  v15 = [(objc_class *)a1.super.super.super.isa quantity];
  v16 = [v14 _quantityByAddingQuantity_];

  v17 = [v3 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [(objc_class *)a1.super.super.super.isa endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v21 = [objc_opt_self() quantitySampleWithType:v13 quantity:v16 startDate:isa endDate:v20];

  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v12, v5);
  v24 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v21;
  }

  result.sample.super.super.super.isa = v23;
  result.sampleCount = v24;
  return result;
}

unint64_t DistanceSampler.samplesByType.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14HKQuantityTypeC_SaySo0D6SampleCGtGMd, &_ss23_ContiguousArrayStorageCySo14HKQuantityTypeC_SaySo0D6SampleCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v2 = *(v0 + 112);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
  v4 = *(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample + 8);
  if (v4)
  {
    v5 = v2;

    v14 = v4;
    v6 = v4;
    v13 = MEMORY[0x277D84F90];
    v7 = v6;
    MEMORY[0x20F2E6F30]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v13;
  }

  else
  {
    v14 = 0;
    v9 = v2;

    v8 = MEMORY[0x277D84F90];
  }

  _s10Foundation4DateVSgWOhTm_10(&v14, &_sSo16HKQuantitySampleCSgMd, &_sSo16HKQuantitySampleCSgMR);
  specialized Array.append<A>(contentsOf:)(v8);
  *(inited + 40) = v3;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_10(inited + 32, &_sSo14HKQuantityTypeC_SaySo0A6SampleCGtMd, &_sSo14HKQuantityTypeC_SaySo0A6SampleCGtMR);
  return v10;
}

uint64_t DistanceSampler.updateStartDate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  v22 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_didInsertFirstSampleOnStartDateUpdate;
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_didInsertFirstSampleOnStartDateUpdate) & 1) == 0)
  {
    if (*(v1 + 136))
    {
LABEL_5:
      v25 = v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance;
      *v25 = 0;
      *(v25 + 8) = 0;
      (*(v11 + 16))(v7, a1, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v26 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
      swift_beginAccess();
      outlined assign with take of Date?(v7, v1 + v26);
      return swift_endAccess();
    }

    v50 = a1;
    v23 = *(v1 + 128);
    v24 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v24, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      _s10Foundation4DateVSgWOhTm_10(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      a1 = v50;
      goto LABEL_5;
    }

    v48 = *(v11 + 32);
    v49 = v11 + 32;
    v48(v21, v9, v10);
    v47 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
    v27 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
    if (v27 >> 62)
    {
      result = __CocoaSet.count.getter();
      v28 = v50;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v50;
      if (result)
      {
LABEL_9:
        if ((v27 & 0xC000000000000001) != 0)
        {

          v29 = MEMORY[0x20F2E7A20](0, v27);
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v29 = *(v27 + 32);
        }

        v30 = v1;
        v31 = [v29 startDate];

        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v48(v18, v15, v10);
        goto LABEL_15;
      }
    }

    v30 = v1;
    (*(v11 + 16))(v18, v28, v10);
LABEL_15:
    lazy protocol witness table accessor for type Date and conformance Date();
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v32 = *(v11 + 8);
      v32(v18, v10);
      return (v32)(v21, v10);
    }

    else
    {
      v33 = [objc_opt_self() meterUnit];
      v34 = [objc_opt_self() quantityWithUnit:v33 doubleValue:v23];

      v35 = v30;
      v36 = *(v30 + 112);
      v37 = v34;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v39 = Date._bridgeToObjectiveC()().super.isa;
      v40 = [objc_opt_self() quantitySampleWithType:v36 quantity:v37 startDate:isa endDate:v39];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20B425990;
      *(v41 + 32) = v40;
      v42 = v47;
      v43 = *(v35 + v47);
      v51 = v41;

      specialized Array.append<A>(contentsOf:)(v44);

      v45 = *(v11 + 8);
      v45(v18, v10);
      v45(v21, v10);
      v46 = *(v35 + v42);
      *(v35 + v42) = v51;

      *(v35 + v22) = 1;
    }
  }

  return result;
}

uint64_t DistanceSampler.updateDistance(_:date:)(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance;
  if (*(v2 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance + 8))
  {
    goto LABEL_4;
  }

  v18 = *v17;
  v19 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    _s10Foundation4DateVSgWOhTm_10(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_4:
    *(v2 + 128) = a2;
    *(v2 + 136) = 0;
    v20 = *(v13 + 16);
    v20(v9, a1, v12);
    v21 = *(v13 + 56);
    v21(v9, 0, 1, v12);
    v22 = a1;
    v23 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate;
    swift_beginAccess();
    outlined assign with take of Date?(v9, v2 + v23);
    swift_endAccess();
    *v17 = a2;
    *(v17 + 8) = 0;
    v20(v9, v22, v12);
    v21(v9, 0, 1, v12);
    v24 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
    swift_beginAccess();
    v25 = v2 + v24;
LABEL_5:
    outlined assign with take of Date?(v9, v25);
    return swift_endAccess();
  }

  (*(v13 + 32))(v16, v11, v12);
  v27 = a2 - v18;
  if (v27 > 0.0)
  {
    v28 = [objc_opt_self() meterUnit];
    v29 = [objc_opt_self() quantityWithUnit:v28 doubleValue:v27];

    v37 = *(v2 + 112);
    v30 = v29;
    v38 = v2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v36 = isa;
    v32 = Date._bridgeToObjectiveC()().super.isa;
    v33 = [objc_opt_self() quantitySampleWithType:v37 quantity:v30 startDate:isa endDate:v32];

    DistanceSampler.updateAggregateSample(with:)(v33);
    (*(v13 + 8))(v16, v12);
    *v17 = a2;
    *(v17 + 8) = 0;
    (*(v13 + 16))(v9, a1, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v34 = v38;
    swift_beginAccess();
    v25 = v34 + v19;
    goto LABEL_5;
  }

  return (*(v13 + 8))(v16, v12);
}

void DistanceSampler.updateAggregateSample(with:)(void *a1)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize) < 1)
  {
    v9 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
    v10 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B425990;
    *(inited + 32) = a1;
    v27 = v10;
    v12 = a1;

    v13 = v1;
    specialized Array.append<A>(contentsOf:)(inited);
    v14 = DistanceSampler.downsample(samples:)(v27);

    v15 = *(v13 + v9);
    *(v13 + v9) = v14;
  }

  else
  {
    v3 = (v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample);
    v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample + 8);
    if (v4)
    {
      sampleCount = v3->sampleCount;
      v6 = v4;
      v7 = DistanceSampler.AggregateSample.adding(_:)(a1);
      if (v7.sampleCount >= *(v1 + v2))
      {
        v17 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
        v18 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_20B425990;
        *(v19 + 32) = v7.sample.super.super.super.isa;
        v28 = v18;

        v20 = v7.sample.super.super.super.isa;
        v21 = v1;
        specialized Array.append<A>(contentsOf:)(v19);
        v22 = DistanceSampler.downsample(samples:)(v28);

        v23 = *(v21 + v17);
        *(v21 + v17) = v22;

        isa = v3->sample.super.super.super.isa;
        v3->sampleCount = 0;
        v3->sample.super.super.super.isa = 0;
      }

      else
      {

        v8 = v3->sample.super.super.super.isa;
        *v3 = v7;
      }
    }

    else
    {
      v3->sampleCount = 1;
      v3->sample.super.super.super.isa = a1;

      v16 = a1;
    }
  }
}

unint64_t DistanceSampler.downsample(samples:)(unint64_t a1)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = ceil(v5 / *(v1 + 120));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = v6;
  if (v6 < 2)
  {

    return a1;
  }

  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (!v9)
  {
    v23 = v4;
    *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize) = v10;
    v2 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    if (v5 >= 1)
    {
      v11 = 0;
      do
      {
        v13 = __OFADD__(v11, v7);
        v25 = v11;
        v14 = closure #1 in DistanceSampler.downsample(samples:)(&v25, v7, a1, &v24);
        if (v24)
        {
          MEMORY[0x20F2E6F30](v14);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = v26;
        }

        v12 = v11 + v7 >= v5 || v13;
        v11 += v7;
      }

      while ((v12 & 1) == 0);
    }

    if (one-time initialization token for workoutVoice == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.workoutVoice);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    if (v23)
    {
      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v20;

    *(v19 + 12) = 2048;
    if (v2 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 14) = v21;

    _os_log_impl(&dword_20AEA4000, v17, v18, "DistanceSampler: Downsampled %ld -> %ld", v19, 0x16u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t closure #1 in DistanceSampler.downsample(samples:)@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v16 = *a1;
  v17 = v16 + a2;
  if (__OFADD__(v16, a2))
  {
    __break(1u);
  }

  else
  {
    v57 = &v51 - v13;
    v58 = v15;
    v59 = v14;
    v5 = a3 >> 62;
    if (!(a3 >> 62))
    {
      result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v17)
      {
        v19 = v16 + a2;
      }

      else
      {
        v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < v16)
      {
        goto LABEL_36;
      }

      if (result >= v16)
      {
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  result = __CocoaSet.count.getter();
  if (result >= v17)
  {
    v19 = v16 + a2;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v16)
  {
    goto LABEL_36;
  }

  result = __CocoaSet.count.getter();
  if (result < v16)
  {
    goto LABEL_35;
  }

LABEL_8:
  if (v16 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v19)
  {
    goto LABEL_38;
  }

  if (v19 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((a3 & 0xC000000000000001) == 0 || v16 == v19)
  {

    v56 = v10;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v16 >= v19)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  type metadata accessor for HKQuantitySample();

  v20 = v16;
  do
  {
    v21 = v20 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v20);
    v20 = v21;
  }

  while (v19 != v21);
  v56 = v10;
  if (!v5)
  {
LABEL_20:
    result = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v19 - v16;
    v23 = v19 <= v16;
    if (v19 != v16)
    {
      goto LABEL_21;
    }

LABEL_27:
    result = swift_unknownObjectRelease();
    v46 = 0;
LABEL_28:
    *a4 = v46;
    return result;
  }

LABEL_26:

  result = _CocoaArrayWrapper.subscript.getter();
  v16 = v49;
  v19 = v50 >> 1;
  v24 = (v50 >> 1) - v49;
  v23 = (v50 >> 1) <= v49;
  if (v50 >> 1 == v49)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (!v23)
  {
    v53 = a4;
    v54 = v4;
    v55 = result;
    v25 = (v22 + 8 * v16);
    v26 = *v25;
    v27 = *(v22 + 8 * v19 - 8);
    v28 = objc_opt_self();
    v52 = v26;
    v51 = v27;
    v29 = [v28 meterUnit];
    v30 = [objc_opt_self() quantityWithUnit:v29 doubleValue:0.0];

    v31 = v30;
    v32 = v31;
    do
    {
      v33 = v32;
      v34 = *v25++;
      v35 = v34;
      v36 = [v35 quantity];
      v32 = [v32 _quantityByAddingQuantity_];

      --v24;
    }

    while (v24);

    v37 = v52;
    v38 = [v52 quantityType];
    v39 = [v37 startDate];
    v40 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v51;
    v42 = [v51 endDate];
    v43 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = [objc_opt_self() quantitySampleWithType:v38 quantity:v32 startDate:isa endDate:v45];

    swift_unknownObjectRelease();
    v47 = *(v59 + 8);
    v48 = v56;
    v47(v43, v56);
    result = (v47)(v40, v48);
    a4 = v53;
    goto LABEL_28;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t DistanceSampler.__deallocating_deinit()
{
  _s10Foundation4DateVSgWOhTm_10(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOhTm_10(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DistanceSampler()
{
  result = type metadata singleton initialization cache for DistanceSampler;
  if (!type metadata singleton initialization cache for DistanceSampler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceSampler()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for DistanceSampler.AggregateSample(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DistanceSampler.AggregateSample(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t type metadata accessor for HKQuantitySample()
{
  result = lazy cache variable for type metadata for HKQuantitySample;
  if (!lazy cache variable for type metadata for HKQuantitySample)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKQuantitySample);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DeviceInferenceAvailabilityProvider.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v5 + v6) = v7;
  v8 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v9 = type metadata accessor for DeviceInferenceAvailability();
  v10 = *(*(v9 - 8) + 56);
  v10(v5 + v8, 1, 1, v9);
  v10(v5 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v9);
  *(v5 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v11 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v12 = type metadata accessor for InferenceClient();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  return v5;
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of DeviceInferenceAvailability?(a1 + v5, a3);
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  outlined init with copy of DeviceInferenceAvailability?(a2, &v12 - v8);
  v10 = *a3;
  swift_beginAccess();
  outlined assign with take of DeviceInferenceAvailability?(v9, a1 + v10);
  return swift_endAccess();
}

uint64_t DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOyyts5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOyyts5Error_p__GMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v0;
  v9 = v1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D858A0]);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v7 + 32))(&v17[v16], v10, v6);
  *&v17[(v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), v17);
}

uint64_t closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), 0, 0);
}

uint64_t closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8 = swift_allocObject();
  v0[9] = v8;
  swift_weakInit();
  (*(v4 + 16))(v1, v5, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, v1, v3);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v11 = *(MEMORY[0x277D09FB0] + 4);

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream();

  return MEMORY[0x282160A60](partial apply for closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), v10);
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOyyts5Error_p__GMd, &_sScs12ContinuationV11YieldResultOyyts5Error_p__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.workoutVoice);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20AEA4000, v9, v10, "%s Observation block called.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield<>()();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DeviceInferenceAvailabilityProvider.init(inferenceClient:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v6 = type metadata accessor for DeviceInferenceAvailability();
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v8 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v9 = type metadata accessor for InferenceClient();
  (*(*(v9 - 8) + 32))(v1 + v8, a1, v9);
  return v1;
}

uint64_t DeviceInferenceAvailabilityProvider.activate()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](DeviceInferenceAvailabilityProvider.activate(), 0, 0);
}

{
  v30 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.hasFetchedAvailability.getter;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sb_TG5TA_0(v29);
  os_unfair_lock_unlock(v2 + 4);
  LOBYTE(v1) = v29[0];

  if (v1)
  {
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
      v7 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v29);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20AEA4000, v5, v6, "%s already fetched availability, ignoring call to activate.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }
  }

  else
  {
    v13 = v0[2];
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 1;
    v15 = swift_task_alloc();
    *(v15 + 16) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.hasFetchedAvailability.setter;
    *(v15 + 24) = v14;
    os_unfair_lock_lock(v2 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v16);
    os_unfair_lock_unlock(v2 + 4);

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.workoutVoice);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[3];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20AEA4000, v18, v19, "%s activating.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    v26 = v0[2];
    DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  }

  v27 = v0[1];

  return v27();
}

Swift::Void __swiftcall DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()()
{
  v79 = *v0;
  v1 = type metadata accessor for InferenceDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v77 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v66 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v8 = *(*(v74 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v74);
  v73 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v66 - v16;
  v18 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v19 = *(v2 + 104);
  v19(v7, *MEMORY[0x277D09FE0], v1);
  v75 = v17;
  v76 = v0;
  InferenceClient.queryDeviceInferenceAvailability(device:)();
  v69 = v15;
  v70 = v19;
  v71 = v2 + 104;
  v72 = v18;
  v20 = (v2 + 8);
  v21 = *v20;
  v22 = (*v20)(v7, v1);
  v23 = v76;
  v24 = *(v76 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = v75;
  v66[-2] = v23;
  v66[-1] = v26;
  MEMORY[0x28223BE20](v25);
  v66[-2] = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.setter;
  v66[-1] = v27;
  os_unfair_lock_lock(v24 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v28);
  os_unfair_lock_unlock(v24 + 4);
  _sSo8NSObjectCSgWOhTm_9(v26, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static WOLog.workoutVoice);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v67 = v32;
    v68 = v31;
    v75 = v30;
    v66[2] = v20;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v80[0] = v34;
    *v33 = 136315394;
    v35 = _typeName(_:qualified:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v80);

    v66[1] = v66;
    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    MEMORY[0x28223BE20](v38);
    v66[-2] = _s11WorkoutCore35DeviceInferenceAvailabilityProviderC05phoneE019FitnessIntelligence0cdE0VSgvgAHyYbXEfU_TA_0;
    v66[-1] = v23;
    os_unfair_lock_lock(v24 + 4);
    v39 = v69;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v40);
    os_unfair_lock_unlock(v24 + 4);
    v41 = Optional.description.getter();
    v43 = v42;
    _sSo8NSObjectCSgWOhTm_9(v39, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v80);

    *(v33 + 14) = v44;
    v31 = v68;
    _os_log_impl(&dword_20AEA4000, v68, v67, "%s Inference availability for phone: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v33, -1, -1);
  }

  v45 = v77;
  v46 = v78;
  v70(v77, *MEMORY[0x277D09FE8], v1);
  InferenceClient.queryDeviceInferenceAvailability(device:)();
  v47 = v21(v45, v1);
  v48 = MEMORY[0x28223BE20](v47);
  v66[-2] = v23;
  v66[-1] = v46;
  MEMORY[0x28223BE20](v48);
  v66[-2] = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.setter;
  v66[-1] = v49;
  os_unfair_lock_lock(v24 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v50);
  os_unfair_lock_unlock(v24 + 4);
  _sSo8NSObjectCSgWOhTm_9(v46, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v80[0] = v55;
    *v54 = 136315394;
    v56 = _typeName(_:qualified:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v80);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    MEMORY[0x28223BE20](v59);
    v66[-2] = _s11WorkoutCore35DeviceInferenceAvailabilityProviderC05watchE019FitnessIntelligence0cdE0VSgvgAHyYbXEfU_TA_0;
    v66[-1] = v23;
    os_unfair_lock_lock(v24 + 4);
    v60 = v73;
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_19FitnessIntelligence27DeviceInferenceAvailabilityVSg_Tg5TA_0(v61);
    os_unfair_lock_unlock(v24 + 4);
    v62 = Optional.description.getter();
    v64 = v63;
    _sSo8NSObjectCSgWOhTm_9(v60, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v80);

    *(v54 + 14) = v65;
    _os_log_impl(&dword_20AEA4000, v51, v52, "%s Inference availability for watch: %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v55, -1, -1);
    MEMORY[0x20F2E9420](v54, -1, -1);
  }
}

uint64_t DeviceInferenceAvailabilityProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);

  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  return v0;
}

uint64_t DeviceInferenceAvailabilityProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);

  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DeviceInferenceAvailability?(v2 + v4, a2);
}

uint64_t type metadata accessor for DeviceInferenceAvailabilityProvider()
{
  result = type metadata singleton initialization cache for DeviceInferenceAvailabilityProvider;
  if (!type metadata singleton initialization cache for DeviceInferenceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DeviceInferenceAvailabilityProvider()
{
  v0 = type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for DeviceInferenceAvailability?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DeviceInferenceAvailabilityProvider.activate()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DeviceInferenceAvailabilityProvider.activate();

  return v6();
}

void type metadata accessor for DeviceInferenceAvailability?()
{
  if (!lazy cache variable for type metadata for DeviceInferenceAvailability?)
  {
    type metadata accessor for DeviceInferenceAvailability();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DeviceInferenceAvailability?);
    }
  }
}

uint64_t outlined init with copy of DeviceInferenceAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DeviceInferenceAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream();

  return closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(v3, v0 + v2);
}

uint64_t closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(uint64_t a1)
{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_19FitnessIntelligence27DeviceInferenceAvailabilityVSg_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_1(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

WorkoutCore::WorkoutDeviceConnectionNotification_optional __swiftcall WorkoutDeviceConnectionNotification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutDeviceConnectionNotification.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WorkoutDeviceConnectionNotification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v2 = 0xD000000000000020;
  }

  v3 = 0xD000000000000018;
  if (v1 == 4)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 2)
  {
    v4 = 0xD000000000000015;
  }

  v5 = 0xD000000000000013;
  if (!*v0)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification()
{
  result = lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification;
  if (!lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification);
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutDeviceConnectionNotification(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "wo_disconnect_powerbeats";
  v4 = 0xD00000000000001DLL;
  if (v2 != 6)
  {
    v4 = 0xD000000000000020;
    v3 = "wo_connect_heart_rate_monitor";
  }

  v5 = "wo_disconnect_airpods";
  v6 = 0xD000000000000018;
  if (v2 == 4)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = "wo_connect_powerbeats";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "wo_disconnect_watch";
  v8 = 0xD000000000000012;
  if (v2 != 2)
  {
    v7 = "wo_connect_airpods";
    v8 = 0xD000000000000015;
  }

  v9 = 0xD000000000000013;
  if (*v1)
  {
    v10 = "wo_connect_watch";
  }

  else
  {
    v9 = 0xD000000000000010;
    v10 = "alertValue";
  }

  if (*v1 > 1u)
  {
    v9 = v8;
    v10 = v7;
  }

  if (*v1 <= 3u)
  {
    v11 = v10;
  }

  else
  {
    v9 = v4;
    v11 = v3;
  }

  *a1 = v9;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [WorkoutDeviceConnectionNotification] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A28DeviceConnectionNotificationOGMd, &_sSay11WorkoutCore0A28DeviceConnectionNotificationOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDeviceConnectionNotification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutDeviceConnectionNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

id static MetricPlatterStore.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MetricPlatterStore.userDefaults;

  return v0;
}

void static MetricPlatterStore.userDefaults.setter(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  static MetricPlatterStore.userDefaults = a1;
}

uint64_t (*static MetricPlatterStore.userDefaults.modify())()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static MetricPlatterStore.userDefaults.modify;
}

id key path getter for static MetricPlatterStore.userDefaults : MetricPlatterStore.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  *a1 = static MetricPlatterStore.userDefaults;

  return v2;
}

void key path setter for static MetricPlatterStore.userDefaults : MetricPlatterStore.Type(id *a1)
{
  v1 = one-time initialization token for userDefaults;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MetricPlatterStore.userDefaults;
  static MetricPlatterStore.userDefaults = v2;
}

void static MetricPlatterStore.save(metricPlatters:activityType:)(void *a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v53[2] = a1;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricPlatter] and conformance <A> [A], lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter);
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v16 = v15;

  v17 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v53[0] = 0;
  v19 = [v17 propertyListWithData:isa options:0 format:0 error:v53];

  v20 = v53[0];
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v14, v16);
    swift_unknownObjectRelease();
    outlined init with take of Any(v54, v55);
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = static MetricPlatterStore.userDefaults;
    v22 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
    v23 = [v21 dictionaryForKey_];

    if (v23)
    {
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v27 = [a2 uniqueIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    outlined init with copy of Any(v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v28, v30, isUniquelyReferenced_nonNull_native);

    v32 = static MetricPlatterStore.userDefaults;
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
    [v32 setObject:v33 forKey:v34];

    v35 = static MetricPlatterStore.userDefaults;
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v35) = static NSObject.== infix(_:_:)();

    if (v35)
    {
      v39 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
      [v36 fu:v39 backupStandardUserDefaultsKey:?];
    }

    v40 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for MetricPlattersDidSave != -1)
    {
      swift_once();
    }

    [v40 postNotificationName:static NSNotificationName.MetricPlattersDidSave object:0];

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.app);
    v42 = a2;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v54[0] = v47;
      *v45 = 138412546;
      *(v45 + 4) = v42;
      *v46 = v42;
      *(v45 + 12) = 2080;
      v48 = v42;
      v49 = MEMORY[0x20F2E6F70](a1, &type metadata for MetricPlatter);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v54);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_20AEA4000, v43, v44, "Saved MetricPlatters to user defaults for activityType=%@ metricPlatters=%s", v45, 0x16u);
      outlined destroy of NSObject?(v46);
      MEMORY[0x20F2E9420](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v25 = v20;
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v14, v16);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.app);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Failed to encode and save MetricPlatters for activityType=%@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t one-time initialization function for MetricPlattersDidSave()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B463090);
  static NSNotificationName.MetricPlattersDidSave = result;
  return result;
}

id static NSNotificationName.MetricPlattersDidSave.getter()
{
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.MetricPlattersDidSave;

  return v1;
}

uint64_t specialized static MetricPlatterStore.read(for:)(void *a1)
{
  v65 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.app);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_18;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20AEA4000, v24, v25, "MetricPlatters for all activity types not present in user defaults. Will use system defaults.", v26, 2u);
    v27 = v26;
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.app);
    v29 = a1;
    v24 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v29;
    *v32 = v29;
    v33 = v29;
    _os_log_impl(&dword_20AEA4000, v24, v30, "MetricPlatters for activity type not present in user defaults. Will use system defaults. activity_type=%@", v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    v27 = v31;
LABEL_17:
    MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_18:

LABEL_19:
    result = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v62);

  outlined init with take of Any(v62, v63);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v63, v64);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v62[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v62];
  swift_unknownObjectRelease();
  v16 = *&v62[0];
  if (!v15)
  {
    v36 = v16;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.app);
    v39 = a1;
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v62[0] = v45;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v46 = v39;
      v47 = Error.errorDescription.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v62);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Failed to decode MetricPlatters for activityType=%@. error=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v63);
    goto LABEL_19;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricPlatter] and conformance <A> [A], lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v61 = *&v62[0];
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static WOLog.app);

  v51 = a1;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v62[0] = v56;
    *v54 = 136315394;
    v57 = MEMORY[0x20F2E6F70](v61, &type metadata for MetricPlatter);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v62);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2112;
    *(v54 + 14) = v51;
    *v55 = v51;
    v60 = v51;
    _os_log_impl(&dword_20AEA4000, v52, v53, "Successfully read user metricPlatters=%s for activityType=%@", v54, 0x16u);
    outlined destroy of NSObject?(v55);
    MEMORY[0x20F2E9420](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x20F2E9420](v56, -1, -1);
    MEMORY[0x20F2E9420](v54, -1, -1);
  }

  outlined consume of Data._Representation(v17, v19);

  __swift_destroy_boxed_opaque_existential_0(v63);
  result = v61;
LABEL_20:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter()
{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricPlatterStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutConfiguration.analyticsKey.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (*(v0 + v1))
    {
      return 0x6C61767265746E69;
    }

    else
    {
      return 1818324839;
    }
  }

  else if (v2 == 2)
  {
    return 1701011826;
  }

  else if (v2 == 3)
  {
    return 0x7265636170;
  }

  else
  {
    return 0x6F707369746C756DLL;
  }
}

id WorkoutConfiguration.swimmingActivityType.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
    static Published.subscript.getter();

    if (v16 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v3 = 0;
      v15 = v1;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x20F2E7A20](v3);
        }

        else
        {
          if (v3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v4 = *(v16 + 8 * v3 + 32);
        }

        v5 = v4;
        v1 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v7 = *&v5[v6];
        v8 = v5;
        if ([v7 identifier] == 46)
        {
          v9 = *&v5[v6];
          v10 = [v9 hasLocationTypePool];

          if (v10)
          {

            v11 = *&v5[v6];

            return v11;
          }
        }

        else
        {
        }

        ++v3;
        if (v1 == i)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_24:

    return 0;
  }

  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*&v0[v12] identifier] != 46 || !objc_msgSend(*&v0[v12], sel_hasLocationTypePool))
  {
    return 0;
  }

  v11 = *&v0[v12];
  v13 = v11;
  return v11;
}

uint64_t SessionSensorUnavailableEvaluator.__allocating_init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v8 + 120) = 0;
  *(v8 + 128) = v9;
  *(v8 + 16) = v10;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;
  v12 = a2;
  static Published.subscript.getter();

  *(v8 + 128) = v16;

  outlined init with copy of HealthDataSubmissionAllowedProvider(a3, v8 + 40);
  outlined init with copy of HealthDataSubmissionAllowedProvider(a4, v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v8 + 72);
  __swift_project_boxed_opaque_existential_1((v8 + 40), v13);
  if ((*(v14 + 8))(v13, v14))
  {
    SessionSensorUnavailableEvaluator.beginObserving()();
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(a4);
  __swift_destroy_boxed_opaque_existential_1Tm_10(a3);
  return v8;
}

uint64_t SessionSensorUnavailableEvaluator.init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *(v5 + 120) = 0;
  *(v5 + 128) = v10;
  *(v5 + 16) = v11;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = a2;
  static Published.subscript.getter();

  v14 = *(v5 + 128);
  *(v5 + 128) = v18;

  outlined init with copy of HealthDataSubmissionAllowedProvider(a3, v5 + 40);
  outlined init with copy of HealthDataSubmissionAllowedProvider(a4, v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v5 + 72);
  __swift_project_boxed_opaque_existential_1((v5 + 40), v15);
  if ((*(v16 + 8))(v15, v16))
  {
    SessionSensorUnavailableEvaluator.beginObserving()();
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(a4);
  __swift_destroy_boxed_opaque_existential_1Tm_10(a3);
  return v5;
}

uint64_t outlined init with copy of HealthDataSubmissionAllowedProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SessionSensorUnavailableEvaluator.beginObserving()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *(v0 + 32);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in SessionSensorUnavailableEvaluator.beginObserving()(void **a1)
{
  v1._rawValue = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SessionSensorUnavailableEvaluator.evaluateWorkoutDevicesUnavailable(latestDevices:)(v1);
  }

  return result;
}

Swift::Void __swiftcall SessionSensorUnavailableEvaluator.evaluateWorkoutDevicesUnavailable(latestDevices:)(Swift::OpaquePointer latestDevices)
{
  v2 = v1;
  v4 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 128);

  v10 = specialized static SessionSensorUnavailableEvaluator.unavailableDevices(previousDevices:latestDevices:)(v9, latestDevices._rawValue);

  v11 = *(v2 + 128);
  *(v2 + 128) = latestDevices;

  if (*(v2 + 120))
  {

    if (!*(v10 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v12 = *(v10 + 16);

  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    v15 = v12 - 1;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = *(v10 + 16);
      v18 = (v14 + 80 * v13);
      v19 = v13;
      while (1)
      {
        if (v19 >= v17)
        {
          __break(1u);
          goto LABEL_25;
        }

        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[4];
        v53 = v18[3];
        v23 = *v18;
        v54 = v22;
        v51 = v20;
        v52 = v21;
        v50 = v23;
        v13 = v19 + 1;
        if ((BYTE8(v53) & 1) == 0)
        {
          break;
        }

        v18 += 5;
        ++v19;
        if (v12 == v13)
        {
          goto LABEL_18;
        }
      }

      outlined init with copy of WorkoutDevice(&v50, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v16;
      v48 = v14;
      v47 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
        v16 = v55;
      }

      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v16 = v55;
      }

      *(v16 + 16) = v26 + 1;
      v27 = (v16 + 80 * v26);
      v27[2] = v50;
      v28 = v51;
      v29 = v52;
      v30 = v54;
      v27[5] = v53;
      v27[6] = v30;
      v27[3] = v28;
      v27[4] = v29;
      v15 = v47;
      v14 = v48;
    }

    while (v47 != v19);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_18:
  swift_bridgeObjectRelease_n();
  v10 = v16;
  if (*(v16 + 16))
  {
LABEL_19:
    if (one-time initialization token for analytics != -1)
    {
LABEL_25:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static WOLog.analytics);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v50 = v35;
      *v34 = 136315138;

      v37 = MEMORY[0x20F2E6F70](v36, &type metadata for WorkoutDevice);
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v50);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_20AEA4000, v32, v33, "Workout device unavailable. unavailable_devices=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_10(v35);
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    v41 = *(v2 + 24);

    v42 = [v41 identifier];
    v43 = v7 + *(v4 + 24);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    *v7 = 0xD00000000000002CLL;
    v7[1] = 0x800000020B45C500;
    v7[2] = v10;
    v44 = *(v2 + 104);
    v45 = *(v2 + 112);
    __swift_project_boxed_opaque_existential_1((v2 + 80), v44);
    *(&v51 + 1) = v4;
    *&v52 = &protocol witness table for SessionSensorDisconnectAnalyticsEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    outlined init with copy of SessionSensorDisconnectAnalyticsEvent(v7, boxed_opaque_existential_1);
    (*(v45 + 8))(&v50, v44, v45);
    outlined destroy of SessionSensorDisconnectAnalyticsEvent(v7);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v50);
  }

LABEL_23:
}

uint64_t SessionSensorUnavailableEvaluator.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 80));
  v2 = *(v0 + 128);

  return v0;
}

uint64_t SessionSensorUnavailableEvaluator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 80));
  v2 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t specialized static SessionSensorUnavailableEvaluator.unavailableDevices(previousDevices:latestDevices:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v21 = result + 32;
  do
  {
    v22 = v6;
    v7 = (v5 + 80 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = v7[3];
      v27 = v7[2];
      v28 = v9;
      v29 = v7[4];
      v10 = v7[1];
      v25 = *v7;
      v26 = v10;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v11 = v7[2];
      v12 = v7[4];
      v24[3] = v7[3];
      v24[4] = v12;
      v13 = *v7;
      v24[1] = v7[1];
      v24[2] = v11;
      v24[0] = v13;
      MEMORY[0x28223BE20](result);
      v20[2] = v24;
      outlined init with copy of WorkoutDevice(&v25, &v23);
      if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, a2) & 1) == 0)
      {
        break;
      }

      result = outlined destroy of WorkoutDevice(&v25);
      v7 += 5;
      if (v4 == v2)
      {
        return v22;
      }
    }

    v6 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = v30;
    }

    v5 = v21;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v15 + 1;
    v16 = (v6 + 80 * v15);
    v16[2] = v25;
    v17 = v26;
    v18 = v27;
    v19 = v29;
    v16[5] = v28;
    v16[6] = v19;
    v16[3] = v17;
    v16[4] = v18;
  }

  while (v4 != v2);
  return v6;
}

uint64_t outlined init with copy of SessionSensorDisconnectAnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SessionSensorDisconnectAnalyticsEvent(uint64_t a1)
{
  v2 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v9[4] = a1[4];
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  v8[4] = v2[4];
  v6 = v2[1];
  v8[0] = *v2;
  v8[1] = v6;
  return specialized static WorkoutDevice.== infix(_:_:)(v9, v8) & 1;
}