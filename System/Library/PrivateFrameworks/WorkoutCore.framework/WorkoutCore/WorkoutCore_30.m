uint64_t Apple_Workout_Core_NotificationUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_WorkoutNotification.units.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify;
}

uint64_t Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotification.clearCreatedAtSinceReferenceDate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_WorkoutNotification.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WorkoutNotification.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutNotificationUnit.key : Apple_Workout_Core_WorkoutNotificationUnit@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutNotificationUnit.key : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.key.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return Apple_Workout_Core_WorkoutNotificationUnit.key.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearKey()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.value.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutNotificationUnit.value.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearValue()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t key path getter for Apple_Workout_Core_WorkoutNotificationUnit.activityType : Apple_Workout_Core_WorkoutNotificationUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v8 + 32), v7, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = a2 + *(v9 + 36);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutNotificationUnit.activityType : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v8, type metadata accessor for Apple_Workout_Core_Activity);
  v9 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_Activity);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v17 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_Activity);
  }

  return Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify;
}

void Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_Activity);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_Activity);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearActivityType()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral : Apple_Workout_Core_WorkoutNotificationUnit@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.modify;
}

void Apple_Workout_Core_WorkoutNotificationUnit.key.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearStringLiteral()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(a1, v5);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        closure #6 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        closure #7 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      closure #4 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else
    {
      closure #5 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }

    else
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v35 = v43;
      outlined init with take of Apple_Workout_Core_Activity(v20, v43, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of Apple_Workout_Core_Activity(v36, v44, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Activity(v20, v44, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Activity(v36, v43, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v2 && (v16 & 0x100) == 0)
  {
    v17 = 0;
    v14 = v15;
    HIDWORD(v13) = v16;
    outlined init with copy of Apple_Workout_Core_Activity?(a2, v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    if (v11 != 1)
    {
      v12 = v17;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    *a2 = v14;
    *(a2 + 8) = BYTE4(v13) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Activity(v20, v44, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Activity(v36, v43, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Activity(v20, v44, type metadata accessor for Apple_Workout_Core_SequenceReset);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_SequenceReset);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Activity(v36, v43, type metadata accessor for Apple_Workout_Core_SequenceReset);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_SequenceReset);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #6 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Activity(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Activity(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #7 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
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
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v14, v22, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v22, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Activity(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
      outlined init with take of Apple_Workout_Core_Activity(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v28, v36, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Activity(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v28, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_Core_Activity?(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          closure #6 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #7 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        closure #4 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #5 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

LABEL_16:
      result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (v4)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (!EnumCaseMultiPayload)
    {
      closure #1 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      goto LABEL_16;
    }

    result = closure #3 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3);
    if (v4)
    {
      return result;
    }
  }

LABEL_17:
  v15 = v3 + *(type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v9 - v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v5, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = v5[8];
    v9 = *v5;
    v10 = v7;
    lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_SequenceReset);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_SequenceReset);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #7 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DataLinkMessage;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessage()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_PublisherSequence(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Workout_Core_MetricsDelta(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricsDelta@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MetricsDelta;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricsDelta()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PublisherSequence.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PublisherSequence.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 3) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_PublisherSequence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized == infix<A>(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PublisherSequence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PublisherSequence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PublisherSequence;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PublisherSequence()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized == infix<A>(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_SequenceReset.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_SequenceReset.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_Core_PublisherSequence(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_SequenceReset(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_SequenceReset@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_SequenceReset(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_SequenceReset;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_SequenceReset(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_SequenceReset(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_SequenceReset()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_SequenceReset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
}

uint64_t closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v16 + 24), v10, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v10, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v10, v15, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v15, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationUpdate()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_WorkoutNotification.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }

        else if (result == 4)
        {
          v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(*(v0 + 16) + 16))
  {
    type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
    v4 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
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
    result = closure #1 in Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)(v0);
    if (!v4)
    {
      v5 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutNotification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  v4 = a2 + *(a1 + 28);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 32);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutNotification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutNotification;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutNotification()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_Command._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
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

          v4 = v0;
          v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24);
          goto LABEL_15;
        }

        lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        v4 = v0;
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)();
            break;
          case 5:
            v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36);
LABEL_15:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  type metadata accessor for Apple_Workout_Core_Activity(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3);
      closure #3 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3);
      v9 = v3 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v14 + 32), v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13, type metadata accessor for Apple_Workout_Core_Activity);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_Activity);
}

uint64_t closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_DataLinkMessage.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutNotificationUnit@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  result = (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutNotificationUnit;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Command@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_DataLinkMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutNotificationUnit()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_DataLinkMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WorkoutNotificationUnit.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 != 1)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 2:
        if (v18 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 3:
        if (v18 != 3)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 4:
        if (v18 != 4)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 5:
        if (v18 != 5)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 6:
        if (v18 != 6)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 7:
        if (v18 != 7)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 8:
        if (v18 != 8)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 9:
        if (v18 != 9)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 10:
        if (v18 != 10)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 11:
        if (v18 != 11)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 12:
        if (v18 != 12)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 13:
        if (v18 != 13)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 14:
        if (v18 != 14)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 15:
        if (v18 != 15)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 16:
        if (v18 != 16)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      default:
        if (!v18)
        {
          goto LABEL_6;
        }

        goto LABEL_67;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_67;
  }

LABEL_6:
  v20 = v15;
  v21 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v22 = v21[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_67;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v28 = v21;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_67;
  }

  v30 = v21[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_67;
    }
  }

  v52 = v21;
  v35 = v21[8];
  v36 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v35, v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v37 = a2 + v35;
  v38 = v36;
  outlined init with copy of Apple_Workout_Core_Activity?(v37, &v17[v36], &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v39 = *(v5 + 48);
  if (v39(v17, 1, v4) == 1)
  {
    if (v39(&v17[v38], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_60;
    }

LABEL_26:
    outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_67;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v17, v12, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v39(&v17[v38], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_Activity);
    goto LABEL_26;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v17[v38], v8, type metadata accessor for Apple_Workout_Core_Activity);
  v40 = specialized static Apple_Workout_Core_Activity.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_60:
  v41 = v52;
  v42 = v52[9];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (!v44)
  {
    if (!v46)
    {
      goto LABEL_65;
    }

LABEL_67:
    v49 = 0;
    return v49 & 1;
  }

  if (!v46)
  {
    goto LABEL_67;
  }

  if (*v43 != *v45 || v44 != v46)
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v41 = v52;
    if ((v47 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

LABEL_65:
  v48 = v41[5];
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v49 & 1;
}

uint64_t specialized static Apple_Workout_Core_WorkoutNotification.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (*&v4 != v5)
    {
      return 0;
    }

LABEL_8:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16NotificationUnitV_Tt1g5(*(a1 + 2), *(a2 + 16)) & 1) == 0 || a1[3] != *(a2 + 24))
    {
      return 0;
    }

    v6 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
    v7 = *(v6 + 32);
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

    v12 = *(v6 + 28);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        if (*&v4 != 6)
        {
          return 0;
        }
      }

      else if (*&v4 != 7)
      {
        return 0;
      }
    }

    else if (v5 == 4)
    {
      if (*&v4 != 4)
      {
        return 0;
      }
    }

    else if (*&v4 != 5)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (*&v4 != 2)
      {
        return 0;
      }
    }

    else if (*&v4 != 3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    if (*&v4 != 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v4 == 0.0)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_Core_NotificationUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR);
  v9 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v49 - v10;
  v11 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v49 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v52 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v25 = *(v52 + 20);
  v26 = *(v21 + 56);
  v57 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v25, v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v27 = v58 + v25;
  v28 = v58;
  outlined init with copy of Apple_Workout_Core_Activity?(v27, &v24[v26], &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) != 1)
  {
    outlined init with copy of Apple_Workout_Core_Activity?(v24, v19, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    if (v29(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Apple_Workout_Core_Activity(&v24[v26], v15, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      v33 = specialized static Apple_Workout_Core_WorkoutNotification.== infix(_:_:)(v19, v15);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v15, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      outlined destroy of Apple_Workout_Core_Activity?(v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
LABEL_6:
    v30 = &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMR;
    v32 = v24;
LABEL_15:
    outlined destroy of Apple_Workout_Core_Activity?(v32, v30, v31);
    goto LABEL_16;
  }

  if (v29(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_Activity?(v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
LABEL_8:
  v34 = *(v52 + 24);
  v35 = *(v53 + 48);
  v36 = v56;
  outlined init with copy of Apple_Workout_Core_Activity?(v57 + v34, v56, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(v28 + v34, v36 + v35, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v37 = v55;
  v38 = *(v54 + 48);
  if (v38(v36, 1, v55) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
LABEL_21:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v51;
  outlined init with copy of Apple_Workout_Core_Activity?(v36, v51, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
LABEL_13:
    v30 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR;
LABEL_14:
    v32 = v36;
    goto LABEL_15;
  }

  v42 = v50;
  outlined init with take of Apple_Workout_Core_Activity(v36 + v35, v50, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v43 = *(v37 + 20);
  v44 = *(v39 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {
    v46 = *(v39 + v43);

    v47 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v44, v45);

    if (!v47)
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v30 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd;
      v31 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v17, v12, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
LABEL_6:
    outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v21 = specialized static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v86 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v8 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v79 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v81 = &v75 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v83 = (&v75 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v80 = (&v75 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v75 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v75 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v75 - v41;
  v43 = &v75 + *(v40 + 56) - v41;
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v85, &v75 - v41, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v44 = v43;
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v86, v43, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v46 = v80;
        outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v80, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v47 = v76;
          outlined init with take of Apple_Workout_Core_Activity(v44, v76, type metadata accessor for Apple_Workout_Core_MetricsDelta);
          v48 = specialized static Apple_Workout_Core_MetricsDelta.== infix(_:_:)(v46, v47);
          v49 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v47, type metadata accessor for Apple_Workout_Core_MetricsDelta);
          v50 = v46;
LABEL_25:
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v50, v49);
          goto LABEL_26;
        }

        v57 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
        v58 = v46;
        goto LABEL_33;
      }

      v60 = v83;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v83, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v61 = v79;
        outlined init with take of Apple_Workout_Core_Activity(v43, v79, type metadata accessor for Apple_Workout_Core_SequenceReset);
        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*v60, *v61))
        {
          v62 = *(v75 + 20);
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          LOBYTE(v62) = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v61, type metadata accessor for Apple_Workout_Core_SequenceReset);
          if (v62)
          {
            v63 = type metadata accessor for Apple_Workout_Core_SequenceReset;
            v64 = v60;
LABEL_41:
            outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v64, v63);
            outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
            v48 = 1;
            return v48 & 1;
          }
        }

        else
        {
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v61, type metadata accessor for Apple_Workout_Core_SequenceReset);
        }

        v73 = type metadata accessor for Apple_Workout_Core_SequenceReset;
        v74 = v60;
        goto LABEL_45;
      }

      v57 = type metadata accessor for Apple_Workout_Core_SequenceReset;
      v58 = v60;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v35 = v81;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v81, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v55 = v43;
        v56 = v77;
        outlined init with take of Apple_Workout_Core_Activity(v55, v77, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
        v48 = specialized static Apple_Workout_Core_MirroredHostMessage.== infix(_:_:)(v35, v56);
        v53 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
LABEL_23:
        v49 = v53;
        v54 = v56;
        goto LABEL_24;
      }

      v66 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
    }

    else
    {
      v35 = v82;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v82, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v65 = v43;
        v56 = v78;
        outlined init with take of Apple_Workout_Core_Activity(v65, v78, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
        v48 = specialized static Apple_Workout_Core_MirroredClientMessage.== infix(_:_:)(v35, v56);
        v53 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
        goto LABEL_23;
      }

      v66 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
    }

LABEL_32:
    v57 = v66;
    v58 = v35;
    goto LABEL_33;
  }

  v51 = v16;
  v52 = v84;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v37, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Activity(v44, v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v68 = *(v51 + 20);
      v69 = *&v37[v68];
      v70 = *&v19[v68];
      if (v69 == v70 || (v71 = *&v37[v68], , , v72 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v69, v70), , , v72))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
          v64 = v37;
          v63 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
          goto LABEL_41;
        }
      }

      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v74 = v37;
      v73 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
LABEL_45:
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v74, v73);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      goto LABEL_35;
    }

    v57 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
    v58 = v37;
LABEL_33:
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v58, v57);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v35, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_Core_Activity(v44, v52, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      v48 = specialized static Apple_Workout_Core_NotificationUpdate.== infix(_:_:)(v35, v52);
      v53 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
      v49 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
      v54 = v52;
LABEL_24:
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v54, v53);
      v50 = v35;
      goto LABEL_25;
    }

    v66 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v42, v32, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_34:
    outlined destroy of Apple_Workout_Core_Activity?(v42, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMR);
LABEL_35:
    v48 = 0;
    return v48 & 1;
  }

  v59 = *(v44 + 8);
  v48 = specialized == infix<A>(_:_:)(*v32, v32[8], *v44);
LABEL_26:
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  return v48 & 1;
}

uint64_t specialized static Apple_Workout_Core_MetricsDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v18 = a1;
  v19 = a2;
  v34[0] = v17;
  v34[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v18 + v20, v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(v19 + v20, &v16[v21], &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
LABEL_14:
      v33 = *(v34[0] + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v16, v12, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
LABEL_7:
    v23 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd;
    v24 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR;
LABEL_8:
    outlined destroy of Apple_Workout_Core_Activity?(v16, v23, v24);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v16[v21], v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v27 = *(v4 + 20);
  v28 = *&v12[v27];
  v29 = *&v8[v27];
  if (v28 != v29)
  {
    v30 = *&v12[v27];

    v31 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v28, v29);

    if (!v31)
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v23 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd;
      v24 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_Activity?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v32)
  {
    goto LABEL_14;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined init with take of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_Command] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata completion function for Apple_Workout_Core_DataLinkMessage.OneOf_Message()
{
  result = type metadata accessor for Apple_Workout_Core_MetricsPublisher(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_NotificationUpdate(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_MetricsDelta(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_Core_SequenceReset(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(319);
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

void type metadata completion function for Apple_Workout_Core_MetricsDelta()
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_PublisherSequence], type metadata accessor for Apple_Workout_Core_PublisherSequence, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MetricsPublisher?, type metadata accessor for Apple_Workout_Core_MetricsPublisher, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_Core_PublisherSequence()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_NotificationUpdate()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutNotification?, type metadata accessor for Apple_Workout_Core_WorkoutNotification, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MetricsPublisher?, type metadata accessor for Apple_Workout_Core_MetricsPublisher, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutNotification()
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_WorkoutNotificationUnit], type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutNotificationUnit()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?, type metadata accessor for Apple_Workout_Core_Activity, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
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

uint64_t outlined init with copy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.lowerBound.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.upperBound.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

double Apple_Workout_Core_HeartRateTargetZone.lowerBound.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_HeartRateTargetZone.upperBound.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_WorkoutStep.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
}

uint64_t Apple_Workout_Core_WorkoutStep.type.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.goal.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_Goal);
  v15 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.displayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

uint64_t Apple_Workout_Core_WorkoutStep.activity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_Activity);
  v15 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.uuid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

uint64_t Apple_Workout_Core_WorkoutStep.targetZones.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

uint64_t Apple_Workout_Core_WorkoutStep.hrTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v15 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.powerTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v15 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v15 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v15 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.version.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 4) = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.uuid.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t Apple_Workout_Core_WorkoutStep.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Goal);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = v9[6];
  v13 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v14 = *(*(v13 - 8) + 56);
  v14(a1 + v12, 1, 1, v13);
  v14(a1 + v9[7], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = a1 + *(v9 + 36);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

BOOL Apple_Workout_Core_WorkoutStep.hasDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t Apple_Workout_Core_WorkoutStep.displayName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Apple_Workout_Core_WorkoutStep.targetZones.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v2 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t Apple_Workout_Core_WorkoutStep.version.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_WorkoutStep.hrTargetZone.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v8, a2, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = a2 + v11[5];
  UnknownStorage.init()();
  v14 = a2 + v11[6];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v11[7];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a2 + v11[8];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  return result;
}

BOOL Apple_Workout_Core_WorkoutStep.hasOptionalHrTargetZone.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v12, a1, a2);
  return v16;
}

uint64_t Apple_Workout_Core_WorkoutStep.powerTargetZone.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v8, a2, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  v14 = a2 + *(v11 + 20);
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_CyclingPowerZone.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = &a1[*(v2 + 24)];
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Apple_Workout_Core_Zone();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Workout_Core_CyclingPowerZone.zone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_Zone);
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_PowerZoneTarget.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PowerZoneCustom.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  result = UnknownStorage.init()();
  v5 = a1 + *(v2 + 28);
  *v5 = 0;
  *(v5 + 4) = 256;
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of Apple_Workout_Core_Goal?(v2, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v2, a2);
  v5 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_CyclingPowerZone.zone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 28), v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_Zone();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Zone);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_TargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = a1 + *(v2 + 32);
  return UnknownStorage.init()();
}

unint64_t Apple_Workout_Core_StepType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_StepType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_ZoneType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ZoneType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_HeartRateZoneType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_HeartRateZoneType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_HeartRateZoneType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_StepType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateZoneType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_StepType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 60), v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_IntervalsMetricsPublisher.thisStep : Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 60), v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_IntervalsMetricsPublisher.thisStep : Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v9 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  return Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify;
}

BOOL Apple_Workout_Core_IntervalsMetricsPublisher.hasThisStep.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 60), v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearThisStep()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 64), v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_IntervalsMetricsPublisher.nextStep : Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 64), v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_IntervalsMetricsPublisher.nextStep : Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v9 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  return Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.modify;
}

void Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v5, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_IntervalsMetricsPublisher.hasNextStep.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 64), v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearNextStep()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

double Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearStartDateSinceReferenceDate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearActiveEnergy()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 76);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearCurrentStepIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76);
  *v1 = 0;
  *(v1 + 4) = 1;
}

double Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 80);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearDistanceGoalAchievedDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 56);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 56);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *(a1 + 60) = 0u;
  v3 = a1 + v2[14];
  UnknownStorage.init()();
  v4 = v2[15];
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  result = (v6)(a1 + v2[16], 1, 1, v5);
  v8 = a1 + v2[17];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1 + v2[18];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1 + v2[19];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v2[20];
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.type : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

void (*Apple_Workout_Core_WorkoutStep.type.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStep.type.modify;
}

void Apple_Workout_Core_WorkoutStep.type.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.goal : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_Goal);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_Goal);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.goal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = v9[6];
    v21 = type metadata accessor for Apple_Workout_Core_HKQuantity();
    v22 = *(*(v21 - 8) + 56);
    v22(v14 + v20, 1, 1, v21);
    v22(v14 + v9[7], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Goal);
  }

  return Apple_Workout_Core_WorkoutStep.goal.modify;
}

void Apple_Workout_Core_WorkoutStep.goal.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_Goal);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_Goal);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Goal);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_Goal);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.targetZones : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.targetZones : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

void (*Apple_Workout_Core_WorkoutStep.targetZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_WorkoutStep.targetZones.modify;
}

void Apple_Workout_Core_WorkoutStep.targetZones.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.activity : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_Activity);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_Activity);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.activity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v19 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Activity);
  }

  return Apple_Workout_Core_WorkoutStep.activity.modify;
}

void Apple_Workout_Core_WorkoutStep.activity.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_Activity);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Activity);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStep.clearGoal()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.uuid : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.uuid : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = v4;
  v12[1] = v3;
}

void (*Apple_Workout_Core_WorkoutStep.uuid.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return Apple_Workout_Core_WorkoutStep.uuid.modify;
}

void Apple_Workout_Core_WorkoutStep.uuid.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = (v10 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
    swift_beginAccess();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = (v21 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v3;
    v27[1] = v5;
  }

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.hrTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.hrTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.hrTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.hrTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.powerTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.powerTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.powerTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.powerTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.displayName : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.displayName : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = v4;
  v12[1] = v3;
}

void (*Apple_Workout_Core_WorkoutStep.displayName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return Apple_Workout_Core_WorkoutStep.displayName.modify;
}

void Apple_Workout_Core_WorkoutStep.displayName.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = (v10 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
    swift_beginAccess();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = (v21 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v3;
    v27[1] = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStep.clearDisplayName()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = (v5 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.version : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.version : Apple_Workout_Core_WorkoutStep(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 4) = 0;
  return result;
}

void (*Apple_Workout_Core_WorkoutStep.version.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStep.version.modify;
}

void Apple_Workout_Core_WorkoutStep.version.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 4) = 0;

  free(v1);
}

BOOL Apple_Workout_Core_WorkoutStep.hasVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStep.clearVersion()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 4) = 1;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.optionalHrTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.powerTargetZone : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v10 + v11, v9, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v9, a3, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  v14 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  v15 = a3 + *(v12 + 20);
  UnknownStorage.init()();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v9, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v14, v18, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v7 + v19, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v13, v18, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v18, v23 + v31, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStep.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_WorkoutStep.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void Apple_Workout_Core_TargetZone.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_TargetZone.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_TargetZone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_TargetZone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearLowerBound()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.upperBound.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateTargetZone.upperBound.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearUpperBound()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearDefaultZoneIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0) + 24);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
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
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      return Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify;
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v15 = v12 + *(v9 + 24);
  UnknownStorage.init()();
  return Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_PowerZonesAlertTargetZone.automatic : Apple_Workout_Core_PowerZonesAlertTargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v10 = a2 + *(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) + 24);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
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
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  return Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.custom.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v13 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  v10 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v10 + 24);
  result = UnknownStorage.init()();
  v12 = a1 + *(v10 + 28);
  *v12 = 0;
  *(v12 + 4) = 256;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_PowerZonesAlertTargetZone.target : Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, &v17 - v13, a6);
  outlined destroy of Apple_Workout_Core_Goal?(a2, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v14, a2, a7);
  v15 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
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
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    v16 = v12 + *(v9 + 28);
    *v16 = 0;
    *(v16 + 4) = 256;
    return Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  return Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify;
}

void Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[3], v10, a5);
    outlined destroy of Apple_Workout_Core_Goal?(v13, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v11, a6);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(**a1, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Apple_Workout_Core_PowerZoneAutomatic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void Apple_Workout_Core_PowerZoneTarget.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.zones.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_PowerZoneTarget.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t key path getter for Apple_Workout_Core_CyclingPowerZone.zone : Apple_Workout_Core_CyclingPowerZone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 28), v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Zone();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_Zone);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v11 = a2 + *(v9 + 32);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_CyclingPowerZone.zone : Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_Zone);
  v9 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_Zone);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_CyclingPowerZone.zone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Zone();
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
  v15 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Zone);
  }

  return Apple_Workout_Core_CyclingPowerZone.zone.modify;
}

void Apple_Workout_Core_CyclingPowerZone.zone.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_Zone);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v5, type metadata accessor for Apple_Workout_Core_Zone);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_Zone);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_CyclingPowerZone.hasZone.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 28), v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_Zone();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_CyclingPowerZone.clearZone()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Zone();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v4 = (v1 + *(result + 28));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*Apple_Workout_Core_PowerZoneCustom.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return Apple_Workout_Core_PowerZoneCustom.type.modify;
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerZoneCustom.clearType()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)()
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
      case 1:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        continue;
      case 2:
        closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 3:
        closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 12:
        v5 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
        goto LABEL_13;
      case 13:
        v4 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
        goto LABEL_13;
      case 14:
        v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        continue;
      case 15:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        continue;
      case 17:
        v6 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
LABEL_13:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 16))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 24))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 32))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 40))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 48))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 56))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 64))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3);
      closure #4 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3);
      closure #5 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3);
      if (*(v3 + 72))
      {
        dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }

      closure #6 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3);
      v9 = v3 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 56);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 60), v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
}

uint64_t closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 64), v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
}

uint64_t closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v3 = (a1 + *(result + 80));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_IntervalsMetricsPublisher;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = Apple_Workout_Core_WorkoutStep._StorageClass.init()();
  static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance = result;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = Apple_Workout_Core_MetricsPublisher._StorageClass.init()();
  static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance = result;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  v5 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 1, 1, v5);
  static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  v5 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime) = 0;
  *(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance) = 0;
  *(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace) = 0;
  v7 = v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount) = 0;
  *(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference) = 0;
  result = (v6)(v3 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, 1, 1, v5);
  static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init()();
  static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance = result;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v2 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v7 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v10 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v0 + v9, 1, 1, v10);
  v12 = (v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  *v13 = 0;
  *(v13 + 4) = 1;
  v8(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, 1, 1, v7);
  v11(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, 1, 1, v10);
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v64 - v14;
  *(v1 + 16) = 0;
  v65 = (v1 + 16);
  *(v1 + 24) = 1;
  v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v66 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v16 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v68 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v69 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v18 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v70 = v19;
  v71 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v21 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v1 + v20, 1, 1, v21);
  v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v72 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v24 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v1 + v23, 1, 1, v24);
  v26 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  v74 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  *v26 = 0;
  v26[1] = 0;
  v27 = v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  v75 = v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  *v27 = 0;
  *(v27 + 4) = 1;
  v76 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  v22(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, 1, 1, v21);
  v78 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  v25(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, 1, 1, v24);
  swift_beginAccess();
  v28 = *(a1 + 16);
  LOBYTE(v22) = *(a1 + 24);
  v29 = v65;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 24) = v22;
  v30 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v31 = v67;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v30, v67, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v32 = v66;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v31, v1 + v32, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v68;
  swift_beginAccess();
  v36 = *(v1 + v35);
  *(v1 + v35) = v34;

  v37 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v38 = v73;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v37, v73, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v39 = v69;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v38, v1 + v39, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  swift_endAccess();
  v40 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = v70;
  swift_beginAccess();
  v44 = v43[1];
  *v43 = v41;
  v43[1] = v42;

  v45 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  v46 = v77;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v45, v77, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v47 = v71;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v46, v1 + v47, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v49 = v79;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v48, v79, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v50 = v72;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v49, v1 + v50, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  swift_endAccess();
  v51 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = v74;
  swift_beginAccess();
  v55 = v54;
  v56 = v54[1];
  *v55 = v53;
  v55[1] = v52;

  v57 = a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  LODWORD(v56) = *v57;
  LOBYTE(v57) = *(v57 + 4);
  v58 = v75;
  swift_beginAccess();
  *v58 = v56;
  *(v58 + 4) = v57;
  v59 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v59, v46, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v60 = v76;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v46, v1 + v60, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v61, v49, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);

  v62 = v78;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v49, v1 + v62, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with take of Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.deinit()
{
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid + 8);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName + 8);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.__deallocating_deinit()
{
  v0 = *Apple_Workout_Core_WorkoutStep._StorageClass.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v12);
    *(v4 + v8) = v11;
  }

  return closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
          }

          else if (result == 2)
          {
            closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
          }
        }

        else if (result == 3)
        {
          closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
        }

        else
        {
          if (result != 4)
          {
            v11 = MEMORY[0x277D217D8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid;
LABEL_17:
            closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
            goto LABEL_5;
          }

          closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
        }
      }

      else if (result > 9)
      {
        switch(result)
        {
          case 10:
            closure #9 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
            break;
          case 11:
            closure #10 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
            break;
          case 12:
            closure #11 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 6:
            closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
            break;
          case 8:
            closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)();
            break;
          case 9:
            v11 = MEMORY[0x277D217D0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName;
            goto LABEL_17;
          default:
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Goal(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_TargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  result = closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v13 = *(a1 + 16), v14 = *(a1 + 24), lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
    if (!v4)
    {
      v10 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
      swift_beginAccess();
      if (*(*(a1 + v10) + 16))
      {
        type metadata accessor for Apple_Workout_Core_TargetZone(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      v11 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
      swift_beginAccess();
      v12 = *v11;
      v11[1];

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

      closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1);
      closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1);
      closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      return closure #8 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Goal);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Goal);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Activity);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Activity);
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
}

BOOL closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v174 = *(v4 - 8);
  v5 = *(v174 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR);
  v8 = *(*(v171 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v171);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v170 = &v160 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v163 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v165 = &v160 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v168 = &v160 - v20;
  MEMORY[0x28223BE20](v19);
  v173 = &v160 - v21;
  v22 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v23 = *(v22 - 8);
  v178 = v22;
  v179 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v169 = (&v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR);
  v26 = *(*(v177 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v177);
  v166 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v176 = &v160 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v164 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v167 = &v160 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v172 = (&v160 - v37);
  MEMORY[0x28223BE20](v36);
  v185 = &v160 - v38;
  v39 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v182 = *(v39 - 8);
  v183 = v39;
  v40 = *(v182 + 64);
  MEMORY[0x28223BE20](v39);
  v175 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v42 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v184 = &v160 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v180 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v187 = &v160 - v48;
  v49 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v189 = *(v49 - 8);
  v190 = v49;
  v50 = *(v189 + 64);
  MEMORY[0x28223BE20](v49);
  v186 = &v160 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMR);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v160 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v188 = (&v160 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  v61 = &v160 - v60;
  swift_beginAccess();
  v62 = *(a1 + 16);
  swift_beginAccess();
  v63 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v62 == v63)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v63 > 1)
  {
    if (v63 == 2)
    {
      if (v62 != 2)
      {
        return 0;
      }
    }

    else if (v62 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!v63)
    {
      if (!v62)
      {
        goto LABEL_7;
      }

      return 0;
    }

    if (v62 != 1)
    {
      return 0;
    }
  }

LABEL_7:
  v161 = v7;
  v162 = v4;
  v160 = v11;
  v64 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v65 = a1 + v64;
  v66 = a2;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v65, v61, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v67 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v68 = *(v52 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v61, v55, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2 + v67, &v55[v68], &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v69 = v190;
  v70 = *(v189 + 48);
  if (v70(v55, 1, v190) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v61, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    if (v70(&v55[v68], 1, v69) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v55, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v71 = v188;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v55, v188, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if (v70(&v55[v68], 1, v69) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v61, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v71, type metadata accessor for Apple_Workout_Core_Goal);
LABEL_15:
    outlined destroy of Apple_Workout_Core_Goal?(v55, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMR);
LABEL_25:

    return 0;
  }

  v72 = v186;
  outlined init with take of Apple_Workout_Core_Goal(&v55[v68], v186, type metadata accessor for Apple_Workout_Core_Goal);

  v73 = specialized static Apple_Workout_Core_Goal.== infix(_:_:)(v71, v72);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v72, type metadata accessor for Apple_Workout_Core_Goal);
  outlined destroy of Apple_Workout_Core_Goal?(v61, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v71, type metadata accessor for Apple_Workout_Core_Goal);
  outlined destroy of Apple_Workout_Core_Goal?(v55, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if ((v73 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v74 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v75 = *(a1 + v74);
  v76 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v77 = *(v66 + v76);

  v78 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_TargetZoneV_Tt1g5(v75, v77);

  if ((v78 & 1) == 0)
  {
    goto LABEL_25;
  }

  v79 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v80 = a1;
  v81 = v187;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v79, v187, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v82 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v83 = *(v181 + 48);
  v84 = v184;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v81, v184, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v66 + v82, v84 + v83, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v85 = v183;
  v86 = *(v182 + 48);
  if (v86(v84, 1, v183) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v81, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    v87 = v86(v84 + v83, 1, v85);
    v88 = v185;
    if (v87 == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v84, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_31;
    }

LABEL_29:
    v92 = &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd;
    v93 = &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR;
LABEL_40:
    v108 = v84;
LABEL_41:
    outlined destroy of Apple_Workout_Core_Goal?(v108, v92, v93);
    goto LABEL_25;
  }

  v90 = v180;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v84, v180, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v91 = v86(v84 + v83, 1, v85);
  v88 = v185;
  if (v91 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v187, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v90, type metadata accessor for Apple_Workout_Core_Activity);
    goto LABEL_29;
  }

  v94 = v84 + v83;
  v95 = v175;
  outlined init with take of Apple_Workout_Core_Goal(v94, v175, type metadata accessor for Apple_Workout_Core_Activity);
  v96 = static Apple_Workout_Core_Activity.== infix(_:_:)(v90, v95);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v95, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Goal?(v187, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v90, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Goal?(v84, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v96 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  v97 = (v80 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = (v66 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  if ((v98 != *v100 || v99 != v100[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v101 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v80 + v101, v88, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v102 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  v84 = v176;
  v103 = *(v177 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v88, v176, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v66 + v102, v84 + v103, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v104 = v178;
  v105 = v179 + 48;
  v106 = *(v179 + 48);
  if (v106(v84, 1, v178) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v88, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    if (v106(v84 + v103, 1, v104) == 1)
    {
      v179 = v105;
      outlined destroy of Apple_Workout_Core_Goal?(v84, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v107 = v172;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v84, v172, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if (v106(v84 + v103, 1, v104) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v88, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v107, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
LABEL_39:
    v92 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd;
    v93 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR;
    goto LABEL_40;
  }

  v179 = v105;
  v109 = v84 + v103;
  v110 = v169;
  outlined init with take of Apple_Workout_Core_Goal(v109, v169, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v111 = specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(v107, v110);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v110, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v88, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v107, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v84, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((v111 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_43:
  v112 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v113 = v173;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v80 + v112, v173, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v114 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v115 = v170;
  v116 = *(v171 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v113, v170, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v117 = v66 + v114;
  v118 = v115;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v117, v115 + v116, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v119 = v174 + 48;
  v120 = *(v174 + 48);
  v121 = v162;
  if (v120(v118, 1, v162) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v113, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    if (v120(v118 + v116, 1, v121) == 1)
    {
      v190 = v106;
      v174 = v119;
      outlined destroy of Apple_Workout_Core_Goal?(v118, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v122 = v168;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v118, v168, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if (v120(v118 + v116, 1, v121) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v173, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v122, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
LABEL_48:
    v92 = &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd;
    v93 = &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR;
    v108 = v118;
    goto LABEL_41;
  }

  v190 = v106;
  v174 = v119;
  v123 = v118 + v116;
  v124 = v161;
  outlined init with take of Apple_Workout_Core_Goal(v123, v161, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v125 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(v122, v124);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v124, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v173, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v122, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v118, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((v125 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_50:
  v126 = (v80 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v127 = *v126;
  v128 = v126[1];
  v129 = (v66 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v130 = v129[1];
  if (v128)
  {
    if (!v130 || (v127 != *v129 || v128 != v130) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v130)
  {
    goto LABEL_25;
  }

  v131 = (v80 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version);
  swift_beginAccess();
  v132 = *v131;
  v133 = *(v131 + 4);
  v134 = v66 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v135 = *(v134 + 4);
  if (v133)
  {
    if ((*(v134 + 4) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((*(v134 + 4) & 1) != 0 || v132 != *v134)
  {
    goto LABEL_25;
  }

  v136 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  v137 = v167;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v80 + v136, v167, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v138 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  v139 = *(v177 + 48);
  v140 = v166;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v137, v166, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v141 = v66 + v138;
  v142 = v139;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v141, v140 + v139, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v143 = v178;
  v144 = v190;
  if (v190(v140, 1, v178) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v137, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    if (v144(v140 + v142, 1, v143) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v140, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v145 = v164;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v140, v164, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if (v144(v140 + v142, 1, v143) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v167, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v145, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
LABEL_67:
    v92 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd;
    v93 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR;
    v108 = v140;
    goto LABEL_41;
  }

  v146 = v145;
  v147 = v169;
  outlined init with take of Apple_Workout_Core_Goal(v140 + v142, v169, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v148 = specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(v146, v147);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v147, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v167, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v146, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v140, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((v148 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_69:
  v149 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  v150 = v165;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v80 + v149, v165, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v151 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  v152 = *(v171 + 48);
  v153 = v150;
  v154 = v160;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v153, v160, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v66 + v151, v154 + v152, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v155 = v162;
  if (v120(v154, 1, v162) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v165, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    if (v120(v154 + v152, 1, v155) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v154, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      return 1;
    }

LABEL_75:
    outlined destroy of Apple_Workout_Core_Goal?(v154, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR);
    return 0;
  }

  v156 = v163;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v154, v163, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if (v120(v154 + v152, 1, v155) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v165, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v156, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    goto LABEL_75;
  }

  v157 = v154 + v152;
  v158 = v161;
  outlined init with take of Apple_Workout_Core_Goal(v157, v161, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v159 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(v156, v158);

  outlined destroy of Apple_Workout_Core_WorkoutStep(v158, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v165, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v156, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v154, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return (v159 & 1) != 0;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStep()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_TargetZone.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_TargetZone.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v3 = v0 + *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_TargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_TargetZone;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TargetZone()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v5 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
LABEL_15:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      closure #2 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v0);
      closure #3 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v0);
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HeartRateTargetZone@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_HeartRateTargetZone;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateTargetZone()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
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
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v20, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
      v33 = v48;
    }

    else
    {
      outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
      v35 = v43;
      outlined init with take of Apple_Workout_Core_Goal(v20, v43, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      outlined init with take of Apple_Workout_Core_Goal(v35, v28, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v28, v36, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v36, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of Apple_Workout_Core_Goal(v36, v44, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Goal?(v42, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v39, v40, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_Goal(v20, v44, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
      outlined init with take of Apple_Workout_Core_Goal(v35, v28, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
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
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v28, v36, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v36, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_Goal(v36, v43, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v28, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
    v40 = v42;
    outlined destroy of Apple_Workout_Core_Goal?(v42, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v39, v40, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}