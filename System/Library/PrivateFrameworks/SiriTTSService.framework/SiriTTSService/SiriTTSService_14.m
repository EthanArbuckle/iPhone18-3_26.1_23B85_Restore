uint64_t sub_1B1BAE53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E40, &qword_1B1C40490);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B1A90C20(v22, &qword_1EB763E40, &qword_1B1C40490);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7638D8, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E40, &qword_1B1C40490);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E40, &qword_1B1C40490);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E40, &qword_1B1C40490);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E40, &qword_1B1C40490);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E40, &qword_1B1C40490);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAEA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E48, &qword_1B1C40498);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B1A90C20(v22, &qword_1EB763E48, &qword_1B1C40498);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7638F0, type metadata accessor for Realtime_V1_ConversationItemTruncated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E48, &qword_1B1C40498);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E48, &qword_1B1C40498);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E48, &qword_1B1C40498);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E48, &qword_1B1C40498);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E48, &qword_1B1C40498);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAEF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E50, &qword_1B1C404A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B1A90C20(v22, &qword_1EB763E50, &qword_1B1C404A0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763908, type metadata accessor for Realtime_V1_ConversationItemDeleted);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E50, &qword_1B1C404A0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E50, &qword_1B1C404A0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E50, &qword_1B1C404A0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E50, &qword_1B1C404A0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E50, &qword_1B1C404A0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAF424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseCreated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E58, &qword_1B1C404A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B1A90C20(v22, &qword_1EB763E58, &qword_1B1C404A8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763980, type metadata accessor for Realtime_V1_ResponseCreated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E58, &qword_1B1C404A8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E58, &qword_1B1C404A8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E58, &qword_1B1C404A8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E58, &qword_1B1C404A8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E58, &qword_1B1C404A8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAF91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E60, &qword_1B1C404B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B1A90C20(v22, &qword_1EB763E60, &qword_1B1C404B0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763998, type metadata accessor for Realtime_V1_ResponseDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E60, &qword_1B1C404B0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E60, &qword_1B1C404B0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E60, &qword_1B1C404B0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E60, &qword_1B1C404B0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E60, &qword_1B1C404B0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAFE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E68, &qword_1B1C404B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B1A90C20(v22, &qword_1EB763E68, &qword_1B1C404B8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E68, &qword_1B1C404B8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E68, &qword_1B1C404B8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E68, &qword_1B1C404B8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E68, &qword_1B1C404B8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E68, &qword_1B1C404B8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E70, &qword_1B1C404C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B1A90C20(v22, &qword_1EB763E70, &qword_1B1C404C0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E70, &qword_1B1C404C0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E70, &qword_1B1C404C0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E70, &qword_1B1C404C0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E70, &qword_1B1C404C0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E70, &qword_1B1C404C0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E78, &qword_1B1C404C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B1A90C20(v22, &qword_1EB763E78, &qword_1B1C404C8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E78, &qword_1B1C404C8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E78, &qword_1B1C404C8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E78, &qword_1B1C404C8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E78, &qword_1B1C404C8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E78, &qword_1B1C404C8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB0CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseContentPartDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E80, &qword_1B1C404D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B1A90C20(v22, &qword_1EB763E80, &qword_1B1C404D0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E80, &qword_1B1C404D0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E80, &qword_1B1C404D0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E80, &qword_1B1C404D0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E80, &qword_1B1C404D0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E80, &qword_1B1C404D0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB11F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseTextDelta(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E88, &qword_1B1C404D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B1A90C20(v22, &qword_1EB763E88, &qword_1B1C404D8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E88, &qword_1B1C404D8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E88, &qword_1B1C404D8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E88, &qword_1B1C404D8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E88, &qword_1B1C404D8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E88, &qword_1B1C404D8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseTextDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E90, &qword_1B1C404E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B1A90C20(v22, &qword_1EB763E90, &qword_1B1C404E0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E90, &qword_1B1C404E0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E90, &qword_1B1C404E0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E90, &qword_1B1C404E0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E90, &qword_1B1C404E0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E90, &qword_1B1C404E0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB1BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E98, &qword_1B1C404E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B1A90C20(v22, &qword_1EB763E98, &qword_1B1C404E8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E98, &qword_1B1C404E8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E98, &qword_1B1C404E8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E98, &qword_1B1C404E8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E98, &qword_1B1C404E8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E98, &qword_1B1C404E8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EA0, &qword_1B1C404F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B1A90C20(v22, &qword_1EB763EA0, &qword_1B1C404F0);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EA0, &qword_1B1C404F0);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EA0, &qword_1B1C404F0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EA0, &qword_1B1C404F0);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EA0, &qword_1B1C404F0);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EA0, &qword_1B1C404F0);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB25D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseAudioDelta(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EA8, &qword_1B1C404F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B1A90C20(v22, &qword_1EB763EA8, &qword_1B1C404F8);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EA8, &qword_1B1C404F8);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EA8, &qword_1B1C404F8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EA8, &qword_1B1C404F8);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EA8, &qword_1B1C404F8);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EA8, &qword_1B1C404F8);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseAudioDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EB0, &qword_1B1C40500);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B1A90C20(v22, &qword_1EB763EB0, &qword_1B1C40500);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EB0, &qword_1B1C40500);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EB0, &qword_1B1C40500);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EB0, &qword_1B1C40500);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EB0, &qword_1B1C40500);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EB0, &qword_1B1C40500);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB2FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EB8, &qword_1B1C40508);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B1A90C20(v22, &qword_1EB763EB8, &qword_1B1C40508);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EB8, &qword_1B1C40508);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EB8, &qword_1B1C40508);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EB8, &qword_1B1C40508);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EB8, &qword_1B1C40508);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EB8, &qword_1B1C40508);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB34BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EC0, &qword_1B1C40510);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B1A90C20(v22, &qword_1EB763EC0, &qword_1B1C40510);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EC0, &qword_1B1C40510);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EC0, &qword_1B1C40510);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EC0, &qword_1B1C40510);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EC0, &qword_1B1C40510);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EC0, &qword_1B1C40510);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BB39B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_RateLimitsUpdated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763EC8, &qword_1B1C40518);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B1A90C20(v22, &qword_1EB763EC8, &qword_1B1C40518);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763EC8, &qword_1B1C40518);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763EC8, &qword_1B1C40518);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763EC8, &qword_1B1C40518);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763EC8, &qword_1B1C40518);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763EC8, &qword_1B1C40518);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Realtime_V1_ServerEvent.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v123 - v6;
  sub_1B1B8D9D8(v0, &v123 - v6, &qword_1EB7636C0, &qword_1B1C3D080);
  v8 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    OUTLINED_FUNCTION_66_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v65 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4360(v65, v66, v67, v68);
        goto LABEL_24;
      case 2u:
        v49 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4574(v49, v50, v51, v52);
        goto LABEL_24;
      case 3u:
        v57 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4788(v57, v58, v59, v60);
        goto LABEL_24;
      case 4u:
        v29 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB499C(v29, v30, v31, v32);
        goto LABEL_24;
      case 5u:
        v77 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4BB0(v77, v78, v79, v80);
        goto LABEL_24;
      case 6u:
        v89 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4DC4(v89, v90, v91, v92);
        goto LABEL_24;
      case 7u:
        v61 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4FD8(v61, v62, v63, v64);
        goto LABEL_24;
      case 8u:
        v102 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB51EC(v102, v103, v104, v105);
        goto LABEL_33;
      case 9u:
        v37 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5400(v37, v38, v39, v40);
        goto LABEL_33;
      case 0xAu:
        v98 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5614(v98, v99, v100, v101);
        goto LABEL_33;
      case 0xBu:
        v25 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5828(v25, v26, v27, v28);
        goto LABEL_33;
      case 0xCu:
        v33 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5A3C(v33, v34, v35, v36);
        goto LABEL_33;
      case 0xDu:
        v85 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5C50(v85, v86, v87, v88);
        goto LABEL_33;
      case 0xEu:
        v21 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB5E64(v21, v22, v23, v24);
        goto LABEL_33;
      case 0xFu:
        v53 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB6078(v53, v54, v55, v56);
        goto LABEL_33;
      case 0x10u:
        v17 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB628C(v17, v18, v19, v20);
        goto LABEL_33;
      case 0x11u:
        v69 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB64A0(v69, v70, v71, v72);
        goto LABEL_33;
      case 0x12u:
        v94 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB66B4(v94, v95, v96, v97);
        goto LABEL_33;
      case 0x13u:
        v110 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB68C8(v110, v111, v112, v113);
        goto LABEL_33;
      case 0x14u:
        v73 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB6ADC(v73, v74, v75, v76);
        goto LABEL_33;
      case 0x15u:
        v81 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB6CF0(v81, v82, v83, v84);
        goto LABEL_33;
      case 0x16u:
        v106 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB6F04(v106, v107, v108, v109);
        goto LABEL_33;
      case 0x17u:
        v114 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB7118(v114, v115, v116, v117);
        goto LABEL_33;
      case 0x18u:
        v45 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB732C(v45, v46, v47, v48);
        goto LABEL_33;
      case 0x19u:
        v41 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB7540(v41, v42, v43, v44);
        goto LABEL_33;
      case 0x1Au:
        v118 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB7754(v118, v119, v120, v121);
        goto LABEL_33;
      case 0x1Bu:
        v13 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB7968(v13, v14, v15, v16);
LABEL_33:
        if (v1)
        {
          OUTLINED_FUNCTION_11_22();
          return sub_1B1B9C820();
        }

        OUTLINED_FUNCTION_11_22();
        sub_1B1B9C820();
        break;
      default:
        v9 = OUTLINED_FUNCTION_8_22();
        sub_1B1BB4150(v9, v10, v11, v12);
LABEL_24:
        OUTLINED_FUNCTION_11_22();
        result = sub_1B1B9C820();
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v122 = v0 + *(type metadata accessor for Realtime_V1_ServerEvent(0) + 20);
  OUTLINED_FUNCTION_72_0();
  return sub_1B1C2C5A8();
}

uint64_t sub_1B1BB4150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ClientError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763848, type metadata accessor for Realtime_V1_ClientError);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_SessionCreated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763860, type metadata accessor for Realtime_V1_SessionCreated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_SessionUpdated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763878, type metadata accessor for Realtime_V1_SessionUpdated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763890, type metadata accessor for Realtime_V1_ConversationCreated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763920, type metadata accessor for Realtime_V1_InputAudioBufferCommitted);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferCleared(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763938, type metadata accessor for Realtime_V1_InputAudioBufferCleared);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763950, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763968, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7638A8, type metadata accessor for Realtime_V1_ConversationItemCreated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7638C0, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7638D8, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7638F0, type metadata accessor for Realtime_V1_ConversationItemTruncated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763908, type metadata accessor for Realtime_V1_ConversationItemDeleted);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseCreated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763980, type metadata accessor for Realtime_V1_ResponseCreated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763998, type metadata accessor for Realtime_V1_ResponseDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB6078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseContentPartDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB68C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseTextDelta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB6ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseTextDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB6CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB7118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseAudioDelta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseAudioDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB7754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB7968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_RateLimitsUpdated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB7636C0, &qword_1B1C3D080);
  v11 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B1BB85CC();
      sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated);
      sub_1B1C2C788();
      return sub_1B1B9C820();
    }

    result = sub_1B1B9C820();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BB7E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DE8, type metadata accessor for Realtime_V1_ServerEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BB7EE4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763830, type metadata accessor for Realtime_V1_ServerEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BB7F54()
{
  sub_1B1BB99B4(&qword_1EB763830, type metadata accessor for Realtime_V1_ServerEvent);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BB8068()
{
  v0 = *(type metadata accessor for Realtime_V1_ClientError(0) + 28);
  type metadata accessor for Realtime_V1_CommonError(0);
  sub_1B1BB99B4(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BB815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D0, &qword_1B1C3D090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_CommonError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ClientError(0);
  sub_1B1B8D9D8(a1 + *(v11 + 28), v8, &qword_1EB7636D0, &qword_1B1C3D090);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB7636D0, &qword_1B1C3D090);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BB83E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DE0, type metadata accessor for Realtime_V1_ClientError);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BB8460(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763848, type metadata accessor for Realtime_V1_ClientError);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BB84D0()
{
  sub_1B1BB99B4(&qword_1EB763848, type metadata accessor for Realtime_V1_ClientError);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BB85CC()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  return v0;
}

uint64_t sub_1B1BB8620()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  return v0;
}

uint64_t sub_1B1BB8798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DD8, type metadata accessor for Realtime_V1_SessionCreated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BB8818(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763860, type metadata accessor for Realtime_V1_SessionCreated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BB8888()
{
  sub_1B1BB99B4(&qword_1EB763860, type metadata accessor for Realtime_V1_SessionCreated);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BB8984(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_207(v6);
  swift_allocObject();
  result = sub_1B1BB8D14(a3);
  *a4 = result;
  return result;
}

uint64_t sub_1B1BB8D14(uint64_t *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v2 = *a1;
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  return v1;
}

void sub_1B1BB8D64()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_82();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v10 = *v3;
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  OUTLINED_FUNCTION_66_0();
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v17 = *(v5 + 32);
  v18 = *(v5 + 40);
  OUTLINED_FUNCTION_66_0();
  *(v0 + 32) = v17;
  *(v0 + 40) = v18;
  v19 = *v3;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1B8D9D8(v5 + v19, v1, &qword_1EB762B18, &qword_1B1C3A140);

  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B8C2AC(v1, v0 + v10, &qword_1EB762B18, &qword_1B1C3A140);
  swift_endAccess();
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BB8EEC(void *a1)
{
  v3 = v1[3];

  sub_1B1A90C20(v1 + *a1, &qword_1EB762B18, &qword_1B1C3A140);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v4, v5);
}

void sub_1B1BB8FA8()
{
  OUTLINED_FUNCTION_286();
  v2 = v1;
  v3 = v0;
  v5 = *(v4(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = v2(0);
    OUTLINED_FUNCTION_207(v9);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    *(v3 + v5) = v10;
  }

  OUTLINED_FUNCTION_169();
  sub_1B1BB9058();
  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BB9058()
{
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_20_12();
        sub_1B1BB91D4();
        break;
      case 2:
        OUTLINED_FUNCTION_20_12();
        sub_1B1BB915C();
        break;
      case 1:
        OUTLINED_FUNCTION_20_12();
        sub_1B1BB90F0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1BB90F0()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_72_0();
  sub_1B1C2C698();
  return swift_endAccess();
}

uint64_t sub_1B1BB915C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1BB99FC();
  OUTLINED_FUNCTION_39();
  sub_1B1C2C648();
  return swift_endAccess();
}

uint64_t sub_1B1BB91D4()
{
  OUTLINED_FUNCTION_74();
  v1 = *v0;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_188();
  sub_1B1BB99B4(v2, v3);
  OUTLINED_FUNCTION_39();
  sub_1B1C2C6B8();
  return swift_endAccess();
}

void sub_1B1BB92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(v4 + *(a4(0) + 20));
  OUTLINED_FUNCTION_72_0();
  sub_1B1BB931C(v7);
  if (!v5)
  {
    OUTLINED_FUNCTION_15();
    sub_1B1C2C5A8();
  }
}

void sub_1B1BB931C(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (v5 = *(a1 + 24), , sub_1B1C2C768(), , !v1))
  {
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    if ((sub_1B1B1AFA0(*(a1 + 32), *(a1 + 40), 0, 1) & 1) != 0 || (v12 = *(a1 + 32), v13 = *(a1 + 40), v6 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v6, v7, &type metadata for Realtime_V1_ServerEventType, v6, v8, v9, v10, v11, v12), sub_1B1C2C718(), !v1))
    {
      sub_1B1BB9454();
    }
  }
}

void sub_1B1BB9454()
{
  OUTLINED_FUNCTION_286();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_277();
  v12 = type metadata accessor for Realtime_V1_Session(v11);
  v13 = OUTLINED_FUNCTION_45(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = *v2;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1B8D9D8(v4 + v16, v0, &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    sub_1B1A90C20(v0, &qword_1EB762B18, &qword_1B1C3A140);
  }

  else
  {
    sub_1B1BB85CC();
    OUTLINED_FUNCTION_188();
    sub_1B1BB99B4(v17, v18);
    sub_1B1C2C788();
    OUTLINED_FUNCTION_92_2();
    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_285();
}

void sub_1B1BB95F4()
{
  OUTLINED_FUNCTION_25();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Realtime_V1_Session(0);
  v6 = OUTLINED_FUNCTION_22_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E38, &qword_1B1C40520);
  OUTLINED_FUNCTION_45(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  v19 = OUTLINED_FUNCTION_23(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v28 = *(v4 + 16);
  v27 = *(v4 + 24);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v29 = v28 == *(v2 + 16) && v27 == *(v2 + 24);
  if (v29 || (sub_1B1C2D7A8() & 1) != 0)
  {
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v30 = *(v4 + 32);
    v31 = *(v4 + 40);
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    if (sub_1B1B1AFA0(v30, v31, *(v2 + 32), *(v2 + 40)))
    {
      v39 = v11;
      v40 = v24;
      v32 = v41;
      v33 = *v41;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      sub_1B1B8D9D8(v4 + v33, v26, &qword_1EB762B18, &qword_1B1C3A140);
      v34 = *v32;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v35 = *(v12 + 48);
      sub_1B1B8D9D8(v26, v17, &qword_1EB762B18, &qword_1B1C3A140);
      sub_1B1B8D9D8(v2 + v34, &v17[v35], &qword_1EB762B18, &qword_1B1C3A140);
      OUTLINED_FUNCTION_13(v17);
      if (!v29)
      {
        sub_1B1B8D9D8(v17, v40, &qword_1EB762B18, &qword_1B1C3A140);
        OUTLINED_FUNCTION_13(&v17[v35]);
        if (!v36)
        {
          sub_1B1BB85CC();
          OUTLINED_FUNCTION_67_2();
          static Realtime_V1_Session.== infix(_:_:)();
          sub_1B1B9C820();
          sub_1B1A90C20(v26, &qword_1EB762B18, &qword_1B1C3A140);
          sub_1B1B9C820();
          v37 = OUTLINED_FUNCTION_43_0();
          sub_1B1A90C20(v37, v38, &qword_1B1C3A140);
          goto LABEL_16;
        }

        sub_1B1A90C20(v26, &qword_1EB762B18, &qword_1B1C3A140);
        OUTLINED_FUNCTION_92_2();
        sub_1B1B9C820();
LABEL_15:
        sub_1B1A90C20(v17, &qword_1EB762E38, &qword_1B1C40520);
        goto LABEL_16;
      }

      sub_1B1A90C20(v26, &qword_1EB762B18, &qword_1B1C3A140);
      OUTLINED_FUNCTION_13(&v17[v35]);
      if (!v29)
      {
        goto LABEL_15;
      }

      sub_1B1A90C20(v17, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BB99B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B1BB99FC()
{
  result = qword_1EB763720;
  if (!qword_1EB763720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763720);
  }

  return result;
}

uint64_t sub_1B1BB9AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DD0, type metadata accessor for Realtime_V1_SessionUpdated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BB9B6C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763878, type metadata accessor for Realtime_V1_SessionUpdated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BB9BDC()
{
  sub_1B1BB99B4(&qword_1EB763878, type metadata accessor for Realtime_V1_SessionUpdated);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BB9CF0()
{
  v0 = *(type metadata accessor for Realtime_V1_ConversationCreated(0) + 28);
  type metadata accessor for Realtime_V1_Conversation(0);
  sub_1B1BB99B4(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BB9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636E0, &qword_1B1C3D0A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Conversation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  sub_1B1B8D9D8(a1 + *(v11 + 28), v8, &qword_1EB7636E0, &qword_1B1C3D0A0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB7636E0, &qword_1B1C3D0A0);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBA068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DC8, type metadata accessor for Realtime_V1_ConversationCreated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBA0E8(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763890, type metadata accessor for Realtime_V1_ConversationCreated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBA158()
{
  sub_1B1BB99B4(&qword_1EB763890, type metadata accessor for Realtime_V1_ConversationCreated);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBA1E4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763480);
  __swift_project_value_buffer(v0, qword_1EB763480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "previous_item_id";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "item";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemCreated.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1BBA4F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBA4F0()
{
  v0 = *(type metadata accessor for Realtime_V1_ConversationItemCreated(0) + 32);
  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBA664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Item(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  sub_1B1B8D9D8(a1 + *(v11 + 32), v8, &qword_1EB762AF8, &qword_1B1C3A120);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762AF8, &qword_1B1C3A120);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBA8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DC0, type metadata accessor for Realtime_V1_ConversationItemCreated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBA968(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7638A8, type metadata accessor for Realtime_V1_ConversationItemCreated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBA9D8()
{
  sub_1B1BB99B4(&qword_1EB7638A8, type metadata accessor for Realtime_V1_ConversationItemCreated);

  return sub_1B1C2C6E8();
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBACDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DB8, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBAD5C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7638C0, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBADCC()
{
  sub_1B1BB99B4(&qword_1EB7638C0, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBB0A0()
{
  v0 = *(type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(0) + 36);
  type metadata accessor for Realtime_V1_CommonError(0);
  sub_1B1BB99B4(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D0, &qword_1B1C3D090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_CommonError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(0);
  sub_1B1B8D9D8(a1 + *(v11 + 36), v8, &qword_1EB7636D0, &qword_1B1C3D090);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB7636D0, &qword_1B1C3D090);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBB418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DB0, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBB498(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7638D8, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBB508()
{
  sub_1B1BB99B4(&qword_1EB7638D8, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBB5A0()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7634C8);
  __swift_project_value_buffer(v0, qword_1EB7634C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "item_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "content_index";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "audio_end_ms";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemTruncated.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBBA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DA8, type metadata accessor for Realtime_V1_ConversationItemTruncated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBBAF4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7638F0, type metadata accessor for Realtime_V1_ConversationItemTruncated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBBB64()
{
  sub_1B1BB99B4(&qword_1EB7638F0, type metadata accessor for Realtime_V1_ConversationItemTruncated);

  return sub_1B1C2C6E8();
}

uint64_t Realtime_V1_ConversationItemDeleted.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
    }
  }
}

uint64_t sub_1B1BBBDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763DA0, type metadata accessor for Realtime_V1_ConversationItemDeleted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBBE74(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763908, type metadata accessor for Realtime_V1_ConversationItemDeleted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBBEE4()
{
  sub_1B1BB99B4(&qword_1EB763908, type metadata accessor for Realtime_V1_ConversationItemDeleted);

  return sub_1B1C2C6E8();
}

uint64_t Realtime_V1_InputAudioBufferCommitted.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBC1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D98, type metadata accessor for Realtime_V1_InputAudioBufferCommitted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBC23C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763920, type metadata accessor for Realtime_V1_InputAudioBufferCommitted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBC2AC()
{
  sub_1B1BB99B4(&qword_1EB763920, type metadata accessor for Realtime_V1_InputAudioBufferCommitted);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBC338()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763510);
  __swift_project_value_buffer(v0, qword_1EB763510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C36280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_InputAudioBufferCleared.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_43();
      sub_1B1AFD9B8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1BBC6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D90, type metadata accessor for Realtime_V1_InputAudioBufferCleared);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBC744(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763938, type metadata accessor for Realtime_V1_InputAudioBufferCleared);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBC7B4()
{
  sub_1B1BB99B4(&qword_1EB763938, type metadata accessor for Realtime_V1_InputAudioBufferCleared);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBC984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D88, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBCA04(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763950, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBCA74()
{
  sub_1B1BB99B4(&qword_1EB763950, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted);

  return sub_1B1C2C6E8();
}

void sub_1B1BBCB24()
{
  OUTLINED_FUNCTION_215();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v6 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v6, v5);
  v7 = OUTLINED_FUNCTION_33_2();
  __swift_project_value_buffer(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040);
  OUTLINED_FUNCTION_99_0(v9);
  v11 = *(v10 + 72);
  OUTLINED_FUNCTION_192();
  v12 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_98_2(v12, xmmword_1B1C364E0);
  OUTLINED_FUNCTION_146("event_id");
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v14);
  v16 = *(v15 + 104);
  (v16)(v0, v13, v14);
  v17 = OUTLINED_FUNCTION_97_2();
  *v17 = "type";
  *(v17 + 8) = 4;
  *(v17 + 16) = v5;
  v18 = *MEMORY[0x1E69AADC8];
  v16();
  v19 = *(v6 + 56);
  v20 = (v1 + 2 * v11);
  *v20 = 3;
  v21 = v20 + v19;
  *v21 = v24;
  *(v21 + 1) = v25;
  v21[16] = v5;
  v16();
  v22 = OUTLINED_FUNCTION_142_0(3 * v11);
  *v23 = 4;
  *v22 = "item_id";
  *(v22 + 8) = 7;
  *(v22 + 16) = v5;
  v16();
  sub_1B1C2C7A8();
  OUTLINED_FUNCTION_214();
}

uint64_t sub_1B1BBCD40()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 3:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

void sub_1B1BBCE1C()
{
  OUTLINED_FUNCTION_286();
  v4 = v3;
  OUTLINED_FUNCTION_7_18();
  if (!v5 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
  {
    if ((OUTLINED_FUNCTION_171() & 1) != 0 || (v6 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v6, v7, &type metadata for Realtime_V1_ServerEventType, v6, v8, v9, v10, v11, v0), OUTLINED_FUNCTION_16_4(), sub_1B1C2C718(), !v1))
    {
      if (!*(v2 + 28) || (OUTLINED_FUNCTION_102_2(), !v1))
      {
        v12 = *(v2 + 32);
        v13 = *(v2 + 40);
        OUTLINED_FUNCTION_17_0();
        if (!v14 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
        {
          v15 = *(v4(0) + 32);
          OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BBCF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D80, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBD01C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763968, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBD08C()
{
  sub_1B1BB99B4(&qword_1EB763968, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBD1A0()
{
  v0 = *(type metadata accessor for Realtime_V1_ResponseCreated(0) + 28);
  type metadata accessor for Realtime_V1_Response(0);
  sub_1B1BB99B4(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Response(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ResponseCreated(0);
  sub_1B1B8D9D8(a1 + *(v11 + 28), v8, &qword_1EB762B08, &qword_1B1C3A130);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762B08, &qword_1B1C3A130);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBD518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D78, type metadata accessor for Realtime_V1_ResponseCreated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBD598(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763980, type metadata accessor for Realtime_V1_ResponseCreated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBD608()
{
  sub_1B1BB99B4(&qword_1EB763980, type metadata accessor for Realtime_V1_ResponseCreated);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBD884()
{
  v0 = *(type metadata accessor for Realtime_V1_ResponseDone(0) + 28);
  type metadata accessor for Realtime_V1_Response(0);
  sub_1B1BB99B4(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBDA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Response(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ResponseDone(0);
  sub_1B1B8D9D8(a1 + *(v11 + 28), v8, &qword_1EB762B08, &qword_1B1C3A130);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762B08, &qword_1B1C3A130);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBDCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D70, type metadata accessor for Realtime_V1_ResponseDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBDD34(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763998, type metadata accessor for Realtime_V1_ResponseDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBDDA4()
{
  sub_1B1BB99B4(&qword_1EB763998, type metadata accessor for Realtime_V1_ResponseDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBDE30()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763588);
  __swift_project_value_buffer(v0, qword_1EB763588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "response_id";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "output_index";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "item";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1BBE124()
{
  OUTLINED_FUNCTION_144_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C698();
        break;
      case 2:
        v6 = OUTLINED_FUNCTION_101_1();
        v2(v6);
        break;
      case 4:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C678();
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_101_1();
        v0(v5);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBE1E8()
{
  v0 = *(type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0) + 36);
  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBE3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Item(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  sub_1B1B8D9D8(a1 + *(v11 + 36), v8, &qword_1EB762AF8, &qword_1B1C3A120);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762AF8, &qword_1B1C3A120);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBE650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D68, type metadata accessor for Realtime_V1_ResponseOutputItemAdded);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBE6D0(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBE740()
{
  sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBE7D8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7635A0);
  __swift_project_value_buffer(v0, qword_1EB7635A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "response_id";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "output_index";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseOutputItemDone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBEC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D60, type metadata accessor for Realtime_V1_ResponseOutputItemDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBECCC(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBED3C()
{
  sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone);

  return sub_1B1C2C6E8();
}

uint64_t (*sub_1B1BBEEF4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1B1BBEF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D58, type metadata accessor for Realtime_V1_ResponseContentPartAdded);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBEFC8(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF038()
{
  sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBF140()
{
  OUTLINED_FUNCTION_144_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_101_1();
        v1(v4);
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C678();
        break;
      case 7:
        OUTLINED_FUNCTION_101_1();
        sub_1B1BBF214();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBF214()
{
  OUTLINED_FUNCTION_74();
  v1 = *(v0(0) + 44);
  type metadata accessor for Realtime_V1_Part(0);
  OUTLINED_FUNCTION_177();
  sub_1B1BB99B4(v2, v3);
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C6B8();
}

void sub_1B1BBF3FC()
{
  OUTLINED_FUNCTION_286();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_277();
  v12 = type metadata accessor for Realtime_V1_Part(v11);
  v13 = OUTLINED_FUNCTION_45(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = OUTLINED_FUNCTION_193();
  v17 = v2(v16);
  sub_1B1B8D9D8(v4 + *(v17 + 44), v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    sub_1B1A90C20(v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
  }

  else
  {
    sub_1B1BB85CC();
    OUTLINED_FUNCTION_177();
    sub_1B1BB99B4(v18, v19);
    sub_1B1C2C788();
    OUTLINED_FUNCTION_178();
    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BBF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D50, type metadata accessor for Realtime_V1_ResponseContentPartDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBF6B4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF724()
{
  sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone);

  return sub_1B1C2C6E8();
}

uint64_t (*sub_1B1BBF8B8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1B1BBF90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D48, type metadata accessor for Realtime_V1_ResponseTextDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBF98C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF9FC()
{
  sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta);

  return sub_1B1C2C6E8();
}

void sub_1B1BBFB28()
{
  OUTLINED_FUNCTION_286();
  v4 = v3;
  OUTLINED_FUNCTION_7_18();
  if (!v5 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
  {
    if ((OUTLINED_FUNCTION_171() & 1) != 0 || (v6 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v6, v7, &type metadata for Realtime_V1_ServerEventType, v6, v8, v9, v10, v11, v0), OUTLINED_FUNCTION_16_4(), sub_1B1C2C718(), !v1))
    {
      v12 = *(v2 + 32);
      v13 = *(v2 + 40);
      OUTLINED_FUNCTION_17_0();
      if (!v14 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
      {
        v15 = *(v2 + 48);
        v16 = *(v2 + 56);
        OUTLINED_FUNCTION_17_0();
        if (!v17 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
        {
          if (!*(v2 + 64) || (OUTLINED_FUNCTION_102_2(), !v1))
          {
            if (!*(v2 + 68) || (OUTLINED_FUNCTION_102_2(), !v1))
            {
              v18 = *(v2 + 72);
              v19 = *(v2 + 80);
              OUTLINED_FUNCTION_17_0();
              if (!v20 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
              {
                v21 = *(v4(0) + 44);
                OUTLINED_FUNCTION_48();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BBFD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D40, type metadata accessor for Realtime_V1_ResponseTextDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBFD80(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBFDF0()
{
  sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBFFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D38, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC0040(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC00B0()
{
  sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC03C4()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 7:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D30, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC05DC(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC064C()
{
  sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC06E4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763648);
  __swift_project_value_buffer(v0, qword_1EB763648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B1C3B470;
  v4 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v4 = "event_id";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v23 + v3 + v2 + v1[14];
  *(v23 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v23 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "response_id";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v23 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "item_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v7();
  v14 = (v23 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "output_index";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v7();
  v16 = (v23 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "content_index";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v7();
  v18 = (v23 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "delta";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v7();
  v20 = (v23 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "audio_bytes";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseAudioDelta.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 7:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      case 8:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C658();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC0D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D28, type metadata accessor for Realtime_V1_ResponseAudioDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC0D90(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC0E00()
{
  sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC0E8C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763660);
  __swift_project_value_buffer(v0, qword_1EB763660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "response_id";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "item_id";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "output_index";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "content_index";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseAudioDone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC13C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D20, type metadata accessor for Realtime_V1_ResponseAudioDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1448(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC14B8()
{
  sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC1568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2C7B8();
  OUTLINED_FUNCTION_262(v7);
  v8 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040);
  OUTLINED_FUNCTION_99_0(v10);
  v12 = *(v11 + 72);
  OUTLINED_FUNCTION_192();
  v34 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_98_2(v34, xmmword_1B1C373A0);
  OUTLINED_FUNCTION_146("event_id");
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v14);
  v16 = *(v15 + 104);
  OUTLINED_FUNCTION_169();
  v16();
  v17 = OUTLINED_FUNCTION_97_2();
  v18 = OUTLINED_FUNCTION_278(v17, "type");
  v33 = *MEMORY[0x1E69AADC8];
  (v16)(v18);
  v19 = OUTLINED_FUNCTION_157(v6 + 2 * v12);
  *v20 = 3;
  v21 = OUTLINED_FUNCTION_55_3(v19, "response_id");
  (v16)(v21);
  v22 = OUTLINED_FUNCTION_142_0(3 * v12);
  *v23 = 4;
  OUTLINED_FUNCTION_278(v22, "item_id");
  OUTLINED_FUNCTION_169();
  v16();
  v24 = OUTLINED_FUNCTION_157(v6 + 4 * v12);
  *v25 = 5;
  v26 = OUTLINED_FUNCTION_55_3(v24, "output_index");
  (v16)(v26);
  v27 = OUTLINED_FUNCTION_142_0(5 * v12);
  *v28 = 6;
  OUTLINED_FUNCTION_278(v27, "call_id");
  OUTLINED_FUNCTION_169();
  v16();
  v29 = *(v5 + 56);
  v30 = (v6 + 6 * v12);
  *v30 = 7;
  v31 = v30 + v29;
  *v31 = a3;
  *(v31 + 1) = a4;
  v31[16] = v4;
  v16();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1BC18D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D18, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1958(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC19C8()
{
  sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC1AC8()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 6:
      case 7:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 5:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

void sub_1B1BC1BBC()
{
  OUTLINED_FUNCTION_286();
  v4 = v3;
  OUTLINED_FUNCTION_7_18();
  if (!v5 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
  {
    if ((OUTLINED_FUNCTION_171() & 1) != 0 || (v6 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v6, v7, &type metadata for Realtime_V1_ServerEventType, v6, v8, v9, v10, v11, v0), OUTLINED_FUNCTION_16_4(), sub_1B1C2C718(), !v1))
    {
      v12 = *(v2 + 32);
      v13 = *(v2 + 40);
      OUTLINED_FUNCTION_17_0();
      if (!v14 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
      {
        v15 = *(v2 + 48);
        v16 = *(v2 + 56);
        OUTLINED_FUNCTION_17_0();
        if (!v17 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
        {
          if (!*(v2 + 64) || (OUTLINED_FUNCTION_102_2(), !v1))
          {
            v18 = *(v2 + 72);
            v19 = *(v2 + 80);
            OUTLINED_FUNCTION_17_0();
            if (!v20 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
            {
              v21 = *(v2 + 88);
              v22 = *(v2 + 96);
              OUTLINED_FUNCTION_17_0();
              if (!v23 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v1))
              {
                v24 = *(v4(0) + 44);
                OUTLINED_FUNCTION_48();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BC1D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D10, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1E1C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC1E8C()
{
  sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC20F8()
{
  OUTLINED_FUNCTION_144_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_101_1();
        v0(v6);
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_101_1();
        v2(v5);
        break;
      case 1:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1BC218C()
{
  type metadata accessor for Realtime_V1_RateLimit(0);
  sub_1B1BB99B4(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit);
  return sub_1B1C2C6A8();
}

uint64_t sub_1B1BC236C()
{
  OUTLINED_FUNCTION_166();
  v1 = v0;
  sub_1B1C2D888();
  v1(0);
  v2 = OUTLINED_FUNCTION_33();
  sub_1B1BB99B4(v2, v3);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1BC2444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D08, type metadata accessor for Realtime_V1_RateLimitsUpdated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC24C4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC2534()
{
  sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated);

  return sub_1B1C2C6E8();
}

unint64_t sub_1B1BC25B8()
{
  result = qword_1EB763808;
  if (!qword_1EB763808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763808);
  }

  return result;
}

unint64_t sub_1B1BC2610()
{
  result = qword_1EB763810;
  if (!qword_1EB763810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763818, &qword_1B1C3D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763810);
  }

  return result;
}

unint64_t sub_1B1BC2678()
{
  result = qword_1EB763820;
  if (!qword_1EB763820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763820);
  }

  return result;
}

void sub_1B1BC47A8()
{
  sub_1B1BC4B28(319, &qword_1EB763AF0, type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1BC4864()
{
  result = type metadata accessor for Realtime_V1_ClientError(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_SessionCreated(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Realtime_V1_SessionUpdated(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Realtime_V1_ConversationCreated(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Realtime_V1_InputAudioBufferCleared(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Realtime_V1_ConversationItemCreated(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Realtime_V1_ConversationItemTruncated(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Realtime_V1_ConversationItemDeleted(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Realtime_V1_ResponseCreated(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Realtime_V1_ResponseDone(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Realtime_V1_ResponseOutputItemDone(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Realtime_V1_ResponseContentPartAdded(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Realtime_V1_ResponseContentPartDone(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Realtime_V1_ResponseTextDelta(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Realtime_V1_ResponseTextDone(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for Realtime_V1_ResponseAudioDelta(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Realtime_V1_ResponseAudioDone(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Realtime_V1_RateLimitsUpdated(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                          return 0;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1BC4B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_162Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_0();
  v6 = sub_1B1C2C5C8();
  v7 = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_163Tm()
{
  OUTLINED_FUNCTION_120_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B1C2C5C8();
  result = OUTLINED_FUNCTION_86(v6);
  if (*(v8 + 84) == v1)
  {

    return __swift_storeEnumTagSinglePayload(v5, v3, v3, result);
  }

  else
  {
    *(v5 + *(v0 + 20)) = (v3 - 1);
  }

  return result;
}

uint64_t sub_1B1BC4D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B1C2C5C8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_211();
    }
  }

  return result;
}

void sub_1B1BC4E40()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1BC4B28(319, &qword_1EB762D10, type metadata accessor for Realtime_V1_Item, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_198Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_199Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1BC5084()
{
  OUTLINED_FUNCTION_270();
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_110_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

uint64_t sub_1B1BC512C()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1BC5218()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_153Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v6 = *(v1 + 28);
  }

  v9 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_154Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      v5 = *(v0 + 28);
    }

    v8 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1B1BC549C()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_176();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_207Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 32);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v6 = *(v1 + 36);
  }

  v9 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_208Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 32);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      v5 = *(v0 + 36);
    }

    v8 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1B1BC56E0()
{
  OUTLINED_FUNCTION_270();
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_176();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_110_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t sub_1B1BC57B8()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_306Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  v4 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
    v6 = *(v1 + 44);
  }

  v7 = OUTLINED_FUNCTION_76(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_307Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_120_0();
    v3 = sub_1B1C2C5C8();
    OUTLINED_FUNCTION_86(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
      v5 = *(v0 + 44);
    }

    v6 = OUTLINED_FUNCTION_62_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B1BC59E4()
{
  OUTLINED_FUNCTION_270();
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1BC4B28(319, &qword_1EB763C38, type metadata accessor for Realtime_V1_Part, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_110_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t sub_1B1BC5B74()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1BC5C40()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_324Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 44));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_325Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 44));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1BC5DE8()
{
  OUTLINED_FUNCTION_270();
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_110_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

void __swift_store_extra_inhabitant_index_226Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B1BC5EF8()
{
  sub_1B1BC4B28(319, &qword_1EB763CE0, type metadata accessor for Realtime_V1_RateLimit, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1BC5FD4()
{
  sub_1B1BC4B28(319, &qword_1EB762D70, type metadata accessor for Realtime_V1_Session, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_111_1@<X0>(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = a1;
  return 0;
}

void OUTLINED_FUNCTION_112_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  return result;
}

void OUTLINED_FUNCTION_146(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_1B1B8D9D8(v0 + v2, v1, v3, v4);
}

void OUTLINED_FUNCTION_154(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
}

uint64_t OUTLINED_FUNCTION_155@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B1B8D9D8(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_160@<X0>(uint64_t a1@<X8>)
{

  return sub_1B1B8D9D8(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_171()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B1B1AFA0(v2, v3, 0, 1);
}

uint64_t OUTLINED_FUNCTION_172()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B1B1AFA0(v2, v3, 0, 1);
}

void OUTLINED_FUNCTION_176()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B1BC4B28(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_207(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_208@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 56) = 0;
  *(v3 + 64) = v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = 0;
  *(v3 + 88) = v2;
  *(v3 + 92) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = v1;
  *(v3 + 120) = 0;
  *(v3 + 128) = v1;
  v6 = v3 + *(v4 + 60);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_209@<X0>(uint64_t a1@<X8>)
{
  v2[4] = v1;
  v2[5] = 0;
  v2[6] = a1;
  v2[7] = 0;
  v2[8] = a1;
  v2[9] = 0;
  v2[10] = a1;
  v2[11] = 0;
  v2[12] = a1;
  v2[13] = 0;
  v2[14] = a1;
  v2[15] = 0;
  v2[16] = a1;
  v5 = v2 + *(v3 + 52);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_216@<X0>(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v4 = v1 + *(v2 + 40);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_217()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_1B1B1AFA0(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_218()
{

  return sub_1B1C2CB18();
}

__n128 *OUTLINED_FUNCTION_221(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v3);
  v5 = result + v3 + *(v2 + 56);
  *v4 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_1B1C2C7B8();
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return sub_1B1C2C5B8();
}

unint64_t OUTLINED_FUNCTION_226()
{

  return sub_1B1BB99FC();
}

uint64_t OUTLINED_FUNCTION_227()
{
  result = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_228@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = 4;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_229(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 28);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_230@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_234()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_235@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = 0;
  *(v1 + 96) = a1;
  v4 = v1 + *(v2 + 44);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_236@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = 0;
  *(v3 + 72) = v2;
  *(v3 + 76) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = v1;
  v6 = v3 + *(v4 + 48);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_238(uint64_t a1)
{
  v3 = v1 + *(a1 + 44);

  return sub_1B1C2C5B8();
}

void OUTLINED_FUNCTION_240(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_248()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_249()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_1B1C2C5C8();
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_251()
{
  *(v0 + 48) = 0;
  v3 = v0 + *(v1 + 32);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_253()
{

  return sub_1B1C2C5C8();
}

uint64_t OUTLINED_FUNCTION_254()
{

  return sub_1B1B9C820();
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1)
{
  v3 = v1 + *(a1 + 40);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_259()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_260()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_261()
{
  v3 = v0 + *(v1 + 24);

  return sub_1B1C2C5B8();
}

uint64_t *OUTLINED_FUNCTION_262(uint64_t a1)
{

  return __swift_allocate_value_buffer(a1, v1);
}

uint64_t OUTLINED_FUNCTION_263@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1B1BB85CC();
}

void OUTLINED_FUNCTION_265()
{
  v2 = *(v0 + 40);
  *(v1 + 72) = *(v0 + 32);
  *(v1 + 80) = v2;
}

void OUTLINED_FUNCTION_266(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_278@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v3;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_281@<X0>(uint64_t a1@<X8>)
{

  return sub_1B1B8D9D8(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_282@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  v4 = v1 + *(v2 + 32);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_284(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);

  return sub_1B1C2C5B8();
}

uint64_t sub_1B1BC6EF0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B1C2C428();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1B1BC703C(v7);
}

uint64_t sub_1B1BC6FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  v4 = sub_1B1C2C428();
  OUTLINED_FUNCTION_45(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1B1BC703C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  v4 = sub_1B1C2C428();
  OUTLINED_FUNCTION_45(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B1BC7124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1C2C988();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v27 = sub_1B1C2C9D8();
  v15 = OUTLINED_FUNCTION_7(v27);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v26 = *(v3 + OBJC_IVAR____TtC14SiriTTSService7Timeout_queue);
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = a1;
  v23[4] = a2;
  aBlock[4] = sub_1B1BC78C0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_22;
  v24 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v22, v14, v24);
  _Block_release(v24);
  (*(v9 + 8))(v14, v6);
  (*(v17 + 8))(v22, v27);
}

uint64_t sub_1B1BC73D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v17 = a3;
  v18 = a2;
  v4 = sub_1B1C2C428();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  v19 = OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop;
  v10 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  v11 = (v5 + 16);
  v12 = (v5 + 8);
  while (1)
  {

    [v9 lock];
    v13 = *(a1 + v19);
    if (v13)
    {
      break;
    }

    (*v11)(v8, a1 + v10, v4);
    v14 = sub_1B1C2C378();
    (*v12)(v8, v4);
    v15 = [v9 waitUntilDate_];

    [v9 unlock];

    if ((v15 & 1) == 0)
    {
      return v18(v13);
    }
  }

  [v9 unlock];

  return v18(v13);
}

id sub_1B1BC7598()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  [v1 lock];
  *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop) = 1;
  [v1 signal];

  return [v1 unlock];
}

id sub_1B1BC760C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  [v1 lock];
  [v1 signal];

  return [v1 unlock];
}

uint64_t Timeout.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  v2 = sub_1B1C2C428();
  OUTLINED_FUNCTION_45(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t Timeout.__deallocating_deinit()
{
  Timeout.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for Timeout()
{
  result = qword_1ED9A4F88;
  if (!qword_1ED9A4F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1BC7794()
{
  result = sub_1B1C2C428();
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

uint64_t sub_1B1BC78CC()
{
  v18 = sub_1B1C2D128();
  v1 = OUTLINED_FUNCTION_7(v18);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2D118();
  v10 = OUTLINED_FUNCTION_45(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v13 = sub_1B1C2C9D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1C2C358();
  v15 = OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  v17 = OBJC_IVAR____TtC14SiriTTSService7Timeout_queue;
  sub_1B1AA7918();
  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v3 + 104))(v8, *MEMORY[0x1E69E8090], v18);
  *(v0 + v17) = sub_1B1C2D158();
  *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop) = 0;
  return v0;
}

uint64_t IsNaturalVoiceCondition.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  IsNaturalVoiceCondition.init(pool:)();
  return v0;
}

uint64_t IsNaturalVoiceCondition.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B1BC7BA0@<X0>(uint64_t *a1@<X8>)
{
  result = IsNaturalVoiceCondition.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1BC7C18()
{
  v1 = v0;
  v2 = sub_1B1C2CBC8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CBB8();
  v10 = sub_1B1C2CB68();
  v12 = v11;
  result = (*(v5 + 8))(v9, v2);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B1BC8CB0();
    v14 = sub_1B1BC7D78(v10, v12);
    [v14 setDelegate_];
    [v14 parse];

    v15 = OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes;
    swift_beginAccess();
    v16 = *(v1 + v15);
  }

  return result;
}

id sub_1B1BC7D78(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B1C2C298();
  v6 = [v4 initWithData_];

  sub_1B1A94524(a1, a2);
  return v6;
}

uint64_t sub_1B1BC7DF0()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1BC7EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = a2 == 0x656D656E6F6870 && a3 == 0xE700000000000000;
  if (v11 || (result = sub_1B1C2D7A8(), (result & 1) != 0))
  {
    v13 = sub_1B1A945F4(0x7465626168706C61, 0xE800000000000000, a8);
    v15 = v14;
    v16 = sub_1B1A945F4(26736, 0xE200000000000000, a8);
    v18 = v17;
    v19 = OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes;
    swift_beginAccess();
    sub_1B1B36F04();
    v20 = *(*(v9 + v19) + 16);
    sub_1B1B3DBD0(v20);
    v21 = *(v9 + v19);
    *(v21 + 16) = v20 + 1;
    v22 = (v21 + 32 * v20);
    v22[4] = v13;
    v22[5] = v15;
    v22[6] = v16;
    v22[7] = v18;
    *(v9 + v19) = v21;
    return swift_endAccess();
  }

  return result;
}

id sub_1B1BC80A8()
{
  *&v0[OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes] = MEMORY[0x1E69E7CC0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSMLSimpleParser();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t RoughDurationEstimationAction.__allocating_init(pool:)()
{
  OUTLINED_FUNCTION_66();
  swift_allocObject();
  return RoughDurationEstimationAction.init(pool:)();
}

uint64_t RoughDurationEstimationAction.init(pool:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763ED0, &qword_1B1C406F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C405C0;
  *(inited + 32) = 0x41532D7261;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = xmmword_1B1C405D0;
  *(inited + 64) = 1041126916;
  *(inited + 72) = 0x4B442D6164;
  *(inited + 80) = 0xE500000000000000;
  *(inited + 88) = xmmword_1B1C405E0;
  *(inited + 104) = 1032000111;
  *(inited + 112) = 25956;
  *(inited + 120) = 0xE200000000000000;
  *(inited + 128) = xmmword_1B1C405F0;
  *(inited + 144) = 1030859260;
  *(inited + 152) = 28261;
  *(inited + 160) = 0xE200000000000000;
  *(inited + 168) = xmmword_1B1C40600;
  *(inited + 184) = 1030322389;
  *(inited + 192) = 29541;
  *(inited + 200) = 0xE200000000000000;
  *(inited + 208) = xmmword_1B1C40610;
  *(inited + 224) = 1032939635;
  *(inited + 232) = 29286;
  *(inited + 240) = 0xE200000000000000;
  *(inited + 248) = xmmword_1B1C40620;
  *(inited + 264) = 1029248647;
  *(inited + 272) = 0x54492D7469;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = xmmword_1B1C40630;
  *(inited + 304) = 1031127695;
  *(inited + 312) = 0x504A2D616ALL;
  *(inited + 320) = 0xE500000000000000;
  *(inited + 328) = xmmword_1B1C40640;
  *(inited + 344) = 1039113650;
  *(inited + 352) = 0x4F4E2D626ELL;
  *(inited + 360) = 0xE500000000000000;
  *(inited + 368) = xmmword_1B1C40650;
  *(inited + 384) = 1032536982;
  *(inited + 392) = 28526;
  *(inited + 400) = 0xE200000000000000;
  *(inited + 408) = xmmword_1B1C40650;
  *(inited + 424) = 1032536982;
  *(inited + 432) = 0x4C4E2D6C6ELL;
  *(inited + 440) = 0xE500000000000000;
  *(inited + 448) = xmmword_1B1C40660;
  *(inited + 464) = 1032000111;
  *(inited + 472) = 29808;
  *(inited + 480) = 0xE200000000000000;
  *(inited + 488) = xmmword_1B1C40670;
  *(inited + 504) = 1033744941;
  *(inited + 512) = 0x55522D7572;
  *(inited + 520) = 0xE500000000000000;
  *(inited + 528) = xmmword_1B1C40680;
  *(inited + 544) = 1032402764;
  *(inited + 552) = 0x45532D7673;
  *(inited + 560) = 0xE500000000000000;
  *(inited + 568) = xmmword_1B1C40690;
  *(inited + 584) = 1031664566;
  *(inited + 592) = 26746;
  *(inited + 600) = 0xE200000000000000;
  *(inited + 608) = xmmword_1B1C406A0;
  *(inited + 624) = 1032671199;
  *(inited + 632) = 0x4B482D687ALL;
  *(inited + 640) = 0xE500000000000000;
  *(inited + 648) = xmmword_1B1C406B0;
  *(inited + 664) = 1034013377;
  *(inited + 672) = 0x57542D687ALL;
  *(inited + 680) = 0xE500000000000000;
  *(inited + 688) = xmmword_1B1C406C0;
  *(inited + 704) = 1034013377;
  *(inited + 712) = 0x636972656E6567;
  *(inited + 720) = 0xE700000000000000;
  *(inited + 728) = xmmword_1B1C406D0;
  *(inited + 744) = 1031396131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763ED8, &unk_1B1C406F8);
  *(v0 + 32) = sub_1B1C2CAB8();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

uint64_t sub_1B1BC84BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v5 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v6 = &v5[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  v9 = sub_1B1B2A090(v7, v8, v3);
  v11 = v10;
  v13 = v12;

  if ((v13 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  v15 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v16 = &v15[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v18 = *v16;
  v17 = *(v16 + 1);

  v19 = sub_1B1BC863C(2);
  v20 = MEMORY[0x1B27380D0](v19);
  v22 = v21;

  result = sub_1B1B2A090(v20, v22, v3);
  if ((v24 & 0x100000000) == 0 || (result = sub_1B1B2A090(0x636972656E6567, 0xE700000000000000, v3), (v24 & 0x100000000) == 0))
  {
    v9 = result;
    v11 = v23;
    LODWORD(v13) = v24;

LABEL_5:
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BC863C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B1C2CC98();
    v1 = sub_1B1C2CE08();

    return v1;
  }

  return result;
}

void sub_1B1BC86FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v15 = a1;
    [v15 rangeAtIndex_];
    v7 = sub_1B1C2D028();
    if (v9)
    {
    }

    else
    {
      v10 = v7;
      v11 = v8;
      sub_1B1B36F1C();
      v12 = *(*a6 + 16);
      sub_1B1B3DBE8(v12);

      v13 = *a6;
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
    }
  }
}

void sub_1B1BC87C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

void sub_1B1BC8834(void *a1)
{
  if (a1)
  {
    v6 = a1;
    [v6 rangeAtIndex_];
    sub_1B1C2D028();
    if (v1)
    {
    }

    else
    {
      v2 = sub_1B1C2CE08();
      v3 = MEMORY[0x1B27380D0](v2);
      v5 = v4;

      MEMORY[0x1B27381B0](2106144, 0xE300000000000000);

      MEMORY[0x1B27381B0](v3, v5);
    }
  }
}

uint64_t RoughDurationEstimationAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B1BC89A8@<X0>(uint64_t *a1@<X8>)
{
  result = RoughDurationEstimationAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

id DurationEstimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DurationEstimator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationEstimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B1BC8AD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1BC8BC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1BC8C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B1BC8C7C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1B1BC8834(a1);
}

uint64_t sub_1B1BC8C88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1B1BC8CB0()
{
  result = qword_1EB763F60;
  if (!qword_1EB763F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB763F60);
  }

  return result;
}

void sub_1B1BC8D08(int a1)
{
  v3 = [v1 audibleContext];
  v4 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_66_0();
  *&v3[v4] = a1;
}

void sub_1B1BC8D74(void *a1, void *a2, char *a3)
{
  [a1 lock];
  v6 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  swift_beginAccess();
  v7 = *&a3[v6];
  swift_beginAccess();
  sub_1B1B70950();
  v9 = v8;
  swift_endAccess();

  [a1 unlock];
}

unint64_t sub_1B1BC8E3C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B1BCED7C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1B1C2D528();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          OUTLINED_FUNCTION_19_10();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B1C2D578();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          OUTLINED_FUNCTION_19_10();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void *sub_1B1BC8FB0(uint64_t a1)
{
  result = sub_1B1B60118(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1B1BCED04(&v5, result, v3, 0, a1);
  }
}

void sub_1B1BC9038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1B1BD0110(a1, *v2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v8)
  {

    MEMORY[0x1B2738320](v9);
    sub_1B1B3E0D4(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    v6 = *v2;
    sub_1B1AA30F4();
    v10 = *(v2[1] + 16);
    sub_1B1AA3234(v10);
    v11 = v2[1];
    *(v11 + 16) = v10 + 1;
    *(v11 + 8 * v10 + 32) = v7;
    v2[1] = v11;
  }

  if (a2)
  {
    sub_1B1BD0110(a2, v6);
    if (v12)
    {

      MEMORY[0x1B2738320](v13);
      sub_1B1B3E0D4(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1C2CEC8();
      v6 = *v2;
      sub_1B1AA30F4();
      v14 = *(v2[1] + 16);
      sub_1B1AA3234(v14);
      v15 = v2[1];
      *(v15 + 16) = v14 + 1;
      *(v15 + 8 * v14 + 32) = v7;
      v2[1] = v15;
    }

    v16 = sub_1B1BD0110(a1, v6);
    if (v17)
    {
      goto LABEL_16;
    }

    v18 = v16;
    v19 = sub_1B1BD0110(a2, v6);
    if (v20)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v21 = v19;
    v22 = v3[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1B1C00CDC(v22);
      v22 = v26;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v18 < v22[2])
        {
          v23 = &v22[v18];
          sub_1B1AA149C();
          v24 = *(v23[4] + 16);
          sub_1B1AA14B4(v24);
          v25 = v23[4];
          *(v25 + 16) = v24 + 1;
          *(v25 + 8 * v24 + 32) = v21;
          v3[1] = v22;
          return;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_1B1BC9214(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    result = sub_1B1C2D468();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = a1 & 0xC000000000000001;
  sub_1B1A9EC44(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B2738A20](0, a1);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  sub_1B1BD0110(v6, *v1);
  if (v7)
  {

    MEMORY[0x1B2738320](v8);
    sub_1B1B3E0D4(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    sub_1B1AA30F4();
    v9 = *(v1[1] + 16);
    sub_1B1AA3234(v9);
    v10 = v1[1];
    *(v10 + 16) = v9 + 1;
    *(v10 + 8 * v9 + 32) = MEMORY[0x1E69E7CC0];

    v2[1] = v10;
  }

  else
  {
  }

  result = sub_1B1A9547C(a1);
  v11 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    sub_1B1A9EC44(0, v5 == 0, a1);
    sub_1B1A9EC44(v11 - 1, v5 == 0, a1);
    sub_1B1A9EC44(1, v5 == 0, a1);
    sub_1B1A9EC44(v11, v5 == 0, a1);
    result = 0;
    do
    {
      v12 = result + 1;
      if (v5)
      {
        v13 = MEMORY[0x1B2738A20]();
        v14 = MEMORY[0x1B2738A20](v12, a1);
      }

      else
      {
        v15 = a1 + 8 * result;
        v13 = *(v15 + 32);
        v14 = *(v15 + 40);
      }

      sub_1B1BC9038(v13, v14);

      result = v12;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1B1BC941C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1B1BC94B0(v2, v3);
}

uint64_t sub_1B1BC945C()
{
  v1 = (v0 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B1BC94B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_66_0();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_1B1BC9508())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B1BC9564()
{
  v1 = (v0 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = sub_1B1A91B08(v3);
    if (v5)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id ServiceSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServiceSession.init()()
{
  v1 = v0;
  v2 = sub_1B1C2C9D8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = &v0[OBJC_IVAR___SiriTTSServiceSession__clientId];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR___SiriTTSServiceSession_tasksLock;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v13 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  type metadata accessor for TaskOperation();
  *&v1[v13] = sub_1B1C2CAB8();
  v14 = OBJC_IVAR___SiriTTSServiceSession_queue;
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  v36 = 1;
  v15 = OUTLINED_FUNCTION_8_25();
  v18 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(v15, v16, v10, v17);
  (*(v5 + 8))(v10, v2);
  *&v1[v14] = v18;
  v19 = OBJC_IVAR___SiriTTSServiceSession_accessoryId;
  v20 = sub_1B1C2C478();
  __swift_storeEnumTagSinglePayload(&v1[v19], 1, 1, v20);
  v35.receiver = v1;
  v35.super_class = type metadata accessor for ServiceSession();
  v21 = objc_msgSendSuper2(&v35, sel_init);
  v22 = qword_1ED9A9288;
  v23 = v21;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v24 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v24, qword_1ED9A9120);
  v25 = sub_1B1C2C888();
  v26 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_21_0();
    v27 = OUTLINED_FUNCTION_14_16();
    *v10 = 138412290;
    *(v10 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_1B1A90C20(v27, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_23();
  }

  return v23;
}

uint64_t type metadata accessor for ServiceSession()
{
  result = qword_1EB763F80;
  if (!qword_1EB763F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ServiceSession.init(accessoryId:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B1C2C478();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v12 = (v11 - v10);
  v13 = sub_1B1C2C9D8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = &v1[OBJC_IVAR___SiriTTSServiceSession__clientId];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = OBJC_IVAR___SiriTTSServiceSession_tasksLock;
  *&v2[v23] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v24 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  type metadata accessor for TaskOperation();
  *&v2[v24] = sub_1B1C2CAB8();
  v25 = OBJC_IVAR___SiriTTSServiceSession_queue;
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  LOBYTE(v52) = 1;
  v26 = OUTLINED_FUNCTION_8_25();
  v29 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(v26, v27, v21, v28);
  (*(v16 + 8))(v21, v13);
  *&v2[v25] = v29;
  v30 = OBJC_IVAR___SiriTTSServiceSession_accessoryId;
  v51 = v7;
  v31 = *(v7 + 16);
  v31(&v2[OBJC_IVAR___SiriTTSServiceSession_accessoryId], a1, v4);
  __swift_storeEnumTagSinglePayload(&v2[v30], 0, 1, v4);
  v53.receiver = v2;
  v53.super_class = type metadata accessor for ServiceSession();
  v32 = objc_msgSendSuper2(&v53, sel_init);
  v33 = qword_1ED9A9288;
  v34 = v32;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v35 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v35, qword_1ED9A9120);
  v31(v12, a1, v4);
  v36 = sub_1B1C2C888();
  v37 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v50 = a1;
    v47 = OUTLINED_FUNCTION_17_2();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v47 = v34;
    *(v38 + 12) = 2080;
    sub_1B1BCF378(&unk_1EB764220, MEMORY[0x1E69695A8]);
    v39 = v12;
    v48 = v34;
    v40 = sub_1B1C2D778();
    v42 = v41;
    v43 = *(v51 + 8);
    v43(v39, v4);
    v44 = sub_1B1A930E4(v40, v42, &v52);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_1B1A8A000, v36, v37, "Init ServiceSession %@, with accessory %s", v38, 0x16u);
    sub_1B1A90C20(v47, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v43(v50, v4);
  }

  else
  {

    v45 = *(v7 + 8);
    v45(a1, v4);
    v45(v12, v4);
  }

  return v34;
}

id ServiceSession.__deallocating_deinit()
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = v0;
  v4 = sub_1B1C2C888();
  v5 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_21_0();
    v6 = OUTLINED_FUNCTION_14_16();
    *v1 = 138412290;
    *(v1 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1B1A90C20(v6, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_23();
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ServiceSession();
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

void sub_1B1BC9FE8(unint64_t a1, void *a2, void (**a3)(void, void))
{
  v155 = a2;
  v5 = sub_1B1C2C988();
  v6 = *(v5 - 1);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v150 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1B1C2C9D8();
  v149 = *(v151 - 8);
  v9 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2C1C8();
  v159 = *(v11 - 1);
  v12 = *(v159 + 8);
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  v14 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v133 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v157 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v133 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v133 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  _Block_copy(a3);
  if (qword_1ED9A96B8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v147 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v28 != 2 && (v28 & 1) != 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v29 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v29, qword_1ED9A9120);
    v30 = sub_1B1C2C888();
    v31 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B1A8A000, v30, v31, "Skipped #PreviewRequest: TTS is disabled.", v32, 2u);
      MEMORY[0x1B2739FD0](v32, -1, -1);
    }

    a3[2](a3, 0);

    _Block_release(a3);
    return;
  }

  v138 = v11;
  v145 = v6;
  v146 = v5;
  v33 = mach_absolute_time();
  v34 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  swift_beginAccess();
  *(a1 + v34) = v33;
  v35 = v155;
  v36 = sub_1B1BC9564();
  v38 = v37;
  v39 = (a1 + OBJC_IVAR___SiriTTSBaseRequest_clientBundleId);
  swift_beginAccess();
  v40 = v39[1];
  *v39 = v36;
  v39[1] = v38;

  sub_1B1BCECA4(v35 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v26, &qword_1EB761DF8, qword_1B1C40850);
  v41 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  swift_beginAccess();
  sub_1B1A91B74(v26, a1 + v41);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v152 = a3;
  v42 = sub_1B1C2C8A8();
  v43 = __swift_project_value_buffer(v42, qword_1ED9A9120);
  v26 = a1;
  v144 = v43;
  v44 = sub_1B1C2C888();
  v6 = sub_1B1C2D0D8();

  v45 = os_log_type_enabled(v44, v6);
  v11 = v157;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138543362;
    *(v46 + 4) = v26;
    *v47 = v26;
    v48 = v26;
    _os_log_impl(&dword_1B1A8A000, v44, v6, "Start #PreviewRequest, %{public}@", v46, 0xCu);
    sub_1B1A90C20(v47, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v47, -1, -1);
    MEMORY[0x1B2739FD0](v46, -1, -1);
  }

  v154 = v27;

  if (!sub_1B1AD5C10())
  {
    v49 = [objc_opt_self() sharedInstance];
    v50 = [v49 opaqueSessionID];

    sub_1B1BC8D08(v50);
  }

  v51 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  v5 = v155;
  swift_beginAccess();
  v52 = *(v5 + v51);
  a3 = (v52 + 64);
  v53 = *(v52 + 64);
  v54 = *(v52 + 32);
  v153 = 1;
  v55 = 1 << v54;
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  a1 = v56 & v53;
  v27 = (v55 + 63) >> 6;
  v136 = (v159 + 32);
  v137 = (v159 + 8);
  v158 = v52;

  v57 = 0;
  while (1)
  {
    v58 = v57;
    if (!a1)
    {
      break;
    }

LABEL_24:
    v59 = *(*(v158 + 56) + ((v57 << 9) | (8 * __clz(__rbit64(a1)))));
    v156 = OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request;
    v60 = *&v59[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];
    v170 = &unk_1F28D9208;
    v6 = swift_dynamicCastObjCProtocolConditional();
    v159 = v59;
    if (v6)
    {
      swift_getObjectType();
      v61 = v59;
      v62 = v26;
      v63 = v60;
      v5 = AudibleRequestProtocol.audioSessionId.getter();

      v26 = v62;
      v11 = v157;
    }

    else
    {
      v64 = v59;
      v5 = 0;
    }

    a1 &= a1 - 1;
    v65 = sub_1B1AD5C10();
    if (v6)
    {
      v66 = v5 == v65;
    }

    else
    {
      v66 = 0;
    }

    if (v66)
    {
      v135 = v26;
      v67 = *(v156 + v159);
      type metadata accessor for PreviewRequest(0);
      v68 = swift_dynamicCastClass();
      v69 = (v68 == 0) & v153;
      v70 = v143;
      if (v68 && ((v153 ^ 1) & 1) == 0)
      {
        v71 = v67;
        if ([v159 isCancelled])
        {

          goto LABEL_42;
        }

        v153 = v71;
        v72 = v142;
        sub_1B1B12A30();
        sub_1B1B12A30();
        v73 = *(v141 + 48);
        v74 = v72;
        v75 = v140;
        sub_1B1BCECA4(v74, v140, &unk_1EB761F00, &qword_1B1C36480);
        v134 = v73;
        sub_1B1BCECA4(v70, v75 + v73, &unk_1EB761F00, &qword_1B1C36480);
        if (__swift_getEnumTagSinglePayload(v75, 1, v138) == 1)
        {

          sub_1B1A90C20(v70, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v142, &unk_1EB761F00, &qword_1B1C36480);
          if (__swift_getEnumTagSinglePayload(v75 + v134, 1, v138) == 1)
          {
            sub_1B1A90C20(v75, &unk_1EB761F00, &qword_1B1C36480);
            v69 = 0;
            goto LABEL_43;
          }

LABEL_41:
          sub_1B1A90C20(v75, &qword_1EB763F70, &unk_1B1C407E8);
LABEL_42:
          v69 = 1;
          goto LABEL_43;
        }

        sub_1B1BCECA4(v75, v11, &unk_1EB761F00, &qword_1B1C36480);
        v76 = v134;
        if (__swift_getEnumTagSinglePayload(v75 + v134, 1, v138) == 1)
        {

          sub_1B1A90C20(v143, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v142, &unk_1EB761F00, &qword_1B1C36480);
          (*v137)(v11, v138);
          goto LABEL_41;
        }

        v77 = v75 + v76;
        v78 = v138;
        v79 = v139;
        (*v136)(v139, v77, v138);
        sub_1B1BCF378(&qword_1EB763F78, MEMORY[0x1E6968FB0]);
        LODWORD(v134) = sub_1B1C2CB18();

        v80 = *v137;
        v81 = v79;
        v11 = v157;
        (*v137)(v81, v78);
        sub_1B1A90C20(v143, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90C20(v142, &unk_1EB761F00, &qword_1B1C36480);
        v80(v11, v78);
        sub_1B1A90C20(v75, &unk_1EB761F00, &qword_1B1C36480);
        v69 = v134 ^ 1;
      }

LABEL_43:
      v6 = v159;
      v5 = *(v156 + v159);
      sub_1B1BCE560(v5);

      v153 = v69;
      v26 = v135;
    }

    else
    {
    }
  }

  while (1)
  {
    v57 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v57 >= v27)
    {
      break;
    }

    a1 = a3[v57];
    ++v58;
    if (a1)
    {
      goto LABEL_24;
    }
  }

  if (v153)
  {
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v82 = ObjectPool.init()();
    v83 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v83);
    sub_1B1B76328();
    v168 = MEMORY[0x1E69E7CC0];
    v169 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v85 = type metadata accessor for RequestParsingAction();
    swift_allocObject();

    v86 = RequestParsingAction.init(pool:)();
    type metadata accessor for WorkflowNode();
    v87 = swift_allocObject();
    v87[5] = v85;
    v87[6] = &protocol witness table for RequestParsingAction;
    v87[2] = v86;
    *(inited + 32) = v87;
    v88 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v158 = v82;
    v89 = AudioPlaybackAction.init(pool:)();
    v90 = swift_allocObject();
    v90[5] = v88;
    v90[6] = &protocol witness table for AudioPlaybackAction;
    v90[2] = v89;
    *(inited + 40) = v90;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    v161 = v168;
    v162 = v169;
    type metadata accessor for Workflow();
    swift_allocObject();
    v91 = v83;

    v156 = v83;
    v159 = Workflow.init(graph:notification:errorHandlers:)();
    v153 = 0;
    v92 = type metadata accessor for DelegateHandler();
    v93 = swift_allocObject();
    v94 = v26;
    v95 = v91;
    v96 = v155;
    v97 = sub_1B1BCEF98(v95, v96, v94, v93);
    v98 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v157 = v95;
    v99 = AudioHandler.init(notificationCenter:)(v157);
    v100 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1B1C36280;
    v147 = v97;
    *(v101 + 32) = v97;
    *(v101 + 88) = v98;
    *(v101 + 56) = v92;
    *(v101 + 64) = v99;
    *(v100 + 16) = v101;
    v102 = v100;
    v103 = type metadata accessor for TaskOperation();
    v104 = objc_allocWithZone(v103);
    v105 = &v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *v105 = 0;
    *(v105 + 1) = 0;
    *(v105 + 2) = 1;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v94;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v159;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v96;
    v155 = v99;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v99;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v156;
    *&v104[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v167.receiver = v104;
    v167.super_class = v103;
    swift_retain_n();
    v106 = v94;
    v107 = v96;

    v108 = objc_msgSendSuper2(&v167, sel_init);
    v109 = swift_allocObject();
    v109[2] = v108;
    v109[3] = v106;
    v109[4] = v107;
    v109[5] = sub_1B1A95808;
    v109[6] = v154;
    v109[7] = v102;
    v144 = v102;
    v165 = sub_1B1BCF6A4;
    v166 = v109;
    v161 = MEMORY[0x1E69E9820];
    v162 = 1107296256;
    v156 = &v163;
    v163 = sub_1B1A95870;
    v164 = &block_descriptor_63;
    v110 = _Block_copy(&v161);
    v111 = v108;
    v143 = v106;
    v112 = v107;
    v113 = v111;

    sub_1B1A94514(sub_1B1BCF6A4);

    [v113 setCompletionBlock_];
    _Block_release(v110);

    v114 = *&v112[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v115 = v143;
    v116 = v112;
    v117 = v113;
    [v114 lock];
    sub_1B1BCE400(v116, v115, v117);
    [v114 unlock];

    v118 = *&v116[OBJC_IVAR___SiriTTSServiceSession_queue];
    v119 = swift_allocObject();
    *(v119 + 16) = v117;
    v165 = sub_1B1BCF6A8;
    v166 = v119;
    v161 = MEMORY[0x1E69E9820];
    v162 = 1107296256;
    v163 = sub_1B1A95870;
    v164 = &block_descriptor_60_1;
    v120 = _Block_copy(&v161);
    v121 = v117;
    v122 = v148;
    sub_1B1C2C9A8();
    v160 = MEMORY[0x1E69E7CC0];
    sub_1B1BCF378(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v123 = v150;
    v124 = v146;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v122, v123, v120);
    _Block_release(v120);

    (v145[1])(v123, v124);
    (*(v149 + 8))(v122, v151);

    v125 = v152;
  }

  else
  {
    v126 = v26;
    v127 = sub_1B1C2C888();
    v128 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v129 = 138543362;
      *(v129 + 4) = v126;
      *v130 = v126;
      v131 = v126;
      _os_log_impl(&dword_1B1A8A000, v127, v128, "#PreviewRequest ignored for %{public}@", v129, 0xCu);
      sub_1B1A90C20(v130, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v130, -1, -1);
      MEMORY[0x1B2739FD0](v129, -1, -1);
    }

    v132 = v152;
    v152[2](v152, 0);

    v125 = v132;
  }

  _Block_release(v125);
}

uint64_t sub_1B1BCB310(char *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3)
{
  v169 = a3;
  v168 = a2;
  v4 = sub_1B1C2C988();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C9D8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v166 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v165 = v19 - v18;
  v20 = sub_1B1C2C1C8();
  v21 = OUTLINED_FUNCTION_7(v20);
  v173 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  v153 = v26 - v25;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  v27 = OUTLINED_FUNCTION_45(v155);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v149 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v154 = (&v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x1EEE9AC00](v33);
  v157 = &v149 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v163 = &v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v149 - v40;
  if (qword_1ED9A96B8 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_5_27();
  }

  v164 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v42 != 2 && (v42 & 1) != 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v43 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v43, qword_1ED9A9120);
    v44 = sub_1B1C2C888();
    v45 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v44, v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
LABEL_46:
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_47;
  }

  v152 = v20;
  v161 = v7;
  v162 = v4;
  v51 = mach_absolute_time();
  v52 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_66_0();
  *&a1[v52] = v51;
  v53 = v170;
  v54 = sub_1B1BC9564();
  v56 = v55;
  v7 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_66_0();
  v57 = v7[1];
  *v7 = v54;
  v7[1] = v56;

  sub_1B1BCECA4(v53 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v41, &qword_1EB761DF8, qword_1B1C40850);
  v58 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1A91B74(v41, &v58[a1]);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v59 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v59, qword_1ED9A9120);
  v41 = a1;
  v158 = v58;
  v60 = sub_1B1C2C888();
  v61 = sub_1B1C2D0D8();

  v20 = "OptionalNotificationHandling";
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_21_0();
    v7 = OUTLINED_FUNCTION_17_2();
    *v62 = 138543362;
    *(v62 + 4) = v41;
    *v7 = v41;
    v63 = v41;
    _os_log_impl(&dword_1B1A8A000, v60, v61, "Start #PreviewRequest, %{public}@", v62, 0xCu);
    sub_1B1A90C20(v7, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v159 = v12;
  v160 = v13;

  if (!sub_1B1AD5C10())
  {
    v64 = [objc_opt_self() sharedInstance];
    v65 = [v64 opaqueSessionID];

    sub_1B1BC8D08(v65);
  }

  v66 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  v4 = v170;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v67 = *&v4[v66];
  a1 = (v67 + 64);
  v68 = *(v67 + 64);
  v69 = *(v67 + 32);
  v167 = 1;
  v70 = 1 << v69;
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v13 = v71 & v68;
  v12 = (v70 + 63) >> 6;
  v150 = (v173 + 32);
  v151 = (v173 + 8);
  v173 = v67;

  v72 = 0;
  v171 = v41;
  while (1)
  {
    v73 = v72;
    if (!v13)
    {
      break;
    }

LABEL_21:
    v20 = *(*(v173 + 56) + ((v72 << 9) | (8 * __clz(__rbit64(v13)))));
    v172 = OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request;
    v74 = *&v20[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];
    v184 = &unk_1F28D9208;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      swift_getObjectType();
      v75 = v20;
      v76 = v74;
      v4 = AudibleRequestProtocol.audioSessionId.getter();

      v41 = v171;
    }

    else
    {
      v77 = v20;
      v4 = 0;
    }

    v13 &= v13 - 1;
    v78 = sub_1B1AD5C10();
    if (v7)
    {
      v79 = v4 == v78;
    }

    else
    {
      v79 = 0;
    }

    if (v79)
    {
      v7 = *&v20[v172];
      type metadata accessor for PreviewRequest(0);
      v80 = swift_dynamicCastClass();
      v81 = (v80 == 0) & v167;
      v82 = v163;
      if (v80 && ((v167 ^ 1) & 1) == 0)
      {
        v83 = v7;
        if ([v20 isCancelled])
        {

          goto LABEL_39;
        }

        v167 = v83;
        sub_1B1B12A30();
        v84 = v157;
        sub_1B1B12A30();
        v85 = *(v155 + 48);
        v86 = v82;
        v87 = v156;
        sub_1B1BCECA4(v86, v156, &unk_1EB761F00, &qword_1B1C36480);
        v149 = v85;
        v88 = v87 + v85;
        v89 = v84;
        sub_1B1BCECA4(v84, v88, &unk_1EB761F00, &qword_1B1C36480);
        v90 = v152;
        if (__swift_getEnumTagSinglePayload(v87, 1, v152) == 1)
        {

          v91 = v89;
          v7 = &qword_1B1C36480;
          sub_1B1A90C20(v91, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v163, &unk_1EB761F00, &qword_1B1C36480);
          if (__swift_getEnumTagSinglePayload(v87 + v149, 1, v90) == 1)
          {
            sub_1B1A90C20(v87, &unk_1EB761F00, &qword_1B1C36480);
            v81 = 0;
            goto LABEL_40;
          }

LABEL_38:
          sub_1B1A90C20(v87, &qword_1EB763F70, &unk_1B1C407E8);
LABEL_39:
          v81 = 1;
          goto LABEL_40;
        }

        v7 = v154;
        sub_1B1BCECA4(v87, v154, &unk_1EB761F00, &qword_1B1C36480);
        v92 = v149;
        if (__swift_getEnumTagSinglePayload(v87 + v149, 1, v90) == 1)
        {

          sub_1B1A90C20(v157, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v163, &unk_1EB761F00, &qword_1B1C36480);
          (*v151)(v7, v90);
          goto LABEL_38;
        }

        v93 = v153;
        (*v150)(v153, v87 + v92, v90);
        sub_1B1BCF378(&qword_1EB763F78, MEMORY[0x1E6968FB0]);
        LODWORD(v149) = sub_1B1C2CB18();

        v94 = *v151;
        (*v151)(v93, v90);
        v7 = &qword_1B1C36480;
        sub_1B1A90C20(v157, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90C20(v163, &unk_1EB761F00, &qword_1B1C36480);
        v94(v154, v90);
        sub_1B1A90C20(v156, &unk_1EB761F00, &qword_1B1C36480);
        v81 = v149 ^ 1;
      }

LABEL_40:
      v4 = *&v20[v172];
      sub_1B1BCE560(v4);

      v167 = v81;
      v41 = v171;
    }

    else
    {
    }
  }

  while (1)
  {
    v72 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v72 >= v12)
    {
      break;
    }

    v13 = *&a1[8 * v72];
    ++v73;
    if (v13)
    {
      goto LABEL_21;
    }
  }

  if (v167)
  {
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v95 = ObjectPool.init()();
    v96 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v96);
    sub_1B1B76328();
    v182 = MEMORY[0x1E69E7CC0];
    v183 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v98 = type metadata accessor for RequestParsingAction();
    OUTLINED_FUNCTION_24_6();

    v99 = RequestParsingAction.init(pool:)();
    type metadata accessor for WorkflowNode();
    OUTLINED_FUNCTION_13_22();
    v100 = swift_allocObject();
    v100[5] = v98;
    v100[6] = &protocol witness table for RequestParsingAction;
    v100[2] = v99;
    *(inited + 32) = v100;
    v101 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v172 = v95;
    v102 = AudioPlaybackAction.init(pool:)();
    OUTLINED_FUNCTION_13_22();
    v103 = swift_allocObject();
    v103[5] = v101;
    v103[6] = &protocol witness table for AudioPlaybackAction;
    v103[2] = v102;
    *(inited + 40) = v103;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    v175 = v182;
    v176 = v183;
    type metadata accessor for Workflow();
    swift_allocObject();
    v104 = v96;

    v173 = Workflow.init(graph:notification:errorHandlers:)();
    v167 = 0;
    v105 = type metadata accessor for DelegateHandler();
    v106 = OUTLINED_FUNCTION_24_6();
    v107 = v171;
    v108 = v104;
    v109 = v170;
    v110 = sub_1B1BCEF98(v108, v109, v107, v106);
    v111 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v171 = v108;
    v112 = AudioHandler.init(notificationCenter:)(v171);
    OUTLINED_FUNCTION_17();
    v113 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1B1C36280;
    v164 = v110;
    *(v114 + 32) = v110;
    *(v114 + 88) = v111;
    *(v114 + 56) = v105;
    *(v114 + 64) = v112;
    *(v113 + 16) = v114;
    v115 = type metadata accessor for TaskOperation();
    v116 = objc_allocWithZone(v115);
    v117 = &v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *v117 = 0;
    *(v117 + 1) = 0;
    *(v117 + 2) = 1;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v107;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v173;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v109;
    v170 = v112;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v112;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v96;
    *&v116[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v181.receiver = v116;
    v181.super_class = v115;
    swift_retain_n();
    v118 = v107;
    v119 = v109;

    v120 = objc_msgSendSuper2(&v181, sel_init);
    v121 = swift_allocObject();
    v121[2] = v120;
    v121[3] = v118;
    v122 = v168;
    v123 = v169;
    v121[4] = v119;
    v121[5] = v122;
    v121[6] = v123;
    v121[7] = v113;
    v163 = v113;
    v179 = sub_1B1BCF364;
    v180 = v121;
    v175 = MEMORY[0x1E69E9820];
    v176 = 1107296256;
    v168 = &v177;
    v177 = sub_1B1A95870;
    v178 = &block_descriptor_9_2;
    v124 = _Block_copy(&v175);
    v125 = v120;
    v158 = v118;
    v126 = v119;
    v127 = v125;

    sub_1B1A94514(sub_1B1BCF364);

    [v127 setCompletionBlock_];
    _Block_release(v124);

    v128 = *&v126[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v129 = v158;
    v130 = v126;
    v131 = v127;
    [v128 lock];
    sub_1B1BCE400(v130, v129, v131);
    [v128 unlock];

    v132 = *&v130[OBJC_IVAR___SiriTTSServiceSession_queue];
    OUTLINED_FUNCTION_17();
    v133 = swift_allocObject();
    *(v133 + 16) = v131;
    v179 = sub_1B1BCF368;
    v180 = v133;
    v175 = MEMORY[0x1E69E9820];
    v176 = 1107296256;
    v177 = sub_1B1A95870;
    v178 = &block_descriptor_24;
    v134 = _Block_copy(&v175);
    v135 = v131;
    v136 = v165;
    sub_1B1C2C9A8();
    v174 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1B1BCF378(v137, v138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v139 = v159;
    v140 = v162;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v136, v139, v134);
    _Block_release(v134);

    (v161[1])(v139, v140);
    (*(v166 + 8))(v136, v160);
  }

  v142 = v41;
  v44 = sub_1B1C2C888();
  v143 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v44, v143))
  {
    v144 = OUTLINED_FUNCTION_21_0();
    v145 = OUTLINED_FUNCTION_17_2();
    *v144 = 138543362;
    *(v144 + 4) = v142;
    *v145 = v142;
    v146 = v142;
    OUTLINED_FUNCTION_13_0(&dword_1B1A8A000, v147, v148, "#PreviewRequest ignored for %{public}@");
    sub_1B1A90C20(v145, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    goto LABEL_46;
  }

LABEL_47:

  return (v168)(0);
}

uint64_t sub_1B1BCC454(uint64_t a1, void *a2, char *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = sub_1B1AA9FF0();
  if (v10)
  {
    v11 = v10;
    v39 = a3;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    v13 = a2;
    v14 = v11;
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v15, v16))
    {
      v36 = a4;
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v17 = 134218242;
      v37 = a2;
      v18 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v17 + 4) = *&v13[v18];

      *(v17 + 12) = 2080;
      v19 = [v14 localizedDescription];
      v20 = sub_1B1C2CB58();
      v22 = v21;

      v23 = sub_1B1A930E4(v20, v22, &v40);
      a2 = v37;

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "#Error #PreviewRequest id %llu, error: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B2739FD0](v35, -1, -1);
      v24 = v17;
      a4 = v36;
      MEMORY[0x1B2739FD0](v24, -1, -1);
    }

    else
    {
    }

    a3 = v39;
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a2;
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v27, v28))
    {
      v38 = a2;
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v29 + 4) = *&v26[v30];

      _os_log_impl(&dword_1B1A8A000, v27, v28, "#Success #PreviewRequest id %llu", v29, 0xCu);
      v31 = v29;
      a2 = v38;
      MEMORY[0x1B2739FD0](v31, -1, -1);
    }

    else
    {
    }
  }

  sub_1B1BC8D74(*&a3[OBJC_IVAR___SiriTTSServiceSession_tasksLock], a3, a2);
  v32 = sub_1B1AA9FF0();
  a4();

  swift_beginAccess();
  v33 = *(a6 + 16);
  *(a6 + 16) = MEMORY[0x1E69E7CC0];
}

void sub_1B1BCC830(char *a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v92 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1C2C9D8();
  v91 = *(v10 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v90 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v83 - v15;
  v93 = swift_allocObject();
  *(v93 + 16) = a3;
  _Block_copy(a3);
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1A91998();
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v88 = v6;
    v89 = a3;
    v22 = mach_absolute_time();
    v23 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *&a1[v23] = v22;
    v24 = sub_1B1BC9564();
    v26 = v25;
    v27 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v24;
    v27[1] = v26;

    sub_1B1BCECA4(a2 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v16, &qword_1EB761DF8, qword_1B1C40850);
    v29 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
    swift_beginAccess();
    sub_1B1A91B74(v16, &a1[v29]);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v30 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v30, qword_1ED9A9120);
    v31 = a1;
    v32 = sub_1B1C2C888();
    v33 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_1B1A8A000, v32, v33, "Start #AudioHintRequest, %{public}@", v34, 0xCu);
      sub_1B1A90C20(v35, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v35, -1, -1);
      MEMORY[0x1B2739FD0](v34, -1, -1);
    }

    if (!sub_1B1AD5C10())
    {
      v37 = [objc_opt_self() sharedInstance];
      v38 = [v37 opaqueSessionID];

      sub_1B1BC8D08(v38);
    }

    v86 = v10;
    v87 = v7;
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v39 = ObjectPool.init()();
    v40 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v40);
    sub_1B1B76328();
    v103 = MEMORY[0x1E69E7CC0];
    v104 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v42 = type metadata accessor for RequestParsingAction();
    swift_allocObject();

    v43 = RequestParsingAction.init(pool:)();
    type metadata accessor for WorkflowNode();
    v44 = swift_allocObject();
    v44[5] = v42;
    v44[6] = &protocol witness table for RequestParsingAction;
    v44[2] = v43;
    *(inited + 32) = v44;
    v45 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v85 = v39;
    v46 = AudioPlaybackAction.init(pool:)();
    v47 = swift_allocObject();
    v47[5] = v45;
    v47[6] = &protocol witness table for AudioPlaybackAction;
    v47[2] = v46;
    *(inited + 40) = v47;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    aBlock = v103;
    v97 = v104;
    type metadata accessor for Workflow();
    swift_allocObject();
    v48 = v40;

    v94 = Workflow.init(graph:notification:errorHandlers:)();
    v49 = type metadata accessor for DelegateHandler();
    v50 = swift_allocObject();
    v51 = v31;
    v52 = v48;
    v53 = a2;
    v54 = sub_1B1BCEF98(v52, v53, v51, v50);
    v55 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v84 = v52;
    v56 = AudioHandler.init(notificationCenter:)(v84);
    v57 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1B1C36280;
    v83[2] = v54;
    *(v58 + 32) = v54;
    *(v58 + 88) = v55;
    *(v58 + 56) = v49;
    *(v58 + 64) = v56;
    *(v57 + 16) = v58;
    v59 = v57;
    v60 = type metadata accessor for TaskOperation();
    v61 = objc_allocWithZone(v60);
    v62 = &v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *(v62 + 2) = 1;
    *v62 = 0;
    *(v62 + 1) = 0;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v51;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v94;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v53;
    v83[3] = v56;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v56;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v40;
    *&v61[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v102.receiver = v61;
    v102.super_class = v60;
    swift_retain_n();
    v63 = v51;
    v64 = v53;

    v65 = objc_msgSendSuper2(&v102, sel_init);
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = v63;
    v67 = v93;
    v66[4] = sub_1B1A95AD0;
    v66[5] = v67;
    v83[1] = v59;
    v66[6] = v59;
    v100 = sub_1B1BCF6A0;
    v101 = v66;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v83[0] = &v98;
    v98 = sub_1B1A95870;
    v99 = &block_descriptor_44;
    v68 = _Block_copy(&aBlock);
    v69 = v65;
    v70 = v63;
    v71 = v69;

    sub_1B1A94514(sub_1B1BCF6A0);

    [v71 setCompletionBlock_];
    _Block_release(v68);

    v72 = *&v64[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v73 = v70;
    v74 = v64;
    v75 = v71;
    [v72 lock];
    sub_1B1BCE400(v74, v73, v75);
    [v72 unlock];

    v76 = *&v74[OBJC_IVAR___SiriTTSServiceSession_queue];
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    v100 = sub_1B1BCF6A8;
    v101 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1B1A95870;
    v99 = &block_descriptor_41;
    v78 = _Block_copy(&aBlock);
    v79 = v75;
    v80 = v90;
    sub_1B1C2C9A8();
    v95 = MEMORY[0x1E69E7CC0];
    sub_1B1BCF378(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v81 = v92;
    v82 = v88;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v80, v81, v78);
    _Block_release(v78);

    (*(v87 + 8))(v81, v82);
    (*(v91 + 8))(v80, v86);

    _Block_release(v89);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "Skipped #AudioHintRequest: TTS is disabled.", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    a3[2](a3, 0);

    _Block_release(a3);
  }
}

uint64_t sub_1B1BCD524(char *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v113 = a3;
  v112 = a2;
  v6 = sub_1B1C2C988();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1B1C2C9D8();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v111 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v102 - v25;
  if (qword_1ED9A96B8 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  sub_1B1A91998();
  if (v27 == 2 || (v27 & 1) == 0)
  {
    v108 = v15;
    v109 = v9;
    v110 = v6;
    v33 = mach_absolute_time();
    v34 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    OUTLINED_FUNCTION_66_0();
    *&a1[v34] = v33;
    v35 = sub_1B1BC9564();
    v37 = v36;
    v38 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_66_0();
    v39 = v38[1];
    *v38 = v35;
    v38[1] = v37;

    sub_1B1BCECA4(v4 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v26, &qword_1EB761DF8, qword_1B1C40850);
    v40 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    sub_1B1A91B74(v26, &a1[v40]);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v41 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v41, qword_1ED9A9120);
    v42 = a1;
    v43 = sub_1B1C2C888();
    v44 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_21_0();
      v45 = OUTLINED_FUNCTION_14_16();
      *v26 = 138543362;
      *(v26 + 4) = v42;
      *v45 = v42;
      v46 = v42;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_1B1A90C20(v45, &qword_1EB7625C0, &qword_1B1C37990);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_11_23();
    }

    if (!sub_1B1AD5C10())
    {
      v52 = [objc_opt_self() sharedInstance];
      v53 = [v52 opaqueSessionID];

      sub_1B1BC8D08(v53);
    }

    v106 = v18;
    v107 = v14;
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v54 = ObjectPool.init()();
    v55 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v55);
    sub_1B1B76328();
    v122 = MEMORY[0x1E69E7CC0];
    v123 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v57 = type metadata accessor for RequestParsingAction();
    OUTLINED_FUNCTION_24_6();

    v58 = RequestParsingAction.init(pool:)();
    type metadata accessor for WorkflowNode();
    OUTLINED_FUNCTION_13_22();
    v59 = swift_allocObject();
    v59[5] = v57;
    v59[6] = &protocol witness table for RequestParsingAction;
    v59[2] = v58;
    *(inited + 32) = v59;
    v60 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v105 = v54;
    v61 = AudioPlaybackAction.init(pool:)();
    OUTLINED_FUNCTION_13_22();
    v62 = swift_allocObject();
    v62[5] = v60;
    v62[6] = &protocol witness table for AudioPlaybackAction;
    v62[2] = v61;
    *(inited + 40) = v62;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    aBlock = v122;
    v116 = v123;
    type metadata accessor for Workflow();
    swift_allocObject();
    v63 = v55;

    v103 = v55;
    v64 = Workflow.init(graph:notification:errorHandlers:)();
    v65 = type metadata accessor for DelegateHandler();
    v66 = OUTLINED_FUNCTION_24_6();
    v67 = v42;
    v68 = v63;
    v69 = v4;
    v70 = sub_1B1BCEF98(v68, v69, v67, v66);
    v71 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v104 = v68;
    v72 = AudioHandler.init(notificationCenter:)(v104);
    OUTLINED_FUNCTION_17();
    v73 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1B1C36280;
    v102[0] = v70;
    *(v74 + 32) = v70;
    *(v74 + 88) = v71;
    *(v74 + 56) = v65;
    *(v74 + 64) = v72;
    *(v73 + 16) = v74;
    v75 = v73;
    v76 = type metadata accessor for TaskOperation();
    v77 = objc_allocWithZone(v76);
    v78 = &v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *(v78 + 2) = 1;
    *v78 = 0;
    *(v78 + 1) = 0;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v67;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v64;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v69;
    v102[1] = v72;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v72;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v103;
    *&v77[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v121.receiver = v77;
    v121.super_class = v76;
    swift_retain_n();
    v79 = v67;
    v80 = v69;

    v81 = objc_msgSendSuper2(&v121, sel_init);
    OUTLINED_FUNCTION_13_22();
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = v79;
    v83 = v112;
    v112 = v64;
    v84 = v113;
    v82[4] = v83;
    v82[5] = v84;
    v82[6] = v75;
    v119 = sub_1B1BCF3C0;
    v120 = v82;
    aBlock = MEMORY[0x1E69E9820];
    v116 = 1107296256;
    v103 = &v117;
    v117 = sub_1B1A95870;
    v118 = &block_descriptor_22;
    v85 = _Block_copy(&aBlock);
    v86 = v81;
    v87 = v79;
    v88 = v86;

    sub_1B1A94514(sub_1B1BCF3C0);

    [v88 setCompletionBlock_];
    _Block_release(v85);

    v89 = *&v80[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v90 = v87;
    v91 = v80;
    v92 = v88;
    [v89 lock];
    sub_1B1BCE400(v91, v90, v92);
    [v89 unlock];

    v93 = *&v91[OBJC_IVAR___SiriTTSServiceSession_queue];
    OUTLINED_FUNCTION_17();
    v94 = swift_allocObject();
    *(v94 + 16) = v92;
    v119 = sub_1B1BCF6A8;
    v120 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v116 = 1107296256;
    v117 = sub_1B1A95870;
    v118 = &block_descriptor_19;
    v95 = _Block_copy(&aBlock);
    v96 = v92;
    v97 = v111;
    sub_1B1C2C9A8();
    v114 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1B1BCF378(v98, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v100 = v107;
    v101 = v110;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v97, v100, v95);
    _Block_release(v95);

    (*(v109 + 8))(v100, v101);
    (*(v106 + 8))(v97, v108);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v28 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v28, qword_1ED9A9120);
    v29 = sub_1B1C2C888();
    v30 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B1A8A000, v29, v30, "Skipped #AudioHintRequest: TTS is disabled.", v31, 2u);
      OUTLINED_FUNCTION_11();
    }

    return v112(0);
  }
}

uint64_t sub_1B1BCE0B8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1B1AA9FF0();
  if (v8)
  {
    v9 = v8;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v10 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v10, qword_1ED9A9120);
    v11 = a2;
    v12 = v9;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0B8();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v31 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 134218242;
    v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v15 + 4) = *&v11[v17];

    *(v15 + 12) = 2080;
    v18 = [v12 localizedDescription];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    v22 = sub_1B1A930E4(v19, v21, &v32);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "#Error #AudioHintRequest id %llu, error: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2739FD0](v16, -1, -1);
    v23 = v15;
    a3 = v31;
    MEMORY[0x1B2739FD0](v23, -1, -1);
    goto LABEL_10;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v24 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v24, qword_1ED9A9120);
  v12 = a2;
  v13 = sub_1B1C2C888();
  v25 = sub_1B1C2D0D8();
  if (!os_log_type_enabled(v13, v25))
  {
LABEL_10:

    goto LABEL_12;
  }

  v26 = swift_slowAlloc();
  *v26 = 134217984;
  v27 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  swift_beginAccess();
  *(v26 + 4) = *&v12[v27];

  _os_log_impl(&dword_1B1A8A000, v13, v25, "#Success #AudioHintRequest id %llu", v26, 0xCu);
  MEMORY[0x1B2739FD0](v26, -1, -1);

LABEL_12:
  v28 = sub_1B1AA9FF0();
  a3();

  swift_beginAccess();
  v29 = *(a5 + 16);
  *(a5 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1BCE400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  v9 = a3;
  v10 = *(a1 + v8);
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v8);
  sub_1B1B379E4();
  *(a1 + v8) = v12;
  return swift_endAccess();
}

void sub_1B1BCE4D4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1B1BCE560(void *a1)
{
  v2 = v1;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21_0();
    v9 = OUTLINED_FUNCTION_17_2();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    OUTLINED_FUNCTION_13_0(&dword_1B1A8A000, v11, v12, "#CancelRequest, %@");
    sub_1B1A90C20(v9, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_1();
  }

  v13 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = *&v5[v13];
  v15 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v16 = sub_1B1B2A278(v14, *(v2 + v15));
  [v16 cancel];
}

void sub_1B1BCE728(uint64_t a1, void (**a2)(void, float, float))
{
  v4 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  swift_beginAccess();
  v5 = *(a1 + v4);

  sub_1B1BC8FB0(v6);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_5;
  }

  if (!*&v8[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler])
  {

LABEL_5:
    a2[2](a2, -120.0, -120.0);
    goto LABEL_6;
  }

  v9 = *&v8[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler];

  AudioHandler.audioPower.getter(&v10);
  a2[2](a2, *v10.i32, *&v10.i32[1]);

LABEL_6:
  _Block_release(a2);
}

uint64_t sub_1B1BCE808(void (*a1)(float, float))
{
  v3 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_1B1BC8FB0(v5);
  v7 = v6;

  if (v7)
  {
    if (*&v7[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler])
    {
      v9 = *&v7[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler];

      AudioHandler.audioPower.getter(&v11);
      a1(*v11.i32, *&v11.i32[1]);
    }
  }

  return (a1)(v8, -120.0, -120.0);
}

Swift::Void __swiftcall ServiceSession.didStartSpeaking(requestId:)(Swift::UInt64 requestId)
{
  v3 = *&v1[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
  v4 = v1;
  [v3 lock];
  v5 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *&v4[v5];
  if (*(v6 + 16) && (v7 = sub_1B1A954B0(requestId), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  [v3 unlock];

  if (v9)
  {
    v11 = *&v9[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];

    if (swift_dynamicCastObjCProtocolConditional())
    {
      ObjectType = swift_getObjectType();
      started = AudibleRequestProtocol.didStartSpeaking.getter();
      if (started)
      {
        v14 = started;
        AudibleRequestProtocol.didStartSpeaking.setter(0, 0, ObjectType);
        v14(v15);

        sub_1B1A9D798(v14);
        return;
      }
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v25 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v25, qword_1ED9A9120);
      v26 = v11;
      v11 = sub_1B1C2C888();
      v27 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v11, v27))
      {
        OUTLINED_FUNCTION_21_0();
        v28 = OUTLINED_FUNCTION_14_16();
        *v4 = 138412290;
        *(v4 + 4) = v26;
        *v28 = v26;
        v29 = v26;
        _os_log_impl(&dword_1B1A8A000, v11, v27, "Request is not audible, but called with didStartSpeaking. %@", v4, 0xCu);
        sub_1B1A90C20(v28, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_11_23();

        return;
      }
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v16 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v16, qword_1ED9A9120);
    v17 = sub_1B1C2C888();
    v18 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_21_0();
      *v19 = 134217984;
      *(v19 + 4) = requestId;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_11_23();
    }
  }
}

uint64_t sub_1B1BCECA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_45(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

void *sub_1B1BCED04(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1B1BCED7C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B1BCEE1C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B1BCEE8C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B1BCEE1C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1B1B276E0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1BCEE8C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1B1C2D578();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

void *sub_1B1BCEF98(void *a1, void *a2, void *a3, void *a4)
{
  a4[3] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  a4[2] = a1;
  swift_unknownObjectWeakAssign();
  a4[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = qword_1ED9A4D58;
  v10 = a1;
  v11 = a3;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED9A4D60;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v13;

  sub_1B1ADAB20(v12, sub_1B1ACE10C, v14);

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9A4EB0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v16;
  v18 = v11;
  sub_1B1ADABD8(v15, sub_1B1ACC378, v17);

  if (qword_1ED9A4DA0 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED9A4DA8;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v22 = v18;
  sub_1B1ADBB38(v19, sub_1B1AC52E8, v21);

  if (qword_1ED9A4C90 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED9A4C98;
  v24 = swift_allocObject();
  swift_weakInit();

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  v26 = v22;
  sub_1B1ADBB68(v23, sub_1B1AAFF04, v25);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  sub_1B1ADAC08(qword_1ED9A4E90, sub_1B1ADF0EC, 0);

  return a4;
}

uint64_t sub_1B1BCF378(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B1BCF3CC()
{
  sub_1B1AF6018();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_13_22();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t AudioPlaybackAction.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  AudioPlaybackAction.init(pool:)();
  return v0;
}

uint64_t sub_1B1BCF708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BCF768(v4);
}

uint64_t sub_1B1BCF734()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1B1BCF768(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1B1BCF800()
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v0 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v0, qword_1ED9A9120);
  v1 = sub_1B1C2C888();
  v2 = sub_1B1C2D098();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B1A8A000, v1, v2, "Cancelling audio playback", v3, 2u);
    MEMORY[0x1B2739FD0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    sub_1B1AA6ED0(v5 + 32, &v9);

    if (*(&v10 + 1))
    {
      sub_1B1A8D0E0(&v9, v12);
      v6 = v13;
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v7 + 72))(v6, v7);
      return __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return sub_1B1A90C78(&v9, &qword_1EB763F90, &unk_1B1C40840);
}

uint64_t sub_1B1BCFB40()
{
  v0 = sub_1B1C2D128();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2D118();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1B1C2C9D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1B1AC3BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AC3C50();
  sub_1B1C2D418();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1B1C2D158();
  qword_1ED9AA638 = result;
  return result;
}

uint64_t sub_1B1BCFD58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1B1C2C0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v9, qword_1ED9AA650);
  __swift_project_value_buffer(v9, qword_1ED9AA650);
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F58], v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  return sub_1B1C2C198();
}

uint64_t sub_1B1BCFF04()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  return OUTLINED_FUNCTION_0_33() & 1;
}

uint64_t sub_1B1BCFF50()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
  return OUTLINED_FUNCTION_0_33() & 1;
}

unint64_t sub_1B1BCFF9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1B1C2CC78())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1B1C2CDD8() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1B1C2D7A8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1B1BD0084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1B1C2D7A8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1B1BD0110(uint64_t a1, uint64_t a2)
{
  result = sub_1B1A9547C(a2);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2738A20](v6, a2);
      result = swift_unknownObjectRelease();
      if (v8 == a1)
      {
        return v6;
      }

      goto LABEL_6;
    }

    if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if (*(a2 + 8 * v6 + 32) == a1)
    {
      return v6;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1B1BD01D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C38370;
  if (qword_1ED9A4F08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9A4F10;
  *(v0 + 32) = qword_1ED9A4F10;
  v2 = qword_1EB761310;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB761318;
  *(v0 + 40) = qword_1EB761318;
  v5 = qword_1ED9A94C8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A94B8;
  *(v0 + 48) = qword_1ED9A94B8;
  v8 = qword_1ED9A9840;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9728;
  *(v0 + 56) = qword_1ED9A9728;
  v11 = qword_1EB7615D8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB7625D0;
  *(v0 + 64) = qword_1EB7625D0;
  v14 = qword_1ED9A4EF8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9A4F00;
  *(v0 + 72) = qword_1ED9A4F00;
  qword_1EB763FB0 = v0;

  return v16;
}