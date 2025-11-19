void sub_1000B5A0C(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v20 - v7;
  sub_10001208C(v2, &v20 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_Attestation);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v11 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v12 = a1 + v11[6];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v13 = a1 + v11[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v11[8];
  v15 = sub_1001D08D0();
  result = (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = (a1 + v11[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v11[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + v11[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a1 + v11[12]);
  *v19 = 0;
  v19[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_Attestation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.attestation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
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
  v6 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
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
  sub_10001208C(v2, v8, &qword_10022AA88, &qword_1001D9620);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v12 = xmmword_1001D3A00;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v15 = v12 + v9[6];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v16 = v12 + v9[7];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v9[8];
    v18 = sub_1001D08D0();
    (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
    v19 = (v12 + v9[9]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v12 + v9[10]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v12 + v9[11]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v12 + v9[12]);
    *v22 = 0;
    v22[1] = 0;
    return sub_1000B6110;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_Common_Attestation);
  return sub_1000B6110;
}

void sub_1000B6110(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11 - v7;
  sub_10001208C(v2, &v11 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B66B4;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  return sub_1000B66B4;
}

void sub_1000B66B4(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B6C90;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1000B6C90;
}

void sub_1000B6C90(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    *(v11 + 8) = 0;
    v14 = v11 + *(v8 + 24);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B72B8;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  return sub_1000B72B8;
}

void sub_1000B72B8(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11 - v7;
  sub_10001208C(v2, &v11 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B785C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  return sub_1000B785C;
}

void sub_1000B785C(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = 0;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v11 = 0;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B7E60;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  return sub_1000B7E60;
}

void sub_1000B7E60(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B847C;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  return sub_1000B847C;
}

void sub_1000B847C(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v11 = a1 + *(result + 20);
  *v11 = 0;
  *(v11 + 8) = 256;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = v11 + *(v8 + 20);
    *v14 = 0;
    *(v14 + 8) = 256;
    return sub_1000B8A60;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  return sub_1000B8A60;
}

void sub_1000B8A60(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B8BFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B8C98(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000AED88(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksV2eeoiySbAE_AEtFZ_0()
{
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000AEE18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0) + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000B901C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B90B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1001D3A00;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000B9358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t (*Proto_Ropes_HttpService_PrefetchRequest.capabilities.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_1002293A8, &unk_1001D6530) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_1002293A8, &unk_1001D6530);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    *(v13 + 8) = 0;
    *(v13 + 10) = 0;
    v16 = v13 + *(v8 + 32);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  return sub_1000DBF9C;
}

void sub_1000B9600(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_Common_Capabilities);
    sub_100011F00(v9 + v3, &qword_1002293A8, &unk_1001D6530);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_1002293A8, &unk_1001D6530);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchRequest.hasCapabilities.getter()
{
  v1 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(v0 + *(v6 + 20), v5, &qword_1002293A8, &unk_1001D6530);
  v7 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_1002293A8, &unk_1001D6530);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchRequest.clearCapabilities()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  sub_100011F00(v0 + v1, &qword_1002293A8, &unk_1001D6530);
  v2 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t (*Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24);
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
  return sub_1000A6568;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchRequest.clearClientRequestedAttestationCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v2 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + *(v2 + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v1 + *(v8 + 24), v7, &qword_10022AA90, &qword_1001D9628);
  v9 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000B3928(v7, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(v9 + 20);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_10022AA90, &qword_1001D9628);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  sub_100011F00(v1 + v3, &qword_10022AA90, &qword_1001D9628);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA90, &qword_1001D9628) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA90, &qword_1001D9628);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v16 = v13 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA90, &qword_1001D9628);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return sub_1000B9EAC;
}

void sub_1000B9EAC(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v9 + v3, &qword_10022AA90, &qword_1001D9628);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA90, &qword_1001D9628);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchUnaryResponse.hasRateLimitConfigurationList.getter()
{
  v1 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v0 + *(v6 + 24), v5, &qword_10022AA90, &qword_1001D9628);
  v7 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_10022AA90, &qword_1001D9628);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchUnaryResponse.clearRateLimitConfigurationList()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  sub_100011F00(v0 + v1, &qword_10022AA90, &qword_1001D9628);
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v1 + *(v8 + 28), v7, &qword_10022AA98, &unk_1001D9630);
  v9 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000B3928(v7, a1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  v11 = a1 + *(v9 + 28);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_10022AA98, &unk_1001D9630);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  sub_100011F00(v1 + v3, &qword_10022AA98, &unk_1001D9630);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v4 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA98, &unk_1001D9630) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA98, &unk_1001D9630);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = xmmword_1001D3A00;
    *(v13 + 32) = 0;
    v16 = v13 + *(v8 + 28);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA98, &unk_1001D9630);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  return sub_1000BA5EC;
}

void sub_1000BA5EC(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_100011F00(v9 + v3, &qword_10022AA98, &unk_1001D9630);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA98, &unk_1001D9630);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchUnaryResponse.hasCompressedAttestationList.getter()
{
  v1 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v0 + *(v6 + 28), v5, &qword_10022AA98, &unk_1001D9630);
  v7 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_10022AA98, &unk_1001D9630);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchUnaryResponse.clearCompressedAttestationList()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  sub_100011F00(v0 + v1, &qword_10022AA98, &unk_1001D9630);
  v2 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  v3 = &a1[v2[5]];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.attestation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v20 - v7;
  sub_10001208C(v2, &v20 - v7, &qword_100229360, &qword_1001D64D8);
  v9 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_Attestation);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v10 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v11 = a1 + v10[6];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v12 = a1 + v10[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v10[8];
  v14 = sub_1001D08D0();
  result = (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v16 = (a1 + v10[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v10[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + v10[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a1 + v10[12]);
  *v19 = 0;
  v19[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.attestation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_Attestation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.attestation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
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
  v6 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
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
  sub_10001208C(v2, v8, &qword_100229360, &qword_1001D64D8);
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_Common_Attestation);
      return sub_1000BB000;
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *v12 = xmmword_1001D3A00;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  v15 = v12 + v9[6];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v16 = v12 + v9[7];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v9[8];
  v18 = sub_1001D08D0();
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = (v12 + v9[9]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v12 + v9[10]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v12 + v9[11]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v12 + v9[12]);
  *v22 = 0;
  v22[1] = 0;
  return sub_1000BB000;
}

void sub_1000BB000(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_100229360, &qword_1001D64D8);
  v9 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_100229360, &qword_1001D64D8);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000BB5DC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1000BB5DC;
}

void sub_1000BB5DC(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_100229360, &qword_1001D64D8);
  v9 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v11 = a1 + *(result + 20);
  *v11 = 0;
  *(v11 + 8) = 256;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_100229360, &qword_1001D64D8);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = v11 + *(v8 + 20);
    *v14 = 0;
    *(v14 + 8) = 256;
    return sub_1000BBBC0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  return sub_1000BBBC0;
}

void sub_1000BBBC0(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_ConfigRequest.rateLimitConfigRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v16 - v7;
  sub_10001208C(v2, &v16 - v7, &qword_10022AAA0, &qword_1001D9640);
  v9 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  sub_100011F00(v8, &qword_10022AAA0, &qword_1001D9640);
  *a1 = sub_1000D66E8(&_swiftEmptyArrayStorage);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v11 = a1 + v10[6];
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v13 = (a1 + v10[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v10[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v10[9]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

void (*Proto_Ropes_HttpService_ConfigRequest.rateLimitConfigRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AAA0, &qword_1001D9640) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v9 = *(*(v8 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 1) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AAA0, &qword_1001D9640);
  v12 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AAA0, &qword_1001D9640);
    *v11 = sub_1000D66E8(&_swiftEmptyArrayStorage);
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v14 = v11 + v8[6];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v15 = (v11 + v8[7]);
    *v15 = 0;
    v15[1] = 0;
    v16 = (v11 + v8[8]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v11 + v8[9]);
    *v17 = 0;
    v17[1] = 0;
  }

  else
  {
    sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  return sub_1000BC218;
}

void sub_1000BC218(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    sub_100011F00(v8, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Proto_Ropes_HttpService_ConfigRequest.OneOf_Type.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = (&v12 - v8);
  v10 = *(v7 + 56);
  sub_1000B44A8(a1, &v12 - v8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(a2, v9 + v10, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  LOBYTE(a2) = _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigRequestV2eeoiySbAC_ACtFZ_0(v9, v9 + v10);
  sub_1000B3E50(v9 + v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  return a2 & 1;
}

uint64_t sub_1000BC4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = (&v12 - v8);
  v10 = *(v7 + 56);
  sub_1000B44A8(a1, &v12 - v8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(a2, v9 + v10, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  LOBYTE(a2) = static Proto_Ropes_RateLimit_RateLimitConfigRequest.== infix(_:_:)(v9, v9 + v10);
  sub_1000B3E50(v9 + v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  return a2 & 1;
}

uint64_t Proto_Ropes_HttpService_ConfigResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AAB0, &unk_1001D9650);
  v9 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  sub_100011F00(v8, &qword_10022AAB0, &unk_1001D9650);
  *a1 = &_swiftEmptyArrayStorage;
  v10 = a1 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000BC7F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_100011F00(v5, a2, a3);
  sub_1000B3928(a1, v5, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v5, 0, 1, v9);
}

void (*Proto_Ropes_HttpService_ConfigResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AAB0, &unk_1001D9650) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AAB0, &unk_1001D9650);
  v12 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AAB0, &unk_1001D9650);
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  }

  else
  {
    sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return sub_1000BCA78;
}

void sub_1000BCA78(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000BCD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6C00();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(v1 + *(v8 + 36), v7, &qword_10022AA58, &qword_1001D95F8);
  v9 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000B3928(v7, a1, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  *a1 = sub_1000D65D4(&_swiftEmptyArrayStorage);
  a1[1] = sub_1000D69B0(&_swiftEmptyArrayStorage);
  v11 = a1 + *(v9 + 24);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_10022AA58, &qword_1001D95F8);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_1000D65D4(&_swiftEmptyArrayStorage);
  a1[1] = sub_1000D69B0(&_swiftEmptyArrayStorage);
  v2 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  sub_100011F00(v1 + v3, &qword_10022AA58, &qword_1001D95F8);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA58, &qword_1001D95F8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA58, &qword_1001D95F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = sub_1000D65D4(&_swiftEmptyArrayStorage);
    v13[1] = sub_1000D69B0(&_swiftEmptyArrayStorage);
    v16 = v13 + *(v8 + 24);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA58, &qword_1001D95F8);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  return sub_1000BD2E4;
}

void sub_1000BD2E4(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    sub_100011F00(v9 + v3, &qword_10022AA58, &qword_1001D95F8);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA58, &qword_1001D95F8);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_AdminApiResponse.Workload.hasRoutingParameters.getter()
{
  v1 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(v0 + *(v6 + 36), v5, &qword_10022AA58, &qword_1001D95F8);
  v7 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_10022AA58, &qword_1001D95F8);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_AdminApiResponse.Workload.clearRoutingParameters()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  sub_100011F00(v0 + v1, &qword_10022AA58, &qword_1001D95F8);
  v2 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  v3 = a1 + *(v2 + 32);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(v2 + 36);
  v5 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000BD950()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "setup_request";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "terminate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1000BDC00(v5, a1, a2, a3);
    }

    else if (result == 3)
    {
      sub_1000BE1BC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000BDC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BEA0, &qword_1001DB930);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA80, &unk_1001E1C40);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA80, &unk_1001E1C40);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      v40 = v55;
    }

    else
    {
      sub_100011F00(v35, &qword_10022BEA0, &qword_1001DB930);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BEA0, &qword_1001DB930);
  }

  sub_10001208C(v35, v43, &qword_10022BEA0, &qword_1001DB930);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BEA0, &qword_1001DB930);
    return sub_100011F00(v43, &qword_10022BEA0, &qword_1001DB930);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BEA0, &qword_1001DB930);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BEA8, &qword_1001DB938);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA80, &unk_1001E1C40);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA80, &unk_1001E1C40);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v35, &qword_10022BEA8, &qword_1001DB938);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BEA8, &qword_1001DB938);
  }

  sub_10001208C(v35, v43, &qword_10022BEA8, &qword_1001DB938);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BEA8, &qword_1001DB938);
    return sub_100011F00(v43, &qword_10022BEA8, &qword_1001DB938);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BEA8, &qword_1001DB938);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v16 - v11;
  sub_10001208C(v3, &v16 - v11, &qword_10022AA80, &unk_1001E1C40);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BEB40(v3, a1, a2, a3);
  }

  else
  {
    sub_1000BE908(v3, a1, a2, a3);
  }

  result = sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  if (!v4)
  {
LABEL_6:
    v15 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000BE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA80, &unk_1001E1C40);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA80, &unk_1001E1C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000BEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA80, &unk_1001E1C40);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA80, &unk_1001E1C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    sub_1000D6BB8(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000BEE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BEEAC(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BEF18()
{
  sub_1000D6BB8(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);

  return sub_1001D0B40();
}

void sub_1000BEF94()
{
  v0._countAndFlagsBits = 0x655270757465532ELL;
  v0._object = 0xED00007473657571;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName = 0xD00000000000002DLL;
  unk_1002431B0 = 0x80000001001E4900;
}

uint64_t *Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227820 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName;
}

uint64_t sub_1000BF084()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeRequest.SetupRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeRequest.SetupRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encrypted_request_ohttp_context";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attestation_mappings";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "capabilities";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "trusted_proxy_request_payload";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "trusted_proxy_response_bypass_ohttp_contexts";
  *(v15 + 8) = 44;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1001D0AC0();
        }

        else if (result == 2)
        {
          type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
          sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
          sub_1001D0AD0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1000BF4E4();
            break;
          case 4:
            v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
            sub_1001D0A40();
            break;
          case 5:
            sub_1001D0A70();
            break;
        }
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000BF4E4()
{
  v0 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0), sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping), result = sub_1001D0C10(), !v4))
    {
      result = sub_1000BF6F0(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000BF90C(v3);
        if (*(*(v3 + 16) + 16))
        {
          sub_1001D0B90();
        }

        v9 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 28);
        return sub_1001D0920();
      }
    }
  }

  return result;
}

uint64_t sub_1000BF6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(a1 + *(v16 + 32), v9, &qword_1002293A8, &unk_1001D6530);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_1002293A8, &unk_1001D6530);
  }

  sub_1000B3928(v9, v15, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1001D0C20();
  return sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_Common_Capabilities);
}

uint64_t sub_1000BF90C(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_100012038(*v3, *(v3 + 8));
    sub_1001D0BC0();
    return sub_10002683C(v5, v4);
  }

  return result;
}

double sub_1000BF9F4@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = &_swiftEmptyArrayStorage;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[7];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[8];
  v6 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  result = 0.0;
  *(a2 + a1[9]) = xmmword_1001D6800;
  return result;
}

uint64_t sub_1000BFAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDB0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BFB88(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BFBF4()
{
  sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return sub_1001D0B40();
}

uint64_t sub_1000BFC70()
{
  if (qword_100227820 != -1)
  {
    swift_once();
  }

  v1 = static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName;
  v2 = qword_1002431B0;
  swift_bridgeObjectRetain_n();
  v3._object = 0x80000001001E4E40;
  v3._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v3);

  static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName = v1;
  *algn_1002431D8 = v2;
  return result;
}

uint64_t *Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227830 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AA0();
    }

    else if (result == 2)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1001D0BF0(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1001D0C00(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1001D2470() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0) + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C0048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C00CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDA8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C016C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C01D8()
{
  sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return sub_1001D0B40();
}

uint64_t sub_1000C0254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1001D2470() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C0348()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001D3C60;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "attestation_list";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 8;
  *v9 = "compressed_attestation_list";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 9;
  *v11 = "attestation";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "ready_for_more_chunks";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rate_limit_configuration_list";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "expired_attestation_list";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "no_further_attestations";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "trusted_proxy_node_selected";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "revoked_attestation_list";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "diagnostic_information";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 7)
    {
      if (result <= 9)
      {
        if (result == 8)
        {
          sub_1000C25C8(v5, a1, a2, a3);
        }

        else
        {
          sub_1000C2B84(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 10:
            sub_1000C3140(v5, a1, a2, a3);
            break;
          case 11:
            sub_1000C36FC(v5, a1, a2, a3);
            break;
          case 12:
            sub_1000C3CB8(v5, a1, a2, a3);
            break;
        }
      }
    }

    else if (result <= 3)
    {
      if (result == 1)
      {
        sub_1000C0928(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1000C0ED8(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          sub_1000C1494(v5, a1, a2, a3);
          break;
        case 5:
          sub_1000C1A50(v5, a1, a2, a3);
          break;
        case 7:
          sub_1000C200C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000C0928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v50 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE68, &qword_1001DB8F8);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }

    else
    {
      sub_100011F00(v35, &qword_10022BE68, &qword_1001DB8F8);
      v42 = v50;
      sub_1000B3928(v24, v50, type metadata accessor for Proto_Ropes_Common_AttestationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_AttestationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE68, &qword_1001DB8F8);
  }

  sub_10001208C(v35, v43, &qword_10022BE68, &qword_1001DB8F8);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE68, &qword_1001DB8F8);
    return sub_100011F00(v43, &qword_10022BE68, &qword_1001DB8F8);
  }

  else
  {
    v46 = v51;
    sub_1000B3928(v43, v51, type metadata accessor for Proto_Ropes_Common_AttestationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE68, &qword_1001DB8F8);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE70, &qword_1001DB900);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100011F00(v35, &qword_10022BE70, &qword_1001DB900);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE70, &qword_1001DB900);
  }

  sub_10001208C(v35, v43, &qword_10022BE70, &qword_1001DB900);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE70, &qword_1001DB900);
    return sub_100011F00(v43, &qword_10022BE70, &qword_1001DB900);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE70, &qword_1001DB900);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C1494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
  }

  sub_10001208C(v35, v43, &qword_10022AA90, &qword_1001D9628);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
    return sub_100011F00(v43, &qword_10022AA90, &qword_1001D9628);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C1A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE78, &qword_1001DB908);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100011F00(v35, &qword_10022BE78, &qword_1001DB908);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE78, &qword_1001DB908);
  }

  sub_10001208C(v35, v43, &qword_10022BE78, &qword_1001DB908);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE78, &qword_1001DB908);
    return sub_100011F00(v43, &qword_10022BE78, &qword_1001DB908);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE78, &qword_1001DB908);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C200C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE80, &qword_1001DB910);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_100011F00(v35, &qword_10022BE80, &qword_1001DB910);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE80, &qword_1001DB910);
  }

  sub_10001208C(v35, v43, &qword_10022BE80, &qword_1001DB910);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE80, &qword_1001DB910);
    return sub_100011F00(v43, &qword_10022BE80, &qword_1001DB910);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE80, &qword_1001DB910);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C25C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v35, &qword_10022AA98, &unk_1001D9630);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022AA98, &unk_1001D9630);
  }

  sub_10001208C(v35, v43, &qword_10022AA98, &unk_1001D9630);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022AA98, &unk_1001D9630);
    return sub_100011F00(v43, &qword_10022AA98, &unk_1001D9630);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022AA98, &unk_1001D9630);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE38, &qword_1001DB8C8);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_Attestation);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
  }

  sub_10001208C(v35, v43, &qword_10022BE38, &qword_1001DB8C8);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
    return sub_100011F00(v43, &qword_10022BE38, &qword_1001DB8C8);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_Attestation);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE88, &qword_1001DB918);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_100011F00(v35, &qword_10022BE88, &qword_1001DB918);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE88, &qword_1001DB918);
  }

  sub_10001208C(v35, v43, &qword_10022BE88, &qword_1001DB918);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE88, &qword_1001DB918);
    return sub_100011F00(v43, &qword_10022BE88, &qword_1001DB918);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE88, &qword_1001DB918);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C36FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE90, &qword_1001DB920);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_100011F00(v35, &qword_10022BE90, &qword_1001DB920);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE90, &qword_1001DB920);
  }

  sub_10001208C(v35, v43, &qword_10022BE90, &qword_1001DB920);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE90, &qword_1001DB920);
    return sub_100011F00(v43, &qword_10022BE90, &qword_1001DB920);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE90, &qword_1001DB920);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE40, &qword_1001DB8D0);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_10022AA88, &qword_1001D9620);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_10022AA88, &qword_1001D9620);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
  }

  sub_10001208C(v35, v43, &qword_10022BE40, &qword_1001DB8D0);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
    return sub_100011F00(v43, &qword_10022BE40, &qword_1001DB8D0);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
    v47 = v49;
    sub_100011F00(v49, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  sub_10001208C(v3, &v17 - v11, &qword_10022AA88, &qword_1001D9620);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1000C5080(v3, a1, a2, a3);
        }

        else
        {
          sub_1000C456C(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1000C52B8(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_1000C47A0(v3, a1, a2, a3);
      }

      else
      {
        sub_1000C49D8(v3, a1, a2, a3);
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1000C4C10(v3, a1, a2, a3);
      }

      else
      {
        sub_1000C4E48(v3, a1, a2, a3);
      }

LABEL_23:
      result = sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (v4)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 7)
    {
      sub_1000C54F0(v3, a1, a2, a3);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_1000C5728(v3, a1, a2, a3);
      if (v4)
      {
        return sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      }
    }

    else
    {
      sub_1000C5960(v3, a1, a2, a3);
      if (v4)
      {
        return sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      }
    }

    sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

LABEL_24:
  v16 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0) + 20);
  return sub_1001D0920();
}

uint64_t sub_1000C456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_AttestationList);
    sub_1000D6BB8(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_AttestationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C47A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C4C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C4E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C54F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AA88, &qword_1001D9620);
  v15 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5BFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C5CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDA0, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C5D40(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C5DAC()
{
  sub_1000D6BB8(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

  return sub_1001D0B40();
}

void sub_1000C5E28()
{
  v0._object = 0x80000001001E4D60;
  v0._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName = 0xD00000000000002ELL;
  *algn_100243218 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227848 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName;
}

uint64_t sub_1000C5FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD98, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6078(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C60E4()
{
  sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return sub_1001D0B40();
}

void sub_1000C6160()
{
  v0._object = 0x80000001001E4D40;
  v0._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName = 0xD00000000000002ELL;
  unk_100243240 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227858 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName;
}

uint64_t sub_1000C6258(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001D0C60();
  sub_10003B610(v3, a2);
  sub_10003A37C(v3, a2);
  return sub_1001D0C50();
}

uint64_t sub_1000C6358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD90, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C63F8(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6464()
{
  sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return sub_1001D0B40();
}

void sub_1000C64E0()
{
  v0._object = 0x80000001001E4D20;
  v0._countAndFlagsBits = 0xD000000000000017;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName = 0xD00000000000002ELL;
  *algn_100243268 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227868 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName;
}

uint64_t sub_1000C65E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001D0C60();
  sub_10003B610(v5, a2);
  sub_10003A37C(v5, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v6 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D5410;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "node_identifier";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = sub_1001D0C30();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0A60();
    }

    else if (result == 2)
    {
      sub_1001D0A10();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1001D0BD0(), !v1))
  {
    if (v0[8] != 1 || (result = sub_1001D0BA0(), !v1))
    {
      v3 = &v0[*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) + 24)];
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000C6970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C69F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD88, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6A98(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6B04()
{
  sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000C6B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000AED88(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C6C38()
{
  v0._object = 0x80000001001E4CD0;
  v0._countAndFlagsBits = 0xD000000000000019;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName = 0xD00000000000002ELL;
  unk_100243290 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227878 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1001D0C00(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C6EC8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C6F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD80, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6FE4(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7050()
{
  sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return sub_1001D0B40();
}

uint64_t sub_1000C70CC(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C7170()
{
  v0._object = 0x80000001001E4CB0;
  v0._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName = 0xD00000000000002ELL;
  *algn_1002432B8 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227888 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName;
}

uint64_t sub_1000C725C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ohttp_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "revocation";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AC0();
    }

    else if (result == 2)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1001D0C00(), !v1))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1001D0BC0();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0) + 24);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0) + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C76E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1001D3A00;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C776C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C780C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7878()
{
  sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return sub_1001D0B40();
}

uint64_t sub_1000C78F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C79B0()
{
  v0._object = 0x80000001001E4C70;
  v0._countAndFlagsBits = 0xD000000000000017;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName = 0xD00000000000002ELL;
  unk_1002432E0 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227898 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
        sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0), sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation), result = sub_1001D0C10(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C7D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD70, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C7E08(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7E74()
{
  sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000C7EF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1000AEE18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C7FC0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_PrefetchRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_PrefetchRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "capabilities";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_requested_attestation_count";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1000C8284();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24);
      sub_1001D0AB0();
    }
  }

  return result;
}

uint64_t sub_1000C8284()
{
  v0 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C83A8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000C85C4(v3);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(a1 + *(v16 + 20), v9, &qword_1002293A8, &unk_1001D6530);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_1002293A8, &unk_1001D6530);
  }

  sub_1000B3928(v9, v15, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1001D0C20();
  return sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_Common_Capabilities);
}

uint64_t sub_1000C85C4(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1001D0C00();
  }

  return result;
}

uint64_t sub_1000C8688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1000C8740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD68, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C87E0(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C884C()
{
  sub_1000D6BB8(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

  return sub_1001D0B40();
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000C8B28();
          break;
        case 2:
          sub_1000C8A74();
          break;
        case 1:
          type metadata accessor for Proto_Ropes_Common_Attestation(0);
          sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
          sub_1001D0AD0();
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000C8A74()
{
  v0 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1001D0AE0();
}

uint64_t sub_1000C8B28()
{
  v0 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_Common_Attestation(0), sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation), result = sub_1001D0C10(), !v4))
  {
    result = sub_1000C8CF0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000C8F0C(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 20);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000C8CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(a1 + *(v16 + 24), v9, &qword_10022AA90, &qword_1001D9628);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_10022AA90, &qword_1001D9628);
  }

  sub_1000B3928(v9, v15, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1001D0C20();
  return sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
}

uint64_t sub_1000C8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(a1 + *(v16 + 28), v9, &qword_10022AA98, &unk_1001D9630);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_10022AA98, &unk_1001D9630);
  }

  sub_1000B3928(v9, v15, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1001D0C20();
  return sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
}

uint64_t sub_1000C9174@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1000C927C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD60, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C931C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACA0, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9388()
{
  sub_1000D6BB8(&qword_10022ACA0, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000C9444(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001D0C60();
  sub_10003B610(v5, a2);
  sub_10003A37C(v5, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v6 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D7170;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "attestation";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = sub_1001D0C30();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "rate_limit_configuration_list";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000CA2C8(v5, a1, a2, a3);
        break;
      case 2:
        sub_1000C9D0C(v5, a1, a2, a3);
        break;
      case 1:
        sub_1000C975C(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000C975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v50 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE38, &qword_1001DB8C8);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229360, &qword_1001D64D8);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229360, &qword_1001D64D8);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v40 = v55;
    }

    else
    {
      sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
      v42 = v50;
      sub_1000B3928(v24, v50, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_Attestation);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
  }

  sub_10001208C(v35, v43, &qword_10022BE38, &qword_1001DB8C8);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
    return sub_100011F00(v43, &qword_10022BE38, &qword_1001DB8C8);
  }

  else
  {
    v46 = v51;
    sub_1000B3928(v43, v51, type metadata accessor for Proto_Ropes_Common_Attestation);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE38, &qword_1001DB8C8);
    v47 = v49;
    sub_100011F00(v49, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000C9D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229360, &qword_1001D64D8);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229360, &qword_1001D64D8);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
  }

  sub_10001208C(v35, v43, &qword_10022AA90, &qword_1001D9628);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
    return sub_100011F00(v43, &qword_10022AA90, &qword_1001D9628);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022AA90, &qword_1001D9628);
    v47 = v49;
    sub_100011F00(v49, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000CA2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022BE40, &qword_1001DB8D0);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229360, &qword_1001D64D8);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229360, &qword_1001D64D8);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000B3928(v17, v27, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v27, v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
      v42 = v51;
      sub_1000B3928(v24, v51, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      sub_1000B3928(v42, v35, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000B3E50(v24, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
  }

  sub_10001208C(v35, v43, &qword_10022BE40, &qword_1001DB8D0);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
    return sub_100011F00(v43, &qword_10022BE40, &qword_1001DB8D0);
  }

  else
  {
    v46 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022BE40, &qword_1001DB8D0);
    v47 = v49;
    sub_100011F00(v49, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v46, v47, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  sub_10001208C(v3, &v17 - v11, &qword_100229360, &qword_1001D64D8);
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000CAC68(v3, a1, a2, a3);
    }

    else
    {
      sub_1000CAEA0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1000CAA34(v3, a1, a2, a3);
  }

  result = sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  if (!v4)
  {
LABEL_8:
    v16 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000CAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229360, &qword_1001D64D8);
  v15 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CAC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229360, &qword_1001D64D8);
  v15 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229360, &qword_1001D64D8);
  v15 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1001D0C20();
    return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  result = sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CB16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD58, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CB20C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CB278()
{
  sub_1000D6BB8(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000CB3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a1;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v49 = &v44 - v11;
  v12 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v44 - v25;
  v27 = sub_100011AC0(&qword_10022BE28, &qword_1001DB8B8);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v50 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v44 - v33;
  v48 = v5;
  v35 = *(v5 + 56);
  v51 = v4;
  v35(&v44 - v33, 1, 1, v4);
  sub_10001208C(v56, v16, &qword_10022AAA0, &qword_1001D9640);
  v45 = v18;
  v46 = v17;
  v36 = (*(v18 + 48))(v16, 1, v17);
  if (v36 == 1)
  {
    sub_100011F00(v16, &qword_10022AAA0, &qword_1001D9640);
    v37 = v51;
  }

  else
  {
    sub_1000B3928(v16, v26, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
    sub_1000B3928(v26, v23, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
    sub_100011F00(v34, &qword_10022BE28, &qword_1001DB8B8);
    v38 = v49;
    sub_1000B3928(v23, v49, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    sub_1000B3928(v38, v34, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    v37 = v51;
    v35(v34, 0, 1, v51);
  }

  sub_1000D6BB8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  v39 = v52;
  sub_1001D0AE0();
  v40 = v50;
  if (v39)
  {
    return sub_100011F00(v34, &qword_10022BE28, &qword_1001DB8B8);
  }

  sub_10001208C(v34, v50, &qword_10022BE28, &qword_1001DB8B8);
  if ((*(v48 + 48))(v40, 1, v37) == 1)
  {
    sub_100011F00(v34, &qword_10022BE28, &qword_1001DB8B8);
    return sub_100011F00(v40, &qword_10022BE28, &qword_1001DB8B8);
  }

  else
  {
    v42 = v47;
    sub_1000B3928(v40, v47, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    if (v36 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v34, &qword_10022BE28, &qword_1001DB8B8);
    v43 = v56;
    sub_100011F00(v56, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v42, v43, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    return (*(v45 + 56))(v43, 0, 1, v46);
  }
}

uint64_t sub_1000CB93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AAA0, &qword_1001D9640);
  v15 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    return sub_100011F00(v9, &qword_10022AAA0, &qword_1001D9640);
  }

  sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000D6BB8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1001D0C20();
  return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
}

uint64_t sub_1000CBBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD50, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CBC70(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBCDC()
{
  sub_1000D6BB8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

  return sub_1001D0B40();
}

uint64_t sub_1000CBE14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1001D09E0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000CBE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a1;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v49 = &v44 - v11;
  v12 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v44 - v25;
  v27 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v50 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v44 - v33;
  v48 = v5;
  v35 = *(v5 + 56);
  v51 = v4;
  v35(&v44 - v33, 1, 1, v4);
  sub_10001208C(v56, v16, &qword_10022AAB0, &unk_1001D9650);
  v45 = v18;
  v46 = v17;
  v36 = (*(v18 + 48))(v16, 1, v17);
  if (v36 == 1)
  {
    sub_100011F00(v16, &qword_10022AAB0, &unk_1001D9650);
    v37 = v51;
  }

  else
  {
    sub_1000B3928(v16, v26, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
    sub_1000B3928(v26, v23, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
    sub_100011F00(v34, &qword_10022AA90, &qword_1001D9628);
    v38 = v49;
    sub_1000B3928(v23, v49, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3928(v38, v34, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    v37 = v51;
    v35(v34, 0, 1, v51);
  }

  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v39 = v52;
  sub_1001D0AE0();
  v40 = v50;
  if (v39)
  {
    return sub_100011F00(v34, &qword_10022AA90, &qword_1001D9628);
  }

  sub_10001208C(v34, v50, &qword_10022AA90, &qword_1001D9628);
  if ((*(v48 + 48))(v40, 1, v37) == 1)
  {
    sub_100011F00(v34, &qword_10022AA90, &qword_1001D9628);
    return sub_100011F00(v40, &qword_10022AA90, &qword_1001D9628);
  }

  else
  {
    v42 = v47;
    sub_1000B3928(v40, v47, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v36 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v34, &qword_10022AA90, &qword_1001D9628);
    v43 = v56;
    sub_100011F00(v56, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v42, v43, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    return (*(v45 + 56))(v43, 0, 1, v46);
  }
}

uint64_t sub_1000CC424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000CC4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_10022AAB0, &unk_1001D9650);
  v15 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    return sub_100011F00(v9, &qword_10022AAB0, &unk_1001D9650);
  }

  sub_1000B3928(v9, v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1001D0C20();
  return sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
}

uint64_t sub_1000CC740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD48, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CC7E0(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CC84C()
{
  sub_1000D6BB8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000CC8F0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supported_workloads";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "public_api_endpoints";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
        sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1001D09E0();
    }

    v3 = v0;
    type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
    sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
LABEL_5:
    v0 = v3;
    sub_1001D0AD0();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0), sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload), result = sub_1001D0C10(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0), sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint), result = sub_1001D0C10(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CCE1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CCE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CCF18(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACF8, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CCF84()
{
  sub_1000D6BB8(&qword_10022ACF8, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse);

  return sub_1001D0B40();
}

void sub_1000CD02C()
{
  v0._object = 0x80000001001E4B30;
  v0._countAndFlagsBits = 0xD000000000000012;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName = 0xD000000000000030;
  *algn_100243398 = 0x80000001001E4A70;
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002278D8 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName;
}

uint64_t sub_1000CD118()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parse_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1000D6C00();
        sub_1001D0A30();
      }

      else if (result == 2)
      {
        sub_1001D0AA0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_1000D6C00(), result = sub_1001D0BB0(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1001D0BF0(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CD51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CD5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD38, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CD648(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CD6B4()
{
  sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return sub_1001D0B40();
}

uint64_t sub_1000CD730()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EQUALS";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTAINS";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "STARTS_WITH";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002278F0 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName;
}

uint64_t sub_1000CDA4C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "workload_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mandatory_keys";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "routing_parameters";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "utilization";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "priority";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        sub_1001D0AA0();
      }

      else if (result == 2)
      {
        sub_1001D0A60();
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          sub_1000CDE2C();
          break;
        case 5:
          sub_1001D0A80();
          break;
        case 6:
          sub_1001D0AC0();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000CDE2C()
{
  v0 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1001D0BF0(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (result = sub_1001D0BD0(), !v4))
    {
      result = sub_1000CDFF4(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 24))
        {
          sub_1001D0BE0();
        }

        if (*(v3 + 32))
        {
          sub_1001D0C00();
        }

        v12 = v3 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 32);
        return sub_1001D0920();
      }
    }
  }

  return result;
}

uint64_t sub_1000CDFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(a1 + *(v16 + 36), v9, &qword_10022AA58, &qword_1001D95F8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_10022AA58, &qword_1001D95F8);
  }

  sub_1000B3928(v9, v15, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  sub_1001D0C20();
  return sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
}

uint64_t sub_1000CE25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = a2 + *(a1 + 32);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000CE34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CE3EC(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CE458()
{
  sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return sub_1001D0B40();
}

uint64_t sub_1000CE4D4()
{
  if (qword_1002278F0 != -1)
  {
    swift_once();
  }

  v1 = static Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName;
  v2 = *algn_1002433D8;
  swift_bridgeObjectRetain_n();
  v3._countAndFlagsBits = 0x74656D617261502ELL;
  v3._object = 0xEB00000000737265;
  sub_1001D18B0(v3);

  static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName = v1;
  unk_100243400 = v2;
  return result;
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227900 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName;
}

uint64_t sub_1000CE5F8()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "params";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "extended_params";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1001D0910();
        sub_1001D09D0();
      }

      else if (result == 2)
      {
        sub_1000CE8EC();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000CE8EC()
{
  sub_1001D0910();
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
  sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
  sub_1000D6BB8(&qword_10022AB60, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
  return sub_1001D09C0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_1001D0910(), result = sub_1001D0B70(), !v1))
  {
    if (!*(v0[1] + 16) || (sub_1001D0910(), type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0), sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue), sub_1000D6BB8(&qword_10022AB60, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue), result = sub_1001D0B60(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CEBB0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a5(0) + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000CECC8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_1000D65D4(&_swiftEmptyArrayStorage);
  a2[1] = sub_1000D69B0(&_swiftEmptyArrayStorage);
  v4 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD28, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEE18(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CEE84()
{
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return sub_1001D0B40();
}

uint64_t sub_1000CEF2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000CF01C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  sub_1001D18B0(v7);
  *a4 = 0xD000000000000030;
  *a5 = 0x80000001001E4A70;
}

void *Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227910 != -1)
  {
    swift_once();
  }

  return static Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.protoMessageName;
}

uint64_t sub_1000CF120(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1001D0C60();
  sub_10003B610(v9, a2);
  sub_10003A37C(v9, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v10 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001D39F0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1001D0C30();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AA0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1001D0BF0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0) + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

Swift::Int sub_1000CF4E4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1001D2580();
  a1(0);
  sub_1000D6BB8(a2, a3);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000CF56C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CF5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD20, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF68C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF6F8()
{
  sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return sub_1001D0B40();
}

uint64_t sub_1000CF774(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000CF830(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100006028(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1001D2470();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CF9D4(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v68, v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v63 - v12;
  __chkstk_darwin(v11, v14);
  v66 = &v63 - v15;
  v16 = sub_100011AC0(&qword_10022BDF8, &qword_1001DB890);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  result = __chkstk_darwin(v19, v20);
  v69 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v69 + 16))
  {
    return 0;
  }

  v64 = a1;
  v65 = &v63 - v22;
  v67 = v23;
  v24 = 0;
  v25 = *(a1 + 64);
  v63 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  while (v28)
  {
    v70 = (v28 - 1) & v28;
    v32 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_18:
    v38 = (*(v64 + 48) + 16 * v32);
    v40 = *v38;
    v39 = v38[1];
    v41 = v66;
    sub_1000B44A8(*(v64 + 56) + *(v4 + 72) * v32, v66, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v42 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
    v43 = *(v42 + 48);
    v44 = v67;
    *v67 = v40;
    v44[1] = v39;
    v45 = v41;
    v35 = v44;
    sub_1000B3928(v45, v44 + v43, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    (*(*(v42 - 8) + 56))(v35, 0, 1, v42);

LABEL_19:
    v46 = v35;
    v47 = v65;
    sub_1000DBEF4(v46, v65, &qword_10022BDF8, &qword_1001DB890);
    v48 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
    v50 = v49 == 1;
    if (v49 == 1)
    {
      return v50;
    }

    v51 = v47;
    v52 = v9;
    v53 = *(v48 + 48);
    v54 = *v51;
    v55 = v51[1];
    sub_1000B3928(v51 + v53, v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v56 = v69;
    v57 = sub_100006028(v54, v55);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      goto LABEL_37;
    }

    v9 = v52;
    sub_1000B44A8(*(v56 + 56) + *(v4 + 72) * v57, v52, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v60 = *v52;
    v61 = *v13;
    if (v13[8] == 1)
    {
      if (v61)
      {
        if (v61 == 1)
        {
          if (v60 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v60 != 2)
        {
          goto LABEL_36;
        }
      }

      else if (v60)
      {
        goto LABEL_36;
      }
    }

    else if (v60 != v61)
    {
      goto LABEL_36;
    }

    if ((*(v52 + 2) != *(v13 + 2) || *(v52 + 3) != *(v13 + 3)) && (sub_1001D2470() & 1) == 0)
    {
LABEL_36:
      sub_1000B3E50(v52, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
LABEL_37:
      sub_1000B3E50(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
      return 0;
    }

    v30 = *(v68 + 24);
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
    v31 = sub_1001D1790();
    sub_1000B3E50(v52, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    result = sub_1000B3E50(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v28 = v70;
    if ((v31 & 1) == 0)
    {
      return v50;
    }
  }

  if (v29 <= v24 + 1)
  {
    v33 = v24 + 1;
  }

  else
  {
    v33 = v29;
  }

  v34 = v33 - 1;
  v35 = v67;
  while (1)
  {
    v36 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v36 >= v29)
    {
      v62 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
      (*(*(v62 - 8) + 56))(v35, 1, 1, v62);
      v70 = 0;
      v24 = v34;
      goto LABEL_19;
    }

    v37 = *(v63 + 8 * v36);
    ++v24;
    if (v37)
    {
      v70 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v24 = v36;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CFF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFEE0();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v59 = &v51 - v10;
  v11 = sub_100011AC0(&qword_10022BEF0, &qword_1001DB988);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  result = __chkstk_darwin(v14, v15);
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v54 = &v51 - v17;
  v55 = v18;
  v19 = 0;
  v52 = a1;
  v20 = *(a1 + 64);
  v51 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v56 = v60 + 16;
  v57 = (v60 + 32);
  v53 = (v60 + 8);
  while (1)
  {
    v25 = v55;
    if (!v23)
    {
      break;
    }

    v58 = (v23 - 1) & v23;
    v26 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = *(*(v52 + 48) + v26);
    v33 = v59;
    v32 = v60;
    (*(v60 + 16))(v59, *(v52 + 56) + *(v60 + 72) * v26, v4);
    v34 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
    v35 = *(v34 + 48);
    *v25 = v31;
    (*(v32 + 32))(&v25[v35], v33, v4);
    (*(*(v34 - 8) + 56))(v25, 0, 1, v34);
LABEL_17:
    v36 = v25;
    v37 = v54;
    sub_1000DBEF4(v36, v54, &qword_10022BEF0, &qword_1001DB988);
    v38 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    (*v57)(v61, &v37[v41], v4);
    v43 = sub_1000060A0(v42);
    if ((v44 & 1) == 0)
    {
      (*v53)(v61, v4);
      return 0;
    }

    v45 = v59;
    v46 = v60;
    (*(v60 + 16))(v59, *(v62 + 56) + *(v60 + 72) * v43, v4);
    sub_1000D6BB8(&qword_10022BF00, &type metadata accessor for EventValue);
    v47 = v61;
    v48 = sub_1001D1790();
    v49 = *(v46 + 8);
    v49(v45, v4);
    result = (v49)(v47, v4);
    v23 = v58;
    if ((v48 & 1) == 0)
    {
      return v40;
    }
  }

  if (v24 <= v19 + 1)
  {
    v27 = v19 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v50 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v58 = 0;
      v19 = v28;
      goto LABEL_17;
    }

    v30 = *(v51 + 8 * v29);
    ++v19;
    if (v30)
    {
      v58 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D0488(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Proto_Ropes_RateLimit_Values(0);
  v75 = *(v72 - 8);
  v4 = *(v75 + 64);
  v6 = __chkstk_darwin(v72, v5);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v67 - v10;
  __chkstk_darwin(v9, v12);
  v73 = &v67 - v13;
  v14 = sub_100011AC0(&qword_10022BDE8, &qword_1001DB880);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v17, v20);
  v23 = (&v67 - v22);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v24 = 0;
  v25 = *(a1 + 64);
  v68 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v69 = v29;
  v70 = (&v67 - v22);
  v71 = a2;
  while (v28)
  {
    v74 = (v28 - 1) & v28;
    v37 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_17:
    v42 = (*(a1 + 48) + 16 * v37);
    v43 = *v42;
    v44 = v42[1];
    v45 = v73;
    sub_1000B44A8(*(a1 + 56) + *(v75 + 72) * v37, v73, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v46 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
    v47 = *(v46 + 48);
    *v19 = v43;
    v19[1] = v44;
    sub_1000B3928(v45, v19 + v47, type metadata accessor for Proto_Ropes_RateLimit_Values);
    (*(*(v46 - 8) + 56))(v19, 0, 1, v46);

LABEL_18:
    sub_1000DBEF4(v19, v23, &qword_10022BDE8, &qword_1001DB880);
    v48 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
    v49 = (*(*(v48 - 8) + 48))(v23, 1, v48);
    v36 = v49 == 1;
    if (v49 == 1)
    {
      return v36;
    }

    v50 = *(v48 + 48);
    v52 = *v23;
    v51 = v23[1];
    sub_1000B3928(v23 + v50, v11, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v53 = v71;
    v54 = sub_100006028(v52, v51);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_34;
    }

    v57 = *(v53 + 56);
    v58 = v76;
    sub_1000B44A8(v57 + *(v75 + 72) * v54, v76, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v59 = *v58;
    v60 = v11;
    v61 = *v11;
    v62 = *(*v58 + 16);
    if (v62 != *(*v11 + 16))
    {
      goto LABEL_33;
    }

    if (v62 && v59 != v61)
    {
      v63 = (v59 + 40);
      v64 = (v61 + 40);
      while (1)
      {
        v65 = *(v63 - 1) == *(v64 - 1) && *v63 == *v64;
        if (!v65 && (sub_1001D2470() & 1) == 0)
        {
          break;
        }

        v63 += 2;
        v64 += 2;
        if (!--v62)
        {
          goto LABEL_6;
        }
      }

LABEL_33:
      sub_1000B3E50(v76, type metadata accessor for Proto_Ropes_RateLimit_Values);
      v11 = v60;
LABEL_34:
      sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_RateLimit_Values);
      return 0;
    }

LABEL_6:
    v30 = *(v72 + 20);
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
    v31 = v19;
    v32 = v36;
    v33 = v76;
    v11 = v60;
    v34 = sub_1001D1790();
    v35 = v33;
    v36 = v32;
    v19 = v31;
    sub_1000B3E50(v35, type metadata accessor for Proto_Ropes_RateLimit_Values);
    result = sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v29 = v69;
    v23 = v70;
    v28 = v74;
    if ((v34 & 1) == 0)
    {
      return v36;
    }
  }

  if (v29 <= v24 + 1)
  {
    v38 = v24 + 1;
  }

  else
  {
    v38 = v29;
  }

  v39 = v38 - 1;
  while (1)
  {
    v40 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v40 >= v29)
    {
      v66 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
      (*(*(v66 - 8) + 56))(v19, 1, 1, v66);
      v74 = 0;
      v24 = v39;
      goto LABEL_18;
    }

    v41 = *(v68 + 8 * v40);
    ++v24;
    if (v41)
    {
      v74 = (v41 - 1) & v41;
      v37 = __clz(__rbit64(v41)) | (v40 << 6);
      v24 = v40;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed45Proto_Ropes_HttpService_PrefetchUnaryResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v60 = &v56 - v12;
  v61 = sub_100011AC0(&qword_10022BE48, &qword_1001DB8D8);
  v13 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61, v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v56 - v26);
  v28 = sub_100011AC0(&qword_10022BE50, &qword_1001DB8E0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v56 - v31;
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v58 = v16;
  v56 = v8;
  v57 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  v33 = *(v57 + 24);
  v34 = a1;
  v35 = *(v28 + 48);
  v59 = v34;
  sub_10001208C(v34 + v33, v32, &qword_10022AA90, &qword_1001D9628);
  v36 = a2 + v33;
  v37 = a2;
  sub_10001208C(v36, &v32[v35], &qword_10022AA90, &qword_1001D9628);
  v38 = *(v18 + 48);
  if (v38(v32, 1, v17) == 1)
  {
    if (v38(&v32[v35], 1, v17) == 1)
    {
      sub_100011F00(v32, &qword_10022AA90, &qword_1001D9628);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_10001208C(v32, v27, &qword_10022AA90, &qword_1001D9628);
  if (v38(&v32[v35], 1, v17) == 1)
  {
    sub_1000B3E50(v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
LABEL_10:
    v45 = &qword_10022BE50;
    v46 = &qword_1001DB8E0;
LABEL_11:
    v47 = v32;
LABEL_12:
    sub_100011F00(v47, v45, v46);
    goto LABEL_13;
  }

  sub_1000B3928(&v32[v35], v22, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((sub_1000AE2D8(*v27, *v22) & 1) == 0)
  {
    sub_1000B3E50(v22, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    v45 = &qword_10022AA90;
    v46 = &qword_1001D9628;
    goto LABEL_11;
  }

  v50 = *(v17 + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  LOBYTE(v50) = sub_1001D1790();
  sub_1000B3E50(v22, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3E50(v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_100011F00(v32, &qword_10022AA90, &qword_1001D9628);
  if ((v50 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v40 = v57;
  v39 = v58;
  v41 = *(v57 + 28);
  v42 = *(v61 + 48);
  sub_10001208C(v59 + v41, v58, &qword_10022AA98, &unk_1001D9630);
  sub_10001208C(v37 + v41, v39 + v42, &qword_10022AA98, &unk_1001D9630);
  v43 = v63;
  v44 = *(v62 + 48);
  if (v44(v39, 1, v63) == 1)
  {
    if (v44(v39 + v42, 1, v43) == 1)
    {
      sub_100011F00(v39, &qword_10022AA98, &unk_1001D9630);
LABEL_23:
      v55 = *(v40 + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v48 = sub_1001D1790();
      return v48 & 1;
    }

    goto LABEL_20;
  }

  v51 = v60;
  sub_10001208C(v39, v60, &qword_10022AA98, &unk_1001D9630);
  if (v44(v39 + v42, 1, v43) == 1)
  {
    sub_1000B3E50(v51, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
LABEL_20:
    v45 = &qword_10022BE48;
    v46 = &qword_1001DB8D8;
    v47 = v39;
    goto LABEL_12;
  }

  v52 = v39 + v42;
  v53 = v56;
  sub_1000B3928(v52, v56, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v54 = static Proto_Ropes_Common_CompressedAttestationList.== infix(_:_:)(v51, v53);
  sub_1000B3E50(v53, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1000B3E50(v51, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_100011F00(v39, &qword_10022AA98, &unk_1001D9630);
  if (v54)
  {
    goto LABEL_23;
  }

LABEL_13:
  v48 = 0;
  return v48 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022BE30, &qword_1001DB8C0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_100229360, &qword_1001D64D8);
  sub_10001208C(a2, &v20[v21], &qword_100229360, &qword_1001D64D8);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_100229360, &qword_1001D64D8);
LABEL_9:
      v25 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0) + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_100229360, &qword_1001D64D8);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022BE30, &qword_1001DB8C0);
    goto LABEL_7;
  }

  sub_1000B3928(&v20[v21], v9, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  v24 = _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_100011F00(v20, &qword_100229360, &qword_1001D64D8);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49, v9);
  v51 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v19, v22);
  v25 = (&v48 - v24);
  __chkstk_darwin(v23, v26);
  v28 = (&v48 - v27);
  v29 = sub_100011AC0(&qword_10022BED8, &qword_1001DB970);
  v30 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29 - 8, v31);
  v34 = &v48 - v33;
  v35 = *(v32 + 56);
  sub_1000B44A8(a1, &v48 - v33, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_1000B44A8(a2, &v34[v35], type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000B44A8(v34, v28, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v41 = type metadata accessor for Proto_Ropes_Common_Attestation;
      v42 = v28;
LABEL_13:
      sub_1000B3E50(v42, v41);
      sub_100011F00(v34, &qword_10022BED8, &qword_1001DB970);
LABEL_14:
      v40 = 0;
      return v40 & 1;
    }

    sub_1000B3928(&v34[v35], v15, type metadata accessor for Proto_Ropes_Common_Attestation);
    v40 = static Proto_Ropes_Common_Attestation.== infix(_:_:)(v28, v15);
    sub_1000B3E50(v15, type metadata accessor for Proto_Ropes_Common_Attestation);
    v45 = v28;
    v46 = type metadata accessor for Proto_Ropes_Common_Attestation;
LABEL_16:
    sub_1000B3E50(v45, v46);
    sub_1000B3E50(v34, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    return v40 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000B44A8(v34, v21, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v41 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
      v42 = v21;
      goto LABEL_13;
    }

    v43 = &v34[v35];
    v44 = v50;
    sub_1000B3928(v43, v50, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v40 = static Proto_Ropes_Common_DiagnosticInformation.== infix(_:_:)(v21, v44);
    sub_1000B3E50(v44, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v45 = v21;
    v46 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
    goto LABEL_16;
  }

  sub_1000B44A8(v34, v25, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
    v42 = v25;
    goto LABEL_13;
  }

  v37 = v51;
  sub_1000B3928(&v34[v35], v51, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((sub_1000AE2D8(*v25, *v37) & 1) == 0)
  {
    sub_1000B3E50(v37, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    goto LABEL_19;
  }

  v38 = *(v49 + 20);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  v39 = sub_1001D1790();
  sub_1000B3E50(v37, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((v39 & 1) == 0)
  {
LABEL_19:
    sub_1000B3E50(v25, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v34, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_14;
  }

  sub_1000B3E50(v25, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3E50(v34, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  v40 = 1;
  return v40 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_AdminApiResponseV8WorkloadV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = (&v32 - v13);
  v15 = sub_100011AC0(&qword_10022AA60, &unk_1001D9600);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v32 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1001D2470() & 1) == 0 || (sub_1000AED88(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v33 = v9;
  v32 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  v20 = *(v32 + 36);
  v21 = *(v15 + 48);
  sub_10001208C(a1 + v20, v19, &qword_10022AA58, &qword_1001D95F8);
  sub_10001208C(a2 + v20, &v19[v21], &qword_10022AA58, &qword_1001D95F8);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_10001208C(v19, v14, &qword_10022AA58, &qword_1001D95F8);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v27 = &v19[v21];
      v28 = v33;
      sub_1000B3928(v27, v33, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      if (sub_1000CF830(*v14, *v28) & 1) != 0 && (sub_1000CF9D4(v14[1], v28[1]))
      {
        v29 = *(v4 + 24);
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
        v30 = sub_1001D1790();
        sub_1000B3E50(v28, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_100011F00(v19, &qword_10022AA58, &qword_1001D95F8);
        if (v30)
        {
          goto LABEL_8;
        }

LABEL_20:
        v24 = 0;
        return v24 & 1;
      }

      sub_1000B3E50(v28, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      v25 = &qword_10022AA58;
      v26 = &qword_1001D95F8;
LABEL_19:
      sub_100011F00(v19, v25, v26);
      goto LABEL_20;
    }

    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
LABEL_13:
    v25 = &qword_10022AA60;
    v26 = &unk_1001D9600;
    goto LABEL_19;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_100011F00(v19, &qword_10022AA58, &qword_1001D95F8);
LABEL_8:
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_20;
  }

  v23 = *(v32 + 32);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  v24 = sub_1001D1790();
  return v24 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_AdminApiResponseV17RoutingParamValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1001D2470() & 1) != 0)
  {
    v5 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0) + 24);
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed39Proto_Ropes_HttpService_PrefetchRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v32 - v12;
  v14 = sub_100011AC0(&qword_10022BE58, &qword_1001DB8E8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v32 - v18;
  v34 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v35 = a1;
  v20 = *(v34 + 20);
  v21 = *(v15 + 56);
  sub_10001208C(a1 + v20, v19, &qword_1002293A8, &unk_1001D6530);
  sub_10001208C(a2 + v20, &v19[v21], &qword_1002293A8, &unk_1001D6530);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_10001208C(v19, v13, &qword_1002293A8, &unk_1001D6530);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v25 = v33;
      sub_1000B3928(&v19[v21], v33, type metadata accessor for Proto_Ropes_Common_Capabilities);
      v26 = static Proto_Ropes_Common_Capabilities.== infix(_:_:)(v13, v25);
      sub_1000B3E50(v25, type metadata accessor for Proto_Ropes_Common_Capabilities);
      sub_1000B3E50(v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
      sub_100011F00(v19, &qword_1002293A8, &unk_1001D6530);
      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1000B3E50(v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
LABEL_6:
    sub_100011F00(v19, &qword_10022BE58, &qword_1001DB8E8);
    goto LABEL_7;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100011F00(v19, &qword_1002293A8, &unk_1001D6530);
LABEL_10:
  v27 = *(v34 + 24);
  v28 = (v35 + v27);
  v29 = *(v35 + v27 + 4);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 4);
  if (v29)
  {
    if (v31)
    {
LABEL_16:
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022BE60, &qword_1001DB8F0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_10022AA88, &qword_1001D9620);
  sub_10001208C(a2, &v20[v21], &qword_10022AA88, &qword_1001D9620);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_10022AA88, &qword_1001D9620);
LABEL_9:
      v25 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0) + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_10022AA88, &qword_1001D9620);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022BE60, &qword_1001DB8F0);
    goto LABEL_7;
  }

  sub_1000B3928(&v20[v21], v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  v24 = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  sub_100011F00(v20, &qword_10022AA88, &qword_1001D9620);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v3 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v129 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  v7 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120, v8);
  v130 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v10 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119, v11);
  v128 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v126 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v17 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116, v18);
  v127 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v20 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118, v21);
  v125 = (&v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v124 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v123 = (&v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v122 = (&v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  v35 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v36);
  v121 = (&v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v39 = *(*(v38 - 8) + 64);
  v41 = __chkstk_darwin(v38, v40);
  v131 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41, v43);
  v135 = (&v116 - v45);
  v47 = __chkstk_darwin(v44, v46);
  v134 = (&v116 - v48);
  v50 = __chkstk_darwin(v47, v49);
  v52 = &v116 - v51;
  v54 = __chkstk_darwin(v50, v53);
  v133 = (&v116 - v55);
  v57 = __chkstk_darwin(v54, v56);
  v132 = (&v116 - v58);
  v60 = __chkstk_darwin(v57, v59);
  v62 = &v116 - v61;
  v64 = __chkstk_darwin(v60, v63);
  v66 = (&v116 - v65);
  v68 = __chkstk_darwin(v64, v67);
  v70 = (&v116 - v69);
  __chkstk_darwin(v68, v71);
  v73 = (&v116 - v72);
  v74 = sub_100011AC0(&qword_10022BEE0, &qword_1001DB978);
  v75 = *(*(v74 - 8) + 64);
  v77 = __chkstk_darwin(v74 - 8, v76);
  v79 = &v116 - v78;
  v80 = *(v77 + 56);
  sub_1000B44A8(a1, &v116 - v78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  v81 = v80;
  sub_1000B44A8(v136, &v79[v80], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000B44A8(v79, v66, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v96 = v123;
          sub_1000B3928(&v79[v80], v123, type metadata accessor for Proto_Ropes_Common_Attestation);
          v84 = static Proto_Ropes_Common_Attestation.== infix(_:_:)(v66, v96);
          v85 = type metadata accessor for Proto_Ropes_Common_Attestation;
          sub_1000B3E50(v96, type metadata accessor for Proto_Ropes_Common_Attestation);
          v86 = v66;
          goto LABEL_41;
        }

        v90 = type metadata accessor for Proto_Ropes_Common_Attestation;
        v91 = v66;
        goto LABEL_52;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_1000B44A8(v79, v62, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v83 = v124;
          sub_1000B3928(&v79[v80], v124, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
          sub_1001D0940();
          sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
          v84 = sub_1001D1790();
          v85 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks;
          sub_1000B3E50(v83, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
          v86 = v62;
LABEL_41:
          v104 = v85;
          goto LABEL_42;
        }

        v90 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks;
        v91 = v62;
        goto LABEL_52;
      }

      v70 = v132;
      sub_1000B44A8(v79, v132, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v100 = v125;
        sub_1000B3928(&v79[v80], v125, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
        if (sub_1000AE2D8(*v70, *v100))
        {
          v101 = *(v118 + 20);
          sub_1001D0940();
          sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
          LOBYTE(v101) = sub_1001D1790();
          sub_1000B3E50(v100, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
          if (v101)
          {
            v99 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
            goto LABEL_34;
          }
        }

        else
        {
          sub_1000B3E50(v100, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
        }

        v114 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
LABEL_65:
        v111 = v114;
        v110 = v70;
        goto LABEL_68;
      }

      v107 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
      goto LABEL_51;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1000B44A8(v79, v73, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload())
      {
        v90 = type metadata accessor for Proto_Ropes_Common_AttestationList;
        v91 = v73;
LABEL_52:
        sub_1000B3E50(v91, v90);
        sub_100011F00(v79, &qword_10022BEE0, &qword_1001DB978);
LABEL_69:
        v84 = 0;
        return v84 & 1;
      }

      v112 = v121;
      sub_1000B3928(&v79[v80], v121, type metadata accessor for Proto_Ropes_Common_AttestationList);
      if (sub_1000AE120(*v73, *v112))
      {
        v113 = *(v117 + 20);
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
        LOBYTE(v113) = sub_1001D1790();
        sub_1000B3E50(v112, type metadata accessor for Proto_Ropes_Common_AttestationList);
        if (v113)
        {
          v95 = type metadata accessor for Proto_Ropes_Common_AttestationList;
          v94 = v73;
          goto LABEL_60;
        }
      }

      else
      {
        sub_1000B3E50(v112, type metadata accessor for Proto_Ropes_Common_AttestationList);
      }

      v111 = type metadata accessor for Proto_Ropes_Common_AttestationList;
      v110 = v73;
LABEL_68:
      sub_1000B3E50(v110, v111);
      sub_1000B3E50(v79, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      goto LABEL_69;
    }

    sub_1000B44A8(v79, v70, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v105 = v122;
      sub_1000B3928(&v79[v80], v122, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v84 = _s20privatecloudcomputed44Proto_Ropes_Common_CompressedAttestationListV2eeoiySbAC_ACtFZ_0(v70, v105);
      v85 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList;
      sub_1000B3E50(v105, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v86 = v70;
      goto LABEL_41;
    }

    v107 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList;
LABEL_51:
    v90 = v107;
    v91 = v70;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_1000B44A8(v79, v52, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v106 = v126;
        sub_1000B3928(&v79[v80], v126, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
        v84 = sub_1001D1790();
        v85 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations;
        sub_1000B3E50(v106, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
        v86 = v52;
        goto LABEL_41;
      }

      v90 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations;
      v91 = v52;
      goto LABEL_52;
    }

    v70 = v133;
    sub_1000B44A8(v79, v133, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v107 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
      goto LABEL_51;
    }

    v87 = v127;
    sub_1000B3928(&v79[v80], v127, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    if ((sub_1000AED88(*v70, *v87) & 1) != 0 && *(v70 + 8) == *(v87 + 8))
    {
      v92 = *(v116 + 24);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      if (sub_1001D1790())
      {
        v89 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
        goto LABEL_23;
      }
    }

    v108 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
LABEL_56:
    v109 = v108;
    sub_1000B3E50(v87, v108);
    v110 = v70;
    v111 = v109;
    goto LABEL_68;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v70 = v134;
    sub_1000B44A8(v79, v134, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v97 = v128;
      sub_1000B3928(&v79[v80], v128, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      if (*v70 == *v97)
      {
        v98 = *(v119 + 20);
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
        LOBYTE(v98) = sub_1001D1790();
        sub_1000B3E50(v97, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
        if (v98)
        {
          v99 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
LABEL_34:
          v95 = v99;
          v94 = v70;
          goto LABEL_60;
        }
      }

      else
      {
        sub_1000B3E50(v97, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      }

      v114 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
      goto LABEL_65;
    }

    v107 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v70 = v135;
    sub_1000B44A8(v79, v135, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v107 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
      goto LABEL_51;
    }

    v87 = v130;
    sub_1000B3928(&v79[v80], v130, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    if (sub_1000AEE18(*v70, *v87))
    {
      v88 = *(v120 + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      if (sub_1001D1790())
      {
        v89 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
LABEL_23:
        v93 = v89;
        sub_1000B3E50(v87, v89);
        v94 = v70;
        v95 = v93;
LABEL_60:
        sub_1000B3E50(v94, v95);
        sub_1000B3E50(v79, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        v84 = 1;
        return v84 & 1;
      }
    }

    v108 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
    goto LABEL_56;
  }

  v102 = v131;
  sub_1000B44A8(v79, v131, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    v90 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
    v91 = v102;
    goto LABEL_52;
  }

  v103 = v129;
  sub_1000B3928(&v79[v81], v129, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v84 = _s20privatecloudcomputed40Proto_Ropes_Common_DiagnosticInformationV2eeoiySbAC_ACtFZ_0(v102, v103);
  sub_1000B3E50(v103, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v86 = v102;
  v104 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
LABEL_42:
  sub_1000B3E50(v86, v104);
  sub_1000B3E50(v79, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  return v84 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022BE08, &qword_1001DB8A8);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_10022AAB0, &unk_1001D9650);
  sub_10001208C(a2, &v20[v21], &qword_10022AAB0, &unk_1001D9650);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_10022AAB0, &unk_1001D9650);
LABEL_9:
      v25 = *(type metadata accessor for Proto_Ropes_HttpService_ConfigResponse(0) + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_10022AAB0, &unk_1001D9650);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022BE08, &qword_1001DB8A8);
    goto LABEL_7;
  }

  sub_1000B3928(&v20[v21], v9, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  v24 = _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_100011F00(v20, &qword_10022AAB0, &unk_1001D9650);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v10);
  v12 = (&v23 - v11);
  v13 = sub_100011AC0(&qword_10022BEC0, &qword_1001DB958);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v23 - v17;
  v19 = *(v16 + 56);
  sub_1000B44A8(a1, &v23 - v17, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B44A8(a2, &v18[v19], type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B3928(v18, v12, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3928(&v18[v19], v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if (sub_1000AE2D8(*v12, *v9))
  {
    v20 = *(v4 + 20);
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
    v21 = sub_1001D1790();
    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v21)
    {
      return 1;
    }
  }

  else
  {
    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v12, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return 0;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022BE98, &qword_1001DB928);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_10022AA80, &unk_1001E1C40);
  sub_10001208C(a2, &v20[v21], &qword_10022AA80, &unk_1001E1C40);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_10022AA80, &unk_1001E1C40);
LABEL_9:
      v25 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0) + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_10022AA80, &unk_1001E1C40);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022BE98, &qword_1001DB928);
    goto LABEL_7;
  }

  sub_1000B3928(&v20[v21], v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  v24 = _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_100011F00(v20, &qword_10022AA80, &unk_1001E1C40);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v20);
  v22 = &v36 - v21;
  v23 = sub_100011AC0(&qword_10022BEE8, &qword_1001DB980);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v28 = &v36 - v27;
  v29 = *(v26 + 56);
  sub_1000B44A8(a1, &v36 - v27, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_1000B44A8(a2, &v28[v29], type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B44A8(v28, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B3928(&v28[v29], v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v30 = static Proto_Ropes_Common_ClientTerminate.== infix(_:_:)(v19, v8);
      sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v31 = v19;
      v32 = type metadata accessor for Proto_Ropes_Common_ClientTerminate;
LABEL_9:
      sub_1000B3E50(v31, v32);
      sub_1000B3E50(v28, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      return v30 & 1;
    }

    v33 = type metadata accessor for Proto_Ropes_Common_ClientTerminate;
    v34 = v19;
  }

  else
  {
    sub_1000B44A8(v28, v22, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000B3928(&v28[v29], v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v30 = _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV05SetupG0V2eeoiySbAE_AEtFZ_0(v22, v13);
      sub_1000B3E50(v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v31 = v22;
      v32 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest;
      goto LABEL_9;
    }

    v33 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest;
    v34 = v22;
  }

  sub_1000B3E50(v34, v33);
  sub_100011F00(v28, &qword_10022BEE8, &qword_1001DB980);
  v30 = 0;
  return v30 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV05SetupG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v37 - v13;
  v15 = sub_100011AC0(&qword_10022BE58, &qword_1001DB8E8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v37 - v18;
  if (*a1 != *a2 || (sub_1000AF338(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v21 = *(v20 + 32);
  v22 = *(v15 + 48);
  v37 = v20;
  v38 = a1;
  sub_10001208C(a1 + v21, v19, &qword_1002293A8, &unk_1001D6530);
  sub_10001208C(a2 + v21, &v19[v22], &qword_1002293A8, &unk_1001D6530);
  v23 = *(v5 + 48);
  if (v23(v19, 1, v4) == 1)
  {
    if (v23(&v19[v22], 1, v4) == 1)
    {
      sub_100011F00(v19, &qword_1002293A8, &unk_1001D6530);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_10001208C(v19, v14, &qword_1002293A8, &unk_1001D6530);
  if (v23(&v19[v22], 1, v4) == 1)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_Capabilities);
LABEL_8:
    sub_100011F00(v19, &qword_10022BE58, &qword_1001DB8E8);
LABEL_18:
    v35 = 0;
    return v35 & 1;
  }

  sub_1000B3928(&v19[v22], v9, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v24 = static Proto_Ropes_Common_Capabilities.== infix(_:_:)(v14, v9);
  sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_100011F00(v19, &qword_1002293A8, &unk_1001D6530);
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v25 = v37;
  v26 = v38;
  v27 = *(v37 + 36);
  v29 = *(v38 + v27);
  v28 = *(v38 + v27 + 8);
  v30 = (a2 + v27);
  v32 = *v30;
  v31 = v30[1];
  if (v28 >> 60 == 15)
  {
    if (v31 >> 60 == 15)
    {
      sub_100089C38(v29, v28);
      sub_100089C38(v32, v31);
      sub_10002683C(v29, v28);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v31 >> 60 == 15)
  {
LABEL_14:
    sub_100089C38(v29, v28);
    sub_100089C38(v32, v31);
    sub_10002683C(v29, v28);
    sub_10002683C(v32, v31);
    goto LABEL_18;
  }

  sub_100089C38(v29, v28);
  sub_100089C38(v32, v31);
  v33 = sub_1000A1A5C(v29, v28, v32, v31);
  sub_10002683C(v32, v31);
  sub_10002683C(v29, v28);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if ((sub_1000AF5AC(*(v26 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = *(v25 + 28);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
  v35 = sub_1001D1790();
  return v35 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_ConfigRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v33 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  v4 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33, v5);
  v7 = (&v33 - v6);
  v8 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v33 - v16;
  v18 = sub_100011AC0(&qword_10022BE18, &qword_1001DB8B0);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  v35 = a1;
  sub_10001208C(a1, &v33 - v22, &qword_10022AAA0, &qword_1001D9640);
  v36 = a2;
  sub_10001208C(a2, &v23[v24], &qword_10022AAA0, &qword_1001D9640);
  v25 = *(v9 + 48);
  if (v25(v23, 1, v8) == 1)
  {
    if (v25(&v23[v24], 1, v8) == 1)
    {
      sub_100011F00(v23, &qword_10022AAA0, &qword_1001D9640);
LABEL_9:
      v31 = *(type metadata accessor for Proto_Ropes_HttpService_ConfigRequest(0) + 20);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage);
      v26 = sub_1001D1790();
      return v26 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v23, v17, &qword_10022AAA0, &qword_1001D9640);
  if (v25(&v23[v24], 1, v8) == 1)
  {
    sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v23, &qword_10022BE18, &qword_1001DB8B0);
    goto LABEL_7;
  }

  v27 = &v23[v24];
  v28 = v34;
  sub_1000B3928(v27, v34, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  v29 = *(v33 + 48);
  sub_1000B44A8(v17, v7, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(v28, v7 + v29, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  v30 = static Proto_Ropes_RateLimit_RateLimitConfigRequest.== infix(_:_:)(v7, v7 + v29);
  sub_1000B3E50(v7 + v29, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v28, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_100011F00(v23, &qword_10022AAA0, &qword_1001D9640);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_7:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1000D4CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227A78, &unk_1001DB760);
    v3 = sub_1001D21C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100006028(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D4DD8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227F48, &qword_1001DB750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100011AC0(&qword_10022BCA8, &qword_1001DB758);
    v9 = sub_1001D21C0();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v11, v7, &qword_100227F48, &qword_1001DB750);
      v13 = *v7;
      result = sub_1000060A0(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v13;
      v17 = v9[7];
      v18 = sub_1001CFEE0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, &v7[v10], v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D4FC0(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DF0, &unk_1001D3B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100011AC0(&qword_100227A88, &unk_1001DB770);
    v9 = sub_1001D21C0();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v11, v7, &qword_100227DF0, &unk_1001D3B10);
      v13 = *v7;
      result = sub_1000060E4(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v13;
      v17 = v9[7];
      v18 = sub_1001CFEE0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, &v7[v10], v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}