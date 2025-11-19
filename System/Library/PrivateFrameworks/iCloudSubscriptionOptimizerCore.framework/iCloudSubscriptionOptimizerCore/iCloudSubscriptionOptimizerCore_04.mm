uint64_t NewOfferRequest.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v1 + *(v7 + 32), v6, &qword_280A24658, &unk_275AE7960);
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t sub_275A9ED50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SubscriptionClientResponse.error.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ErrorResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t (*ErrorResponse.msg.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for ErrorResponse(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t NewOfferRequest.mlServerScore.setter(double a1)
{
  result = type metadata accessor for NewOfferRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferRequest.mlServerScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferRequest.clearMlServerScore()()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferRequest.litmusInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferRequest(0) + 24);
  sub_275A5FE04(v1 + v3, &qword_280A24650, &qword_275AEAC50);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for LitmusInfo);
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferRequest.litmusInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50) - 8) + 64);
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
  v9 = type metadata accessor for LitmusInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for NewOfferRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24650, &qword_275AEAC50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 256;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for LitmusInfo);
  }

  return sub_275A9F420;
}

void sub_275A9F420(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for LitmusInfo);
    sub_275A5FE04(v9 + v3, &qword_280A24650, &qword_275AEAC50);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for LitmusInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for LitmusInfo);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24650, &qword_275AEAC50);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for LitmusInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NewOfferRequest.hasLitmusInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v0 + *(v5 + 24), v4, &qword_280A24650, &qword_275AEAC50);
  v6 = type metadata accessor for LitmusInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_275A5FE04(v4, &qword_280A24650, &qword_275AEAC50);
  return v7;
}

Swift::Void __swiftcall NewOfferRequest.clearLitmusInfo()()
{
  v1 = *(type metadata accessor for NewOfferRequest(0) + 24);
  sub_275A5FE04(v0 + v1, &qword_280A24650, &qword_275AEAC50);
  v2 = type metadata accessor for LitmusInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NewOfferRequest.maxDelayInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferRequest.maxDelayInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferRequest(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferRequest.clearMaxDelayInSecs()()
{
  v1 = v0 + *(type metadata accessor for NewOfferRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferRequest.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferRequest(0) + 32);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferRequest.quotaServerState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
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
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for NewOfferRequest(0) + 32);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A9FB14;
}

void sub_275A9FB14(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for QuotaServerState);
    sub_275A5FE04(v9 + v3, &qword_280A24658, &unk_275AE7960);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for QuotaServerState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for QuotaServerState);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24658, &unk_275AE7960);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for QuotaServerState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_275A9FC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A9FCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL NewOfferRequest.hasQuotaServerState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(v0 + *(v5 + 32), v4, &qword_280A24658, &unk_275AE7960);
  v6 = type metadata accessor for QuotaServerState(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_275A5FE04(v4, &qword_280A24658, &unk_275AE7960);
  return v7;
}

Swift::Void __swiftcall NewOfferRequest.clearQuotaServerState()()
{
  v1 = *(type metadata accessor for NewOfferRequest(0) + 32);
  sub_275A5FE04(v0 + v1, &qword_280A24658, &unk_275AE7960);
  v2 = type metadata accessor for QuotaServerState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NewOfferRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for NewOfferRequest(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for LitmusInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v2[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v2[8];
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t (*NewOfferResponse.action.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A883DC;
}

uint64_t NewOfferResponse.maxDelayTimestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferResponse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferResponse.maxDelayTimestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferResponse.clearMaxDelayTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for NewOfferResponse(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferResponse.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for NewOfferResponse(0);
  sub_275A5F510(v1 + *(v7 + 28), v6, &qword_280A24658, &unk_275AE7960);
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t NewOfferResponse.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewOfferResponse(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NewOfferResponse.quotaServerState.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
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
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for NewOfferResponse(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275AE2A18;
}

uint64_t NewOfferResponse.expectedCallbackTsSecs.setter(uint64_t a1)
{
  result = type metadata accessor for NewOfferResponse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NewOfferResponse.expectedCallbackTsSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NewOfferResponse(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NewOfferResponse.clearExpectedCallbackTsSecs()()
{
  v1 = v0 + *(type metadata accessor for NewOfferResponse(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NewOfferResponse.mlModelName.getter()
{
  v1 = (v0 + *(type metadata accessor for NewOfferResponse(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NewOfferResponse.mlModelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NewOfferResponse(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NewOfferResponse.mlModelName.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NewOfferResponse(0) + 36);
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

  return sub_275A56DD8;
}

Swift::Void __swiftcall NewOfferResponse.clearMlModelName()()
{
  v1 = (v0 + *(type metadata accessor for NewOfferResponse(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NewOfferResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for NewOfferResponse(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[9]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_275AA0AB0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275AA0B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*PingRequest.msg.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for PingRequest(0) + 20);
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

  return sub_275A53DEC;
}

uint64_t sub_275AA0C88(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_275AA0D00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t (*PingResponse.msg.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for PingResponse(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t sub_275AA0ED8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t FeaturesRequest.timestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for FeaturesRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FeaturesRequest.timestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FeaturesRequest(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall FeaturesRequest.clearTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for FeaturesRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FeaturesRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for FeaturesRequest(0);
  v4 = a1 + *(v3 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = a1 + *(v3 + 28);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t (*FeatureDetails.name.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for FeatureDetails(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t (*FeatureDetails.value.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for FeatureDetails(0) + 24);
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

  return sub_275A56DD8;
}

uint64_t FeatureDetails.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for FeatureDetails(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_275AA1430(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t FeaturesResponse.timestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for FeaturesResponse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FeaturesResponse.timestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FeaturesResponse(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall FeaturesResponse.clearTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for FeaturesResponse(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t FeaturesResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for FeaturesResponse(0);
  v3 = a1 + *(v2 + 20);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1 + *(v2 + 24);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t GetStateResponse.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E80, &qword_275AEAC58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  StateResponse = type metadata accessor for GetStateResponse(0);
  sub_275A5F510(v1 + *(StateResponse + 20), v6, &qword_280A24E80, &qword_275AEAC58);
  v8 = type metadata accessor for DaemonState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for DaemonState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = *(v8 + 20);
  if (qword_281411A18 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_281411A20;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24E80, &qword_275AEAC58);
  }

  return result;
}

uint64_t GetStateResponse.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetStateResponse(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24E80, &qword_275AEAC58);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for DaemonState);
  v4 = type metadata accessor for DaemonState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetStateResponse.state.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E80, &qword_275AEAC58) - 8) + 64);
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
  v9 = type metadata accessor for DaemonState(0);
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
  v15 = *(type metadata accessor for GetStateResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24E80, &qword_275AEAC58);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = *(v9 + 20);
    if (qword_281411A18 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_281411A20;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_275A5FE04(v8, &qword_280A24E80, &qword_275AEAC58);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for DaemonState);
  }

  return sub_275AA1B78;
}

void sub_275AA1B78(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for DaemonState);
    sub_275A5FE04(v9 + v3, &qword_280A24E80, &qword_275AEAC58);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for DaemonState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for DaemonState);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24E80, &qword_275AEAC58);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for DaemonState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t DataRequest.startDays.setter(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*DataRequest.startDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall DataRequest.clearStartDays()()
{
  v1 = v0 + *(type metadata accessor for DataRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t DataRequest.endDays.setter(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*DataRequest.endDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall DataRequest.clearEndDays()()
{
  v1 = v0 + *(type metadata accessor for DataRequest(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t DataRequest.labelDurationInDays.setter(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*DataRequest.labelDurationInDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall DataRequest.clearLabelDurationInDays()()
{
  v1 = v0 + *(type metadata accessor for DataRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t DataRequest.dummyData.setter(char a1)
{
  result = type metadata accessor for DataRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*DataRequest.dummyData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A6072C;
}

uint64_t DataRequest.numOffsets.getter()
{
  v1 = (v0 + *(type metadata accessor for DataRequest(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t DataRequest.numOffsets.setter(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*DataRequest.numOffsets.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall DataRequest.clearNumOffsets()()
{
  v1 = v0 + *(type metadata accessor for DataRequest(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t DataRequest.isPetRequest.setter(char a1)
{
  result = type metadata accessor for DataRequest(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*DataRequest.isPetRequest.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t DataRequest.skipWriting.setter(char a1)
{
  result = type metadata accessor for DataRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*DataRequest.skipWriting.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DataRequest(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

int *DataRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DataRequest(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[8]) = 2;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + result[10]) = 2;
  *(a1 + result[11]) = 2;
  return result;
}

uint64_t DataResponse.petMessage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DataResponse.pflMessage.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t DataResponse.dummyData.setter(char a1)
{
  result = type metadata accessor for DataResponse(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*DataResponse.dummyData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DataResponse(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t DataResponse.isPetResponse.setter(char a1)
{
  result = type metadata accessor for DataResponse(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*DataResponse.isPetResponse.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DataResponse(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t sub_275AA28FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275AA2998(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DataResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for DataResponse(0);
  v4 = a1 + v3[6];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a1 + v3[7]) = 2;
  *(a1 + v3[8]) = 2;
  return result;
}

uint64_t NotificationPendingResponse.isNotificationPending.setter(char a1)
{
  result = type metadata accessor for NotificationPendingResponse(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*NotificationPendingResponse.isNotificationPending.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NotificationPendingResponse(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t NotificationPendingResponse.maxDelayTimestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for NotificationPendingResponse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NotificationPendingResponse.maxDelayTimestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NotificationPendingResponse(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NotificationPendingResponse.clearMaxDelayTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for NotificationPendingResponse(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NotificationPendingResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for NotificationPendingResponse(0);
  *(a1 + *(result + 20)) = 2;
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 8) = 1;
  return result;
}

uint64_t NotificationStateWriteRequest.notificationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for NotificationStateWriteRequest(0);
  sub_275A5F510(v1 + *(v7 + 20), v6, &qword_280A24660, &qword_275AEAC60);
  v8 = type metadata accessor for NotificationState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for NotificationState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for LitmusInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v8[9];
  v16 = type metadata accessor for QuotaServerState(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = (a1 + v8[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a1 + v8[11];
  *v18 = 0;
  *(v18 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24660, &qword_275AEAC60);
  }

  return result;
}

uint64_t NotificationStateWriteRequest.notificationState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24660, &qword_275AEAC60);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for NotificationState);
  v4 = type metadata accessor for NotificationState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NotificationStateWriteRequest.notificationState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60) - 8) + 64);
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
  v9 = type metadata accessor for NotificationState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24660, &qword_275AEAC60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v9[6];
    v19 = type metadata accessor for LitmusInfo(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v9[9];
    v23 = type metadata accessor for QuotaServerState(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    v24 = (v14 + v9[10]);
    *v24 = 0;
    v24[1] = 0;
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24660, &qword_275AEAC60);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for NotificationState);
  }

  return sub_275AA3374;
}

void sub_275AA3374(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for NotificationState);
    sub_275A5FE04(v9 + v3, &qword_280A24660, &qword_275AEAC60);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for NotificationState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for NotificationState);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24660, &qword_275AEAC60);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for NotificationState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_275AA3518(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_275A5F510(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_275A5FE04(v12, a1, a2);
  return v15;
}

uint64_t sub_275AA3650(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_275A5FE04(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_275AA3748@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_275AA3814(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SetCliActivityRequest.delaySecs.setter(uint64_t a1)
{
  result = type metadata accessor for SetCliActivityRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SetCliActivityRequest.delaySecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SetCliActivityRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall SetCliActivityRequest.clearDelaySecs()()
{
  v1 = v0 + *(type metadata accessor for SetCliActivityRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275AA3988(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275AA39FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*SetCliActivityRequest.message.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for SetCliActivityRequest(0) + 24);
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

  return sub_275A56DD8;
}

uint64_t sub_275AA3B40(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t SetCliActivityResponse.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SetCliActivityResponse(0);
  sub_275A5F510(v1 + *(v7 + 20), v6, &qword_280A24668, &qword_275AE7970);
  v8 = type metadata accessor for CliActivityState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for CliActivityState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24668, &qword_275AE7970);
  }

  return result;
}

uint64_t SetCliActivityResponse.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24668, &qword_275AE7970);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for CliActivityState);
  v4 = type metadata accessor for CliActivityState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SetCliActivityResponse.state.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970) - 8) + 64);
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
  v9 = type metadata accessor for CliActivityState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24668, &qword_275AE7970);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24668, &qword_275AE7970);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for CliActivityState);
  }

  return sub_275AA4050;
}

void sub_275AA4050(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for CliActivityState);
    sub_275A5FE04(v9 + v3, &qword_280A24668, &qword_275AE7970);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for CliActivityState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for CliActivityState);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24668, &qword_275AE7970);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for CliActivityState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t MobileAssetDownloadRequest.maxWaitInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for MobileAssetDownloadRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*MobileAssetDownloadRequest.maxWaitInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MobileAssetDownloadRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall MobileAssetDownloadRequest.clearMaxWaitInSecs()()
{
  v1 = v0 + *(type metadata accessor for MobileAssetDownloadRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t MobileAssetDownloadResponse.waitTimeInSecs.setter(uint64_t a1)
{
  result = type metadata accessor for MobileAssetDownloadResponse(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*MobileAssetDownloadResponse.waitTimeInSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MobileAssetDownloadResponse(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall MobileAssetDownloadResponse.clearWaitTimeInSecs()()
{
  v1 = v0 + *(type metadata accessor for MobileAssetDownloadResponse(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275AA455C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t (*MobileAssetGetVersionResponse.msg.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for MobileAssetGetVersionResponse(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t (*DisplayDelayedOfferRequest.notificationID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for DisplayDelayedOfferRequest(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t DisplayDelayedOfferRequest.failsafeMode.setter(char a1)
{
  result = type metadata accessor for DisplayDelayedOfferRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*DisplayDelayedOfferRequest.failsafeMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DisplayDelayedOfferRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t DisplayDelayedOfferRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DisplayDelayedOfferRequest(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_275AA4A70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_275AA4B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_275AE52A4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*ActivityStatusResponse.Activity.identifier.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t ActivityStatusResponse.Activity.status.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityStatusResponse.Activity(0) + 24));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ActivityStatusResponse.Activity.status.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for ActivityStatusResponse.Activity(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*ActivityStatusResponse.Activity.status.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A8EA78;
}

Swift::Void __swiftcall ActivityStatusResponse.Activity.clearStatus()()
{
  v1 = v0 + *(type metadata accessor for ActivityStatusResponse.Activity(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t ActivityStatusResponse.Activity.criteria.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ActivityStatusResponse.Activity(0);
  sub_275A5F510(v1 + *(v7 + 28), v6, &qword_280A24DA0, &qword_275AEA460);
  v8 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24DA0, &qword_275AEA460);
  }

  return result;
}

uint64_t sub_275AA5028@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + *(result + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t ActivityStatusResponse.Activity.criteria.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 28);
  sub_275A5FE04(v1 + v3, &qword_280A24DA0, &qword_275AEA460);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  v4 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ActivityStatusResponse.Activity.criteria.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460) - 8) + 64);
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
  v9 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
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
  v15 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 28);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24DA0, &qword_275AEA460);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24DA0, &qword_275AEA460);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  }

  return sub_275AA5380;
}

void sub_275AA5380(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A5FE04(v9 + v3, &qword_280A24DA0, &qword_275AEA460);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24DA0, &qword_275AEA460);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_275AA5524(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_275A5F510(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_275A5FE04(v12, a1, a2);
  return v15;
}

uint64_t sub_275AA565C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_275A5FE04(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_275AA5738(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE27D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ActivityStatusResponse.Activity.Criteria.intervalSecs.setter(uint64_t a1)
{
  result = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ActivityStatusResponse.Activity.Criteria.intervalSecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ActivityStatusResponse.Activity.Criteria(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall ActivityStatusResponse.Activity.Criteria.clearIntervalSecs()()
{
  v1 = v0 + *(type metadata accessor for ActivityStatusResponse.Activity.Criteria(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*ActivityStatusResponse.Activity.Criteria.intervalTimeDelta.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for ActivityStatusResponse.Activity.Criteria(0) + 24);
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

  return sub_275A56DD8;
}

uint64_t ActivityStatusResponse.Activity.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for ActivityStatusResponse.Activity(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 256;
  v5 = v2[7];
  v6 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t ActivityClearRequest.cliActivity.setter(char a1)
{
  result = type metadata accessor for ActivityClearRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*ActivityClearRequest.cliActivity.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ActivityClearRequest(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t ActivityClearRequest.delayedNotificationActivity.setter(char a1)
{
  result = type metadata accessor for ActivityClearRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ActivityClearRequest.delayedNotificationActivity.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ActivityClearRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t ActivityClearRequest.mobileAssetDownloadActivity.setter(char a1)
{
  result = type metadata accessor for ActivityClearRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*ActivityClearRequest.mobileAssetDownloadActivity.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ActivityClearRequest(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

int *ActivityClearRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ActivityClearRequest(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t GetBiomeStreamRequest.startTsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*GetBiomeStreamRequest.startTsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GetBiomeStreamRequest(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall GetBiomeStreamRequest.clearStartTsMillis()()
{
  v1 = v0 + *(type metadata accessor for GetBiomeStreamRequest(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t GetBiomeStreamRequest.endTsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*GetBiomeStreamRequest.endTsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GetBiomeStreamRequest(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall GetBiomeStreamRequest.clearEndTsMillis()()
{
  v1 = v0 + *(type metadata accessor for GetBiomeStreamRequest(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t GetBiomeStreamRequest.streamType.getter()
{
  v1 = (v0 + *(type metadata accessor for GetBiomeStreamRequest(0) + 28));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t GetBiomeStreamRequest.streamType.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*GetBiomeStreamRequest.streamType.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for GetBiomeStreamRequest(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A8EA78;
}

Swift::Void __swiftcall GetBiomeStreamRequest.clearStreamType()()
{
  v1 = v0 + *(type metadata accessor for GetBiomeStreamRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t sub_275AA6310(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE2784();

  return MEMORY[0x28217E238](a1, a2, v4);
}

int *GetBiomeStreamRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_275AA6554@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t ActivityHistoryResponse.history.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ActivityHistoryResponse(0);
  sub_275A5F510(v1 + *(v7 + 20), v6, &qword_280A24E88, &qword_275AEAC68);
  v8 = type metadata accessor for SystemActivityHistory_File(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_275A9ED50(v6, a1, type metadata accessor for SystemActivityHistory_File);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(v8 + 20);
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24E88, &qword_275AEAC68);
  }

  return result;
}

uint64_t ActivityHistoryResponse.history.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  sub_275A5FE04(v1 + v3, &qword_280A24E88, &qword_275AEAC68);
  sub_275A9ED50(a1, v1 + v3, type metadata accessor for SystemActivityHistory_File);
  v4 = type metadata accessor for SystemActivityHistory_File(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ActivityHistoryResponse.history.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68) - 8) + 64);
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
  v9 = type metadata accessor for SystemActivityHistory_File(0);
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
  v15 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24E88, &qword_275AEAC68);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + *(v9 + 20);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24E88, &qword_275AEAC68);
    }
  }

  else
  {
    sub_275A9ED50(v8, v14, type metadata accessor for SystemActivityHistory_File);
  }

  return sub_275AA6A14;
}

void sub_275AA6A14(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[5], v4, type metadata accessor for SystemActivityHistory_File);
    sub_275A5FE04(v9 + v3, &qword_280A24E88, &qword_275AEAC68);
    sub_275A9ED50(v4, v9 + v3, type metadata accessor for SystemActivityHistory_File);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_275A9FCE4(v5, type metadata accessor for SystemActivityHistory_File);
  }

  else
  {
    sub_275A5FE04(v9 + v3, &qword_280A24E88, &qword_275AEAC68);
    sub_275A9ED50(v5, v9 + v3, type metadata accessor for SystemActivityHistory_File);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ShadowEvaluationRequest.startDays.setter(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ShadowEvaluationRequest.startDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall ShadowEvaluationRequest.clearStartDays()()
{
  v1 = v0 + *(type metadata accessor for ShadowEvaluationRequest(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ShadowEvaluationRequest.endDays.setter(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ShadowEvaluationRequest.endDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall ShadowEvaluationRequest.clearEndDays()()
{
  v1 = v0 + *(type metadata accessor for ShadowEvaluationRequest(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_275AA6EA8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t ShadowEvaluationRequest.labelDurationInDays.setter(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ShadowEvaluationRequest.labelDurationInDays.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall ShadowEvaluationRequest.clearLabelDurationInDays()()
{
  v1 = v0 + *(type metadata accessor for ShadowEvaluationRequest(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ShadowEvaluationRequest.dummyData.setter(char a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*ShadowEvaluationRequest.dummyData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t ShadowEvaluationRequest.numOffsets.getter()
{
  v1 = (v0 + *(type metadata accessor for ShadowEvaluationRequest(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ShadowEvaluationRequest.numOffsets.setter(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ShadowEvaluationRequest.numOffsets.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall ShadowEvaluationRequest.clearNumOffsets()()
{
  v1 = v0 + *(type metadata accessor for ShadowEvaluationRequest(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ShadowEvaluationRequest.skipPublishMetrics.setter(char a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*ShadowEvaluationRequest.skipPublishMetrics.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ShadowEvaluationRequest(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t ShadowEvaluationRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ShadowEvaluationRequest(0);
  v3 = a1 + v2[5];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[8] = 1;
  *(a1 + v2[9]) = 2;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[8] = 1;
  *(a1 + v2[11]) = 2;
  return result;
}

uint64_t ShadowEvaluationResponse.dummyData.setter(char a1)
{
  result = type metadata accessor for ShadowEvaluationResponse(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*ShadowEvaluationResponse.dummyData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ShadowEvaluationResponse(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_275A77C3C;
}

uint64_t ShadowEvaluationResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for ShadowEvaluationResponse(0);
  v4 = a1 + *(v3 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a1 + *(v3 + 28)) = 2;
  return result;
}

uint64_t sub_275AA76A4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[8];
  if (v2[9])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275AA7724(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v5 = a2 & 1;
  result = a3(0);
  v7 = v3 + *(result + 20);
  *v7 = a1;
  *(v7 + 8) = v5;
  *(v7 + 9) = 0;
  return result;
}

uint64_t (*DeleteDaemonStateRequest.categoryToDelete.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for DeleteDaemonStateRequest(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A8EA78;
}

uint64_t sub_275AA7830(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

void sub_275AA78BC(uint64_t a1@<X8>)
{
  sub_275ADD0B0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_275AA78F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_275ADD0B0();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_275AA7928(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE2730();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t DeleteDaemonStateRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DeleteDaemonStateRequest(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t (*DeleteDaemonStateResponse.msg.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for DeleteDaemonStateResponse(0) + 20);
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

  return sub_275A56DD8;
}

uint64_t SubscriptionClientRequest.ping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for PingRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for PingRequest(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t SubscriptionClientRequest.ping.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for PingRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.ping.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for PingRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_275A9ED50(v8, v12, type metadata accessor for PingRequest);
      return sub_275AA809C;
    }

    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v15 = (v12 + *(v9 + 20));
  *v15 = 0;
  v15[1] = 0;
  return sub_275AA809C;
}

void sub_275AA809C(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for PingRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for PingRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for PingRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for PingRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.newOffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_275A5F510(v2, &v17 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NewOfferRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = type metadata accessor for NewOfferRequest(0);
  v11 = a1 + v10[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v10[6];
  v13 = type metadata accessor for LitmusInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = a1 + v10[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v10[8];
  v16 = type metadata accessor for QuotaServerState(0);
  return (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
}

uint64_t SubscriptionClientRequest.newOffer.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for NewOfferRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.newOffer.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for NewOfferRequest(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24C20, &qword_275AEAC70);
  v14 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v10[6];
    v18 = type metadata accessor for LitmusInfo(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v13 + v10[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v10[8];
    v21 = type metadata accessor for QuotaServerState(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    return sub_275AA87B8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for NewOfferRequest);
  return sub_275AA87B8;
}

void sub_275AA87B8(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NewOfferRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for NewOfferRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NewOfferRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for NewOfferRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.features.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_275A5F510(v2, &v14 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for FeaturesRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  v11 = type metadata accessor for FeaturesRequest(0);
  v12 = a1 + *(v11 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v13 = a1 + *(v11 + 28);
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t SubscriptionClientRequest.features.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for FeaturesRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.features.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for FeaturesRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    v15 = MEMORY[0x277D84F90];
    *v12 = MEMORY[0x277D84F90];
    v12[1] = v15;
    v16 = v12 + *(v9 + 24);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v12 + *(v9 + 28);
    *v17 = 0;
    v17[8] = 1;
    return sub_275AA8DC0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for FeaturesRequest);
  return sub_275AA8DC0;
}

void sub_275AA8DC0(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for FeaturesRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for FeaturesRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for FeaturesRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for FeaturesRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.getState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for GetStateRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientRequest.getState.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for GetStateRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.getState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = *(*(type metadata accessor for GetStateRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AA9364;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for GetStateRequest);
  return sub_275AA9364;
}

void sub_275AA9364(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for GetStateRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for GetStateRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for GetStateRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for GetStateRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

int *SubscriptionClientRequest.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_275A5F510(v2, &v14 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DataRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DataRequest(0);
  v10 = a1 + result[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + result[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + result[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + result[8]) = 2;
  v13 = a1 + result[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a1 + result[10]) = 2;
  *(a1 + result[11]) = 2;
  return result;
}

uint64_t SubscriptionClientRequest.data.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for DataRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.data.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for DataRequest(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24C20, &qword_275AEAC70);
  v14 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v10[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v10[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + v10[8]) = 2;
    v19 = v13 + v10[9];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v13 + v10[10]) = 2;
    *(v13 + v10[11]) = 2;
    return sub_275AA99E4;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for DataRequest);
  return sub_275AA99E4;
}

void sub_275AA99E4(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DataRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for DataRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DataRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for DataRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.notificationPending.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NotificationPendingRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientRequest.notificationPending.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for NotificationPendingRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.notificationPending.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = *(*(type metadata accessor for NotificationPendingRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AA9F88;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for NotificationPendingRequest);
  return sub_275AA9F88;
}

void sub_275AA9F88(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NotificationPendingRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for NotificationPendingRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NotificationPendingRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for NotificationPendingRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.setCliActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for SetCliActivityRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for SetCliActivityRequest(0);
  v10 = a1 + *(result + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + *(result + 24));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t SubscriptionClientRequest.setCliActivity.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for SetCliActivityRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.setCliActivity.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for SetCliActivityRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = v12 + *(v9 + 20);
    *v15 = 0;
    *(v15 + 8) = 1;
    v16 = (v12 + *(v9 + 24));
    *v16 = 0;
    v16[1] = 0;
    return sub_275AAA584;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for SetCliActivityRequest);
  return sub_275AAA584;
}

void sub_275AAA584(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for SetCliActivityRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for SetCliActivityRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for SetCliActivityRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for SetCliActivityRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.displayDelayedOffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DisplayDelayedOfferRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DisplayDelayedOfferRequest(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t SubscriptionClientRequest.displayDelayedOffer.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for DisplayDelayedOfferRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.displayDelayedOffer.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for DisplayDelayedOfferRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    *(v12 + *(v9 + 24)) = 2;
    return sub_275AAAB70;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for DisplayDelayedOfferRequest);
  return sub_275AAAB70;
}

void sub_275AAAB70(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DisplayDelayedOfferRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for DisplayDelayedOfferRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DisplayDelayedOfferRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for DisplayDelayedOfferRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.activityStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityStatusRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientRequest.activityStatus.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityStatusRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.activityStatus.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = *(*(type metadata accessor for ActivityStatusRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AAB114;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for ActivityStatusRequest);
  return sub_275AAB114;
}

void sub_275AAB114(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityStatusRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityStatusRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityStatusRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityStatusRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

int *SubscriptionClientRequest.activityClear.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityClearRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ActivityClearRequest(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t SubscriptionClientRequest.activityClear.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityClearRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.activityClear.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for ActivityClearRequest(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    *(v12 + v9[5]) = 2;
    *(v12 + v9[6]) = 2;
    *(v12 + v9[7]) = 2;
    return sub_275AAB708;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for ActivityClearRequest);
  return sub_275AAB708;
}

void sub_275AAB708(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityClearRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityClearRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityClearRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityClearRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

int *SubscriptionClientRequest.getBiomeStream.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_275A5F510(v2, &v13 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for GetBiomeStreamRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v10 = a1 + result[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + result[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + result[7];
  *v12 = 0;
  *(v12 + 8) = 256;
  return result;
}

uint64_t SubscriptionClientRequest.getBiomeStream.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for GetBiomeStreamRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.getBiomeStream.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v11 = *(*(BiomeStreamRequest - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(BiomeStreamRequest - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24C20, &qword_275AEAC70);
  v14 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + BiomeStreamRequest[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + BiomeStreamRequest[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + BiomeStreamRequest[7];
    *v18 = 0;
    *(v18 + 8) = 256;
    return sub_275AABD38;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for GetBiomeStreamRequest);
  return sub_275AABD38;
}

void sub_275AABD38(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for GetBiomeStreamRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for GetBiomeStreamRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for GetBiomeStreamRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for GetBiomeStreamRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.notificationStateWrite.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NotificationStateWriteRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  v11 = type metadata accessor for NotificationState(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t SubscriptionClientRequest.notificationStateWrite.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for NotificationStateWriteRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.notificationStateWrite.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for NotificationStateWriteRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for NotificationState(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_275AAC37C;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for NotificationStateWriteRequest);
  return sub_275AAC37C;
}

void sub_275AAC37C(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NotificationStateWriteRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for NotificationStateWriteRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NotificationStateWriteRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for NotificationStateWriteRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.activityHistory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityHistoryRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientRequest.activityHistory.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityHistoryRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.activityHistory.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = *(*(type metadata accessor for ActivityHistoryRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AAC920;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for ActivityHistoryRequest);
  return sub_275AAC920;
}

void sub_275AAC920(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityHistoryRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityHistoryRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityHistoryRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityHistoryRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.mobileAssetDownload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for MobileAssetDownloadRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for MobileAssetDownloadRequest(0);
  v10 = a1 + *(result + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t SubscriptionClientRequest.mobileAssetDownload.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for MobileAssetDownloadRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.mobileAssetDownload.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for MobileAssetDownloadRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = v12 + *(v9 + 20);
    *v15 = 0;
    *(v15 + 8) = 1;
    return sub_275AACF04;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetDownloadRequest);
  return sub_275AACF04;
}

void sub_275AACF04(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for MobileAssetDownloadRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for MobileAssetDownloadRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for MobileAssetDownloadRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for MobileAssetDownloadRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.shadowEvaluation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  sub_275A5F510(v2, &v16 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ShadowEvaluationRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for ShadowEvaluationRequest(0);
  v11 = a1 + v10[5];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v12 = a1 + v10[6];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v10[7];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v10[8];
  *v14 = 0;
  v14[8] = 1;
  *(a1 + v10[9]) = 2;
  v15 = a1 + v10[10];
  *v15 = 0;
  v15[8] = 1;
  *(a1 + v10[11]) = 2;
  return result;
}

uint64_t SubscriptionClientRequest.shadowEvaluation.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for ShadowEvaluationRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.shadowEvaluation.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for ShadowEvaluationRequest(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24C20, &qword_275AEAC70);
  v14 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v16 = v13 + v10[5];
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v13 + v10[6];
    *v17 = 0;
    v17[8] = 1;
    v18 = v13 + v10[7];
    *v18 = 0;
    v18[8] = 1;
    v19 = v13 + v10[8];
    *v19 = 0;
    v19[8] = 1;
    *(v13 + v10[9]) = 2;
    v20 = v13 + v10[10];
    *v20 = 0;
    v20[8] = 1;
    *(v13 + v10[11]) = 2;
    return sub_275AAD598;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for ShadowEvaluationRequest);
  return sub_275AAD598;
}

void sub_275AAD598(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ShadowEvaluationRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for ShadowEvaluationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ShadowEvaluationRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for ShadowEvaluationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.mobileAssetGetVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for MobileAssetGetVersionRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientRequest.mobileAssetGetVersion.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for MobileAssetGetVersionRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.mobileAssetGetVersion.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = *(*(type metadata accessor for MobileAssetGetVersionRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AADB3C;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for MobileAssetGetVersionRequest);
  return sub_275AADB3C;
}

void sub_275AADB3C(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for MobileAssetGetVersionRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for MobileAssetGetVersionRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for MobileAssetGetVersionRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for MobileAssetGetVersionRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientRequest.deleteDaemonState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24C20, &qword_275AEAC70);
  v8 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24C20, &qword_275AEAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DeleteDaemonStateRequest);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DeleteDaemonStateRequest(0);
  v10 = a1 + *(result + 20);
  *v10 = 0;
  *(v10 + 8) = 256;
  return result;
}

uint64_t SubscriptionClientRequest.deleteDaemonState.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24C20, &qword_275AEAC70);
  sub_275A9ED50(a1, v1, type metadata accessor for DeleteDaemonStateRequest);
  v3 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientRequest.deleteDaemonState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70) - 8) + 64);
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
  v9 = type metadata accessor for DeleteDaemonStateRequest(0);
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
  sub_275A5F510(v1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = v12 + *(v9 + 20);
    *v15 = 0;
    *(v15 + 8) = 256;
    return sub_275AAE120;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for DeleteDaemonStateRequest);
  return sub_275AAE120;
}

void sub_275AAE120(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DeleteDaemonStateRequest);
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v5, v8, type metadata accessor for DeleteDaemonStateRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DeleteDaemonStateRequest);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v6, v8, type metadata accessor for DeleteDaemonStateRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ErrorResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ErrorResponse(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

void (*SubscriptionClientResponse.error.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for ErrorResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_275A9ED50(v8, v12, type metadata accessor for ErrorResponse);
      return sub_275AAE814;
    }

    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v15 = (v12 + *(v9 + 20));
  *v15 = 0;
  v15[1] = 0;
  return sub_275AAE814;
}

void sub_275AAE814(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ErrorResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for ErrorResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ErrorResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for ErrorResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.ping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for PingResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for PingResponse(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t SubscriptionClientResponse.ping.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for PingResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.ping.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for PingResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_275AAEDE8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for PingResponse);
  return sub_275AAEDE8;
}

void sub_275AAEDE8(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for PingResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for PingResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for PingResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for PingResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.newOffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_275A5F510(v2, &v17 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NewOfferResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = type metadata accessor for NewOfferResponse(0);
  v11 = a1 + v10[5];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = a1 + v10[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v10[7];
  v14 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = a1 + v10[8];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (a1 + v10[9]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t SubscriptionClientResponse.newOffer.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for NewOfferResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.newOffer.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for NewOfferResponse(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24E60, "\by");
  v14 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v13 + v10[5];
    *v16 = 0;
    *(v16 + 8) = 256;
    v17 = v13 + v10[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v10[7];
    v19 = type metadata accessor for QuotaServerState(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v10[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = (v13 + v10[9]);
    *v21 = 0;
    v21[1] = 0;
    return sub_275AAF4BC;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for NewOfferResponse);
  return sub_275AAF4BC;
}

void sub_275AAF4BC(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NewOfferResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for NewOfferResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NewOfferResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for NewOfferResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.features.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_275A5F510(v2, &v13 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for FeaturesResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for FeaturesResponse(0);
  v11 = a1 + *(v10 + 20);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v12 = a1 + *(v10 + 24);
  *v12 = 0;
  v12[8] = 1;
  return result;
}

uint64_t SubscriptionClientResponse.features.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for FeaturesResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.features.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for FeaturesResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v16 = v12 + *(v9 + 24);
    *v16 = 0;
    v16[8] = 1;
    return sub_275AAFAC4;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for FeaturesResponse);
  return sub_275AAFAC4;
}

void sub_275AAFAC4(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for FeaturesResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for FeaturesResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for FeaturesResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for FeaturesResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.getState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for GetStateResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = *(type metadata accessor for GetStateResponse(0) + 20);
  v11 = type metadata accessor for DaemonState(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t SubscriptionClientResponse.getState.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for GetStateResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.getState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  StateResponse = type metadata accessor for GetStateResponse(0);
  v10 = *(*(StateResponse - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(StateResponse - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = *(StateResponse + 20);
    v16 = type metadata accessor for DaemonState(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_275AB0108;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for GetStateResponse);
  return sub_275AB0108;
}

void sub_275AB0108(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for GetStateResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for GetStateResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for GetStateResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for GetStateResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.data.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_275A5F510(v2, &v13 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DataResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  v11 = type metadata accessor for DataResponse(0);
  v12 = a1 + v11[6];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a1 + v11[7]) = 2;
  *(a1 + v11[8]) = 2;
  return result;
}

uint64_t SubscriptionClientResponse.data.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for DataResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.data.modify(void *a1))(uint64_t **a1, char a2)
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
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for DataResponse(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_275A5F510(v2, v9, &qword_280A24E60, "\by");
  v14 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_275A5FE04(v9, &qword_280A24E60, "\by");
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = v16;
    v17 = v13 + v10[6];
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    *(v13 + v10[7]) = 2;
    *(v13 + v10[8]) = 2;
    return sub_275AB0714;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_275A9FCE4(v9, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v9, v13, type metadata accessor for DataResponse);
  return sub_275AB0714;
}

void sub_275AB0714(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DataResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for DataResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DataResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for DataResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.notificationPending.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NotificationPendingResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for NotificationPendingResponse(0);
  *(a1 + *(result + 20)) = 2;
  v10 = a1 + *(result + 24);
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t SubscriptionClientResponse.notificationPending.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for NotificationPendingResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.notificationPending.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for NotificationPendingResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    *(v12 + *(v9 + 20)) = 2;
    v15 = v12 + *(v9 + 24);
    *v15 = 0;
    *(v15 + 8) = 1;
    return sub_275AB0D10;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for NotificationPendingResponse);
  return sub_275AB0D10;
}

void sub_275AB0D10(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NotificationPendingResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for NotificationPendingResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NotificationPendingResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for NotificationPendingResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.setCliActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for SetCliActivityResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  v11 = type metadata accessor for CliActivityState(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t SubscriptionClientResponse.setCliActivity.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for SetCliActivityResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.setCliActivity.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for SetCliActivityResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for CliActivityState(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_275AB1354;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for SetCliActivityResponse);
  return sub_275AB1354;
}

void sub_275AB1354(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for SetCliActivityResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for SetCliActivityResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for SetCliActivityResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for SetCliActivityResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.displayDelayedOffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DisplayDelayedOfferResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientResponse.displayDelayedOffer.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for DisplayDelayedOfferResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.displayDelayedOffer.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = *(*(type metadata accessor for DisplayDelayedOfferResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v12 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AB18F8;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for DisplayDelayedOfferResponse);
  return sub_275AB18F8;
}

void sub_275AB18F8(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DisplayDelayedOfferResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for DisplayDelayedOfferResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DisplayDelayedOfferResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for DisplayDelayedOfferResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.activityStatus.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityStatusResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ActivityStatusResponse(0) + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientResponse.activityStatus.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityStatusResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.activityStatus.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for ActivityStatusResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AB1ED4;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for ActivityStatusResponse);
  return sub_275AB1ED4;
}

void sub_275AB1ED4(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityStatusResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityStatusResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityStatusResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityStatusResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.activityClear.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityClearResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientResponse.activityClear.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityClearResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.activityClear.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = *(*(type metadata accessor for ActivityClearResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v12 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AB2478;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for ActivityClearResponse);
  return sub_275AB2478;
}

void sub_275AB2478(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityClearResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityClearResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityClearResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityClearResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.getBiomeStream.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for GetBiomeStreamResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for GetBiomeStreamResponse(0) + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientResponse.getBiomeStream.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for GetBiomeStreamResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.getBiomeStream.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  v10 = *(*(BiomeStreamResponse - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(BiomeStreamResponse - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(BiomeStreamResponse + 20);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AB2A54;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for GetBiomeStreamResponse);
  return sub_275AB2A54;
}

void sub_275AB2A54(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for GetBiomeStreamResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for GetBiomeStreamResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for GetBiomeStreamResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for GetBiomeStreamResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.notificationStateWrite.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_275A5F510(v2, &v10 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for NotificationStateWriteResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t SubscriptionClientResponse.notificationStateWrite.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for NotificationStateWriteResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.notificationStateWrite.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = *(*(type metadata accessor for NotificationStateWriteResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v12 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    return sub_275AB2FF8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v11, type metadata accessor for NotificationStateWriteResponse);
  return sub_275AB2FF8;
}

void sub_275AB2FF8(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for NotificationStateWriteResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for NotificationStateWriteResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for NotificationStateWriteResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for NotificationStateWriteResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.activityHistory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_275A5F510(v2, &v12 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ActivityHistoryResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  v11 = type metadata accessor for SystemActivityHistory_File(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t SubscriptionClientResponse.activityHistory.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ActivityHistoryResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.activityHistory.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for ActivityHistoryResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for SystemActivityHistory_File(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_275AB363C;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for ActivityHistoryResponse);
  return sub_275AB363C;
}

void sub_275AB363C(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ActivityHistoryResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for ActivityHistoryResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ActivityHistoryResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for ActivityHistoryResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.mobileAssetDownload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for MobileAssetDownloadResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for MobileAssetDownloadResponse(0);
  v10 = a1 + *(result + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t SubscriptionClientResponse.mobileAssetDownload.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for MobileAssetDownloadResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.mobileAssetDownload.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for MobileAssetDownloadResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = v12 + *(v9 + 20);
    *v15 = 0;
    *(v15 + 8) = 1;
    return sub_275AB3C20;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetDownloadResponse);
  return sub_275AB3C20;
}

void sub_275AB3C20(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for MobileAssetDownloadResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for MobileAssetDownloadResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for MobileAssetDownloadResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for MobileAssetDownloadResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.shadowEvaluation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_275A5F510(v2, &v13 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for ShadowEvaluationResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  v11 = type metadata accessor for ShadowEvaluationResponse(0);
  v12 = a1 + *(v11 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a1 + *(v11 + 28)) = 2;
  return result;
}

uint64_t SubscriptionClientResponse.shadowEvaluation.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for ShadowEvaluationResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.shadowEvaluation.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for ShadowEvaluationResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    v15 = MEMORY[0x277D84F90];
    *v12 = MEMORY[0x277D84F90];
    v12[1] = v15;
    v16 = v12 + *(v9 + 24);
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    *(v12 + *(v9 + 28)) = 2;
    return sub_275AB4218;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for ShadowEvaluationResponse);
  return sub_275AB4218;
}

void sub_275AB4218(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for ShadowEvaluationResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for ShadowEvaluationResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for ShadowEvaluationResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for ShadowEvaluationResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.mobileAssetGetVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for MobileAssetGetVersionResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for MobileAssetGetVersionResponse(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t SubscriptionClientResponse.mobileAssetGetVersion.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for MobileAssetGetVersionResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.mobileAssetGetVersion.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  v10 = *(*(VersionResponse - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(VersionResponse - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = (v12 + *(VersionResponse + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_275AB47EC;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetGetVersionResponse);
  return sub_275AB47EC;
}

void sub_275AB47EC(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for MobileAssetGetVersionResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for MobileAssetGetVersionResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for MobileAssetGetVersionResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for MobileAssetGetVersionResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t SubscriptionClientResponse.deleteDaemonState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_275A5F510(v2, &v11 - v6, &qword_280A24E60, "\by");
  v8 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_275A5FE04(v7, &qword_280A24E60, "\by");
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_275A9ED50(v7, a1, type metadata accessor for DeleteDaemonStateResponse);
    }

    sub_275A9FCE4(v7, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for DeleteDaemonStateResponse(0);
  v10 = (a1 + *(result + 20));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t SubscriptionClientResponse.deleteDaemonState.setter(uint64_t a1)
{
  sub_275A5FE04(v1, &qword_280A24E60, "\by");
  sub_275A9ED50(a1, v1, type metadata accessor for DeleteDaemonStateResponse);
  v3 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*SubscriptionClientResponse.deleteDaemonState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by") - 8) + 64);
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
  v9 = type metadata accessor for DeleteDaemonStateResponse(0);
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
  sub_275A5F510(v1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
LABEL_15:
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_275AB4DC0;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_275A9ED50(v8, v12, type metadata accessor for DeleteDaemonStateResponse);
  return sub_275AB4DC0;
}

void sub_275AB4DC0(uint64_t **a1, char a2)
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
    sub_275A9FC7C((*a1)[3], v5, type metadata accessor for DeleteDaemonStateResponse);
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    sub_275A9ED50(v5, v8, type metadata accessor for DeleteDaemonStateResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_275A9FCE4(v6, type metadata accessor for DeleteDaemonStateResponse);
  }

  else
  {
    sub_275A5FE04(**a1, &qword_280A24E60, "\by");
    sub_275A9ED50(v6, v8, type metadata accessor for DeleteDaemonStateResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_275AB5090(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore15GetStateRequestV2eeoiySbAC_ACtFZ_0()
{
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AB5298@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275AB54B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255E0, type metadata accessor for ErrorResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB5554()
{
  sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse);

  return sub_275AE5464();
}

uint64_t sub_275AB55C0()
{
  sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse);

  return sub_275AE5474();
}

uint64_t sub_275AB569C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static NewOfferRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NewOfferRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mlServerScore";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "litmusInfo";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxDelayInSecs";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "quotaServerState";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t NewOfferRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for NewOfferRequest(0) + 28);
        sub_275AE53B4();
      }

      else if (result == 4)
      {
        sub_275AB5AEC();
      }
    }

    else if (result == 1)
    {
      v4 = *(type metadata accessor for NewOfferRequest(0) + 20);
      sub_275AE53D4();
    }

    else if (result == 2)
    {
      sub_275AB5A38();
    }
  }

  return result;
}

uint64_t sub_275AB5A38()
{
  v0 = *(type metadata accessor for NewOfferRequest(0) + 24);
  type metadata accessor for LitmusInfo(0);
  sub_275ADD244(&qword_280A245F0, type metadata accessor for LitmusInfo);
  return sub_275AE5404();
}

uint64_t sub_275AB5AEC()
{
  v0 = *(type metadata accessor for NewOfferRequest(0) + 32);
  type metadata accessor for QuotaServerState(0);
  sub_275ADD244(&qword_280A24608, type metadata accessor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t NewOfferRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AB5C58(v3);
  if (!v4)
  {
    sub_275AB5CD0(v3, a1, a2, a3);
    sub_275AB7AE8(v3, a1, a2, a3, type metadata accessor for NewOfferRequest);
    sub_275AB5EEC(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AB5C58(uint64_t a1)
{
  result = type metadata accessor for NewOfferRequest(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275AB5CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(a1 + *(v14 + 24), v8, &qword_280A24650, &qword_275AEAC50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for LitmusInfo);
  sub_275ADD244(&qword_280A245F0, type metadata accessor for LitmusInfo);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for LitmusInfo);
}

uint64_t sub_275AB5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewOfferRequest(0);
  sub_275A5F510(a1 + *(v14 + 32), v8, &qword_280A24658, &unk_275AE7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for QuotaServerState);
  sub_275ADD244(&qword_280A24608, type metadata accessor for QuotaServerState);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for QuotaServerState);
}

uint64_t sub_275AB6150@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for LitmusInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = type metadata accessor for QuotaServerState(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_275AB6284(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255D8, type metadata accessor for NewOfferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB6324()
{
  sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest);

  return sub_275AE5464();
}

uint64_t sub_275AB6390()
{
  sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest);

  return sub_275AE5474();
}

uint64_t sub_275AB6438()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static NewOfferResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NewOfferResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxDelayTimestampMillis";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "quotaServerState";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expectedCallbackTsSecs";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "mlModelName";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t NewOfferResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
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

          v12 = v4;
          v13 = *(type metadata accessor for NewOfferResponse(0) + 24);
          goto LABEL_16;
        }

        sub_275AC2818(a1, v5, a2, a3, type metadata accessor for NewOfferResponse, sub_275A56C9C);
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_275AB687C();
            break;
          case 4:
            v12 = v4;
            v14 = *(type metadata accessor for NewOfferResponse(0) + 32);
LABEL_16:
            v4 = v12;
            sub_275AE53B4();
            break;
          case 5:
            v11 = *(type metadata accessor for NewOfferResponse(0) + 36);
            sub_275AE53E4();
            break;
        }
      }

LABEL_5:
      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275AB687C()
{
  v0 = *(type metadata accessor for NewOfferResponse(0) + 28);
  type metadata accessor for QuotaServerState(0);
  sub_275ADD244(&qword_280A24608, type metadata accessor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t NewOfferResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AC2928(v3, a1, a2, a3, type metadata accessor for NewOfferResponse, sub_275A56C9C);
  if (!v4)
  {
    sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for NewOfferResponse);
    sub_275AB6A48(v3, a1, a2, a3);
    sub_275AC1B5C(v3, a1, a2, a3, type metadata accessor for NewOfferResponse);
    sub_275AB6C64(v3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AB6A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewOfferResponse(0);
  sub_275A5F510(a1 + *(v14 + 28), v8, &qword_280A24658, &unk_275AE7960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for QuotaServerState);
  sub_275ADD244(&qword_280A24608, type metadata accessor for QuotaServerState);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for QuotaServerState);
}

uint64_t sub_275AB6C64(uint64_t a1)
{
  result = type metadata accessor for NewOfferResponse(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275AB6D24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 256;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_275AB6E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255D0, type metadata accessor for NewOfferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB6EC0()
{
  sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse);

  return sub_275AE5464();
}

uint64_t sub_275AB6F2C()
{
  sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse);

  return sub_275AE5474();
}

uint64_t sub_275AB7064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t sub_275AB7138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275AB724C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255C8, type metadata accessor for PingRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB72EC()
{
  sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest);

  return sub_275AE5464();
}

uint64_t sub_275AB7358()
{
  sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest);

  return sub_275AE5474();
}

uint64_t sub_275AB7594(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255C0, type metadata accessor for PingResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB7634()
{
  sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse);

  return sub_275AE5464();
}

uint64_t sub_275AB76A0()
{
  sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse);

  return sub_275AE5474();
}

uint64_t sub_275AB777C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FeaturesRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FeaturesRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestampMillis";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "featureNames";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "namesToBuildFeatureArray";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t FeaturesRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_275AE53C4();
    }

    else if (result == 1)
    {
      v3 = *(type metadata accessor for FeaturesRequest(0) + 28);
      sub_275AE53B4();
    }
  }

  return result;
}

uint64_t sub_275AB7AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AB7BB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + *(a1 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v7 = a2 + *(a1 + 28);
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t sub_275AB7C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255B8, type metadata accessor for FeaturesRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB7CF8()
{
  sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest);

  return sub_275AE5464();
}

uint64_t sub_275AB7D64()
{
  sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest);

  return sub_275AE5474();
}

uint64_t sub_275AB7E14()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FeatureDetails._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FeatureDetails._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t FeatureDetails.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for FeatureDetails(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for FeatureDetails(0) + 24);
LABEL_3:
      v0 = 0;
      sub_275AE53E4();
    }
  }
}

uint64_t sub_275AB8180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_275AB8210(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255B0, type metadata accessor for FeatureDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB82B0()
{
  sub_275ADD244(&qword_280A24EC8, type metadata accessor for FeatureDetails);

  return sub_275AE5464();
}

uint64_t sub_275AB831C()
{
  sub_275ADD244(&qword_280A24EC8, type metadata accessor for FeatureDetails);

  return sub_275AE5474();
}

uint64_t sub_275AB83C4()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static FeaturesResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FeaturesResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestampMillis";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "featureDetails";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t FeaturesResponse.decodeMessage<A>(decoder:)()
{
  result = sub_275AE5344();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for FeaturesResponse(0) + 24);
        sub_275AE53B4();
      }

      else if (result == 2)
      {
        type metadata accessor for FeatureDetails(0);
        sub_275ADD244(&qword_280A24EC8, type metadata accessor for FeatureDetails);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t FeaturesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for FeaturesResponse);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for FeatureDetails(0);
      sub_275ADD244(&qword_280A24EC8, type metadata accessor for FeatureDetails);
      sub_275AE5524();
    }

    v8 = v5 + *(type metadata accessor for FeaturesResponse(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AB87F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AB88C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t sub_275AB8960(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255A8, type metadata accessor for FeaturesResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB8A00()
{
  sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse);

  return sub_275AE5464();
}

uint64_t sub_275AB8A6C()
{
  sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse);

  return sub_275AE5474();
}

uint64_t GetStateRequest.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_275AE5344();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_275AB8C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A255A0, type metadata accessor for GetStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB8CD8()
{
  sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest);

  return sub_275AE5464();
}

uint64_t sub_275AB8D44()
{
  sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest);

  return sub_275AE5474();
}

uint64_t sub_275AB8E74()
{
  v0 = *(type metadata accessor for GetStateResponse(0) + 20);
  type metadata accessor for DaemonState(0);
  sub_275ADD244(&qword_280A246B8, type metadata accessor for DaemonState);
  return sub_275AE5404();
}

uint64_t sub_275AB8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E80, &qword_275AEAC58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for DaemonState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  StateResponse = type metadata accessor for GetStateResponse(0);
  sub_275A5F510(a1 + *(StateResponse + 20), v8, &qword_280A24E80, &qword_275AEAC58);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24E80, &qword_275AEAC58);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for DaemonState);
  sub_275ADD244(&qword_280A246B8, type metadata accessor for DaemonState);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for DaemonState);
}

uint64_t sub_275AB921C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25598, type metadata accessor for GetStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB92BC()
{
  sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse);

  return sub_275AE5464();
}

uint64_t sub_275AB9328()
{
  sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse);

  return sub_275AE5474();
}

uint64_t sub_275AB93D4()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DataRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DataRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startDays";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endDays";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "labelDurationInDays";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dummyData";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "numOffsets";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "isPetRequest";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "skipWriting";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t DataRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for DataRequest(0) + 20);
          goto LABEL_3;
        case 2:
          v9 = *(type metadata accessor for DataRequest(0) + 24);
LABEL_3:
          v0 = 0;
          sub_275AE53B4();
          break;
        case 3:
          v5 = *(type metadata accessor for DataRequest(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v8 = *(type metadata accessor for DataRequest(0) + 40);
        goto LABEL_19;
      }

      if (result == 7)
      {
        v6 = *(type metadata accessor for DataRequest(0) + 44);
        goto LABEL_19;
      }
    }

    else
    {
      if (result != 4)
      {
        v4 = *(type metadata accessor for DataRequest(0) + 36);
        goto LABEL_3;
      }

      v7 = *(type metadata accessor for DataRequest(0) + 32);
LABEL_19:
      v0 = 0;
      sub_275AE5364();
    }
  }
}

uint64_t DataRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABB868(v3, a1, a2, a3, type metadata accessor for DataRequest);
  if (!v4)
  {
    sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for DataRequest);
    sub_275AB7AE8(v3, a1, a2, a3, type metadata accessor for DataRequest);
    sub_275ABA204(v3, a1, a2, a3, type metadata accessor for DataRequest);
    sub_275AB99D4(v3);
    sub_275AB9A4C(v3);
    sub_275AC1CD0(v3, a1, a2, a3, type metadata accessor for DataRequest);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AB99D4(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AB9A4C(uint64_t a1)
{
  result = type metadata accessor for DataRequest(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275AB9B0C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + v8) = 2;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *(v11 + 8) = 1;
  *v11 = 0;
  *(a2 + v10) = 2;
  *(a2 + a1[11]) = 2;
  return result;
}

uint64_t sub_275AB9BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25590, type metadata accessor for DataRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AB9C78()
{
  sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest);

  return sub_275AE5464();
}

uint64_t sub_275AB9CE4()
{
  sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest);

  return sub_275AE5474();
}

uint64_t sub_275AB9D90()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DataResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DataResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "petMessage";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pflMessage";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dummyData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isPetResponse";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t DataResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for DataResponse(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v4 = *(type metadata accessor for DataResponse(0) + 32);
LABEL_3:
        v0 = 0;
        sub_275AE5364();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_275AE53C4();
    }
  }
}