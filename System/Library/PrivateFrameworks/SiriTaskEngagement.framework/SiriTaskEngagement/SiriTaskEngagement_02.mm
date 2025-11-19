uint64_t closure #5 in ProtoReminderTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoReminderTaskFeatureSet(0) + 36);
  type metadata accessor for ProtoDateTimeEntitySignal(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoReminderTaskFeatureSet);
  if (!v4)
  {
    closure #2 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoReminderTaskFeatureSet);
    closure #3 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(v3);
    closure #4 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 32), v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoDateTimeEntitySignal);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoDateTimeEntitySignal);
}

uint64_t closure #5 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 36), v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoDateTimeEntitySignal);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoDateTimeEntitySignal);
}

uint64_t protocol witness for Message.init() in conformance ProtoReminderTaskFeatureSet@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + v4) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v8 = a2 + a1[9];

  return v10(v8, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoReminderTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoReminderTaskFeatureSet and conformance ProtoReminderTaskFeatureSet, type metadata accessor for ProtoReminderTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoReminderTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoReminderTaskFeatureSet and conformance ProtoReminderTaskFeatureSet, type metadata accessor for ProtoReminderTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoReminderTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoReminderTaskFeatureSet and conformance ProtoReminderTaskFeatureSet, type metadata accessor for ProtoReminderTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoPlayMediaTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v6 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 20);
LABEL_16:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 24);
        goto LABEL_16;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 28);
          goto LABEL_3;
        case 4:
          v5 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 5:
          closure #5 in ProtoPlayMediaTaskFeatureSet.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }
}

uint64_t closure #5 in ProtoPlayMediaTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoPlayMediaTaskFeatureSet(0) + 36);
  type metadata accessor for ProtoMediaEntitySignal(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in ProtoStartCallTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    closure #3 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    closure #4 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
    closure #5 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in ProtoStartCallTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoMediaEntitySignal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 36), v8, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoMediaEntitySignal);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoMediaEntitySignal);
}

uint64_t protocol witness for Message.init() in conformance ProtoPlayMediaTaskFeatureSet@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = type metadata accessor for ProtoMediaEntitySignal(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoPlayMediaTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoPlayMediaTaskFeatureSet and conformance ProtoPlayMediaTaskFeatureSet, type metadata accessor for ProtoPlayMediaTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoPlayMediaTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoPlayMediaTaskFeatureSet and conformance ProtoPlayMediaTaskFeatureSet, type metadata accessor for ProtoPlayMediaTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoPlayMediaTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoPlayMediaTaskFeatureSet and conformance ProtoPlayMediaTaskFeatureSet, type metadata accessor for ProtoPlayMediaTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoNavigationTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        closure #3 in ProtoNavigationTaskFeatureSet.decodeMessage<A>(decoder:)();
        break;
      case 2:
        v4 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 24);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
        v3 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t closure #3 in ProtoNavigationTaskFeatureSet.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoNavigationTaskFeatureSet(0) + 28);
  type metadata accessor for ProtoNavigationUserFollowupContext(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationUserFollowupContext and conformance ProtoNavigationUserFollowupContext, type metadata accessor for ProtoNavigationUserFollowupContext);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoNavigationTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoNavigationTaskFeatureSet.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #2 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationTaskFeatureSet);
    closure #3 in ProtoNavigationTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoNavigationTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoReminderTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoNavigationTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 28), v8, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoNavigationUserFollowupContext);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationUserFollowupContext and conformance ProtoNavigationUserFollowupContext, type metadata accessor for ProtoNavigationUserFollowupContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoNavigationUserFollowupContext);
}

uint64_t protocol witness for Message.init() in conformance ProtoNavigationTaskFeatureSet@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v4) = 2;
  v5 = a1[7];
  v6 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoNavigationTaskFeatureSet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationTaskFeatureSet and conformance ProtoNavigationTaskFeatureSet, type metadata accessor for ProtoNavigationTaskFeatureSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoNavigationTaskFeatureSet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationTaskFeatureSet and conformance ProtoNavigationTaskFeatureSet, type metadata accessor for ProtoNavigationTaskFeatureSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationTaskFeatureSet()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationTaskFeatureSet and conformance ProtoNavigationTaskFeatureSet, type metadata accessor for ProtoNavigationTaskFeatureSet);

  return Message.hash(into:)();
}

uint64_t ProtoNavigationUserFollowupContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = v4;
          v13 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 24);
          goto LABEL_16;
        }

        closure #1 in ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for ProtoNavigationUserFollowupContext, lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
      }

      else
      {
        v11 = v4;
        switch(result)
        {
          case 3:
            v14 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 28);
LABEL_16:
            v4 = v11;
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 4:
            closure #4 in ProtoNavigationUserFollowupContext.decodeMessage<A>(decoder:)();
            break;
          case 5:
            v12 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 36);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in ProtoTaskEngagementFeatureSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 20);
  a6();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #4 in ProtoNavigationUserFollowupContext.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ProtoNavigationUserFollowupContext(0) + 32);
  type metadata accessor for ProtoLocationEntitySignal(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationUserFollowupContext);
    closure #3 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationUserFollowupContext);
    closure #4 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationUserFollowupContext);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  if (*(a1 + *(result + 20)) != 3)
  {
    v3 = *(a1 + *(result + 20));
    lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in ProtoTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocationEntitySignal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v14 + 32), v8, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v8, v13, type metadata accessor for ProtoLocationEntitySignal);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ProtoTaskFeatureSet(v13, type metadata accessor for ProtoLocationEntitySignal);
}

uint64_t protocol witness for Message.init() in conformance ProtoNavigationUserFollowupContext@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 3;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = type metadata accessor for ProtoLocationEntitySignal(0);
  result = (*(*(v8 - 8) + 56))(a2 + v6, 1, 1, v8);
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoNavigationUserFollowupContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationUserFollowupContext and conformance ProtoNavigationUserFollowupContext, type metadata accessor for ProtoNavigationUserFollowupContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoNavigationUserFollowupContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationUserFollowupContext and conformance ProtoNavigationUserFollowupContext, type metadata accessor for ProtoNavigationUserFollowupContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationUserFollowupContext()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationUserFollowupContext and conformance ProtoNavigationUserFollowupContext, type metadata accessor for ProtoNavigationUserFollowupContext);

  return Message.hash(into:)();
}

uint64_t ProtoNavigationFeatures.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for ProtoNavigationFeatures(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for ProtoNavigationFeatures(0) + 36);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 6:
          v5 = *(type metadata accessor for ProtoNavigationFeatures(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for ProtoNavigationFeatures(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for ProtoNavigationFeatures(0) + 24);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
          v4 = *(type metadata accessor for ProtoNavigationFeatures(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t ProtoNavigationFeatures.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoAlarmTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationFeatures);
  if (!v4)
  {
    closure #1 in ProtoTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationFeatures);
    closure #3 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationFeatures);
    closure #4 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationFeatures);
    closure #5 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoNavigationFeatures);
    closure #6 in ProtoNavigationFeatures.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in ProtoPlayMediaTaskFeatureSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ProtoNavigationUserFollowupContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ProtoNavigationFeatures.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ProtoNavigationFeatures(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int ProtoTaskEngagementFeatureSet.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance ProtoNavigationFeatures@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoNavigationFeatures(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationFeatures and conformance ProtoNavigationFeatures, type metadata accessor for ProtoNavigationFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoNavigationFeatures(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationFeatures and conformance ProtoNavigationFeatures, type metadata accessor for ProtoNavigationFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoNavigationFeatures()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ProtoNavigationFeatures and conformance ProtoNavigationFeatures, type metadata accessor for ProtoNavigationFeatures);

  return Message.hash(into:)();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement24ProtoContactEntitySignalV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of ProtoTaskFeatureSet(v14, v11, type metadata accessor for ProtoContactEntitySignal);
        outlined init with copy of ProtoTaskFeatureSet(v15, v8, type metadata accessor for ProtoContactEntitySignal);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
          {
LABEL_50:
            outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoContactEntitySignal);
            outlined destroy of ProtoTaskFeatureSet(v11, type metadata accessor for ProtoContactEntitySignal);
            goto LABEL_51;
          }
        }

        else if (v21)
        {
          goto LABEL_50;
        }

        v23 = v4[6];
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_50;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v27)
        {
          goto LABEL_50;
        }

        v29 = v4[7];
        v30 = &v11[v29];
        v31 = *&v11[v29 + 8];
        v32 = &v8[v29];
        v33 = *(v32 + 1);
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_50;
          }

          v34 = *v30 == *v32 && v31 == v33;
          if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v33)
        {
          goto LABEL_50;
        }

        v35 = v4[8];
        v36 = &v11[v35];
        v37 = *&v11[v35 + 8];
        v38 = &v8[v35];
        v39 = *(v38 + 1);
        if (v37)
        {
          if (!v39 || (*v36 != *v38 || v37 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v39)
        {
          goto LABEL_50;
        }

        v40 = v4[9];
        v41 = &v11[v40];
        v42 = *&v11[v40 + 8];
        v43 = &v8[v40];
        v44 = *(v43 + 1);
        if (v42)
        {
          if (!v44 || (*v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v44)
        {
          goto LABEL_50;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoContactEntitySignal);
        outlined destroy of ProtoTaskFeatureSet(v11, type metadata accessor for ProtoContactEntitySignal);
        if (v45)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v45 & 1;
      }
    }

    v45 = 1;
  }

  else
  {
LABEL_51:
    v45 = 0;
  }

  return v45 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement05ProtocD10FeatureSetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v74 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMR);
  v12 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v74 - v13;
  v90 = type metadata accessor for ProtoTaskFeatureSet(0);
  v87 = *(v90 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v74 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
  v20 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v22 = &v74 - v21;
  v91 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v23 = *(*(v91 - 1) + 64);
  v24 = MEMORY[0x28223BE20](v91);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v74 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v30 || a1 == a2)
  {
    v72 = 1;
    return v72 & 1;
  }

  v77 = v4;
  v78 = v22;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v81 = v19;
  v82 = (v87 + 48);
  v75 = v11;
  v76 = (v88 + 48);
  v34 = *(v27 + 72);
  v79 = v26;
  v80 = v34;
  v74 = v7;
  while (1)
  {
    v86 = v32;
    outlined init with copy of ProtoTaskFeatureSet(v32, v29, type metadata accessor for ProtoTaskEngagementFeatureSet);
    outlined init with copy of ProtoTaskFeatureSet(v33, v26, type metadata accessor for ProtoTaskEngagementFeatureSet);
    v35 = v91[5];
    v36 = v29[v35];
    v37 = v26[v35];
    if (v36 == 14)
    {
      if (v37 != 14)
      {
        goto LABEL_41;
      }
    }

    else if (v36 != v37)
    {
      goto LABEL_41;
    }

    v38 = v91[6];
    v39 = &v29[v38];
    v40 = v29[v38 + 8];
    v41 = &v26[v38];
    v42 = v26[v38 + 8];
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v39 != *v41)
      {
        LOBYTE(v42) = 1;
      }

      if (v42)
      {
        goto LABEL_41;
      }
    }

    v87 = v33;
    v88 = v30;
    v43 = v91[7];
    v44 = *(v85 + 48);
    outlined init with copy of ProtoSiriTaskInteractionType?(&v29[v43], v22, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    outlined init with copy of ProtoSiriTaskInteractionType?(&v26[v43], &v22[v44], &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v45 = *v82;
    v46 = v90;
    if ((*v82)(v22, 1, v90) != 1)
    {
      break;
    }

    if (v45(&v22[v44], 1, v46) != 1)
    {
      goto LABEL_37;
    }

    outlined destroy of DateInterval?(v22, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v48 = v87;
    v47 = v88;
LABEL_32:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v72 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ProtoTaskFeatureSet(v26, type metadata accessor for ProtoTaskEngagementFeatureSet);
    outlined destroy of ProtoTaskFeatureSet(v29, type metadata accessor for ProtoTaskEngagementFeatureSet);
    if (v72)
    {
      v33 = v48 + v80;
      v32 = v86 + v80;
      v30 = v47 - 1;
      if (v30)
      {
        continue;
      }
    }

    return v72 & 1;
  }

  v49 = v81;
  outlined init with copy of ProtoSiriTaskInteractionType?(v22, v81, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if (v45(&v22[v44], 1, v46) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v49, type metadata accessor for ProtoTaskFeatureSet);
    v26 = v79;
LABEL_37:
    outlined destroy of DateInterval?(v22, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
    goto LABEL_41;
  }

  v50 = &v22[v44];
  v51 = v46;
  v52 = v89;
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v50, v89, type metadata accessor for ProtoTaskFeatureSet);
  v53 = *(v51 + 24);
  v54 = (v49 + v53);
  v55 = *(v49 + v53 + 8);
  v56 = (v52 + v53);
  v57 = v56[1];
  v58 = v49;
  if (v55)
  {
    v59 = v84;
    v48 = v87;
    v47 = v88;
    if (!v57 || (*v54 != *v56 || v55 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v59 = v84;
    v48 = v87;
    v47 = v88;
    if (v57)
    {
      goto LABEL_40;
    }
  }

  v60 = *(v83 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(v49, v59, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  outlined init with copy of ProtoSiriTaskInteractionType?(v89, v59 + v60, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v61 = v77;
  v62 = *v76;
  if ((*v76)(v59, 1, v77) == 1)
  {
    if (v62(v59 + v60, 1, v61) != 1)
    {
      goto LABEL_39;
    }

    outlined destroy of DateInterval?(v59, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v58 = v81;
    goto LABEL_31;
  }

  v63 = v59;
  v64 = v59;
  v65 = v75;
  outlined init with copy of ProtoSiriTaskInteractionType?(v63, v75, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  if (v62(v64 + v60, 1, v61) != 1)
  {
    v66 = v74;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v64 + v60, v74, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    v67 = specialized static ProtoTaskFeatureSet.OneOf_ByTask.== infix(_:_:)(v65, v66);
    outlined destroy of ProtoTaskFeatureSet(v66, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    outlined destroy of ProtoTaskFeatureSet(v65, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    outlined destroy of DateInterval?(v64, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    v58 = v81;
    if ((v67 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_31:
    v68 = v58;
    v69 = *(v90 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v70 = v89;
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ProtoTaskFeatureSet(v70, type metadata accessor for ProtoTaskFeatureSet);
    outlined destroy of ProtoTaskFeatureSet(v68, type metadata accessor for ProtoTaskFeatureSet);
    v22 = v78;
    outlined destroy of DateInterval?(v78, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v26 = v79;
    if ((v71 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  outlined destroy of ProtoTaskFeatureSet(v65, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  v59 = v64;
LABEL_39:
  outlined destroy of DateInterval?(v59, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMR);
  v58 = v81;
LABEL_40:
  outlined destroy of ProtoTaskFeatureSet(v89, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of ProtoTaskFeatureSet(v58, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of DateInterval?(v78, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v26 = v79;
LABEL_41:
  outlined destroy of ProtoTaskFeatureSet(v26, type metadata accessor for ProtoTaskEngagementFeatureSet);
  outlined destroy of ProtoTaskFeatureSet(v29, type metadata accessor for ProtoTaskEngagementFeatureSet);
LABEL_42:
  v72 = 0;
  return v72 & 1;
}

uint64_t specialized static ProtoNavigationFeatures.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoNavigationFeatures(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  v42 = v4[10];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_48:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v46)
  {
    goto LABEL_48;
  }

  return 0;
}

uint64_t specialized static ProtoTaskEngagementFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 14)
  {
    if (v20 != 14)
    {
      goto LABEL_17;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_17;
  }

  v21 = v17[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_17;
    }
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v26, v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v28 = a2 + v26;
  v29 = v27;
  outlined init with copy of ProtoSiriTaskInteractionType?(v28, &v16[v27], &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
LABEL_20:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_16;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoTaskFeatureSet);
LABEL_16:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSg_ADtMR);
    goto LABEL_17;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v29], v8, type metadata accessor for ProtoTaskFeatureSet);
  v33 = specialized static ProtoTaskFeatureSet.== infix(_:_:)(v12, v8);
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoTaskFeatureSet);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  if (v33)
  {
    goto LABEL_20;
  }

LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized static ProtoTaskFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for ProtoTaskFeatureSet(0);
  v18 = *(v17 + 24);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v24 = a1;
  v25 = *(v13 + 48);
  v31[0] = v24;
  outlined init with copy of ProtoSiriTaskInteractionType?(v24, v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v31[1] = a2;
  outlined init with copy of ProtoSiriTaskInteractionType?(a2, &v16[v25], &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
LABEL_19:
      v30 = *(v17 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_15;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
LABEL_15:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSg_AFtMR);
    goto LABEL_16;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v25], v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  v29 = specialized static ProtoTaskFeatureSet.OneOf_ByTask.== infix(_:_:)(v12, v8);
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_16:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static ProtoTaskFeatureSet.OneOf_ByTask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v14 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v60 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v60 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v60 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v67 = (&v60 - v35);
  MEMORY[0x28223BE20](v34);
  v37 = (&v60 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0O_AEtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0O_AEtMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v60 - v41;
  v43 = *(v40 + 56);
  outlined init with copy of ProtoTaskFeatureSet(v68, &v60 - v41, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  outlined init with copy of ProtoTaskFeatureSet(v69, &v42[v43], type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of ProtoTaskFeatureSet(v42, v30, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v52 = type metadata accessor for ProtoReminderTaskFeatureSet;
        v53 = v30;
        goto LABEL_28;
      }

      v54 = v63;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v63, type metadata accessor for ProtoReminderTaskFeatureSet);
      v48 = specialized static ProtoReminderTaskFeatureSet.== infix(_:_:)(v30, v54);
      v50 = type metadata accessor for ProtoReminderTaskFeatureSet;
      outlined destroy of ProtoTaskFeatureSet(v54, type metadata accessor for ProtoReminderTaskFeatureSet);
      v51 = v30;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      outlined init with copy of ProtoTaskFeatureSet(v42, v27, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v52 = type metadata accessor for ProtoPlayMediaTaskFeatureSet;
        v53 = v27;
        goto LABEL_28;
      }

      v49 = v65;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v65, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
      v48 = specialized static ProtoPlayMediaTaskFeatureSet.== infix(_:_:)(v27, v49);
      v50 = type metadata accessor for ProtoPlayMediaTaskFeatureSet;
      outlined destroy of ProtoTaskFeatureSet(v49, type metadata accessor for ProtoPlayMediaTaskFeatureSet);
      v51 = v27;
    }

    else
    {
      outlined init with copy of ProtoTaskFeatureSet(v42, v24, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v52 = type metadata accessor for ProtoNavigationTaskFeatureSet;
        v53 = v24;
        goto LABEL_28;
      }

      v56 = v66;
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v66, type metadata accessor for ProtoNavigationTaskFeatureSet);
      v48 = specialized static ProtoNavigationTaskFeatureSet.== infix(_:_:)(v24, v56);
      v50 = type metadata accessor for ProtoNavigationTaskFeatureSet;
      outlined destroy of ProtoTaskFeatureSet(v56, type metadata accessor for ProtoNavigationTaskFeatureSet);
      v51 = v24;
    }

LABEL_20:
    v57 = v50;
LABEL_21:
    outlined destroy of ProtoTaskFeatureSet(v51, v57);
    outlined destroy of ProtoTaskFeatureSet(v42, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    return v48 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of ProtoTaskFeatureSet(v42, v37, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    if (!swift_getEnumCaseMultiPayload())
    {
      _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v19, type metadata accessor for ProtoStartCallTaskFeatureSet);
      v48 = specialized static ProtoStartCallTaskFeatureSet.== infix(_:_:)(v37, v19);
      outlined destroy of ProtoTaskFeatureSet(v19, type metadata accessor for ProtoStartCallTaskFeatureSet);
      v51 = v37;
      v57 = type metadata accessor for ProtoStartCallTaskFeatureSet;
      goto LABEL_21;
    }

    v52 = type metadata accessor for ProtoStartCallTaskFeatureSet;
    v53 = v37;
LABEL_28:
    outlined destroy of ProtoTaskFeatureSet(v53, v52);
    outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0O_AEtMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0O_AEtMR);
LABEL_29:
    v48 = 0;
    return v48 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of ProtoTaskFeatureSet(v42, v33, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v58 = type metadata accessor for ProtoAlarmTaskFeatureSet;
      goto LABEL_26;
    }

    v55 = v62;
    _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v62, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v48 = specialized static ProtoAlarmTaskFeatureSet.== infix(_:_:)(v33, v55);
    v50 = type metadata accessor for ProtoAlarmTaskFeatureSet;
    outlined destroy of ProtoTaskFeatureSet(v55, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v51 = v33;
    goto LABEL_20;
  }

  v33 = v67;
  outlined init with copy of ProtoTaskFeatureSet(v42, v67, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v58 = type metadata accessor for ProtoSendMessageTaskFeatureSet;
LABEL_26:
    v52 = v58;
    v53 = v33;
    goto LABEL_28;
  }

  v45 = v64;
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v42[v43], v64, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement24ProtoContactEntitySignalV_Tt1g5(*v33, *v45) & 1) == 0)
  {
    outlined destroy of ProtoTaskFeatureSet(v45, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    goto LABEL_33;
  }

  v46 = *(v61 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ProtoTaskFeatureSet(v45, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  if ((v47 & 1) == 0)
  {
LABEL_33:
    outlined destroy of ProtoTaskFeatureSet(v33, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    outlined destroy of ProtoTaskFeatureSet(v42, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
    goto LABEL_29;
  }

  outlined destroy of ProtoTaskFeatureSet(v33, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  outlined destroy of ProtoTaskFeatureSet(v42, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask);
  v48 = 1;
  return v48 & 1;
}

uint64_t specialized static ProtoNavigationUserFollowupContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocationEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSg_ADtMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 3)
  {
    if (v20 != 3)
    {
      goto LABEL_42;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_42;
  }

  v21 = v17[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_42;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v17;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_42;
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (!v30)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

LABEL_42:
    v53 = 0;
    return v53 & 1;
  }

  if (!v32)
  {
    goto LABEL_42;
  }

  if (*v29 != *v31 || v30 != v32)
  {
    v33 = v17;
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v33;
    if ((v34 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_19:
  v56 = v17;
  v35 = v17[8];
  v36 = *(v13 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v35, v16, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v37 = a2 + v35;
  v38 = v36;
  outlined init with copy of ProtoSiriTaskInteractionType?(v37, &v16[v36], &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  v39 = *(v5 + 48);
  if (v39(v16, 1, v4) == 1)
  {
    if (v39(&v16[v38], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  if (v39(&v16[v38], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoLocationEntitySignal);
LABEL_27:
    v45 = &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSg_ADtMd;
    v46 = &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSg_ADtMR;
LABEL_41:
    outlined destroy of DateInterval?(v16, v45, v46);
    goto LABEL_42;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v38], v8, type metadata accessor for ProtoLocationEntitySignal);
  v47 = *(v4 + 20);
  v48 = &v12[v47];
  v49 = *&v12[v47 + 8];
  v50 = &v8[v47];
  v51 = *(v50 + 1);
  if (!v49)
  {
    if (!v51)
    {
      goto LABEL_33;
    }

LABEL_40:
    outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoLocationEntitySignal);
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoLocationEntitySignal);
    v45 = &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd;
    v46 = &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR;
    goto LABEL_41;
  }

  if (!v51 || (*v48 != *v50 || v49 != v51) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_33:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoLocationEntitySignal);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoLocationEntitySignal);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
  if ((v52 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  v40 = v56[9];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_42;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v53 & 1;
}

uint64_t specialized static ProtoNavigationTaskFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSg_ADtMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_17;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    goto LABEL_17;
  }

  v21 = v17[6];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_17;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    goto LABEL_17;
  }

  v24 = v17[7];
  v25 = *(v13 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v24, v16, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v26 = a2 + v24;
  v27 = v25;
  outlined init with copy of ProtoSiriTaskInteractionType?(v26, &v16[v25], &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v27], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
LABEL_20:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v29 & 1;
    }

    goto LABEL_16;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  if (v28(&v16[v27], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoNavigationUserFollowupContext);
LABEL_16:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSg_ADtMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSg_ADtMR);
    goto LABEL_17;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v27], v8, type metadata accessor for ProtoNavigationUserFollowupContext);
  v31 = specialized static ProtoNavigationUserFollowupContext.== infix(_:_:)(v12, v8);
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoNavigationUserFollowupContext);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoNavigationUserFollowupContext);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_17:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static ProtoStartCallTaskFeatureSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v5 = *(v4 + 24);
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ18SiriTaskEngagement24ProtoContactEntitySignalV_Tt1g5(*a1, *a2))
  {
    v10 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static ProtoPlayMediaTaskFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSg_ADtMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_33;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_33;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_33;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v17;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_33;
  }

  v35 = v17[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_33;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v17;
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_33;
  }

  v42 = v17[9];
  v43 = *(v13 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v42, v16, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v44 = a2 + v42;
  v45 = v43;
  outlined init with copy of ProtoSiriTaskInteractionType?(v44, &v16[v43], &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v46 = *(v5 + 48);
  if (v46(v16, 1, v4) == 1)
  {
    if (v46(&v16[v45], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
LABEL_36:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v47 & 1;
    }

    goto LABEL_32;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  if (v46(&v16[v45], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoMediaEntitySignal);
LABEL_32:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSg_ADtMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSg_ADtMR);
    goto LABEL_33;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v45], v8, type metadata accessor for ProtoMediaEntitySignal);
  v49 = specialized static ProtoMediaEntitySignal.== infix(_:_:)(v12, v8);
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoMediaEntitySignal);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoMediaEntitySignal);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  if (v49)
  {
    goto LABEL_36;
  }

LABEL_33:
  v47 = 0;
  return v47 & 1;
}

uint64_t specialized static ProtoReminderTaskFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v64[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v64[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v64[-v22];
  v24 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v25 = v24[5];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_32;
    }

    v30 = *v26 == *v28 && v27 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v29)
  {
LABEL_32:
    v45 = 0;
    return v45 & 1;
  }

  v31 = v24[6];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    goto LABEL_32;
  }

  v34 = v24[7];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_32;
  }

  v37 = v24[8];
  v66 = v9;
  v67 = v37;
  v38 = *(v18 + 48);
  outlined init with copy of ProtoSiriTaskInteractionType?(&v37[a1], v23, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v39 = &v67[a2];
  v67 = v38;
  outlined init with copy of ProtoSiriTaskInteractionType?(v39, &v38[v23], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v40 = *(v5 + 48);
  if ((v40)(v23, 1, v4) == 1)
  {
    if ((v40)(&v67[v23], 1, v4) == 1)
    {
      v67 = v40;
      outlined destroy of DateInterval?(v23, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v23, v17, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if ((v40)(&v67[v23], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v17, type metadata accessor for ProtoDateTimeEntitySignal);
LABEL_29:
    v46 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMd;
    v47 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMR;
LABEL_30:
    v48 = v23;
LABEL_31:
    outlined destroy of DateInterval?(v48, v46, v47);
    goto LABEL_32;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v67[v23], v11, type metadata accessor for ProtoDateTimeEntitySignal);
  v50 = *(v4 + 20);
  v51 = &v17[v50];
  v52 = v17[v50 + 8];
  v53 = &v11[v50];
  v54 = v11[v50 + 8];
  if (v52)
  {
    if (!v54)
    {
LABEL_36:
      outlined destroy of ProtoTaskFeatureSet(v11, type metadata accessor for ProtoDateTimeEntitySignal);
      outlined destroy of ProtoTaskFeatureSet(v17, type metadata accessor for ProtoDateTimeEntitySignal);
      v46 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd;
      v47 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR;
      goto LABEL_30;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      goto LABEL_36;
    }
  }

  v67 = v40;
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ProtoTaskFeatureSet(v11, type metadata accessor for ProtoDateTimeEntitySignal);
  outlined destroy of ProtoTaskFeatureSet(v17, type metadata accessor for ProtoDateTimeEntitySignal);
  outlined destroy of DateInterval?(v23, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  v41 = v24[9];
  v42 = *(v18 + 48);
  v43 = v69;
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + v41, v69, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  outlined init with copy of ProtoSiriTaskInteractionType?(a2 + v41, &v43[v42], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  v44 = v67;
  if ((v67)(v43, 1, v4) == 1)
  {
    if (v44(&v43[v42], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v43, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  v55 = v68;
  outlined init with copy of ProtoSiriTaskInteractionType?(v43, v68, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if (v44(&v43[v42], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v55, type metadata accessor for ProtoDateTimeEntitySignal);
LABEL_39:
    v46 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMd;
    v47 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSg_ADtMR;
    v48 = v43;
    goto LABEL_31;
  }

  v56 = &v43[v42];
  v57 = v66;
  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(v56, v66, type metadata accessor for ProtoDateTimeEntitySignal);
  v58 = *(v4 + 20);
  v59 = &v55[v58];
  v60 = v55[v58 + 8];
  v61 = (v57 + v58);
  v62 = *(v57 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
LABEL_47:
      outlined destroy of ProtoTaskFeatureSet(v57, type metadata accessor for ProtoDateTimeEntitySignal);
      outlined destroy of ProtoTaskFeatureSet(v55, type metadata accessor for ProtoDateTimeEntitySignal);
      v46 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd;
      v47 = &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR;
      v48 = v43;
      goto LABEL_31;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_47;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ProtoTaskFeatureSet(v57, type metadata accessor for ProtoDateTimeEntitySignal);
  outlined destroy of ProtoTaskFeatureSet(v55, type metadata accessor for ProtoDateTimeEntitySignal);
  outlined destroy of DateInterval?(v43, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
  if ((v63 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v45 & 1;
}

uint64_t specialized static ProtoAlarmTaskFeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSg_ADtMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  v17 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v26 = a1;
  v27 = a2;
  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  v34[1] = v26;
  outlined init with copy of ProtoSiriTaskInteractionType?(v26 + v28, v16, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  outlined init with copy of ProtoSiriTaskInteractionType?(v27 + v28, &v16[v29], &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
LABEL_19:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  outlined init with copy of ProtoSiriTaskInteractionType?(v16, v12, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoDateComponentSignal);
LABEL_15:
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSg_ADtMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSg_ADtMR);
    goto LABEL_16;
  }

  _s18SiriTaskEngagement014ProtoStartCallB10FeatureSetVWObTm_0(&v16[v29], v8, type metadata accessor for ProtoDateComponentSignal);
  v33 = specialized static ProtoDateComponentSignal.== infix(_:_:)(v12, v8);
  outlined destroy of ProtoTaskFeatureSet(v8, type metadata accessor for ProtoDateComponentSignal);
  outlined destroy of ProtoTaskFeatureSet(v12, type metadata accessor for ProtoDateComponentSignal);
  outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  v8 = a2 + *(result + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t keypath_get_29Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, double *a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 24);
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *a3 = v7;
  return result;
}

uint64_t keypath_get_37Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(0);
  *a3 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t keypath_set_38Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  *(a2 + *(result + 24)) = v6;
  return result;
}

uint64_t keypath_get_69Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  result = a2(0);
  v6 = (a1 + *(result + 36));
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6;
  }

  *a3 = v7;
  return result;
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  v8 = a2 + *(result + 36);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

void type metadata completion function for ProtoTaskEngagementFeatureSet()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for ProtoTaskEngagementType?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt64?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoTaskFeatureSet?, type metadata accessor for ProtoTaskFeatureSet, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for ProtoTaskFeatureSet()
{
  type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoTaskFeatureSet.OneOf_ByTask?, type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for ProtoTaskFeatureSet?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for ProtoTaskFeatureSet.OneOf_ByTask()
{
  result = type metadata accessor for ProtoStartCallTaskFeatureSet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ProtoSendMessageTaskFeatureSet(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ProtoAlarmTaskFeatureSet(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ProtoReminderTaskFeatureSet(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ProtoNavigationTaskFeatureSet(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata completion function for ProtoStartCallTaskFeatureSet()
{
  type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for [ProtoContactEntitySignal], type metadata accessor for ProtoContactEntitySignal, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_106Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_107Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ProtoSendMessageTaskFeatureSet()
{
  type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for [ProtoContactEntitySignal], type metadata accessor for ProtoContactEntitySignal, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ProtoAlarmTaskFeatureSet()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoDateComponentSignal?, type metadata accessor for ProtoDateComponentSignal, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for ProtoReminderTaskFeatureSet()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoDateTimeEntitySignal?, type metadata accessor for ProtoDateTimeEntitySignal, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for ProtoPlayMediaTaskFeatureSet()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoMediaEntitySignal?, type metadata accessor for ProtoMediaEntitySignal, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for ProtoNavigationTaskFeatureSet()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoNavigationUserFollowupContext?, type metadata accessor for ProtoNavigationUserFollowupContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for ProtoNavigationUserFollowupContext()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for ProtoNavigationFollowupType?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ProtoTaskFeatureSet?(319, &lazy cache variable for type metadata for ProtoLocationEntitySignal?, type metadata accessor for ProtoLocationEntitySignal, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt64?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ProtoNavigationFeatures()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt64?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x69737365536C696ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x746E6576456C696ELL;
    v12 = 0xEC00000065707954;
    if (a1 != 6)
    {
      v11 = 0xD000000000000027;
      v12 = 0x800000026923E870;
    }

    v13 = 0x800000026923E820;
    v14 = 0xD000000000000012;
    if (a1 != 4)
    {
      v14 = 0xD000000000000016;
      v13 = 0x800000026923E840;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x800000026923E800;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x69737365536C696ELL;
    }

    if (a1 != 2)
    {
      v5 = 0xEC00000064496E6FLL;
    }

    v7 = 0x800000026923E7B0;
    v8 = 0xD000000000000018;
    if (a1)
    {
      v8 = 0xD000000000000021;
      v7 = 0x800000026923E7D0;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEC00000065707954;
        if (v9 != 0x746E6576456C696ELL)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x800000026923E870;
        if (v9 != 0xD000000000000027)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 4)
    {
      v2 = 0x800000026923E820;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v2 = 0x800000026923E840;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000026923E7D0;
        if (v9 != 0xD000000000000021)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x800000026923E7B0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v2 = 0x800000026923E800;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  if (v9 != v3)
  {
LABEL_47:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_48;
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

{
  v2 = 0xD000000000000012;
  v3 = "malformedSiriExecutionEvent";
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = "missingPlayEventDonation";
    v12 = 0xD000000000000020;
    if (a1 != 1)
    {
      v12 = 0xD000000000000012;
      v11 = "lseEventDonation";
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0xD000000000000018;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = "malformedSiriExecutionEvent";
    }
  }

  else
  {
    v5 = "nowPlayingEventsExtractionError";
    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001DLL;
      v5 = "invalidMediaMetadata";
    }

    v7 = "missingAppBundleId";
    v8 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001FLL;
      v7 = "malformedTimingInformation";
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "missingPlayEventDonation";
        v2 = 0xD000000000000020;
      }

      else
      {
        v3 = "lseEventDonation";
      }
    }

    else
    {
      v2 = 0xD000000000000018;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = "nowPlayingEventsExtractionError";
      v2 = 0xD000000000000014;
    }

    else
    {
      v3 = "invalidMediaMetadata";
      v2 = 0xD00000000000001DLL;
    }
  }

  else if (a2 == 3)
  {
    v3 = "missingAppBundleId";
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "malformedTimingInformation";
    v2 = 0xD00000000000001FLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "nalConversionError";
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = "missingAppIntentEventDonation";
      v3 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000022;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2)
    {
      v4 = "appIntentEventsExtractionError";
    }

    else
    {
      v4 = "activityUnsupportedForAppLaunch";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v6 = "nalConversionError";
    }

    else
    {
      v6 = "missingAppIntentEventDonation";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000022;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v6 = "appIntentEventsExtractionError";
    }

    else
    {
      v6 = "activityUnsupportedForAppLaunch";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = 0xED00006C6C614365;
  v3 = 0x6E6F685069726953;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x72616C4169726953;
    v12 = 0xE90000000000006DLL;
    if (a1 != 6)
    {
      v11 = 0xD000000000000017;
      v12 = 0x800000026923F300;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6F654769726953;
    if (a1 != 4)
    {
      v14 = 0x656E654769726953;
      v13 = 0xEB00000000636972;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x7373654D69726953;
    v6 = 0xEB00000000656761;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
      v6 = 0x800000026923F2C0;
    }

    v7 = 0x6973754D69726953;
    v8 = 0xE900000000000063;
    if (!a1)
    {
      v7 = 0x6E6F685069726953;
      v8 = 0xED00006C6C614365;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE90000000000006DLL;
        if (v9 != 0x72616C4169726953)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x800000026923F300;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x6F654769726953)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x656E654769726953;
    v16 = 6515058;
LABEL_37:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE900000000000063;
      if (v9 != 0x6973754D69726953)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v15 = 0x7373654D69726953;
    v16 = 6645601;
    goto LABEL_37;
  }

  v3 = 0xD000000000000012;
  v2 = 0x800000026923F2C0;
LABEL_40:
  if (v9 != v3)
  {
LABEL_44:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

{
  v2 = 0xEF6B736154697269;
  v3 = 0x53676E697373696DLL;
  if (a1 <= 3u)
  {
    v4 = 0x800000026923EFB0;
    v5 = 0xD000000000000024;
    if (a1 != 2)
    {
      v5 = 0xD000000000000015;
      v4 = 0x800000026923EFE0;
    }

    v8 = 0x800000026923EF80;
    if (a1)
    {
      v9 = 0x53676E697373696DLL;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a1)
    {
      v8 = 0xEF6B736154697269;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x800000026923F040;
    v5 = 0xD000000000000017;
    v6 = 0x800000026923F060;
    v7 = 0xD00000000000001ELL;
    if (a1 != 7)
    {
      v7 = 0xD000000000000020;
      v6 = 0x800000026923F080;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x800000026923F000;
    v9 = 0xD000000000000016;
    if (a1 != 4)
    {
      v9 = 0xD000000000000014;
      v8 = 0x800000026923F020;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000026923EFB0;
        if (v11 != 0xD000000000000024)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0x800000026923EFE0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      v2 = 0x800000026923EF80;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000026923F000;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0x800000026923F020;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 6)
    {
      v2 = 0x800000026923F040;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    if (a2 == 7)
    {
      v2 = 0x800000026923F060;
      if (v11 != 0xD00000000000001ELL)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v2 = 0x800000026923F080;
    v3 = 0xD000000000000020;
  }

  if (v11 != v3)
  {
LABEL_48:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_49;
  }

LABEL_45:
  if (v12 != v2)
  {
    goto LABEL_48;
  }

  v13 = 1;
LABEL_49:

  return v13 & 1;
}

{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x800000026923E9E0;
      v6 = 0xD000000000000012;
      goto LABEL_13;
    }

    v2 = 0x800000026923EA00;
    v3 = 0x800000026923EA20;
    v4 = 0xD00000000000001BLL;
    v5 = a1 == 4;
  }

  else
  {
    v2 = 0x800000026923E990;
    v3 = 0x800000026923E9C0;
    v4 = 0xD000000000000016;
    if (a1 == 1)
    {
      v4 = 0x54676E697373696DLL;
      v3 = 0xEF656D614E6B7361;
    }

    v5 = a1 == 0;
  }

  if (v5)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = v4;
  }

  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

LABEL_13:
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x54676E697373696DLL;
      }

      else
      {
        v8 = 0xD000000000000016;
      }

      if (a2 == 1)
      {
        v9 = 0xEF656D614E6B7361;
      }

      else
      {
        v9 = 0x800000026923E9C0;
      }

      if (v6 != v8)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v10 = "missingSystemTaskEventsDonation";
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    v9 = 0x800000026923E9E0;
    if (v6 != 0xD000000000000012)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (a2 == 4)
  {
    v10 = "systemTaskEventsExtractionError";
LABEL_28:
    v9 = (v10 - 32) | 0x8000000000000000;
    if (v6 != 0xD00000000000001FLL)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v9 = 0x800000026923EA20;
  if (v6 != 0xD00000000000001BLL)
  {
LABEL_35:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_36;
  }

LABEL_33:
  if (v7 != v9)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

{
  v2 = 0xD000000000000013;
  v3 = "TranscriptEventDonation";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (a1 == 5)
  {
    v6 = "onErrorWithBiome";
  }

  else
  {
    v6 = "malformedUIBeginEvent";
  }

  v7 = 0xD000000000000017;
  if (a1 == 3)
  {
    v8 = "malformedUIEndEvent";
  }

  else
  {
    v7 = 0xD000000000000020;
    v8 = "missingUUIDFromMetaData";
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 > 4)
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (v4 == 1)
  {
    v11 = "missingUIStartEvent";
  }

  else
  {
    v11 = "missingUIEndEvent";
  }

  if (!v4)
  {
    v10 = 0xD000000000000013;
    v11 = "TranscriptEventDonation";
  }

  if (v4 > 2)
  {
    v12 = v8;
  }

  else
  {
    v9 = v10;
    v12 = v11;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000011;
        v3 = "missingUIStartEvent";
      }

      else
      {
        v3 = "missingUIEndEvent";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000015;
      v3 = "onErrorWithBiome";
    }

    else
    {
      v2 = 0xD000000000000014;
      v3 = "malformedUIBeginEvent";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000017;
    v3 = "malformedUIEndEvent";
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = "missingUUIDFromMetaData";
  }

  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = 0xED000064496B7361;
  v3 = 0x54676E697373696DLL;
  if (a1 > 4u)
  {
    v4 = 0x800000026923F1A0;
    v7 = 0xD000000000000020;
    v11 = 0x800000026923F1D0;
    v12 = 0xD000000000000029;
    if (a1 != 8)
    {
      v12 = 0xD000000000000026;
      v11 = 0x800000026923F200;
    }

    if (a1 != 7)
    {
      v7 = v12;
      v4 = v11;
    }

    v8 = 0x800000026923F130;
    v9 = 0xD000000000000025;
    if (a1 != 5)
    {
      v9 = 0xD000000000000034;
      v8 = 0x800000026923F160;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v4 = 0xEF656D614E6B7361;
    v5 = 0x800000026923F0D0;
    v6 = 0xD000000000000028;
    if (a1 == 3)
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v5 = 0x800000026923F100;
    }

    if (a1 == 2)
    {
      v7 = 0x54676E697373696DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v8 = 0x800000026923F0B0;
    v9 = 0xD000000000000011;
    if (!a1)
    {
      v9 = 0x54676E697373696DLL;
      v8 = 0xED000064496B7361;
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000026923F130;
        if (v13 != 0xD000000000000025)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0x800000026923F160;
        if (v13 != 0xD000000000000034)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0x800000026923F1A0;
      if (v13 != 0xD000000000000020)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0x800000026923F1D0;
      if (v13 != 0xD000000000000029)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v15 = "missingUserInitatedFollowupEngagements";
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000026923F0B0;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v2 = 0xEF656D614E6B7361;
      if (v13 != 0x54676E697373696DLL)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 != 3)
    {
      v2 = 0x800000026923F100;
      if (v13 != 0xD000000000000028)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v15 = "missingFeatureForProvidedInteractionId";
  }

  v2 = (v15 - 32) | 0x8000000000000000;
  v3 = 0xD000000000000026;
LABEL_50:
  if (v13 != v3)
  {
LABEL_54:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_51:
  if (v14 != v2)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t ReliabilityCategory.name.getter()
{
  if (v0[1])
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  result = 0x676E69646F636E45;
  switch(v1 | (*v0 >> 5))
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000002CLL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 0xA:
      result = 0xD00000000000001DLL;
      break;
    case 0xB:
      return result;
    case 0xC:
      result = 0x676E69646F636544;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0x4C455350666C6553;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

SiriTaskEngagement::TranscriptEventDataIssues_optional __swiftcall TranscriptEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TranscriptEventDataIssues.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TranscriptEventDataIssues.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746E6576456C696ELL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000027;
    }

    v6 = 0xD000000000000016;
    if (v1 == 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x69737365536C696ELL;
    if (v1 == 2)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000021;
    if (!*v0)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TranscriptEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEC00000065707954;
    v9 = 0x746E6576456C696ELL;
    if (v2 != 6)
    {
      v9 = 0xD000000000000027;
      v8 = 0x800000026923E870;
    }

    v10 = 0x800000026923E820;
    v11 = 0xD000000000000016;
    if (v2 == 4)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v10 = 0x800000026923E840;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEC00000064496E6FLL;
    v4 = 0x69737365536C696ELL;
    if (v2 == 2)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000026923E800;
    }

    v5 = 0x800000026923E7B0;
    v6 = 0xD000000000000021;
    if (*v1)
    {
      v5 = 0x800000026923E7D0;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (*v1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

SiriTaskEngagement::SiriUIEventDataIssues_optional __swiftcall SiriUIEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriUIEventDataIssues.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t SiriUIEventDataIssues.rawValue.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000017;
  if (v2 != 3)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriUIEventDataIssues()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SiriUIEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "TranscriptEventDonation";
  v5 = "onErrorWithBiome";
  v6 = 0xD000000000000015;
  if (v3 != 5)
  {
    v6 = 0xD000000000000014;
    v5 = "malformedUIBeginEvent";
  }

  v7 = "malformedUIEndEvent";
  v8 = 0xD000000000000017;
  if (v3 != 3)
  {
    v8 = 0xD000000000000020;
    v7 = "missingUUIDFromMetaData";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "missingUIStartEvent";
  v10 = 0xD000000000000011;
  if (v3 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = "missingUIEndEvent";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

SiriTaskEngagement::SiriExecutionEventDataIssues_optional __swiftcall SiriExecutionEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriExecutionEventDataIssues.init(rawValue:), v3);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t SiriExecutionEventDataIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x54676E697373696DLL;
  v3 = 0xD000000000000012;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriExecutionEventDataIssues()
{
  *v0;
  *v0;
  String.hash(into:)();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SiriExecutionEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656D614E6B7361;
  v4 = 0x54676E697373696DLL;
  v5 = 0x800000026923E9E0;
  v6 = 0xD000000000000012;
  v7 = 0xD00000000000001FLL;
  v8 = 0x800000026923EA00;
  if (v2 != 4)
  {
    v7 = 0xD00000000000001BLL;
    v8 = 0x800000026923EA20;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000026923E9C0;
  }

  if (!*v1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = 0x800000026923E990;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

SiriTaskEngagement::NowPlayingEventDataIssues_optional __swiftcall NowPlayingEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NowPlayingEventDataIssues.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t NowPlayingEventDataIssues.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001DLL;
  }

  v4 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NowPlayingEventDataIssues()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NowPlayingEventDataIssues@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "nowPlayingEventsExtractionError";
  v5 = 0xD000000000000014;
  if (v3 != 5)
  {
    v5 = 0xD00000000000001DLL;
    v4 = "invalidMediaMetadata";
  }

  v6 = "missingAppBundleId";
  v7 = 0xD00000000000001ALL;
  result = 0xD00000000000001FLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000001FLL;
    v6 = "malformedTimingInformation";
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = "missingPlayEventDonation";
  if (v3 == 1)
  {
    v2 = 0xD000000000000020;
  }

  else
  {
    v9 = "lseEventDonation";
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0xD000000000000018;
    v10 = "malformedSiriExecutionEvent";
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

unint64_t MapsEventDataIssues.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001DLL;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MapsEventDataIssues(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = "missingValidPlayEventDonation";
  }

  else
  {
    v5 = "missingMapsEventDonation";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (*a2)
  {
    v8 = "missingMapsEventDonation";
  }

  else
  {
    v8 = "missingValidPlayEventDonation";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MapsEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MapsEventDataIssues()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MapsEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MapsEventDataIssues(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "missingMapsEventDonation";
  }

  else
  {
    v3 = "missingValidPlayEventDonation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t HomeKitClientAccessoryControlEventDataIssues.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HomeKitClientAccessoryControlEventDataIssues.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HomeKitClientAccessoryControlEventDataIssues()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HomeKitClientAccessoryControlEventDataIssues()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t AppLaunchEventDataIssues.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD00000000000001ELL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppLaunchEventDataIssues(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v3)
  {
    v5 = "missingHomeKitEventDonation";
  }

  else
  {
    v5 = "appLaunchEventsExtractionError";
  }

  if (*a2)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v7 = "appLaunchEventsExtractionError";
  }

  else
  {
    v7 = "missingHomeKitEventDonation";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppLaunchEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppLaunchEventDataIssues()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppLaunchEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AppLaunchEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = "appLaunchEventsExtractionError";
  v3 = 0xD00000000000001ELL;
  if (*v1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = "missingHomeKitEventDonation";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

SiriTaskEngagement::AppIntentEventDataIssues_optional __swiftcall AppIntentEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppIntentEventDataIssues.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t AppIntentEventDataIssues.rawValue.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD000000000000022;
  if (!*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppIntentEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppIntentEventDataIssues()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppIntentEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AppIntentEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = "nalConversionError";
  v3 = 0xD00000000000001DLL;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000016;
    v2 = "missingAppIntentEventDonation";
  }

  v4 = 0xD000000000000022;
  if (*v1)
  {
    v5 = "appIntentEventsExtractionError";
  }

  else
  {
    v4 = 0xD00000000000001ELL;
    v5 = "activityUnsupportedForAppLaunch";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

SiriTaskEngagement::AlarmEventDataIssues_optional __swiftcall AlarmEventDataIssues.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AlarmEventDataIssues.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t AlarmEventDataIssues.rawValue.getter()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AlarmEventDataIssues(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "appIntentEventsExtractionError";
  v4 = 0xD000000000000022;
  if (v2 == 1)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v2 == 1)
  {
    v6 = "appIntentEventsExtractionError";
  }

  else
  {
    v6 = "alarmEventsExtractionError";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "unsupportedDomainError";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = "alarmEventsExtractionError";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "unsupportedDomainError";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlarmEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlarmEventDataIssues()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlarmEventDataIssues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AlarmEventDataIssues(unint64_t *a1@<X8>)
{
  v2 = "appIntentEventsExtractionError";
  v3 = 0xD000000000000022;
  if (*v1 != 1)
  {
    v3 = 0xD000000000000019;
    v2 = "alarmEventsExtractionError";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = "unsupportedDomainError";
  }

  *a1 = v4;
  a1[1] = v5 | 0x8000000000000000;
}

SiriTaskEngagement::EngagementSignalCollectionError_optional __swiftcall EngagementSignalCollectionError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EngagementSignalCollectionError.rawValue.getter()
{
  result = 0xD000000000000012;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
    case 0xB:
    case 0x10:
      result = 0xD00000000000001BLL;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 0x12:
      result = 0xD000000000000022;
      break;
    case 0xA:
      result = 0xD000000000000020;
      break;
    case 0xC:
      result = 0xD000000000000024;
      break;
    case 0xD:
      result = 0xD000000000000026;
      break;
    case 0xE:
      result = 0xD000000000000025;
      break;
    case 0xF:
      result = 0xD00000000000001ELL;
      break;
    case 0x11:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EngagementSignalCollectionError(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = EngagementSignalCollectionError.rawValue.getter();
  v4 = v3;
  if (v2 == EngagementSignalCollectionError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EngagementSignalCollectionError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EngagementSignalCollectionError.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EngagementSignalCollectionError()
{
  v2 = *v0;
  EngagementSignalCollectionError.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EngagementSignalCollectionError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EngagementSignalCollectionError.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EngagementSignalCollectionError@<X0>(unint64_t *a1@<X8>)
{
  result = EngagementSignalCollectionError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriTaskEngagement::EngagementFeaturizationError_optional __swiftcall EngagementFeaturizationError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EngagementFeaturizationError.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t EngagementFeaturizationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x53676E697373696DLL;
    v7 = 0xD000000000000015;
    if (v1 == 2)
    {
      v7 = 0xD000000000000024;
    }

    if (!*v0)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    v3 = 0xD00000000000001ELL;
    if (v1 != 7)
    {
      v3 = 0xD000000000000020;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000014;
    if (v1 == 4)
    {
      v4 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EngagementFeaturizationError@<X0>(unint64_t *a1@<X8>)
{
  result = EngagementFeaturizationError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriTaskEngagement::MisssingFeaturesFromProtoSiriTaskEngagement_optional __swiftcall MisssingFeaturesFromProtoSiriTaskEngagement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MisssingFeaturesFromProtoSiriTaskEngagement.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t MisssingFeaturesFromProtoSiriTaskEngagement.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000029;
    if (v1 != 8)
    {
      v6 = 0xD000000000000026;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000020;
    }

    v7 = 0xD000000000000025;
    if (v1 != 5)
    {
      v7 = 0xD000000000000034;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x54676E697373696DLL;
    v3 = 0xD000000000000028;
    if (v1 == 3)
    {
      v3 = 0xD000000000000026;
    }

    if (v1 == 2)
    {
      v4 = 0x54676E697373696DLL;
    }

    else
    {
      v4 = v3;
    }

    if (*v0)
    {
      v2 = 0xD000000000000011;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v4;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EngagementFeaturizationError(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EngagementFeaturizationError(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MisssingFeaturesFromProtoSiriTaskEngagement@<X0>(uint64_t *a1@<X8>)
{
  result = MisssingFeaturesFromProtoSiriTaskEngagement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MapsEventDataIssues.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X2>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v7 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

unint64_t EncodingError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EncodingError(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = "tedFollowupEngagements";
  }

  else
  {
    v5 = "jsonSerializationError";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = "jsonSerializationError";
  }

  else
  {
    v8 = "tedFollowupEngagements";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncodingError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EncodingError()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncodingError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MapsEventDataIssues@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance EncodingError(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "jsonSerializationError";
  }

  else
  {
    v3 = "tedFollowupEngagements";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t DecodingError.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DecodingError.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DecodingError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DecodingError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HomeKitClientAccessoryControlEventDataIssues@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

SiriTaskEngagement::SELFPSELogged_optional __swiftcall SELFPSELogged.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SELFPSELogged.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t SELFPSELogged.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x72616C4169726953;
    if (v1 != 6)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0x6F654769726953;
    if (v1 != 4)
    {
      v6 = 0x656E654769726953;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E6F685069726953;
    v3 = 0x7373654D69726953;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0x6973754D69726953;
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
}

unint64_t lazy protocol witness table accessor for type TranscriptEventDataIssues and conformance TranscriptEventDataIssues()
{
  result = lazy protocol witness table cache variable for type TranscriptEventDataIssues and conformance TranscriptEventDataIssues;
  if (!lazy protocol witness table cache variable for type TranscriptEventDataIssues and conformance TranscriptEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptEventDataIssues and conformance TranscriptEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriUIEventDataIssues and conformance SiriUIEventDataIssues()
{
  result = lazy protocol witness table cache variable for type SiriUIEventDataIssues and conformance SiriUIEventDataIssues;
  if (!lazy protocol witness table cache variable for type SiriUIEventDataIssues and conformance SiriUIEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriUIEventDataIssues and conformance SiriUIEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriExecutionEventDataIssues and conformance SiriExecutionEventDataIssues()
{
  result = lazy protocol witness table cache variable for type SiriExecutionEventDataIssues and conformance SiriExecutionEventDataIssues;
  if (!lazy protocol witness table cache variable for type SiriExecutionEventDataIssues and conformance SiriExecutionEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionEventDataIssues and conformance SiriExecutionEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NowPlayingEventDataIssues and conformance NowPlayingEventDataIssues()
{
  result = lazy protocol witness table cache variable for type NowPlayingEventDataIssues and conformance NowPlayingEventDataIssues;
  if (!lazy protocol witness table cache variable for type NowPlayingEventDataIssues and conformance NowPlayingEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NowPlayingEventDataIssues and conformance NowPlayingEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MapsEventDataIssues and conformance MapsEventDataIssues()
{
  result = lazy protocol witness table cache variable for type MapsEventDataIssues and conformance MapsEventDataIssues;
  if (!lazy protocol witness table cache variable for type MapsEventDataIssues and conformance MapsEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapsEventDataIssues and conformance MapsEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HomeKitClientAccessoryControlEventDataIssues and conformance HomeKitClientAccessoryControlEventDataIssues()
{
  result = lazy protocol witness table cache variable for type HomeKitClientAccessoryControlEventDataIssues and conformance HomeKitClientAccessoryControlEventDataIssues;
  if (!lazy protocol witness table cache variable for type HomeKitClientAccessoryControlEventDataIssues and conformance HomeKitClientAccessoryControlEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeKitClientAccessoryControlEventDataIssues and conformance HomeKitClientAccessoryControlEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppLaunchEventDataIssues and conformance AppLaunchEventDataIssues()
{
  result = lazy protocol witness table cache variable for type AppLaunchEventDataIssues and conformance AppLaunchEventDataIssues;
  if (!lazy protocol witness table cache variable for type AppLaunchEventDataIssues and conformance AppLaunchEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppLaunchEventDataIssues and conformance AppLaunchEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppIntentEventDataIssues and conformance AppIntentEventDataIssues()
{
  result = lazy protocol witness table cache variable for type AppIntentEventDataIssues and conformance AppIntentEventDataIssues;
  if (!lazy protocol witness table cache variable for type AppIntentEventDataIssues and conformance AppIntentEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentEventDataIssues and conformance AppIntentEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlarmEventDataIssues and conformance AlarmEventDataIssues()
{
  result = lazy protocol witness table cache variable for type AlarmEventDataIssues and conformance AlarmEventDataIssues;
  if (!lazy protocol witness table cache variable for type AlarmEventDataIssues and conformance AlarmEventDataIssues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlarmEventDataIssues and conformance AlarmEventDataIssues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EngagementSignalCollectionError and conformance EngagementSignalCollectionError()
{
  result = lazy protocol witness table cache variable for type EngagementSignalCollectionError and conformance EngagementSignalCollectionError;
  if (!lazy protocol witness table cache variable for type EngagementSignalCollectionError and conformance EngagementSignalCollectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementSignalCollectionError and conformance EngagementSignalCollectionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EngagementFeaturizationError and conformance EngagementFeaturizationError()
{
  result = lazy protocol witness table cache variable for type EngagementFeaturizationError and conformance EngagementFeaturizationError;
  if (!lazy protocol witness table cache variable for type EngagementFeaturizationError and conformance EngagementFeaturizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementFeaturizationError and conformance EngagementFeaturizationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MisssingFeaturesFromProtoSiriTaskEngagement and conformance MisssingFeaturesFromProtoSiriTaskEngagement()
{
  result = lazy protocol witness table cache variable for type MisssingFeaturesFromProtoSiriTaskEngagement and conformance MisssingFeaturesFromProtoSiriTaskEngagement;
  if (!lazy protocol witness table cache variable for type MisssingFeaturesFromProtoSiriTaskEngagement and conformance MisssingFeaturesFromProtoSiriTaskEngagement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MisssingFeaturesFromProtoSiriTaskEngagement and conformance MisssingFeaturesFromProtoSiriTaskEngagement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EncodingError and conformance EncodingError()
{
  result = lazy protocol witness table cache variable for type EncodingError and conformance EncodingError;
  if (!lazy protocol witness table cache variable for type EncodingError and conformance EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodingError and conformance EncodingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DecodingError and conformance DecodingError()
{
  result = lazy protocol witness table cache variable for type DecodingError and conformance DecodingError;
  if (!lazy protocol witness table cache variable for type DecodingError and conformance DecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DecodingError and conformance DecodingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SELFPSELogged and conformance SELFPSELogged()
{
  result = lazy protocol witness table cache variable for type SELFPSELogged and conformance SELFPSELogged;
  if (!lazy protocol witness table cache variable for type SELFPSELogged and conformance SELFPSELogged)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SELFPSELogged and conformance SELFPSELogged);
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SELFPSELogged(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE90000000000006DLL;
    v9 = 0x72616C4169726953;
    if (v2 != 6)
    {
      v9 = 0xD000000000000017;
      v8 = 0x800000026923F300;
    }

    v10 = 0xE700000000000000;
    v11 = 0x6F654769726953;
    if (v2 != 4)
    {
      v11 = 0x656E654769726953;
      v10 = 0xEB00000000636972;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xED00006C6C614365;
    v4 = 0x6E6F685069726953;
    v5 = 0xEB00000000656761;
    v6 = 0x7373654D69726953;
    if (v2 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x800000026923F2C0;
    }

    if (*v1)
    {
      v4 = 0x6973754D69726953;
      v3 = 0xE900000000000063;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F1)
  {
    goto LABEL_17;
  }

  if (a2 + 63503 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63503 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63503;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63503;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63503;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) | (8 * *(a1 + 1))) ^ 0x7FF;
  if (v6 >= 0x7F0)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ReliabilityCategory(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63503 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63503 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F1)
  {
    v4 = 0;
  }

  if (a2 > 0x7F0)
  {
    v5 = ((a2 - 2033) >> 16) + 1;
    *result = a2 - 2033;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = __PAIR16__((-32 * a2) >> 24, -32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for ReliabilityCategory(unsigned __int8 *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | (v1 >> 5);
  v4 = (v1 & 0x1F) + 15;
  if (v3 == 15)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

_BYTE *destructiveInjectEnumTag for ReliabilityCategory(_BYTE *result, unsigned int a2)
{
  if (a2 < 0xF)
  {
    v2 = *result & 0x1F | (32 * a2);
    v3 = a2 > 7;
  }

  else
  {
    v2 = (a2 + 17) | 0xE0;
    v3 = 1;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EngagementSignalCollectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementSignalCollectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MisssingFeaturesFromProtoSiriTaskEngagement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MisssingFeaturesFromProtoSiriTaskEngagement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MapsEventDataIssues(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapsEventDataIssues(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TranscriptEventDataIssues(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptEventDataIssues(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static EngagementFeatureUtils.getRequestIds(taskId:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v34 - v5;
  v6 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v34 = *(v6 - 1);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)(a1, v36, 0xD000000000000012, 0x800000026923E630, &v34 - v20);
  outlined init with copy of ProtoSiriTaskInteractionType?(v21, v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    outlined destroy of DateInterval?(v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.feature);
    v37[0] = 417;
    Logger.error(_:_:)(0xD000000000000037, 0x8000000269240AE0, v37);
    outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    return 0;
  }

  else
  {
    outlined init with take of ProtoSiriTaskEngagement(v19, v14, type metadata accessor for ProtoSiriTaskEngagement);
    v24 = *&v14[*(v10 + 20)];
    v25 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
    swift_beginAccess();
    v26 = v35;
    outlined init with copy of ProtoSiriTaskInteractionType?(v24 + v25, v35, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    v27 = *(v34 + 48);
    if (v27(v26, 1, v6) == 1)
    {
      *v9 = MEMORY[0x277D84F90];
      v28 = v9 + v6[5];
      UnknownStorage.init()();
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      *(v9 + v6[6]) = 5;
      *(v9 + v6[7]) = 5;
      v29 = v6[8];
      v30 = type metadata accessor for ProtoSiriTaskInteractionType(0);
      (*(*(v30 - 8) + 56))(v9 + v29, 1, 1, v30);
      v31 = v9 + v6[9];
      *v31 = 0;
      v31[8] = 1;
      v32 = v9 + v6[10];
      *v32 = 0;
      v32[8] = 1;
      if (v27(v26, 1, v6) != 1)
      {
        outlined destroy of DateInterval?(v26, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
      }
    }

    else
    {
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      outlined init with take of ProtoSiriTaskEngagement(v26, v9, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    }

    outlined destroy of ProtoSiriTaskEngagement(v14, type metadata accessor for ProtoSiriTaskEngagement);
    v23 = *v9;

    outlined destroy of ProtoSiriTaskEngagement(v9, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  }

  return v23;
}

uint64_t static EngagementFeatureUtils.getTaskSuccess(taskId:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v37 = *(v11 - 1);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)(a3, a4, 0xD000000000000012, 0x800000026923E630, &v36 - v20);
  outlined init with copy of ProtoSiriTaskInteractionType?(v21, v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v22 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    outlined destroy of DateInterval?(v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.feature);
    v39[0] = 421;
    Logger.error(_:_:)(0xD000000000000039, 0x8000000269240B20, v39);
    outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    *v38 = 5;
    return (*(v23 + 56))(a2, 1, 1, v22);
  }

  else
  {
    outlined init with take of ProtoSiriTaskEngagement(v19, a2, type metadata accessor for ProtoSiriTaskEngagement);
    v26 = *(a2 + *(v22 + 20));
    v27 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
    swift_beginAccess();
    outlined init with copy of ProtoSiriTaskInteractionType?(v26 + v27, v10, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    v28 = *(v37 + 48);
    v29 = a2;
    if (v28(v10, 1, v11) == 1)
    {
      *v14 = MEMORY[0x277D84F90];
      v30 = v14 + v11[5];
      UnknownStorage.init()();
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      *(v14 + v11[6]) = 5;
      *(v14 + v11[7]) = 5;
      v31 = v11[8];
      v32 = type metadata accessor for ProtoSiriTaskInteractionType(0);
      (*(*(v32 - 8) + 56))(v14 + v31, 1, 1, v32);
      v33 = v14 + v11[9];
      *v33 = 0;
      v33[8] = 1;
      v34 = v14 + v11[10];
      *v34 = 0;
      v34[8] = 1;
      if (v28(v10, 1, v11) != 1)
      {
        outlined destroy of DateInterval?(v10, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
      }
    }

    else
    {
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      outlined init with take of ProtoSiriTaskEngagement(v10, v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    }

    v35 = *(v14 + v11[7]);
    outlined destroy of ProtoSiriTaskEngagement(v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    if (v35 == 5)
    {
      *v38 = 0;
    }

    else
    {
      *v38 = v35;
    }

    return (*(v23 + 56))(v29, 0, 1, v22);
  }
}

uint64_t static EngagementFeatureUtils.getTaskCompletion(taskId:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v37 = *(v11 - 1);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)(a3, a4, 0xD000000000000012, 0x800000026923E630, &v36 - v20);
  outlined init with copy of ProtoSiriTaskInteractionType?(v21, v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v22 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    outlined destroy of DateInterval?(v19, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.feature);
    v39[0] = 420;
    Logger.error(_:_:)(0xD00000000000003CLL, 0x8000000269240B60, v39);
    outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    *v38 = 5;
    return (*(v23 + 56))(a2, 1, 1, v22);
  }

  else
  {
    outlined init with take of ProtoSiriTaskEngagement(v19, a2, type metadata accessor for ProtoSiriTaskEngagement);
    v26 = *(a2 + *(v22 + 20));
    v27 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
    swift_beginAccess();
    outlined init with copy of ProtoSiriTaskInteractionType?(v26 + v27, v10, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    v28 = *(v37 + 48);
    v29 = a2;
    if (v28(v10, 1, v11) == 1)
    {
      *v14 = MEMORY[0x277D84F90];
      v30 = v14 + v11[5];
      UnknownStorage.init()();
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      *(v14 + v11[6]) = 5;
      *(v14 + v11[7]) = 5;
      v31 = v11[8];
      v32 = type metadata accessor for ProtoSiriTaskInteractionType(0);
      (*(*(v32 - 8) + 56))(v14 + v31, 1, 1, v32);
      v33 = v14 + v11[9];
      *v33 = 0;
      v33[8] = 1;
      v34 = v14 + v11[10];
      *v34 = 0;
      v34[8] = 1;
      if (v28(v10, 1, v11) != 1)
      {
        outlined destroy of DateInterval?(v10, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
      }
    }

    else
    {
      outlined destroy of DateInterval?(v21, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      outlined init with take of ProtoSiriTaskEngagement(v10, v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    }

    v35 = *(v14 + v11[6]);
    outlined destroy of ProtoSiriTaskEngagement(v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    if (v35 == 5)
    {
      *v38 = 0;
    }

    else
    {
      *v38 = v35;
    }

    return (*(v23 + 56))(v29, 0, 1, v22);
  }
}

BOOL static EngagementFeatureUtils.isEntityResolutionPresent(taskId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v47 = *(v10 - 1);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v51 = *(v48 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)(v52, v53, 0xD000000000000012, 0x800000026923E630, &v46 - v26);
  outlined init with copy of ProtoSiriTaskInteractionType?(v27, v25, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v53 = v17;
  if ((*(v17 + 48))(v25, 1, v16) == 1)
  {
    outlined destroy of DateInterval?(v25, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.feature);
    v55[0] = 422;
    Logger.error(_:_:)(0xD000000000000056, 0x8000000269240BA0, v55);
    outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    v29 = 0;
    v30 = 1;
    v31 = v54;
  }

  else
  {
    outlined init with take of ProtoSiriTaskEngagement(v25, v20, type metadata accessor for ProtoSiriTaskEngagement);
    v32 = *(v16 + 20);
    v52 = v20;
    v33 = *&v20[v32];
    v34 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
    swift_beginAccess();
    outlined init with copy of ProtoSiriTaskInteractionType?(v33 + v34, v9, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    v35 = *(v47 + 48);
    if (v35(v9, 1, v10) == 1)
    {
      *v13 = MEMORY[0x277D84F90];
      v36 = v13 + v10[5];
      UnknownStorage.init()();
      *(v13 + v10[6]) = 5;
      *(v13 + v10[7]) = 5;
      v37 = v48;
      (*(v51 + 56))(v13 + v10[8], 1, 1, v48);
      v38 = v13 + v10[9];
      *v38 = 0;
      v38[8] = 1;
      v39 = v13 + v10[10];
      *v39 = 0;
      v39[8] = 1;
      v40 = v35(v9, 1, v10);
      v31 = v54;
      v41 = v49;
      if (v40 != 1)
      {
        outlined destroy of DateInterval?(v9, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
      }
    }

    else
    {
      outlined init with take of ProtoSiriTaskEngagement(v9, v13, type metadata accessor for ProtoSiriTaskEvaluationSummary);
      v31 = v54;
      v37 = v48;
      v41 = v49;
    }

    v42 = v50;
    outlined init with copy of ProtoSiriTaskInteractionType?(v13 + v10[8], v50, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    v43 = *(v51 + 48);
    if (v43(v42, 1, v37) == 1)
    {
      UnknownStorage.init()();
      outlined destroy of ProtoSiriTaskEngagement(v13, type metadata accessor for ProtoSiriTaskEvaluationSummary);
      outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      *(v41 + v37[5]) = 2;
      *(v41 + v37[6]) = 2;
      *(v41 + v37[7]) = 2;
      *(v41 + v37[8]) = 2;
      if (v43(v42, 1, v37) != 1)
      {
        outlined destroy of DateInterval?(v42, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      }
    }

    else
    {
      outlined destroy of ProtoSiriTaskEngagement(v13, type metadata accessor for ProtoSiriTaskEvaluationSummary);
      outlined destroy of DateInterval?(v27, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      outlined init with take of ProtoSiriTaskEngagement(v42, v41, type metadata accessor for ProtoSiriTaskInteractionType);
    }

    if (*(v41 + v37[5]) == 2)
    {
      v44 = v52;
      v29 = *(v41 + v37[6]) != 2 || *(v41 + v37[7]) != 2 || *(v41 + v37[8]) != 2;
    }

    else
    {
      v29 = 1;
      v44 = v52;
    }

    outlined destroy of ProtoSiriTaskEngagement(v41, type metadata accessor for ProtoSiriTaskInteractionType);
    outlined init with take of ProtoSiriTaskEngagement(v44, v31, type metadata accessor for ProtoSiriTaskEngagement);
    v30 = 0;
  }

  (*(v53 + 56))(v31, v30, 1, v16);
  return v29;
}

uint64_t outlined destroy of ProtoSiriTaskEngagement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static EngagementFeatureUtils.getASRHypothesesForTask(taskId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v120 = a3;
  v116 = a2;
  v108 = a1;
  v111 = type metadata accessor for Siri_Nlu_External_TurnInput();
  v119 = *(v111 - 8);
  v3 = *(v119 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v114 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0a18_Nlu_External_Cdm_C7RequestVSgMd, "X1");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v97 - v10;
  v113 = type metadata accessor for Siri_Nlu_External_Cdm_NluRequest();
  v118 = *(v113 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v113);
  v109 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v97 - v15;
  v17 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v121 = *(v17 - 1);
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v122 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)(v116, v120, 0xD000000000000012, 0x800000026923E630, &v97 - v33);
  v106 = v34;
  outlined init with copy of ProtoSiriTaskInteractionType?(v34, v32, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v107 = v22;
  if ((*(v22 + 48))(v32, 1, v21) == 1)
  {
    v35 = v21;
    outlined destroy of DateInterval?(v32, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
    if (one-time initialization token for feature == -1)
    {
LABEL_3:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.feature);
      v126[0] = 423;
      Logger.error(_:_:)(0xD000000000000059, 0x8000000269240C00, v126);
      outlined destroy of DateInterval?(v106, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      (*(v107 + 56))(v108, 1, 1, v35);
      return 0;
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  outlined init with take of ProtoSiriTaskEngagement(v32, v27, type metadata accessor for ProtoSiriTaskEngagement);
  v103 = v21;
  v37 = *&v27[*(v21 + 20)];
  v38 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v37 + v38, v16, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v39 = *(v121 + 48);
  v40 = v27;
  if (v39(v16, 1, v17) == 1)
  {
    *v20 = MEMORY[0x277D84F90];
    v41 = v20 + v17[5];
    UnknownStorage.init()();
    *(v20 + v17[6]) = 5;
    *(v20 + v17[7]) = 5;
    v42 = v17[8];
    v43 = type metadata accessor for ProtoSiriTaskInteractionType(0);
    (*(*(v43 - 8) + 56))(v20 + v42, 1, 1, v43);
    v44 = v20 + v17[9];
    *v44 = 0;
    v44[8] = 1;
    v45 = v20 + v17[10];
    *v45 = 0;
    v45[8] = 1;
    v46 = v39(v16, 1, v17);
    v47 = v122;
    if (v46 != 1)
    {
      outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskEngagement(v16, v20, type metadata accessor for ProtoSiriTaskEvaluationSummary);
    v47 = v122;
  }

  v48 = *v20;

  outlined destroy of ProtoSiriTaskEngagement(v20, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  v49 = *(v48 + 16);
  v50 = v103;
  v104 = v27;
  if (!v49)
  {

    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logger.feature);
    outlined init with copy of ProtoSiriTaskEngagement(v27, v47);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v125[0] = v85;
      *v84 = 136315394;
      v86 = *(v47 + *(v50 + 20));
      swift_beginAccess();
      if (*(v86 + 40))
      {
        v87 = *(v86 + 32);
        v88 = *(v86 + 40);
      }

      else
      {
        v87 = 0;
        v88 = 0xE000000000000000;
      }

      outlined destroy of ProtoSiriTaskEngagement(v47, type metadata accessor for ProtoSiriTaskEngagement);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v125);

      *(v84 + 4) = v92;
      *(v84 + 12) = 2080;
      *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v120, v125);
      _os_log_impl(&dword_2691F5000, v82, v83, "#EngagementFeatureUtils Empty requestID list, unable to fetch feature for task name: %s, taskId:  %s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D634770](v85, -1, -1);
      MEMORY[0x26D634770](v84, -1, -1);

      outlined destroy of DateInterval?(v106, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      v50 = v103;
    }

    else
    {

      outlined destroy of DateInterval?(v106, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
      outlined destroy of ProtoSiriTaskEngagement(v47, type metadata accessor for ProtoSiriTaskEngagement);
    }

    v93 = v108;
    outlined init with take of ProtoSiriTaskEngagement(v104, v108, type metadata accessor for ProtoSiriTaskEngagement);
    (*(v107 + 56))(v93, 0, 1, v50);
    return 0;
  }

  v123 = MEMORY[0x277D84FA0];
  v51 = specialized Sequence.filter(_:)(v48);

  v112 = *(v51 + 16);
  if (v112)
  {
    v53 = 0;
    v105 = "m ProtoSiriTaskEngagement";
    v101 = (v118 + 56);
    v100 = (v118 + 32);
    v99 = (v119 + 8);
    v98 = (v118 + 8);
    v35 = (v51 + 40);
    v54 = MEMORY[0x277D84F98];
    *&v52 = 136315394;
    v97 = v52;
    while (v53 < *(v51 + 16))
    {
      v55 = *(v35 - 1);
      v56 = *v35;
      v57 = HIBYTE(*v35) & 0xF;
      if ((*v35 & 0x2000000000000000) == 0)
      {
        v57 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        v121 = v54;
        v119 = v55;
        v123 = v55;
        v124 = v56;
        swift_bridgeObjectRetain_n();
        MEMORY[0x26D634000](12346, 0xE200000000000000);
        v58 = v124;
        v122 = v123;
        if (one-time initialization token for feature != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        v60 = __swift_project_value_buffer(v59, static Logger.feature);

        v102 = v60;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = v58;
          v65 = swift_slowAlloc();
          v123 = v65;
          *v63 = v97;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v64, &v123);
          *(v63 + 12) = 2080;
          *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, v105 | 0x8000000000000000, &v123);
          _os_log_impl(&dword_2691F5000, v61, v62, "#EngagementFeatureUtils Using first requestID: %s to query feature store: %s", v63, 0x16u);
          swift_arrayDestroy();
          v66 = v65;
          v58 = v64;
          MEMORY[0x26D634770](v66, -1, -1);
          MEMORY[0x26D634770](v63, -1, -1);
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v67 = PSEFeatureStoreManager.getStream(streamId:)(0xD000000000000014, v105 | 0x8000000000000000);
        if (!v67)
        {

          v123 = 0;
          v124 = 0xE000000000000000;
          _StringGuts.grow(_:)(100);
          MEMORY[0x26D634000](0xD000000000000047, 0x8000000269240C80);
          MEMORY[0x26D634000](v116, v120);
          MEMORY[0x26D634000](0xD00000000000001BLL, 0x800000026923F740);
          v90 = v123;
          LOWORD(v123) = 325;
          Logger.error(_:_:)(v90, v124, &v123);

LABEL_41:
          outlined destroy of DateInterval?(v106, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
          v95 = v108;
          outlined init with take of ProtoSiriTaskEngagement(v104, v108, type metadata accessor for ProtoSiriTaskEngagement);
          (*(v107 + 56))(v95, 0, 1, v103);
          return 0;
        }

        v68 = v67;
        v69 = (*(*v67 + 160))(v122, v58);
        if (!v69)
        {

          v123 = 0;
          v124 = 0xE000000000000000;
          _StringGuts.grow(_:)(110);
          MEMORY[0x26D634000](0xD000000000000051, 0x8000000269240CD0);
          MEMORY[0x26D634000](v122, v58);

          MEMORY[0x26D634000](0xD00000000000001BLL, 0x800000026923F740);
          v91 = v123;
          LOWORD(v123) = 419;
          Logger.error(_:_:)(v91, v124, &v123);
LABEL_40:

          goto LABEL_41;
        }

        v70 = v69;
        v71 = [v69 json];
        if (!v71)
        {

          v123 = 0;
          v124 = 0xE000000000000000;
          _StringGuts.grow(_:)(62);
          MEMORY[0x26D634000](0xD00000000000003CLL, 0x8000000269240D30);
          MEMORY[0x26D634000](v122, v58);

          v94 = v123;
          LOWORD(v123) = 322;
          Logger.error(_:_:)(v94, v124, &v123);
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        v72 = v71;
        v117 = v70;
        v118 = v68;
        v73 = v51;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        JSONDecodingOptions.init()();
        lazy protocol witness table accessor for type Siri_Nlu_External_Cdm_NluRequest and conformance Siri_Nlu_External_Cdm_NluRequest();
        v74 = v115;
        v75 = v113;
        Message.init(jsonString:options:)();

        (*v101)(v74, 0, 1, v75);
        v76 = v109;
        (*v100)(v109, v74, v75);
        v77 = v110;
        Siri_Nlu_External_Cdm_NluRequest.currentTurnInput.getter();
        v78 = Siri_Nlu_External_TurnInput.asrOutputs.getter();
        (*v99)(v77, v111);
        v79 = v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v79;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v119, v56, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();

        v54 = v123;
        (*v98)(v76, v75);
        v40 = v104;
        v51 = v73;
      }

      ++v53;
      v35 += 2;
      if (v112 == v53)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v54 = MEMORY[0x277D84F98];
LABEL_32:

  outlined destroy of DateInterval?(v106, &_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\");
  v89 = v108;
  outlined init with take of ProtoSiriTaskEngagement(v40, v108, type metadata accessor for ProtoSiriTaskEngagement);
  (*(v107 + 56))(v89, 0, 1, v103);
  return v54;
}

uint64_t Sequence<>.dedupe()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v19 = Set.init()();
  (*(v8 + 16))(v11, v4, a1);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = &v19;
  v12 = Sequence.filter(_:)();

  return v12;
}

uint64_t closure #1 in Sequence<>.dedupe()(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v10 = Set.insert(_:)();
  (*(v3 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriTaskEngagement22PSEFeatureStoreDonatorCGMd, &_ss18_DictionaryStorageCySS18SiriTaskEngagement22PSEFeatureStoreDonatorCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay12SiriNLUTypes0C27_Nlu_External_AsrHypothesisVGGMd, &_ss18_DictionaryStorageCySSSay12SiriNLUTypes0C27_Nlu_External_AsrHypothesisVGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriTaskEngagement22PSEFeatureStoreDonatorCGMd, &_ss18_DictionaryStorageCySS18SiriTaskEngagement22PSEFeatureStoreDonatorCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay12SiriNLUTypes0C27_Nlu_External_AsrHypothesisVGGMd, &_ss18_DictionaryStorageCySSSay12SiriNLUTypes0C27_Nlu_External_AsrHypothesisVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
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

uint64_t specialized Sequence.filter(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = specialized Set._Variant.insert(_:)(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Cdm_NluRequest and conformance Siri_Nlu_External_Cdm_NluRequest()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Cdm_NluRequest and conformance Siri_Nlu_External_Cdm_NluRequest;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Cdm_NluRequest and conformance Siri_Nlu_External_Cdm_NluRequest)
  {
    type metadata accessor for Siri_Nlu_External_Cdm_NluRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Cdm_NluRequest and conformance Siri_Nlu_External_Cdm_NluRequest);
  }

  return result;
}

uint64_t outlined init with copy of ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskEngagement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Sequence<>.dedupe()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return closure #1 in Sequence<>.dedupe()(a1) & 1;
}

uint64_t specialized static FeatureExtractionUtils.normalizedAlarmIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v40 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  URLComponents.init(string:)();
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of URLComponents?(v17);
    goto LABEL_23;
  }

  v20 = URLComponents.queryItems.getter();
  result = (*(v19 + 8))(v17, v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v40 = v13;
  v41 = a1;
  v42 = a2;
  v47 = *(v20 + 16);
  if (!v47)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_19:

    a1 = v41;
    if (*(v24 + 16))
    {
      v34 = v48;
      v35 = v43;
      (*(v48 + 16))(v43, v24 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v4);

      v36 = v40;
      (*(v34 + 32))(v40, v35, v4);
      v37 = URLQueryItem.value.getter();
      v39 = v38;
      (*(v34 + 8))(v36, v4);
      if (v39)
      {
        return v37;
      }
    }

    else
    {
    }

LABEL_23:

    return a1;
  }

  v22 = 0;
  v46 = v48 + 16;
  v44 = (v48 + 8);
  v23 = (v48 + 32);
  v24 = MEMORY[0x277D84F90];
  v45 = v4;
  while (v22 < *(v20 + 16))
  {
    v25 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v26 = *(v48 + 72);
    (*(v48 + 16))(v50, v20 + v25 + v26 * v22, v4);
    if (URLQueryItem.name.getter() == 25705 && v27 == 0xE200000000000000)
    {

LABEL_13:
      v29 = *v23;
      (*v23)(v49, v50, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v51;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v24 = v51;
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + v25 + v32 * v26;
      v4 = v45;
      result = (v29)(v33, v49, v45);
      goto LABEL_7;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_13;
    }

    result = (*v44)(v50, v4);
LABEL_7:
    if (v47 == ++v22)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Class specialized static FeatureExtractionUtils.normalizeDisplayDateString(from:)(void *a1, uint64_t a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v49 - v8;
  v9 = type metadata accessor for DateComponents();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Calendar.Identifier();
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v60 = type metadata accessor for Calendar();
  v26 = *(v60 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v60);
  v52 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v49 - v30;
  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Calendar.current.getter();
  v33 = MEMORY[0x26D633FA0](0x61206D6D3A68, 0xE600000000000000);
  [v32 setDateFormat_];

  v34 = MEMORY[0x26D633FA0](v59, a2);
  v59 = v32;
  v35 = [v32 dateFromString_];

  if (v35)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v61 + 32))(v25, v23, v62);
    v36 = v15[13];
    v36(v18, *MEMORY[0x277CC9980], v14);
    v49 = Calendar.component(_:from:)();
    v37 = v15[1];
    v37(v18, v14);
    v36(v18, *MEMORY[0x277CC99A0], v14);
    Calendar.component(_:from:)();
    v37(v18, v14);
    v39 = v50;
    v38 = v51;
    v40 = v53;
    (*(v51 + 104))(v50, *MEMORY[0x277CC9830], v53);
    v41 = v52;
    Calendar.init(identifier:)();
    (*(v38 + 8))(v39, v40);
    v42 = v56;
    v43 = v60;
    (*(v26 + 16))(v56, v41, v60);
    (*(v26 + 56))(v42, 0, 1, v43);
    v44 = type metadata accessor for TimeZone();
    (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
    v45 = v55;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v46.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;

    (*(v57 + 8))(v45, v58);
    v47 = *(v26 + 8);
    v47(v41, v43);
    (*(v61 + 8))(v25, v62);
    v47(v31, v43);
  }

  else
  {
    (*(v26 + 8))(v31, v60);

    return 0;
  }

  return v46.super.isa;
}

uint64_t outlined destroy of URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t closure #1 in static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26923BAF0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000269240F10;
  *(inited + 48) = MEMORY[0x26D633FA0](a1, a2);
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = MEMORY[0x26D633FA0](a3, a4);
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = MEMORY[0x26D633FA0](a5, a6);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v13;
}

void static CoreAnalyticsService.submitSimpleExecutionEventAnalytics(domain:action:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = MEMORY[0x26D633FA0](0xD00000000000001ALL, 0x8000000269240E20);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in static CoreAnalyticsService.submitSimpleExecutionEventAnalytics(domain:action:bundleId:);
  *(v14 + 24) = v13;
  v16[4] = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]);
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v16[3] = &block_descriptor_0;
  v15 = _Block_copy(v16);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

unint64_t closure #1 in static CoreAnalyticsService.submitSimpleExecutionEventAnalytics(domain:action:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26923BAF0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000269240E60;
  *(inited + 48) = MEMORY[0x26D633FA0](a1, a2);
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x8000000269240E80;
  *(inited + 72) = MEMORY[0x26D633FA0](a3, a4);
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000269240EA0;
  *(inited + 96) = MEMORY[0x26D633FA0](a5, a6);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v13;
}

void specialized static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000016;
  v4 = *a1;
  v5 = a1[1];
  if (v5)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  switch(v6 | (v4 >> 5))
  {
    case 1u:
      v29 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v30;
      if (v29 > 2)
      {
        if ((v4 & 0x1Fu) <= 4)
        {
          if (v29 == 3)
          {
            v31 = "missingUUIDFromMetaData";
            goto LABEL_132;
          }

          v46 = "uiEventsExtractionErrorWithBiome";
          goto LABEL_140;
        }

        if (v29 == 5)
        {
          v47 = "malformedUIBeginEvent";
          goto LABEL_135;
        }

        v48 = "malformedSiriUIEvent";
        goto LABEL_138;
      }

      if ((v4 & 0x1F) != 0)
      {
        if (v29 == 1)
        {
          v45 = "missingUIEndEvent";
          goto LABEL_145;
        }

        v49 = "malformedUIEndEvent";
      }

      else
      {
        v49 = "missingUIStartEvent";
      }

      v15 = (v49 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      goto LABEL_147;
    case 2u:
      v23 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v24;
      if (v23 <= 2)
      {
        if ((v4 & 0x1F) == 0)
        {
          v27 = "missingSystemTaskEventsDonation";
          goto LABEL_118;
        }

        if (v23 == 1)
        {
          v3 = 0x54676E697373696DLL;
          goto LABEL_87;
        }

        v43 = "missingValidRequestIds";
        goto LABEL_128;
      }

      if (v23 == 3)
      {
        v44 = "missingValidTaskId";
        goto LABEL_124;
      }

      if (v23 == 4)
      {
        v27 = "systemTaskEventsExtractionError";
        goto LABEL_118;
      }

      v17 = "malformedSiriExecutionEvent";
      goto LABEL_51;
    case 3u:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v26;
      if (v4)
      {
        v27 = "activityUnsupportedForAppLaunch";
        goto LABEL_118;
      }

      v19 = "appLaunchEventsExtractionError";
      goto LABEL_62;
    case 4u:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v18;
      if ((v4 & 0x1Fu) <= 1)
      {
        if ((v4 & 0x1F) != 0)
        {
          goto LABEL_29;
        }

        v19 = "appIntentEventsExtractionError";
        goto LABEL_62;
      }

      if ((v4 & 0x1F) == 2)
      {
        v39 = "missingAppIntentEventDonation";
        goto LABEL_120;
      }

      v43 = "unsupportedDomainError";
      goto LABEL_128;
    case 5u:
      v32 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v33;
      if (v32 <= 2)
      {
        if ((v4 & 0x1F) == 0)
        {
          v12 = "missingPlayEventDonation";
          goto LABEL_111;
        }

        if (v32 == 1)
        {
          v46 = "missingStopOrPaulseEventDonation";
          goto LABEL_140;
        }

        v44 = "missingAppBundleId";
        goto LABEL_124;
      }

      if ((v4 & 0x1Fu) <= 4)
      {
        if (v32 == 3)
        {
          v34 = "malformedTimingInformation";
          goto LABEL_81;
        }

        v27 = "nowPlayingEventsExtractionError";
LABEL_118:
        v15 = (v27 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001FLL;
        goto LABEL_147;
      }

      if (v32 == 5)
      {
        v48 = "invalidMediaMetadata";
        goto LABEL_138;
      }

      v39 = "missingValidPlayEventDonation";
      goto LABEL_120;
    case 6u:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v38;
      if ((v4 & 1) == 0)
      {
        v12 = "missingMapsEventDonation";
        goto LABEL_111;
      }

      v39 = "missingValidMapsEventDonation";
LABEL_120:
      v15 = (v39 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      goto LABEL_147;
    case 7u:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v28;
      if ((v4 & 0x1F) != 0)
      {
        if ((v4 & 0x1F) == 1)
        {
LABEL_29:
          v15 = 0x800000026923EBF0;
          v3 = 0xD000000000000022;
        }

        else
        {
          v15 = 0x800000026923EC80;
          v3 = 0xD000000000000019;
        }
      }

      else
      {
        v34 = "alarmEventsExtractionError";
LABEL_81:
        v15 = (v34 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001ALL;
      }

      goto LABEL_147;
    case 8u:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v42;
      v17 = "missingHomeKitEventDonation";
      goto LABEL_51;
    case 9u:
      BYTE1(v53[0]) = a1[1];
      v9 = ReliabilityCategory.name.getter();
      v11 = v21;
      LOBYTE(v53[0]) = v4 & 0x1F;
      v3 = EngagementSignalCollectionError.rawValue.getter();
      v15 = v22;
      goto LABEL_147;
    case 0xAu:
      v40 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v41;
      if (v40 <= 3)
      {
        if ((v4 & 0x1Fu) > 1)
        {
          if (v40 == 2)
          {
            v15 = 0x800000026923EFB0;
            v3 = 0xD000000000000024;
          }

          else
          {
            v47 = "featureStoreReadError";
LABEL_135:
            v15 = (v47 - 32) | 0x8000000000000000;
            v3 = 0xD000000000000015;
          }
        }

        else
        {
          if ((v4 & 0x1F) == 0)
          {
            v45 = "malFormedSiriTask";
            goto LABEL_145;
          }

          v15 = 0xEF6B736154697269;
          v3 = 0x53676E697373696DLL;
        }
      }

      else if ((v4 & 0x1Fu) <= 5)
      {
        if (v40 == 4)
        {
          v43 = "featureStoreWriteError";
          goto LABEL_128;
        }

        v48 = "missingStreamIdError";
LABEL_138:
        v15 = (v48 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000014;
      }

      else
      {
        if (v40 == 6)
        {
          v31 = "taskNameExtractionError";
          goto LABEL_132;
        }

        if (v40 != 7)
        {
          v46 = "featoreStoreInteractionFormError";
          goto LABEL_140;
        }

        v19 = "unsupportedTaskEngagementError";
LABEL_62:
        v15 = (v19 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001ELL;
      }

      goto LABEL_147;
    case 0xBu:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v16;
      if ((v4 & 1) == 0)
      {
        v43 = "jsonSerializationError";
        goto LABEL_128;
      }

      v17 = "phoneticalSimilarScoreError";
LABEL_51:
      v15 = (v17 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001BLL;
      goto LABEL_147;
    case 0xCu:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v20;
      v15 = 0x800000026923F270;
      v3 = 0xD00000000000001CLL;
      goto LABEL_147;
    case 0xDu:
      v35 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v36;
      if (v35 > 4)
      {
        if ((v4 & 0x1Fu) <= 6)
        {
          if (v35 == 5)
          {
            v15 = 0x800000026923F130;
            v3 = 0xD000000000000025;
          }

          else
          {
            v15 = 0x800000026923F160;
            v3 = 0xD000000000000034;
          }
        }

        else
        {
          if (v35 != 7)
          {
            if (v35 == 8)
            {
              v15 = 0x800000026923F1D0;
              v3 = 0xD000000000000029;
              goto LABEL_147;
            }

            v37 = "missingUserInitatedFollowupEngagements";
LABEL_143:
            v15 = (v37 - 32) | 0x8000000000000000;
            v3 = 0xD000000000000026;
            goto LABEL_147;
          }

          v46 = "missingValidTaskEngagementForASR";
LABEL_140:
          v15 = (v46 - 32) | 0x8000000000000000;
          v3 = 0xD000000000000020;
        }
      }

      else
      {
        v3 = 0x54676E697373696DLL;
        if ((v4 & 0x1Fu) > 1)
        {
          if (v35 == 2)
          {
LABEL_87:
            v15 = 0xEF656D614E6B7361;
            goto LABEL_147;
          }

          if (v35 != 3)
          {
            v15 = 0x800000026923F100;
            v3 = 0xD000000000000028;
            goto LABEL_147;
          }

          v37 = "missingFeatureForProvidedInteractionId";
          goto LABEL_143;
        }

        if ((v4 & 0x1F) != 0)
        {
          v45 = "missingRequestIds";
LABEL_145:
          v15 = (v45 - 32) | 0x8000000000000000;
          v3 = 0xD000000000000011;
        }

        else
        {
          v15 = 0xED000064496B7361;
        }
      }

LABEL_147:
      v50 = MEMORY[0x26D633FA0](0xD00000000000001ELL, 0x8000000269240EC0);
      v51 = swift_allocObject();
      v51[2] = v9;
      v51[3] = v11;
      v51[4] = v3;
      v51[5] = v15;
      v51[6] = a2;
      v51[7] = a3;
      v53[4] = partial apply for closure #1 in static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:);
      v53[5] = v51;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 1107296256;
      v53[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v53[3] = &block_descriptor_13_0;
      v52 = _Block_copy(v53);

      AnalyticsSendEventLazy();
      _Block_release(v52);

      return;
    case 0xEu:
      v13 = v4 & 0x1F;
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v14;
      if (v13 > 3)
      {
        if ((v4 & 0x1Fu) > 5)
        {
          if (v13 == 6)
          {
            v15 = 0xE90000000000006DLL;
            v3 = 0x72616C4169726953;
          }

          else
          {
            v31 = "SiriAppIntentTranscript";
LABEL_132:
            v15 = (v31 - 32) | 0x8000000000000000;
            v3 = 0xD000000000000017;
          }
        }

        else if (v13 == 4)
        {
          v15 = 0xE700000000000000;
          v3 = 0x6F654769726953;
        }

        else
        {
          v15 = 0xEB00000000636972;
          v3 = 0x656E654769726953;
        }

        goto LABEL_147;
      }

      if ((v4 & 0x1Fu) <= 1)
      {
        if ((v4 & 0x1F) != 0)
        {
          v3 = 0x6973754D69726953;
          v15 = 0xE900000000000063;
        }

        else
        {
          v15 = 0xED00006C6C614365;
          v3 = 0x6E6F685069726953;
        }

        goto LABEL_147;
      }

      if (v13 == 2)
      {
        v15 = 0xEB00000000656761;
        v3 = 0x7373654D69726953;
        goto LABEL_147;
      }

      v44 = "SiriHomeAutomation";
      goto LABEL_124;
    case 0xFu:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v25;
      v15 = 0x8000000269240EE0;
      v3 = 0xD000000000000023;
      goto LABEL_147;
    default:
      LOBYTE(v53[0]) = *a1;
      BYTE1(v53[0]) = v5;
      v9 = ReliabilityCategory.name.getter();
      v11 = v10;
      if (v4 > 3)
      {
        if (v4 > 5)
        {
          if (v4 == 6)
          {
            v15 = 0xEC00000065707954;
            v3 = 0x746E6576456C696ELL;
          }

          else
          {
            v15 = 0x800000026923E870;
            v3 = 0xD000000000000027;
          }
        }

        else if (v4 == 4)
        {
          v44 = "nilClientRequestId";
LABEL_124:
          v15 = (v44 - 32) | 0x8000000000000000;
          v3 = 0xD000000000000012;
        }

        else
        {
          v43 = "nilClientApplicationId";
LABEL_128:
          v15 = (v43 - 32) | 0x8000000000000000;
        }
      }

      else if (v4 > 1)
      {
        if (v4 == 2)
        {
          v15 = 0x800000026923E800;
          v3 = 0xD000000000000010;
        }

        else
        {
          v15 = 0xEC00000064496E6FLL;
          v3 = 0x69737365536C696ELL;
        }
      }

      else if (v4)
      {
        v15 = 0x800000026923E7D0;
        v3 = 0xD000000000000021;
      }

      else
      {
        v12 = "malformedTranscriptEvent";
LABEL_111:
        v15 = (v12 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000018;
      }

      goto LABEL_147;
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t StringProtocol.endIndex<A>(of:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  StringProtocol.range<A>(of:options:range:locale:)();
  v6 = v5;
  v8 = v7;
  outlined destroy of Locale?(v3);
  if (v8)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t StringProtocol.index<A>(of:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = StringProtocol.range<A>(of:options:range:locale:)();
  v7 = v6;
  outlined destroy of Locale?(v3);
  if (v7)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Date.timeIntervalSinceReferenceDate.getter();
  v9 = round(v8 * 1000.0);
  if (v9 >= 0.0)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 1.84467441e19)
      {
        return v9;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.feature);
  (*(v3 + 16))(v6, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    lazy protocol witness table accessor for type Date and conformance Date();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2691F5000, v11, v12, "#SiriTaskEngagementUtils -The dataTime is truncated: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D634770](v14, -1, -1);
    MEMORY[0x26D634770](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t specialized static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - v6;
  if (!a2)
  {
    return 0;
  }

  if (a1 || a2 != 0xE000000000000000)
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v27[2] = 17481;
      v27[3] = 0xE200000000000000;
      v27[0] = a1;
      v27[1] = a2;
      v8 = type metadata accessor for Locale();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol.range<A>(of:options:range:locale:)();
      v10 = v9;
      outlined destroy of Locale?(v7);
      if (v10)
      {
        if (String.count.getter() < 251)
        {
          return a1;
        }

        if (one-time initialization token for feature != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.feature);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = 250;
          _os_log_impl(&dword_2691F5000, v12, v13, "#SiriTaskEngagementUtils - truncating string at char side %ld", v14, 0xCu);
          MEMORY[0x26D634770](v14, -1, -1);
        }

        String.index(_:offsetBy:)();
      }

      else
      {
        if (one-time initialization token for feature != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.feature);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_2691F5000, v16, v17, "#SiriTaskEngagementUtils - truncating string at parse", v18, 2u);
          MEMORY[0x26D634770](v18, -1, -1);
        }
      }

      v19 = String.subscript.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      a1 = MEMORY[0x26D633FC0](v19, v21, v23, v25);

      return a1;
    }
  }

  else
  {

    return 0;
  }

  return a1;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}