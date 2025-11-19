uint64_t sub_1D8FF7868(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v3;
  v8 = @"MTOfflineKeyData";
  v9 = v3;
  v10 = sub_1D9178C8C();
  v11 = sub_1D91785DC();
  v12 = [a2 objectsInEntity:v8 predicate:v10 sortDescriptors:v11];

  if (!v12)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v13 = sub_1D91785FC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1D917935C();
  if (!result)
  {
LABEL_10:

LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_1D8FF7AC4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 privateQueueContext];

  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v9[4] = sub_1D8FF7E1C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8CF5F60;
  v9[3] = &block_descriptor_65;
  v7 = _Block_copy(v9);
  v8 = v5;

  [v8 performBlock_];
  _Block_release(v7);
}

void sub_1D8FF7C04()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8FF7868(*(v0 + 32), *(v0 + 40));
  v3 = v2;
  if (v2)
  {
  }

  *v1 = v3 != 0;
}

uint64_t dispatch thunk of CoreDataKeyRequestStorage.removeKeyData(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

_BYTE *ContentKeyRequest.__allocating_init(keyIdentifier:adamId:requestType:offlineRequest:secureInvalidationDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v8 = v7;
  v28 = a6;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  result = objc_allocWithZone(v8);
  *&result[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v21 = &result[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v21 = a1;
  v21[1] = a2;
  v22 = &result[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v22 = a3;
  v22[1] = a4;
  *&result[OBJC_IVAR___MTContentKeyRequest_requestType] = a5;
  result[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v28;
  *&result[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = a7;
  v23 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = result;
    ++qword_1ECAB8BC0;
    *&result[OBJC_IVAR___MTContentKeyRequest_requestID] = v23;
    v25 = a7;
    sub_1D9176E2C();
    (*(v16 + 32))(v24 + OBJC_IVAR___MTContentKeyRequest_requestDate, v19, v15);
    v29.receiver = v24;
    v29.super_class = v27;
    v26 = objc_msgSendSuper2(&v29, sel_init);

    return v26;
  }

  return result;
}

id ContentKeyResponse.__allocating_init(request:keyData:renewalDate:error:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v11[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v13 = &v11[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v11[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v11[OBJC_IVAR___MTContentKeyResponse_request] = a1;
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a2;
  v13[1] = a3;
  v16 = a1;
  sub_1D8DA04B0(a2, a3);
  sub_1D8D75668(v14, v15);
  sub_1D8CF6B1C(a4, &v11[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v17 = *&v11[v12];
  *&v11[v12] = a5;
  v18 = a5;

  v22.receiver = v11;
  v22.super_class = v6;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  sub_1D8D75668(a2, a3);
  sub_1D8CF5EF8(a4);
  return v19;
}

unint64_t sub_1D8FF81A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FF942C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ContentKeyRequest.keyIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
  v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);

  return v1;
}

id sub_1D8FF8230(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

uint64_t ContentKeyRequest.adamId.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_adamId);
  v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_adamId + 8);

  return v1;
}

void *ContentKeyRequest.secureInvalidationDsid.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v2 = v1;
  return v1;
}

uint64_t ContentKeyRequest.init(keyIdentifier:adamId:requestType:offlineRequest:secureInvalidationDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  sub_1D8FF943C(a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;

  return v9;
}

char *sub_1D8FF8470(uint64_t a1)
{
  v29 = a1;
  v2 = sub_1D9176E3C();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
  v7 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);
  v8 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId);
  v9 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId + 8);
  v10 = *(v1 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
  v11 = *(v1 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v12 = type metadata accessor for ContentKeyRequest(0);
  result = objc_allocWithZone(v12);
  *&result[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v14 = &result[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v14 = v6;
  *(v14 + 1) = v7;
  v15 = &result[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v15 = v8;
  *(v15 + 1) = v9;
  *&result[OBJC_IVAR___MTContentKeyRequest_requestType] = v29;
  result[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v10;
  *&result[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = v11;
  v16 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    ++qword_1ECAB8BC0;
    *&result[OBJC_IVAR___MTContentKeyRequest_requestID] = v16;
    v18 = v11;

    sub_1D9176E2C();
    (*(v27 + 32))(&v17[OBJC_IVAR___MTContentKeyRequest_requestDate], v5, v28);
    v30.receiver = v17;
    v30.super_class = v12;
    v19 = objc_msgSendSuper2(&v30, sel_init);
    *&v19[OBJC_IVAR___MTContentKeyRequest_requestID] = *(v1 + OBJC_IVAR___MTContentKeyRequest_requestID);
    v20 = (v1 + OBJC_IVAR___MTContentKeyRequest_requestData);
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];
    v23 = &v19[OBJC_IVAR___MTContentKeyRequest_requestData];
    swift_beginAccess();
    v24 = *v23;
    v25 = v23[1];
    *v23 = v22;
    v23[1] = v21;
    sub_1D8DA04B0(v22, v21);
    sub_1D8D75668(v24, v25);
    return v19;
  }

  return result;
}

id ContentKeyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ContentKeyResponse.request.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyResponse_request);
  v2 = v1;
  return v1;
}

void *sub_1D8FF8A5C()
{
  v1 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8FF8B1C(uint64_t a1)
{
  v3 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8FF8B74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D8FF8C48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = 0;
  v5 = v3[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v3;
    sub_1D8D752C4(v6, v5);
    v7 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    sub_1D8D75668(v6, v5);
    v4 = v7;
  }

  return v4;
}

uint64_t sub_1D8FF8CF0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1D8DA04B0(*v2, *(v2 + 8));
  return v3;
}

void sub_1D8FF8D54(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  if (a3)
  {
    v7 = a1;
    v8 = v5;
    v5 = sub_1D9176C8C();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v10 = 0xF000000000000000;
  }

  v12 = &a1[*a4];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v5;
  v12[1] = v10;
  sub_1D8D75668(v13, v14);
}

uint64_t sub_1D8FF8DFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1D8D75668(v7, v8);
}

uint64_t sub_1D8FF8E58@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_1D8DA04B0(v5, v6);
}

uint64_t sub_1D8FF8EAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  sub_1D8DA04B0(v5, v6);
  return sub_1D8D75668(v8, v9);
}

id ContentKeyResponse.__allocating_init(request:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (a2)
  {
    v7 = v6;
    v8 = sub_1D9176A5C();
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithRequest:a1 keyData:0 renewalDate:0 error:v8];

  return v9;
}

id ContentKeyResponse.init(request:error:)(void *a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithRequest:a1 keyData:0 renewalDate:0 error:v6];

  return v7;
}

id ContentKeyResponse.init(request:keyData:renewalDate:error:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1D8FF9600(a1, a2, a3, a4, a5);

  sub_1D8D75668(a2, a3);
  return v9;
}

id sub_1D8FF937C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D8FF942C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void sub_1D8FF943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v25 = a6;
  v14 = sub_1D9176E3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v19 = &v7[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v7[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v20 = a3;
  v20[1] = a4;
  *&v7[OBJC_IVAR___MTContentKeyRequest_requestType] = a5;
  v7[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v25;
  *&v7[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = a7;
  v21 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1ECAB8BC0;
    *&v7[OBJC_IVAR___MTContentKeyRequest_requestID] = v21;
    v22 = a7;
    sub_1D9176E2C();
    (*(v15 + 32))(&v7[OBJC_IVAR___MTContentKeyRequest_requestDate], v18, v14);
    v23 = type metadata accessor for ContentKeyRequest(0);
    v26.receiver = v7;
    v26.super_class = v23;
    objc_msgSendSuper2(&v26, sel_init);
  }
}

id sub_1D8FF9600(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v11 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v5[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v12 = &v5[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v5[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v5[OBJC_IVAR___MTContentKeyResponse_request] = a1;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a2;
  v12[1] = a3;
  v15 = a1;
  sub_1D8DA04B0(a2, a3);
  sub_1D8D75668(v13, v14);
  sub_1D8CF6B1C(a4, &v5[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v16 = *&v5[v11];
  *&v5[v11] = a5;
  v17 = a5;

  v20.receiver = v5;
  v20.super_class = type metadata accessor for ContentKeyResponse(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D8CF5EF8(a4);
  return v18;
}

unint64_t sub_1D8FF9750()
{
  result = qword_1ECAB8C00;
  if (!qword_1ECAB8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C00);
  }

  return result;
}

uint64_t sub_1D8FF97AC()
{
  result = sub_1D9176E3C();
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

void sub_1D8FF9990()
{
  sub_1D8CF4B30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D8FF9BA0()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_requestType);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingStop;
      v5 = &selRef_podcastsLicenseOfflineStop;
      goto LABEL_8;
    }

    if (v1 == 3)
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseOfflineStopNonce;
LABEL_13:
      v6 = [v3 *v4];

      return v6;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingStart;
      v5 = &selRef_podcastsLicenseOfflineStart;
      goto LABEL_8;
    }

    if (v1 == 1)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingRenew;
      v5 = &selRef_podcastsLicenseOfflineRenew;
LABEL_8:
      if (v2)
      {
        v4 = v5;
      }

      goto LABEL_13;
    }
  }

  v8 = *(v0 + OBJC_IVAR___MTContentKeyRequest_requestType);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FF9D48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v100 = a3;
  v106 = a4;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v108 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = v97 - v13;
  v14 = sub_1D9176E3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v97[0] = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = v97 - v22;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v112 = v97 - v25;
  v26 = *a1;
  v111 = *(a1 + 8);
  v27 = *(a1 + 16);
  v98 = *(a1 + 24);
  v28 = *(a1 + 40);
  v97[1] = *(a1 + 32);
  v29 = a2;
  v103 = v28;
  v117 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v104 = v15;
    v105 = v14;
    v109 = v9;
    v110 = v8;
    v107 = v5;
    if (!i)
    {
      break;
    }

    v31 = 0;
    v9 = v29 & 0xC000000000000001;
    v15 = v29 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR___MTContentKeyRequest_requestID;
    v113 = v26;
    *&v114 = i;
    while (1)
    {
      if (v9)
      {
        v32 = MEMORY[0x1DA72AA90](v31, v29, v24);
      }

      else
      {
        if (v31 >= *(v15 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v14 = v32;
      v8 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (*&v32[*v5] == v26)
      {
        sub_1D917959C();
        v33 = v5;
        v34 = v15;
        v35 = v9;
        v36 = *(v117 + 16);
        sub_1D91795DC();
        v9 = v35;
        v15 = v34;
        v5 = v33;
        sub_1D91795EC();
        sub_1D91795AC();
        v26 = v113;
        i = v114;
      }

      else
      {
      }

      ++v31;
      if (v8 == i)
      {
        v37 = v117;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v38 = v112;
  v39 = v108;
  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    v41 = v109;
    v40 = v110;
    if (*(v37 + 16))
    {
      goto LABEL_19;
    }

LABEL_36:

    v14 = 0;
    if (v111)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  v67 = sub_1D917935C();
  v41 = v109;
  v40 = v110;
  if (!v67)
  {
    goto LABEL_36;
  }

LABEL_19:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x1DA72AA90](0, v37);
LABEL_22:
    v14 = v42;

    if (v111)
    {
LABEL_23:
      if (qword_1ECAAFBE0 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v40, qword_1ECAAFBE8);
      swift_beginAccess();
      (*(v41 + 16))(v39, v43, v40);

      v44 = sub_1D917741C();
      v45 = sub_1D9178CFC();
      v46 = v14;
      if (os_log_type_enabled(v44, v45))
      {
        v47 = swift_slowAlloc();
        *v47 = 134218240;
        *(v47 + 4) = v100;
        *(v47 + 12) = 2048;
        v48 = v111;
        *(v47 + 14) = v111;

        _os_log_impl(&dword_1D8CEC000, v44, v45, "[Decoding Key Response] Request Type %ld. Response Status %ld", v47, 0x16u);
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      else
      {

        v48 = v111;
      }

      (*(v41 + 8))(v39, v40);
      v49 = v101;
      (*(v104 + 56))(v101, 1, 1, v105);
      v50 = sub_1D8FFEAEC(v48);
      if (v51)
      {
        v52 = -1;
      }

      else
      {
        v52 = v50;
      }

      v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v54 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v55 = [v53 initWithDomain:v54 code:v52 userInfo:0];

      v56 = type metadata accessor for ContentKeyResponse(0);
      v57 = objc_allocWithZone(v56);
      v58 = OBJC_IVAR___MTContentKeyResponse_error;
      *&v57[OBJC_IVAR___MTContentKeyResponse_error] = 0;
      v59 = &v57[OBJC_IVAR___MTContentKeyResponse_keyData];
      v114 = xmmword_1D9190380;
      *&v57[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
      v60 = v46;
      *&v57[OBJC_IVAR___MTContentKeyResponse_request] = v46;
      swift_beginAccess();
      v62 = *v59;
      v61 = v59[1];
      *v59 = v114;
      v63 = v60;
      sub_1D8D75668(v62, v61);
      sub_1D8CF6B1C(v49, &v57[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
      swift_beginAccess();
      v64 = *&v57[v58];
      *&v57[v58] = v55;
      v65 = v55;

      v116.receiver = v57;
      v116.super_class = v56;
      v66 = objc_msgSendSuper2(&v116, sel_init);

      goto LABEL_46;
    }

LABEL_37:
    if (v103)
    {
      v68 = sub_1D9176C4C();
      v113 = v69;
      *&v114 = v68;
    }

    else
    {
      v113 = 0xF000000000000000;
      *&v114 = 0;
    }

    v70 = v104;
    v71 = *(v104 + 56);
    v72 = v105;
    v71(v38, 1, 1, v105);
    if (!((v14 == 0) | v98 & 1))
    {
      v73 = v97[0];
      (*(v70 + 16))(v97[0], v14 + OBJC_IVAR___MTContentKeyRequest_requestDate, v72);
      v111 = v14;
      v74 = v102;
      sub_1D9176DBC();
      v75 = v73;
      v76 = v112;
      (*(v70 + 8))(v75, v72);
      sub_1D8CF5EF8(v76);
      v71(v74, 0, 1, v72);
      v77 = v74;
      v14 = v111;
      sub_1D8E964A4(v77, v76);
    }

    if (qword_1ECAAFBE0 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if (*(v37 + 16))
  {
    v42 = *(v37 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_43:
  v78 = v14;
  v79 = __swift_project_value_buffer(v40, qword_1ECAAFBE8);
  swift_beginAccess();
  v80 = v99;
  (*(v41 + 16))(v99, v79, v40);
  v81 = sub_1D917741C();
  v82 = sub_1D9178D1C();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    *(v83 + 4) = v100;
    _os_log_impl(&dword_1D8CEC000, v81, v82, "[Decoding Key Response] Request Type %ld. Got key data.", v83, 0xCu);
    MEMORY[0x1DA72CB90](v83, -1, -1);
  }

  (*(v41 + 8))(v80, v40);
  sub_1D8CF6B1C(v112, v102);
  v84 = type metadata accessor for ContentKeyResponse(0);
  v85 = objc_allocWithZone(v84);
  v86 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v85[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v87 = &v85[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v85[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v85[OBJC_IVAR___MTContentKeyResponse_request] = v78;
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  v91 = v113;
  v90 = v114;
  *v87 = v114;
  v87[1] = v91;
  v92 = v78;
  sub_1D8DA04B0(v90, v91);
  v93 = v89;
  v49 = v112;
  sub_1D8D75668(v88, v93);
  v94 = v102;
  sub_1D8CF6B1C(v102, &v85[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v95 = *&v85[v86];
  *&v85[v86] = 0;

  v115.receiver = v85;
  v115.super_class = v84;
  v66 = objc_msgSendSuper2(&v115, sel_init);
  sub_1D8D75668(v90, v91);

  sub_1D8CF5EF8(v94);
LABEL_46:
  result = sub_1D8CF5EF8(v49);
  *v106 = v66;
  return result;
}

uint64_t sub_1D8FFA7C0(unint64_t a1, uint64_t a2, void *a3)
{
  v122 = sub_1D917744C();
  v5 = *(v122 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v122);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v109 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  *&v119 = v109 - v16;
  v17 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_87:
    v18 = sub_1D917935C();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return result;
  }

  v125 = a1 & 0xC000000000000001;
  v121 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_90;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_92:
    __break(1u);
    swift_once();
    v67 = v122;
    v68 = __swift_project_value_buffer(v122, qword_1ECAAFBE8);
    swift_beginAccess();
    v69 = v121;
    (v121[2])(v8, v68, v67);
    v70 = a3;
    v71 = sub_1D917741C();
    v72 = sub_1D9178CFC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v133 = v74;
      *v73 = 136315138;
      swift_getErrorValue();
      v75 = sub_1D9179D2C();
      v77 = sub_1D8CFA924(v75, v76, &v133);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_1D8CEC000, v71, v72, "[Decoding Key Response] Decode Error %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x1DA72CB90](v74, -1, -1);
      MEMORY[0x1DA72CB90](v73, -1, -1);

      v69[1](v8, v122);
    }

    else
    {

      v69[1](v8, v67);
    }

    return v125;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x1DA72AA90](0, a1))
  {
    v21 = *&i[OBJC_IVAR___MTContentKeyRequest_requestType];

    v22 = sub_1D917656C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1D917655C();
    sub_1D8FFB768();
    a3 = 0;
    sub_1D917654C();

    v25 = *(&v137 + 1);
    if (v21 == 3)
    {
      break;
    }

    if (*(&v137 + 1))
    {

      v78 = *(v25 + 16);
      if (!v78)
      {
LABEL_59:

        return MEMORY[0x1E69E7CC0];
      }

      v124 = v21;
      v127 = MEMORY[0x1E69E7CC0];
      sub_1D91795CC();
      if (*(v25 + 16))
      {
        v79 = 0;
        v125 = v78 - 1;
        v80 = 32;
        while (1)
        {
          v81 = *(v25 + v80);
          v82 = *(v25 + v80 + 16);
          v83 = *(v25 + v80 + 32);
          *(v139 + 10) = *(v25 + v80 + 42);
          v138 = v82;
          v139[0] = v83;
          v137 = v81;
          v133 = *(v25 + v80);
          v134 = *(v25 + v80 + 16);
          v135[0] = *(v25 + v80 + 32);
          *(v135 + 10) = *(v25 + v80 + 42);
          sub_1D8FF2B98(&v137, &v130);
          sub_1D8FF9D48(&v133, a1, v124, &v136);
          v130 = v133;
          v131 = v134;
          v132[0] = v135[0];
          *(v132 + 10) = *(v135 + 10);
          sub_1D8FF2BD0(&v130);
          sub_1D917959C();
          v84 = *(v127 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          if (v125 == v79)
          {
            break;
          }

          v80 += 64;
          if (++v79 >= *(v25 + 16))
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        __break(1u);
      }

      return v127;
    }

    if (v17)
    {
      v86 = sub_1D917935C();
    }

    else
    {
      v86 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v122;
    result = MEMORY[0x1E69E7CC0];
    if (!v86)
    {
      return result;
    }

    v124 = v21;
    *&v133 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v86 < 0)
    {
      goto LABEL_95;
    }

    v97 = 0;
    *&v118 = a1 & 0xFFFFFFFFFFFFFF8;
    v120 = (v121 + 2);
    ++v121;
    *&v96 = 134217984;
    v119 = v96;
    v123 = v86;
    while (1)
    {
      v17 = (v97 + 1);
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v125)
      {
        v103 = MEMORY[0x1DA72AA90](v97, a1);
      }

      else
      {
        if (v97 >= *(v118 + 16))
        {
          __break(1u);
          __break(1u);
          goto LABEL_94;
        }

        v103 = *(a1 + 8 * v97 + 32);
      }

      v104 = v103;
      if (qword_1ECAAFBE0 != -1)
      {
        swift_once();
      }

      v105 = __swift_project_value_buffer(v8, qword_1ECAAFBE8);
      swift_beginAccess();
      (*v120)(v11, v105, v8);
      v106 = sub_1D917741C();
      v107 = sub_1D9178CFC();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = v119;
        *(v108 + 4) = v124;
        _os_log_impl(&dword_1D8CEC000, v106, v107, "[Decoding Key Response] Request Type %ld. Missing license responses", v108, 0xCu);
        MEMORY[0x1DA72CB90](v108, -1, -1);
      }

      (*v121)(v11, v8);
      sub_1D8FFB7BC();
      v98 = swift_allocError();
      *v99 = 1;
      v100 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v101 = v104;
      v102 = v98;
      v18 = sub_1D9176A5C();

      [v100 initWithRequest:v101 keyData:0 renewalDate:0 error:v18];
      sub_1D917959C();
      v21 = *(v133 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      ++v97;
      if (v17 == v123)
      {
        return v133;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    ;
  }

  if (v138)
  {
    v115 = v138;

    v11 = *(v115 + 16);
    if (!v11)
    {
      goto LABEL_59;
    }

    v136 = MEMORY[0x1E69E7CC0];
    v5 = &v136;
    sub_1D91795CC();
    v26 = v115;
    v27 = 0;
    v114 = v115 + 32;
    v124 = a1 & 0xFFFFFFFFFFFFFF8;
    v109[1] = "r";
    v118 = xmmword_1D9190380;
    v113 = v11;
    while (2)
    {
      if (v27 < *(v26 + 16))
      {
        v46 = (v27 + 1);
        v47 = (v114 + 32 * v27);
        v11 = *v47;
        v48 = v47[1];
        v120 = v46;
        v121 = v48;
        v49 = v47[3];
        v117 = v47[2];
        v129 = MEMORY[0x1E69E7CC0];
        v122 = v49;

        v50 = 0;
        do
        {
          if (v125)
          {
            v51 = MEMORY[0x1DA72AA90](v50, a1);
          }

          else
          {
            if (v50 >= *(v124 + 16))
            {
              goto LABEL_86;
            }

            v51 = *(a1 + 8 * v50 + 32);
          }

          v8 = v51;
          v52 = (v50 + 1);
          if (__OFADD__(v50, 1))
          {
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          if (*&v51[OBJC_IVAR___MTContentKeyRequest_requestID] == v11)
          {
            sub_1D917959C();
            v17 = *(v129 + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            v5 = &v129;
            sub_1D91795AC();
          }

          else
          {
          }

          ++v50;
        }

        while (v52 != v18);
        v8 = v129;
        if (v129 < 0 || (v129 & 0x4000000000000000) != 0)
        {
          v55 = sub_1D917935C();
          v53 = v121;
          if (!v55)
          {
            goto LABEL_36;
          }

LABEL_30:
          if ((v8 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1DA72AA90](0, v8);
          }

          else
          {
            if (!*(v8 + 16))
            {
              goto LABEL_92;
            }

            v54 = *(v8 + 32);
          }

          v121 = v54;

          if (v53)
          {
            goto LABEL_11;
          }

LABEL_37:
          if (v122)
          {
            v56 = sub_1D9176C4C();
            v116 = v57;
            v117 = v56;
          }

          else
          {
            v116 = 0xF000000000000000;
            v117 = 0;
          }

          v58 = sub_1D9176E3C();
          (*(*(v58 - 8) + 56))(v119, 1, 1, v58);
          v112 = type metadata accessor for ContentKeyResponse(0);
          v8 = objc_allocWithZone(v112);
          v59 = OBJC_IVAR___MTContentKeyResponse_error;
          *(v8 + OBJC_IVAR___MTContentKeyResponse_error) = 0;
          v60 = (v8 + OBJC_IVAR___MTContentKeyResponse_keyData);
          *(v8 + OBJC_IVAR___MTContentKeyResponse_keyData) = v118;
          v61 = v121;
          *(v8 + OBJC_IVAR___MTContentKeyResponse_request) = v121;
          swift_beginAccess();
          v62 = *v60;
          v110 = v60[1];
          v111 = v62;
          v64 = v116;
          v63 = v117;
          *v60 = v117;
          v60[1] = v64;
          v121 = v61;
          sub_1D8DA04B0(v63, v64);
          sub_1D8D75668(v111, v110);
          v65 = v119;
          sub_1D8CF6B1C(v119, v8 + OBJC_IVAR___MTContentKeyResponse_renewalDate);
          swift_beginAccess();
          v66 = *(v8 + v59);
          *(v8 + v59) = 0;

          v126.receiver = v8;
          v126.super_class = v112;
          v17 = objc_msgSendSuper2(&v126, sel_init);

          sub_1D8D75668(v63, v64);

          v44 = v65;
        }

        else
        {
          v53 = v121;
          if (*(v129 + 16))
          {
            goto LABEL_30;
          }

LABEL_36:

          v121 = 0;
          if (!v53)
          {
            goto LABEL_37;
          }

LABEL_11:
          v28 = sub_1D9176E3C();
          (*(*(v28 - 8) + 56))(v123, 1, 1, v28);
          v29 = sub_1D8FFEAEC(v53);
          if (v30)
          {
            v31 = -1;
          }

          else
          {
            v31 = v29;
          }

          v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          v117 = [v32 initWithDomain:v33 code:v31 userInfo:0];

          v116 = type metadata accessor for ContentKeyResponse(0);
          v34 = objc_allocWithZone(v116);
          v35 = OBJC_IVAR___MTContentKeyResponse_error;
          *&v34[OBJC_IVAR___MTContentKeyResponse_error] = 0;
          v36 = &v34[OBJC_IVAR___MTContentKeyResponse_keyData];
          *&v34[OBJC_IVAR___MTContentKeyResponse_keyData] = v118;
          v37 = v121;
          *&v34[OBJC_IVAR___MTContentKeyResponse_request] = v121;
          swift_beginAccess();
          v39 = *v36;
          v38 = v36[1];
          *v36 = v118;
          v8 = v37;
          sub_1D8D75668(v39, v38);
          v40 = v123;
          sub_1D8CF6B1C(v123, &v34[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
          swift_beginAccess();
          v41 = *&v34[v35];
          v42 = v117;
          *&v34[v35] = v117;
          v43 = v42;

          v128.receiver = v34;
          v128.super_class = v116;
          v17 = objc_msgSendSuper2(&v128, sel_init);

          v44 = v40;
        }

        sub_1D8CF5EF8(v44);
        v5 = &v136;
        sub_1D917959C();
        v45 = *(v136 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v27 = v120;
        v11 = v113;
        v26 = v115;
        if (v120 != v113)
        {
          continue;
        }

        return v136;
      }

      break;
    }

    __break(1u);
    goto LABEL_89;
  }

  if (v17)
  {
    v85 = sub_1D917935C();
  }

  else
  {
    v85 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v85)
  {
    *&v137 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v85 < 0)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      v130 = v133;
      v131 = v134;
      v132[0] = v135[0];
      *(v132 + 10) = *(v21 + 42);
      sub_1D8FF2BD0(&v130);

      __break(1u);
      return result;
    }

    v87 = 0;
    do
    {
      if (v125)
      {
        v88 = MEMORY[0x1DA72AA90](v87, a1);
      }

      else
      {
        v88 = *(a1 + 8 * v87 + 32);
      }

      v89 = v88;
      ++v87;
      sub_1D8FFB7BC();
      v90 = swift_allocError();
      *v91 = 1;
      v92 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v93 = v90;
      v94 = sub_1D9176A5C();

      [v92 initWithRequest:v89 keyData:0 renewalDate:0 error:v94];
      sub_1D917959C();
      v95 = *(v137 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v85 != v87);
    return v137;
  }

  return result;
}

unint64_t sub_1D8FFB768()
{
  result = qword_1ECAB8C28;
  if (!qword_1ECAB8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C28);
  }

  return result;
}

unint64_t sub_1D8FFB7BC()
{
  result = qword_1ECAB8C30;
  if (!qword_1ECAB8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C30);
  }

  return result;
}

uint64_t sub_1D8FFB810(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8E316E0(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1D91792DC();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v12 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 56) + 8 * v6);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    v16 = v7;

    if (v15 >= v14 >> 1)
    {
      result = sub_1D8E316E0((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    *(v28 + 8 * v15 + 32) = v13;
    v10 = 1 << *(v16 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v12);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v16;
    v18 = *(v16 + 36);
    v9 = v27;
    if (v27 != v18)
    {
      goto LABEL_26;
    }

    v19 = v17 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v11 = v26;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 72 + 8 * v12);
      v11 = v26;
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1D8D9B144(v6, v27, 0);
          v7 = a1;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v6, v27, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v10;
    if (v8 == v11)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D8FFBA68(unint64_t a1)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_1D917935C())
    {
      goto LABEL_25;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA72AA90](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v27 = v5;
  *&v26 = 49;
  *(&v26 + 1) = 0xE100000000000000;
  sub_1D8D65618(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v25, v28, isUniquelyReferenced_nonNull_native);
  sub_1D8D9A308(v28);
  v7 = 0x80000001D91D2590;
  v8 = 0xD000000000000010;
  if (*&v4[OBJC_IVAR___MTContentKeyRequest_requestType] == 3)
  {
    v8 = 0x65722D65636E6F6ELL;
    v7 = 0xEE00737473657571;
  }

  *&v26 = v8;
  *(&v26 + 1) = v7;
  sub_1D91793EC();
  v24 = v4;
  if (v2)
  {
    v9 = sub_1D917935C();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_20;
  }

  *&v26 = MEMORY[0x1E69E7CC0];
  sub_1D8E31380(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
LABEL_28:
    __break(1u);
  }

  v11 = 0;
  v10 = v26;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA72AA90](v11, a1);
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = sub_1D8FF0C0C();

    *&v26 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D8E31380((v15 > 1), v16 + 1, 1);
      v10 = v26;
    }

    ++v11;
    *(v10 + 16) = v16 + 1;
    *(v10 + 8 * v16 + 32) = v14;
  }

  while (v9 != v11);
LABEL_20:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  *&v26 = v10;
  sub_1D8D65618(&v26, v25);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v25, v28, v17);
  sub_1D8D9A308(v28);
  v18 = objc_opt_self();
  v19 = sub_1D917802C();

  v28[0] = 0;
  v20 = [v18 dataWithJSONObject:v19 options:0 error:v28];

  v21 = v28[0];
  if (v20)
  {
    sub_1D9176C8C();
  }

  else
  {
    v22 = v21;
    sub_1D9176A6C();

    swift_willThrow();
  }

LABEL_25:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8FFBE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FFEAEC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D8FFBEEC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_1D8FFEB2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60;
  v15 = _Block_copy(aBlock);

  v16 = v2;
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_1D8FFC1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 podcastsLicenseCert];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v11[4] = sub_1D8FFF928;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D591F0;
  v11[3] = &block_descriptor_44_0;
  v9 = _Block_copy(v11);

  v10 = a3;

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8FFC2F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39 = a6;
  v40 = a5;
  v37 = a3;
  v8 = sub_1D9176C2C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1D917653C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E0C();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D9176B9C();
    v24 = a1;
    sub_1D91764EC();
    v25 = sub_1D91764BC();
    v26 = swift_allocObject();
    v27 = v40;
    *(v26 + 16) = a4;
    *(v26 + 24) = v27;
    v45 = sub_1D8FFF990;
    v46 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D90F1C50;
    v44 = &block_descriptor_56_0;
    v28 = _Block_copy(&aBlock);

    [v39 performDataRequest:v25 callback:v28];
    _Block_release(v28);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v30 = v21;
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v39 = sub_1D9178E1C();
    v31 = swift_allocObject();
    v32 = v40;
    v31[2] = a4;
    v31[3] = v32;
    v33 = v37;
    v31[4] = v37;
    v45 = sub_1D8FFF984;
    v46 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D8CF5F60;
    v44 = &block_descriptor_50;
    v34 = _Block_copy(&aBlock);

    v35 = v33;

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v36 = v39;
    MEMORY[0x1DA72A400](0, v23, v18, v34);
    _Block_release(v34);

    (*(v38 + 8))(v18, v15);
    return (*(v30 + 8))(v23, v19);
  }
}

void sub_1D8FFC7C8(void (*a1)(id), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1D9176E3C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for ContentKeyResponse(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v11[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v13 = &v11[OBJC_IVAR___MTContentKeyResponse_keyData];
  v19 = xmmword_1D9190380;
  *&v11[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v11[OBJC_IVAR___MTContentKeyResponse_request] = 0;
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v19;
  sub_1D8D75668(v14, v15);
  sub_1D8CF6B1C(v8, &v11[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v16 = *&v11[v12];
  *&v11[v12] = a3;
  v17 = a3;

  v20.receiver = v11;
  v20.super_class = v10;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
  a1(v18);
}

uint64_t sub_1D8FFC9A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D9177E0C();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D9177E9C();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v26 = sub_1D9178E1C();
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a5;
  aBlock[4] = sub_1D8FFF998;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_62;
  v21 = _Block_copy(aBlock);

  sub_1D8DA04B0(a1, a2);
  v22 = a5;

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  v23 = v26;
  MEMORY[0x1DA72A400](0, v19, v15, v21);
  _Block_release(v21);

  (*(v28 + 8))(v15, v12);
  return (*(v16 + 8))(v19, v27);
}

void sub_1D8FFCCB0(void (*a1)(id), uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v22 = a2;
  v23 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1D9176E3C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = type metadata accessor for ContentKeyResponse(0);
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v14[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v16 = &v14[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v14[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v14[OBJC_IVAR___MTContentKeyResponse_request] = 0;
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  *v16 = a3;
  v16[1] = a4;
  sub_1D8DA04B0(a3, a4);
  sub_1D8D75668(v18, v17);
  sub_1D8CF6B1C(v11, &v14[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v19 = *&v14[v15];
  *&v14[v15] = a5;
  v20 = a5;

  v24.receiver = v14;
  v24.super_class = v13;
  v21 = objc_msgSendSuper2(&v24, sel_init, v22);
  sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
  v23(v21);
}

uint64_t sub_1D8FFCF28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *&v4[OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v4;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_1D8FFEB38;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_6_1;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = v4;
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1D8FFD210(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v7 = sub_1D9177E0C();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1D8FFEC78(v14);

  v16 = sub_1D8FFB810(v15);

  v17 = dispatch_group_create();
  v18 = swift_allocObject();
  *(v18 + 2) = MEMORY[0x1E69E7CC0];
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = (v16 + 32);
    do
    {
      v21 = *v20++;

      dispatch_group_enter(v17);

      v22 = v17;
      sub_1D8FFEF1C(v21, a3, a2, v18, v22);

      --v19;
    }

    while (v19);
  }

  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v23 = sub_1D9178E1C();
  v24 = swift_allocObject();
  v25 = v32;
  v24[2] = v31;
  v24[3] = v25;
  v24[4] = v18;
  aBlock[4] = sub_1D8FFF8CC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_23_0;
  v26 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v27 = v35;
  v28 = v37;
  sub_1D91792CC();
  sub_1D9178D7C();
  _Block_release(v26);

  (*(v36 + 8))(v27, v28);
  (*(v33 + 8))(v13, v34);
}

void sub_1D8FFD5E8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();

  sub_1D8E30154(v4);
  swift_endAccess();
  dispatch_group_leave(a3);
}

uint64_t sub_1D8FFD654(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6);
}

void sub_1D8FFD78C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentKeyResponse(0);
  v3 = sub_1D91785DC();
  (*(a2 + 16))(a2, v3);
}

void sub_1D8FFD7F8(void *a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, void *a11, uint64_t a12)
{
  v77 = a11;
  v78 = a7;
  v73 = a8;
  v74 = a10;
  v72 = a9;
  v17 = sub_1D9176C2C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D917653C();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D917744C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v68 = a12;
    v69 = a6;
    v29 = qword_1ECAAFBE0;
    v30 = a1;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v24, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v25 + 16))(v28, v31, v24);
    v32 = v30;
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    v70 = v32;

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v67 = a5;
      v37 = v36;
      *v35 = 138412546;
      v38 = v70;
      *(v35 + 4) = v70;
      *v36 = a1;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v78;
      v39 = v38;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "[Key Loading] From %@ request Type %ld", v35, 0x16u);
      sub_1D8D08A50(v37, &unk_1ECAB6C70, &unk_1D9188C30);
      v40 = v37;
      a5 = v67;
      MEMORY[0x1DA72CB90](v40, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    (*(v25 + 8))(v28, v24);
    sub_1D9176B9C();
    sub_1D91764EC();
    sub_1D8DA04B0(v73, v72);
    sub_1D917651C();
    sub_1D917648C();
    v41 = sub_1D8E27090(&unk_1F5461188);
    sub_1D8D08A50(&unk_1F54611A8, &qword_1ECAB8C48, &unk_1D91A6960);
    if (v78 == 2)
    {
      v42 = v69;
      v43 = v74;
      if (!v74)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v42 = v69;
      v43 = v74;
      if (v78 != 3 || !v74)
      {
        goto LABEL_21;
      }
    }

    v54 = v43;
    v55 = [v54 stringValue];
    v56 = a5;
    v57 = sub_1D917820C();
    v59 = v58;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v41;
    v61 = v57;
    a5 = v56;
    sub_1D8F50170(v61, v59, 0xD00000000000001ALL, 0x80000001D91D2570, isUniquelyReferenced_nonNull_native);

LABEL_21:
    sub_1D91764CC();
    v62 = sub_1D91764BC();
    v63 = swift_allocObject();
    v63[2] = a4;
    v63[3] = a5;
    v63[4] = v42;
    aBlock[4] = sub_1D8FFF91C;
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90F1C50;
    aBlock[3] = &block_descriptor_38_1;
    v64 = _Block_copy(aBlock);

    [v77 performDataRequest:v62 account:v68 callback:v64];
    _Block_release(v64);

    (*(v75 + 8))(v23, v76);
    return;
  }

  if (a3)
  {
    v44 = a3;
    if (!(a4 >> 62))
    {
      goto LABEL_11;
    }

LABEL_24:
    v45 = sub_1D917935C();
    if (v45)
    {
      goto LABEL_12;
    }

LABEL_25:
    v66 = a3;
    a5(MEMORY[0x1E69E7CC0]);
    goto LABEL_26;
  }

  sub_1D8FFB7BC();
  v44 = swift_allocError();
  *v65 = 2;
  if (a4 >> 62)
  {
    goto LABEL_24;
  }

LABEL_11:
  v45 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_25;
  }

LABEL_12:
  v67 = a5;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v46 = a3;
  sub_1D91795CC();
  if (v45 < 0)
  {
    __break(1u);
    return;
  }

  v47 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1DA72AA90](v47, a4);
    }

    else
    {
      v48 = *(a4 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    v50 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
    v51 = v44;
    v52 = sub_1D9176A5C();
    [v50 initWithRequest:v49 keyData:0 renewalDate:0 error:v52];

    sub_1D917959C();
    v53 = *(aBlock[0] + 16);
    sub_1D91795DC();
    sub_1D91795EC();
    sub_1D91795AC();
  }

  while (v45 != v47);
  v67(aBlock[0]);
LABEL_26:
}

uint64_t sub_1D8FFDEF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, void (*a7)(void), uint64_t a8)
{
  v63 = a8;
  v64 = a2;
  v58 = a1;
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_1ECAAFBE8);
  swift_beginAccess();
  v56 = v12[2];
  v57 = v18;
  v56(v17, v18, v11);
  v19 = a5;
  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();

  v22 = os_log_type_enabled(v20, v21);
  v61 = v12;
  v62 = v11;
  if (v22)
  {
    v59 = a7;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v65 = v24;
    *v23 = 136315138;
    if (a5)
    {
      swift_getErrorValue();
      v25 = sub_1D9179D2C();
      v27 = v26;
    }

    else
    {
      v27 = 0xE90000000000002ELL;
      v25 = 0x726F727265206F6ELL;
    }

    v29 = sub_1D8CFA924(v25, v27, &v65);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[Key Loading] Loaded with %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);

    v28 = v61[1];
    v28(v17, v62);
    a7 = v59;
  }

  else
  {

    v28 = v12[1];
    v28(v17, v11);
  }

  v30 = v64;
  if (v64 >> 60 != 15)
  {
    v41 = v58;
    sub_1D8DA04B0(v58, v64);
    sub_1D8FFA7C0(a6, v41, v30);
    a7();

    return sub_1D8D75668(v41, v30);
  }

  if (a6 >> 62)
  {
    v31 = sub_1D917935C();
  }

  else
  {
    v31 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  v55 = v28;
  if (v31)
  {
    v65 = MEMORY[0x1E69E7CC0];
    result = sub_1D91795CC();
    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    v59 = a7;
    v34 = 0;
    do
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1DA72AA90](v34, a6);
      }

      else
      {
        v39 = *(a6 + 8 * v34 + 32);
      }

      v40 = v39;
      v37 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      if (a5)
      {
        v35 = v37;
        v36 = sub_1D9176A5C();
        v37 = v35;
      }

      else
      {
        v36 = 0;
      }

      ++v34;
      [v37 initWithRequest:v40 keyData:0 renewalDate:0 error:v36];

      sub_1D917959C();
      v38 = v65[2];
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v31 != v34);
    v32 = v65;
    a7 = v59;
    v28 = v55;
  }

  v42 = v60;
  v43 = v62;
  v56(v60, v57, v62);
  v44 = a5;
  v45 = sub_1D917741C();
  v46 = sub_1D9178CFC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v43;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v65 = v49;
    *v48 = 136315138;
    if (a5)
    {
      swift_getErrorValue();
      v50 = sub_1D9179D2C();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xE000000000000000;
    }

    v53 = sub_1D8CFA924(v50, v52, &v65);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1D8CEC000, v45, v46, "[Key Loading] Loaded with missing data with error %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1DA72CB90](v49, -1, -1);
    MEMORY[0x1DA72CB90](v48, -1, -1);

    v55(v60, v47);
  }

  else
  {

    v28(v42, v43);
  }

  (a7)(v32);
}

id StandardKeyRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardKeyRequestHandler.init()()
{
  v14 = sub_1D9178E0C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v13 = OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue;
  v12[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v14);
  v8 = sub_1D9178E4C();
  v9 = v15;
  *&v15[v13] = v8;
  v10 = type metadata accessor for StandardKeyRequestHandler();
  v16.receiver = v9;
  v16.super_class = v10;
  return objc_msgSendSuper2(&v16, sel_init);
}

id StandardKeyRequestHandler.__allocating_init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConcurrentOperationCount:a1 requestEncodingType:a2];
}

id StandardKeyRequestHandler.init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v16 = sub_1D9178E0C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D9177E9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v15 = OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue;
  v14[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v16);
  v10 = sub_1D9178E4C();
  v11 = v17;
  *&v17[v15] = v10;
  v12 = type metadata accessor for StandardKeyRequestHandler();
  v20.receiver = v11;
  v20.super_class = v12;
  return objc_msgSendSuper2(&v20, sel_initWithConcurrentOperationCount_requestEncodingType_, v18, v19);
}

id StandardKeyRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardKeyRequestHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FFEAEC(uint64_t result)
{
  if (((result + 1021) > 0x14 || ((1 << (result - 3)) & 0x1F0F8F) == 0) && result != -1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8FFEB78()
{
  result = qword_1ECAB8C40;
  if (!qword_1ECAB8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C40);
  }

  return result;
}

uint64_t sub_1D8FFEC78(unint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_27:
    v2 = sub_1D917935C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA72AA90](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = *&v6[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid];
        if (v9)
        {
          v10 = *&v6[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid];
        }

        else
        {
          v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v9 = 0;
        }

        v11 = v9;
        v13 = sub_1D8F06D7C(v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_25;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          sub_1D9007BA4(v16, 1);
          v4 = v26;
          v18 = sub_1D8F06D7C(v10);
          if ((v17 & 1) != (v19 & 1))
          {
            sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
            result = sub_1D9179CFC();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v5 = (v4[7] + 8 * v13);
          MEMORY[0x1DA729B90]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
          }

          sub_1D917869C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D9189070;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          *(v4[6] + 8 * v13) = v10;
          *(v4[7] + 8 * v13) = v20;
          v21 = v4[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_26;
          }

          v4[2] = v23;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1D8FFEF1C(unint64_t a1, void *a2, unint64_t i, objc_class *a4, NSObject *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = swift_allocObject();
  v14[2].isa = a4;
  v14[3].isa = a5;
  v15 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_36:
    v62 = i;
    v63 = v14;
    v16 = sub_1D917935C();
    v14 = v63;
    i = v62;
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v14;
  if (!v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1D9189070;
    v24 = sub_1D9176E3C();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_1D8FFB7BC();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = type metadata accessor for ContentKeyResponse(0);
    v28 = objc_allocWithZone(v27);
    v29 = OBJC_IVAR___MTContentKeyResponse_error;
    *&v28[OBJC_IVAR___MTContentKeyResponse_error] = 0;
    v30 = &v28[OBJC_IVAR___MTContentKeyResponse_keyData];
    v75 = xmmword_1D9190380;
    *&v28[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
    *&v28[OBJC_IVAR___MTContentKeyResponse_request] = 0;
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = v75;

    v33 = a5;
    sub_1D8D75668(v31, v32);
    sub_1D8CF6B1C(v13, &v28[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
    swift_beginAccess();
    v34 = *&v28[v29];
    *&v28[v29] = v25;
    v35 = v25;

    v77.receiver = v28;
    v77.super_class = v27;
    v36 = objc_msgSendSuper2(&v77, sel_init);

    sub_1D8D08A50(v13, &qword_1ECAB75C0, &unk_1D9188A50);
    *(v76 + 32) = v36;
    swift_beginAccess();

    sub_1D8E30154(v37);
    swift_endAccess();
    dispatch_group_leave(v33);

    return;
  }

  v76 = a1 & 0xC000000000000001;
  v71 = a4;
  v70 = a5;
  v66 = i;
  v65 = a2;
  v67 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v64 = a5;
    v13 = MEMORY[0x1DA72AA90](0, a1);
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      __break(1u);
      return;
    }

    v17 = *(a1 + 32);

    v18 = a5;
    v13 = v17;
  }

  v68 = sub_1D8FF9BA0();
  a2 = *(v13 + OBJC_IVAR___MTContentKeyRequest_requestType);
  a5 = *(v13 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v69 = v13;
  a4 = *(v13 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
  v14 = a5;
  v74 = v14;
  *&v75 = a1;
  for (i = 0; ; ++i)
  {
    if (v76)
    {
      v14 = MEMORY[0x1DA72AA90](i, a1);
    }

    else
    {
      if (i >= *(v73 + 16))
      {
        goto LABEL_35;
      }

      v14 = *(a1 + 8 * i + 32);
    }

    v19 = v14;
    v15 = (i + 1);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (a2 != *(&v14->isa + OBJC_IVAR___MTContentKeyRequest_requestType) || a4 != *(&v14->isa + OBJC_IVAR___MTContentKeyRequest_offlineRequest))
    {
      break;
    }

    v20 = *(&v14->isa + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
    if (v20)
    {
      if (!a5)
      {
        break;
      }

      sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
      v21 = v74;
      v22 = v20;
      v13 = sub_1D917914C();

      a1 = v75;
      if ((v13 & 1) == 0)
      {
        break;
      }
    }

    else if (a5)
    {
      break;
    }

    if (v15 == v16)
    {
      v49 = v66;
      [v66 setPersonalizeRequests_];
      sub_1D8FFBA68(a1);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = swift_allocObject();
      v55[2] = a1;
      v55[3] = sub_1D8FFF8D8;
      v55[4] = v72;
      v55[5] = a2;
      v55[6] = v52;
      v55[7] = v54;
      v55[8] = a5;
      v55[9] = v50;
      v56 = v65;
      v55[10] = v65;
      aBlock[4] = sub_1D8FFF8E0;
      aBlock[5] = v55;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8D591F0;
      aBlock[3] = &block_descriptor_32_0;
      v57 = _Block_copy(aBlock);
      v58 = v74;

      sub_1D8DA04B0(v52, v54);
      v59 = v56;
      v60 = v50;

      v61 = v68;
      [v68 valueWithCompletion_];
      _Block_release(v57);
      sub_1D8D75668(v52, v54);

      return;
    }
  }

  if (v67)
  {
    v23 = sub_1D917935C();
  }

  else
  {
    v23 = *(v73 + 16);
  }

  v38 = v70;
  if (v23)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v23 < 0)
    {
      goto LABEL_39;
    }

    v39 = 0;
    do
    {
      if (v76)
      {
        v40 = MEMORY[0x1DA72AA90](v39, v75);
      }

      else
      {
        v40 = *(v75 + 8 * v39 + 32);
      }

      v41 = v40;
      ++v39;
      sub_1D8FFB7BC();
      v42 = swift_allocError();
      *v43 = 3;
      v44 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v45 = v42;
      v46 = sub_1D9176A5C();

      [v44 initWithRequest:v41 keyData:0 renewalDate:0 error:v46];
      sub_1D917959C();
      v47 = *(aBlock[0] + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v23 != v39);
    v38 = v70;
  }

  swift_beginAccess();

  sub_1D8E30154(v48);
  swift_endAccess();
  dispatch_group_leave(v38);
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

unint64_t sub_1D8FFF9DC()
{
  result = qword_1ECAB8C50;
  if (!qword_1ECAB8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C50);
  }

  return result;
}

uint64_t sub_1D8FFFA50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEC0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D9002CF0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

id BaseFeedRequest.__allocating_init(storeID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BaseFeedRequest.init(storeID:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D8FFFCB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v33 = &v24 - v4;
  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = MEMORY[0x1E69E7CC0];
  v32 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v31 = sub_1D8D94DF8(v8);
  v30 = sub_1D8D951E0(v8);
  v29 = sub_1D8D9503C(v8);
  v28 = sub_1D8D9536C(v8);
  v27 = sub_1D8D9536C(v8);
  v26 = sub_1D8D953C4(v8);
  v24 = sub_1D8D952D8(v8);
  v25 = sub_1D8D95394(v8);
  v9 = sub_1D8D957C4(v8);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v10 = type metadata accessor for MediaRequest.Params();
  v11 = v10[28];
  v7((a1 + v11), 1, 1, v6);
  v12 = (a1 + v10[29]);
  v13 = (a1 + v10[31]);
  v14 = v10[34];
  v15 = (a1 + v10[33]);
  v16 = (a1 + v10[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 83951876;
  v17 = v31;
  *(a1 + 48) = v32;
  *(a1 + 56) = v17;
  v18 = v29;
  *(a1 + 64) = v30;
  *(a1 + 72) = v8;
  v20 = v27;
  v19 = v28;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  v21 = v26;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  v22 = v24;
  *(a1 + 112) = v8;
  *(a1 + 120) = v22;
  *(a1 + 128) = v8;
  *(a1 + 136) = v8;
  *(a1 + 144) = v8;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = v25;
  *(a1 + 184) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 0;
  result = sub_1D8E26828(v33, a1 + v11);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v10[30]) = 0;
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v10[32]) = v8;
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v14) = 2;
  *v16 = 0;
  v16[1] = 0;
  return result;
}

id sub_1D8FFFF20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v35 - v2;
  v44 = &v35 - v2;
  v4 = type metadata accessor for MediaRequest.Params();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
  v11 = swift_allocObject();
  v47 = v11;
  *(v11 + 16) = xmmword_1D9189080;
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
  v46 = type metadata accessor for FullFeedRequest();
  v13 = objc_allocWithZone(v46);
  v13[OBJC_IVAR___MTFullFeedRequest_isSerial] = 0;
  v13[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = 0;
  *&v13[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v13[OBJC_IVAR___MTBaseFeedRequest_storeID] = 0;
  v14 = type metadata accessor for BaseFeedRequest();
  v49.receiver = v13;
  v49.super_class = v14;
  v45 = objc_msgSendSuper2(&v49, sel_init);
  v15 = sub_1D9176C2C();
  v16 = *(*(v15 - 8) + 56);
  v16(v3, 1, 1, v15);
  v43 = sub_1D8D94DF8(v12);
  v42 = sub_1D8D94DF8(v12);
  v41 = sub_1D8D951E0(v12);
  v40 = sub_1D8D9503C(v12);
  v39 = sub_1D8D9536C(v12);
  v38 = sub_1D8D9536C(v12);
  v37 = sub_1D8D953C4(v12);
  v35 = sub_1D8D952D8(v12);
  v36 = sub_1D8D95394(v12);
  v17 = sub_1D8D957C4(v12);
  *(v10 + 41) = 263;
  v10[43] = 5;
  v10[152] = 1;
  v10[201] = 1;
  v18 = v5[30];
  v16(&v10[v18], 1, 1, v15);
  v19 = &v10[v5[31]];
  v20 = &v10[v5[33]];
  v21 = v5[36];
  v22 = &v10[v5[35]];
  v23 = &v10[v5[37]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v10 + 10) = 83951876;
  v24 = v42;
  *(v10 + 6) = v43;
  *(v10 + 7) = v24;
  v25 = v40;
  *(v10 + 8) = v41;
  *(v10 + 9) = v12;
  v26 = v38;
  v27 = v39;
  *(v10 + 10) = v25;
  *(v10 + 11) = v27;
  *(v10 + 12) = v26;
  *(v10 + 13) = v37;
  *(v10 + 14) = v12;
  *(v10 + 15) = v35;
  *(v10 + 16) = v12;
  *(v10 + 17) = v12;
  *(v10 + 18) = v12;
  v10[152] = 1;
  *(v10 + 20) = 0;
  v10[168] = 1;
  *(v10 + 22) = v36;
  *(v10 + 23) = v17;
  *(v10 + 24) = 0;
  *(v10 + 100) = 257;
  v10[202] = 0;
  sub_1D8E26828(v44, &v10[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  v10[v5[32]] = 0;
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v10[v5[34]] = v12;
  *v22 = 0;
  *(v22 + 1) = 0;
  v10[v21] = 2;
  v28 = type metadata accessor for FullFeedResponse();
  *v23 = 0;
  *(v23 + 1) = 0;
  v29 = objc_allocWithZone(v28);
  v30 = v45;
  *&v29[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  v31 = v48;
  sub_1D900BF9C(v10, v48, type metadata accessor for MediaRequest.Params);
  v32 = v30;
  v33 = BaseFeedResponse.init(jsonArray:request:params:)(v47, v32, v31);
  sub_1D9001E64();

  sub_1D8D90BEC(v10);
  return v33;
}

uint64_t sub_1D9000318(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v93 = a2;
  v77 = sub_1D917744C();
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v73 - v7;
  v89 = &v73 - v7;
  v9 = type metadata accessor for MediaRequest.Params();
  v10 = (v9 - 8);
  v78 = *(v9 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v91 = sub_1D8D946F4(&unk_1F54613C8);
  sub_1D900B924(&unk_1F54613E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9189080;
  v74 = *(v2 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  v95[0] = v74;
  *(v16 + 32) = sub_1D9179A4C();
  *(v16 + 40) = v17;
  v18 = sub_1D9176C2C();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v20 = MEMORY[0x1E69E7CC0];
  v88 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v87 = sub_1D8D94DF8(v20);
  v86 = sub_1D8D951E0(v20);
  v85 = sub_1D8D9503C(v20);
  v84 = sub_1D8D9536C(v20);
  v83 = sub_1D8D953C4(v20);
  v81 = sub_1D8D952D8(v20);
  v82 = sub_1D8D95394(v20);
  v21 = sub_1D8D957C4(v20);
  *(v15 + 41) = 263;
  v15[43] = 5;
  v15[152] = 1;
  v15[201] = 1;
  v22 = v10[30];
  v19(&v15[v22], 1, 1, v18);
  v23 = &v15[v10[31]];
  v24 = &v15[v10[33]];
  v25 = v10[35];
  v80 = v10[36];
  v26 = &v15[v25];
  v27 = &v15[v10[37]];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *(v15 + 10) = 83951876;
  v28 = v87;
  *(v15 + 6) = v88;
  *(v15 + 7) = v28;
  v29 = v85;
  *(v15 + 8) = v86;
  *(v15 + 9) = v20;
  v30 = v84;
  *(v15 + 10) = v29;
  *(v15 + 11) = v30;
  v31 = v83;
  *(v15 + 12) = v91;
  *(v15 + 13) = v31;
  v32 = v81;
  *(v15 + 14) = v20;
  *(v15 + 15) = v32;
  *(v15 + 16) = v20;
  *(v15 + 17) = v20;
  *(v15 + 18) = v16;
  v15[152] = 1;
  *(v15 + 20) = 0;
  v15[168] = 1;
  *(v15 + 22) = v82;
  *(v15 + 23) = v21;
  v33 = v89;
  v34 = v90;
  *(v15 + 24) = 0;
  *(v15 + 100) = 257;
  v15[202] = 0;
  v35 = &v15[v22];
  v36 = v92;
  sub_1D8E26828(v33, v35);
  *v23 = 0;
  *(v23 + 1) = 0;
  v15[v10[32]] = 0;
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v15[v10[34]] = v20;
  *v26 = 0;
  *(v26 + 1) = 0;
  v37 = v93;
  v15[v80] = 2;
  *v27 = 0;
  *(v27 + 1) = 0;
  v38 = swift_allocObject();
  *(v38 + 2) = v34;
  *(v38 + 3) = v36;
  *(v38 + 4) = v37;
  if (*(v34 + OBJC_IVAR___MTBaseFeedRequest_showMetadata))
  {
    v39 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
    swift_beginAccess();
    sub_1D8CFD9D8(v34 + v39, v95);
    v40 = v34;
    v41 = v96;
    v42 = v97;
    v91 = __swift_project_boxed_opaque_existential_1(v95, v96);
    v43 = *((*MEMORY[0x1E69E7D40] & *v40) + 0xA0);

    v44 = v40;
    v45 = v94;
    v43();
    v46 = swift_allocObject();
    v46[2] = v44;
    v46[3] = v36;
    v46[4] = v37;
    v47 = *(v42 + 48);

    v48 = v44;
    v47(v45, sub_1D900BA6C, v46, v41, v42);

    sub_1D8D90BEC(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    return sub_1D8D90BEC(v15);
  }

  else
  {
    v50 = v75;
    v51 = v76;
    v52 = v77;
    v53 = v94;
    v54 = qword_1ECAB3590;

    v55 = v34;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v52, qword_1ECAB7940);
    swift_beginAccess();
    v57 = v79;
    (*(v51 + 16))(v79, v56, v52);
    v58 = v55;
    v59 = sub_1D917741C();
    v60 = sub_1D9178D1C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v74;

      _os_log_impl(&dword_1D8CEC000, v59, v60, "Fetching show metadata for show with storeID %lld...", v61, 0xCu);
      v62 = v61;
      v57 = v79;
      MEMORY[0x1DA72CB90](v62, -1, -1);
    }

    else
    {

      v59 = v58;
    }

    (*(v51 + 8))(v57, v52);
    v63 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
    swift_beginAccess();
    sub_1D8CFD9D8(v58 + v63, v95);
    v64 = v96;
    v65 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    sub_1D900BF9C(v15, v53, type metadata accessor for MediaRequest.Params);
    v66 = (*(v78 + 80) + 24) & ~*(v78 + 80);
    v67 = swift_allocObject();
    v68 = v53;
    v69 = v67;
    *(v67 + 16) = v58;
    sub_1D900C004(v68, v67 + v66, type metadata accessor for MediaRequest.Params);
    v70 = (v69 + ((v50 + v66 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_1D900B98C;
    v70[1] = v38;
    v71 = *(v65 + 56);
    v72 = v58;

    v71(v15, sub_1D900B998, v69, v64, v65);

    sub_1D8D90BEC(v15);
    return __swift_destroy_boxed_opaque_existential_1Tm(v95);
  }
}

uint64_t sub_1D9000B3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(a1 + v10, v18);
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = *(v12 + 48);
  v15 = a1;

  v14(v9, sub_1D900C06C, v13, v11, v12);

  sub_1D8D90BEC(v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

void sub_1D9000CC8(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v43[1] = a5;
  v9 = type metadata accessor for MediaRequest.Params();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  if (a2)
  {
    v21 = a2;
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v13, qword_1ECAB7940);
    swift_beginAccess();
    (*(v14 + 16))(v20, v22, v13);
    v23 = a2;
    v24 = a3;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = a4;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = *&v24[OBJC_IVAR___MTBaseFeedRequest_storeID];

      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v30 = sub_1D9179D2C();
      v32 = sub_1D8CFA924(v30, v31, &v44);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Feed fetch for show with storeID - %lld - resulted in error: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v33 = v29;
      a4 = v43[0];
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v20, v13);
    v39 = a2;
    a4(0, a2);
  }

  else
  {
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v13, qword_1ECAB7940);
    swift_beginAccess();
    (*(v14 + 16))(v17, v34, v13);
    v35 = a3;
    v36 = sub_1D917741C();
    v37 = sub_1D9178D1C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = *(v35 + OBJC_IVAR___MTBaseFeedRequest_storeID);

      _os_log_impl(&dword_1D8CEC000, v36, v37, "Feed fetch completed successfully for show with storeID %lld", v38, 0xCu);
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }

    else
    {

      v36 = v35;
    }

    v40 = (*(v14 + 8))(v17, v13);
    if (a1)
    {
      v41 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & v35->isa) + 0xA0))(v40);
      (*((*v41 & v35->isa) + 0xA8))(a1, v35, v12);
      sub_1D8D90BEC(v12);
      v42 = swift_unknownObjectRetain();
      a4(v42, 0);
      swift_unknownObjectRelease_n();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D90011C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t (*a8)(__n128))
{
  v12 = sub_1D917744C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v18 = a5;
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v12, qword_1ECAB7940);
    swift_beginAccess();
    (*(v13 + 16))(v17, v19, v12);
    v20 = a5;
    v21 = a6;
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = a8;
      v25 = v24;
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 134218242;
      *(v25 + 4) = *&v21[OBJC_IVAR___MTBaseFeedRequest_storeID];

      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_1D9179D2C();
      v29 = sub_1D8CFA924(v27, v28, &v40);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Show metadata fetch with storeID - %lld - resulted in error: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1DA72CB90](v26, -1, -1);
      v30 = v25;
      a8 = v39;
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v17, v12);
    return a8(v15);
  }

  if (!a3)
  {
    return a8(v15);
  }

  type metadata accessor for MediaRequestResponseParser();
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
  if (v31)
  {
  }

  sub_1D90507E0(a3, v41);
  if (v41[1])
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    LOBYTE(v40) = v41[0];
    v32 = sub_1D9052EB8(a3, &v40);
  }

  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_22:

    goto LABEL_23;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v32 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, v32);
    goto LABEL_19;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v32 + 32);
    swift_unknownObjectRetain();
LABEL_19:

    type metadata accessor for ServerPodcastBase();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
LABEL_24:
      v37 = *&a6[OBJC_IVAR___MTBaseFeedRequest_showMetadata];
      *&a6[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = v36;

      return a8(v15);
    }

    swift_unknownObjectRelease();
LABEL_23:
    v36 = 0;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

id BaseFeedRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D90016D0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + 16);
  if (*(v2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 8);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D8D490F4(*(v2 + 8 * result + 32));
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

uint64_t sub_1D900173C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D90017A4()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D90017EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D90018A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D9001904()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D9001950(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D9001A54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  swift_unknownObjectRetain();
}

uint64_t sub_1D9001ADC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D9001B9C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  swift_unknownObjectRetain();
}

uint64_t sub_1D9001C20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *v5 = *a1;
  v5[2] = v3;
  v5[3] = v4;

  return swift_unknownObjectRelease();
}

id BaseFeedResponse.init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata] = 0;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response] = a1;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request] = a2;
  sub_1D900BF9C(a3, &v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_params], type metadata accessor for MediaRequest.Params);
  v7 = *(a2 + OBJC_IVAR___MTBaseFeedRequest_showMetadata);
  swift_beginAccess();
  *&v3[v6] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D8E271A4(MEMORY[0x1E69E7CC0]);
  v10 = &v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache];
  *v10 = v8;
  *(v10 + 1) = v9;
  *(v10 + 2) = v8;
  *(v10 + 3) = 0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for BaseFeedResponse();
  v11 = v7;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1D8D90BEC(a3);
  return v12;
}

uint64_t sub_1D9001E64()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  if (*v1 >> 62)
  {
    goto LABEL_118;
  }

  for (result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10); !result; result = sub_1D917935C())
  {
    v129 = MEMORY[0x1E69E7CC0];
    v3 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
    swift_beginAccess();
    v4 = *(v118 + v3);
    v121 = *(v4 + 16);
    if (!v121)
    {
      goto LABEL_104;
    }

    type metadata accessor for MediaRequestResponseParser();
    v117 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request;
    v120 = v4 + 32;

    v5 = 0;
    v123 = v1;
    v119 = v4;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v122 = v5;
      v6 = *(v120 + 8 * v5);
      v128[0] = 1954047342;
      v128[1] = 0xE400000000000000;

      sub_1D91793EC();
      if (*(v6 + 16) && (v7 = sub_1D8D6550C(&v127), (v8 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v6 + 56) + 32 * v7, v128);
        sub_1D8D9A308(&v127);
        if (swift_dynamicCast())
        {
        }
      }

      else
      {
        sub_1D8D9A308(&v127);
      }

      sub_1D90507E0(v6, &v127);
      if (BYTE1(v127))
      {

        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        LOBYTE(v128[0]) = v127;
        v9 = sub_1D9052EB8(v6, v128);
        v11 = v10;
      }

      sub_1D8E3016C(v12);
      if (!(v9 >> 62))
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          break;
        }

        goto LABEL_5;
      }

      v13 = sub_1D917935C();
      if (v13)
      {
        break;
      }

LABEL_5:
      v5 = v122 + 1;

      v4 = v119;
      if (v122 + 1 == v121)
      {

LABEL_104:
        v111 = v1[1];
        v112 = *(v111 + 16);
        if (v112)
        {
          v113 = sub_1D8F06378(*(v111 + 16), 0);
          v114 = sub_1D8DB8018(&v127, v113 + 32, v112, v111);
          swift_bridgeObjectRetain_n();
          sub_1D8D1B144();
          if (v114 == v112)
          {
LABEL_108:
            v127 = v113;
            sub_1D8FFFA50(&v127);

            v115 = v1[2];
            v1[2] = v127;
            v116 = *v1;
            *v1 = v129;
          }

          __break(1u);
        }

        v113 = MEMORY[0x1E69E7CC0];
        goto LABEL_108;
      }
    }

    if (v13 >= 1)
    {
      v14 = 0;
      v125 = OBJC_IVAR___MTBaseFeedRequest_showMetadata;
      v126 = *(v118 + v117);
      v124 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v124)
        {
          MEMORY[0x1DA72AA90](v14, v9);
        }

        else
        {
          v17 = *(v9 + 8 * v14 + 32);
          swift_unknownObjectRetain();
        }

        type metadata accessor for ServerPodcastEpisode();
        v18 = swift_dynamicCastClassUnconditional();
        v19 = *(v126 + v125);
        if (v19)
        {
          break;
        }

LABEL_37:
        v40 = OBJC_IVAR___MTServerPodcastEpisode_attributes;
        v41 = *&v18[OBJC_IVAR___MTServerPodcastEpisode_attributes];
        v1 = v123;
        if (*(v41 + 168) && ((v42 = *(v41 + 160), v43 = *(v41 + 168), , v44 = sub_1D917980C(), , v44 == 1) || v44 == 2))
        {
          v45 = sub_1D9179ACC();

          if ((v45 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
        }

        if (!v123[3])
        {
          v123[3] = v18;
          swift_unknownObjectRetain();
        }

LABEL_44:
        v46 = *&v18[v40];
        if (*(v46 + 360))
        {
          if (*(v46 + 168) && (v47 = *(v46 + 160), v48 = *(v46 + 168), , v49 = sub_1D917980C(), , v49 == 1))
          {
          }

          else
          {
            v67 = sub_1D9179ACC();

            if ((v67 & 1) == 0)
            {
              v68 = v123[1];
              if (*(v68 + 16) && (v69 = sub_1D8D490F4(0), (v70 & 1) != 0))
              {
                v128[0] = *(*(v68 + 56) + 8 * v69);
              }

              else
              {
                v128[0] = MEMORY[0x1E69E7CC0];
              }

              v74 = v18;
              MEMORY[0x1DA729B90]();
              if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v104 = v9;
                v105 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1D917863C();
                v9 = v104;
              }

              sub_1D917869C();
              v75 = v128[0];
              swift_beginAccess();
              v76 = v123[1];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v58 = v123[1];
              v123[1] = 0x8000000000000000;
              v78 = sub_1D8D490F4(0);
              v80 = v58[2];
              v81 = (v79 & 1) == 0;
              v72 = __OFADD__(v80, v81);
              v82 = v80 + v81;
              if (v72)
              {
                goto LABEL_113;
              }

              v83 = v79;
              if (v58[3] < v82)
              {
                sub_1D90081F8(v82, isUniquelyReferenced_nonNull_native, &qword_1ECAB42C0, &qword_1D9188E18);
                v78 = sub_1D8D490F4(0);
                if ((v83 & 1) != (v84 & 1))
                {
                  goto LABEL_120;
                }

                goto LABEL_92;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_92:
                if ((v83 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              else
              {
                v108 = v9;
                v109 = v78;
                sub_1D8F84494();
                v78 = v109;
                v9 = v108;
                if ((v83 & 1) == 0)
                {
LABEL_99:
                  v58[(v78 >> 6) + 8] |= 1 << v78;
                  *(v58[6] + 8 * v78) = 0;
                  *(v58[7] + 8 * v78) = v75;
                  v110 = v58[2];
                  v72 = __OFADD__(v110, 1);
                  v73 = v110 + 1;
                  if (v72)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_100;
                }
              }

              goto LABEL_93;
            }
          }

          v85 = v123[1];
          if (*(v85 + 16) && (v86 = sub_1D8D490F4(-1), (v87 & 1) != 0))
          {
            v128[0] = *(*(v85 + 56) + 8 * v86);
          }

          else
          {
            v128[0] = MEMORY[0x1E69E7CC0];
          }

          v88 = v18;
          MEMORY[0x1DA729B90]();
          if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v102 = v9;
            v103 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
            v9 = v102;
          }

          sub_1D917869C();
          v75 = v128[0];
          swift_beginAccess();
          v89 = v123[1];
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v123[1];
          v123[1] = 0x8000000000000000;
          v78 = sub_1D8D490F4(-1);
          v92 = v58[2];
          v93 = (v91 & 1) == 0;
          v72 = __OFADD__(v92, v93);
          v94 = v92 + v93;
          if (v72)
          {
            goto LABEL_111;
          }

          v95 = v91;
          if (v58[3] >= v94)
          {
            if ((v90 & 1) == 0)
            {
              v106 = v9;
              v107 = v78;
              sub_1D8F84494();
              v78 = v107;
              v9 = v106;
              if ((v95 & 1) == 0)
              {
LABEL_88:
                v58[(v78 >> 6) + 8] |= 1 << v78;
                *(v58[6] + 8 * v78) = -1;
                *(v58[7] + 8 * v78) = v75;
                v97 = v58[2];
                v72 = __OFADD__(v97, 1);
                v73 = v97 + 1;
                if (v72)
                {
                  goto LABEL_114;
                }

                goto LABEL_100;
              }

              goto LABEL_93;
            }
          }

          else
          {
            sub_1D90081F8(v94, v90, &qword_1ECAB42C0, &qword_1D9188E18);
            v78 = sub_1D8D490F4(-1);
            if ((v95 & 1) != (v96 & 1))
            {
LABEL_120:
              sub_1D9179CFC();
              __break(1u);

              __break(1u);
              return result;
            }
          }

          if ((v95 & 1) == 0)
          {
            goto LABEL_88;
          }

LABEL_93:
          v98 = v58[7];
          v99 = *(v98 + 8 * v78);
          *(v98 + 8 * v78) = v75;
          goto LABEL_20;
        }

        v50 = *(v46 + 352);
        v51 = v123[1];
        if (*(v51 + 16) && (v52 = sub_1D8D490F4(v50), (v53 & 1) != 0))
        {
          v128[0] = *(*(v51 + 56) + 8 * v52);
        }

        else
        {
          v128[0] = MEMORY[0x1E69E7CC0];
        }

        v54 = swift_unknownObjectRetain();
        MEMORY[0x1DA729B90](v54);
        if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v100 = v9;
          v101 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
          v9 = v100;
        }

        sub_1D917869C();
        v55 = v128[0];
        swift_beginAccess();
        v56 = v123[1];
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v123[1];
        v123[1] = 0x8000000000000000;
        v60 = sub_1D8D490F4(v50);
        v61 = v58[2];
        v62 = (v59 & 1) == 0;
        v63 = v61 + v62;
        if (__OFADD__(v61, v62))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        v64 = v59;
        if (v58[3] >= v63)
        {
          if (v57)
          {
            if ((v59 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_1D8F84494();
            if ((v64 & 1) == 0)
            {
              goto LABEL_65;
            }
          }
        }

        else
        {
          sub_1D90081F8(v63, v57, &qword_1ECAB42C0, &qword_1D9188E18);
          v65 = sub_1D8D490F4(v50);
          if ((v64 & 1) != (v66 & 1))
          {
            goto LABEL_120;
          }

          v60 = v65;
          if ((v64 & 1) == 0)
          {
LABEL_65:
            v58[(v60 >> 6) + 8] |= 1 << v60;
            *(v58[6] + 8 * v60) = v50;
            *(v58[7] + 8 * v60) = v55;
            v71 = v58[2];
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_112;
            }

LABEL_100:
            v58[2] = v73;
            goto LABEL_21;
          }
        }

        v15 = v58[7];
        v16 = *(v15 + 8 * v60);
        *(v15 + 8 * v60) = v55;
LABEL_20:

LABEL_21:
        v123[1] = v58;
        swift_endAccess();
        swift_unknownObjectRelease();
        v14 = v14 + 1;
        if (v13 == v14)
        {
          goto LABEL_5;
        }
      }

      v20 = v13;
      v21 = v9;
      v22 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
      swift_beginAccess();
      v23 = *&v18[v22];
      if (v23)
      {
        v24 = v19;
        goto LABEL_29;
      }

      v25 = objc_allocWithZone(type metadata accessor for PodcastEpisodeRelationships());
      v26 = v19;
      v27 = [v25 init];
      v28 = *&v18[v22];
      *&v18[v22] = v27;

      v23 = *&v18[v22];
      if (v23)
      {
LABEL_29:
        v29 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
        swift_beginAccess();
        if (*&v23[v29])
        {
          v30 = *&v18[v22];
          if (!v30)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v31 = objc_allocWithZone(type metadata accessor for PodcastRelationshipContainer());
          v32 = v23;
          v33 = [v31 init];
          v34 = *&v23[v29];
          *&v23[v29] = v33;

          v30 = *&v18[v22];
          if (!v30)
          {
            goto LABEL_35;
          }
        }

        v35 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
        swift_beginAccess();
        v36 = *(v30 + v35);
        if (!v36)
        {
          goto LABEL_35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D9189070;
        *(v37 + 32) = v19;
        v38 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
        swift_beginAccess();
        v39 = *(v36 + v38);
        *(v36 + v38) = v37;
      }

      else
      {
LABEL_35:
      }

      v9 = v21;
      v13 = v20;
      goto LABEL_37;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    ;
  }

  return result;
}

id sub_1D9002AD8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69E58C0]);

  return [v0 init];
}

id sub_1D9002C14(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D9002CF0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8F5DE20(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D900323C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8ECC734(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D8ECC734((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D900323C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D900323C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D9003430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8C98, &qword_1D91A6C38);
  v41 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1D8FD68E4(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9003700(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
  v43 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
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
      v19 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 48 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      v47 = *(v24 + 32);
      v46 = *(v24 + 40);
      v29 = *(v23 + 8 * v22);
      if ((v43 & 1) == 0)
      {
        v30 = v25;
        sub_1D8D092C0(v26, v27, v28, v47, v46);
      }

      v45 = v29;
      v31 = *(v8 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v25)
      {
        v32 = v25;
        sub_1D917915C();
      }

      MediaIdentifier.hash(into:)(v48);
      result = sub_1D9179E1C();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v17 = v45;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v17 = v45;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 48 * v16;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v28;
      *(v18 + 32) = v47;
      *(v18 + 40) = v46;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v42;
      v13 = v44;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_37;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9003A40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48) + 264 * v20;
      if (a2)
      {
        memcpy(__src, (*(v5 + 48) + 264 * v20), 0x108uLL);
        v22 = *(*(v5 + 56) + 8 * v20);
      }

      else
      {
        sub_1D8D41388(*(v5 + 48) + 264 * v20, __src);
        v22 = *(*(v5 + 56) + 8 * v20);
      }

      v23 = *(v8 + 40);
      sub_1D9179DBC();
      ArtworkRequest.hash(into:)();
      result = sub_1D9179E1C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = memcpy((*(v8 + 48) + 264 * v16), __src, 0x108uLL);
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9003D04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1D917913C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9003F74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1D917913C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90041E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4398, &qword_1D9188F00);
  v38 = a2;
  result = sub_1D917978C();
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

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
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

uint64_t sub_1D90044B4(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_1D917653C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4308, &qword_1D9188E68);
  v41 = a2;
  result = sub_1D917978C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_1D9179DAC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1D9004800(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D917653C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4318, &unk_1D91A6C60);
  v44 = a2;
  result = sub_1D917978C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_1D8D111F4(&qword_1ECAB2CC8, MEMORY[0x1E6967EC8]);
      result = sub_1D917813C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D9004BD4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
  v43 = a2;
  result = sub_1D917978C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
      result = sub_1D917813C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D9004FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 48) + 72 * v24;
      if (a2)
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v46 = *(v25 + 64);
        v45 = v28;
        v29 = *v25;
        v43 = v26;
        v44 = v27;
        v42 = v29;
        v30 = *(*(v5 + 56) + 8 * v24);
      }

      else
      {
        sub_1D8EC8C5C(v25, &v42);
        v30 = *(*(v5 + 56) + 8 * v24);
      }

      v31 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v42);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v32 = LODWORD(flt_1D918CD50[SBYTE8(v43)]);
      sub_1D9179DEC();
      result = sub_1D9179E1C();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 72 * v16;
      v18 = v43;
      v19 = v44;
      v20 = v45;
      *(v17 + 64) = v46;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      *v17 = v42;
      *(*(v8 + 56) + 8 * v16) = v30;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90052B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v52 - v12;
  v13 = type metadata accessor for TTMLRequest();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4368, &unk_1D91A6C70);
  v63 = a2;
  result = sub_1D917978C();
  v20 = result;
  if (*(v17 + 16))
  {
    v59 = v6;
    v53 = v3;
    v21 = 0;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v57 = (v7 + 48);
    v58 = v17;
    v54 = (v7 + 8);
    v55 = (v7 + 32);
    v27 = result + 64;
    while (v25)
    {
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_18:
      v35 = v32 | (v21 << 6);
      v36 = *(v17 + 48);
      v65 = *(v60 + 72);
      v37 = v36 + v65 * v35;
      if (v63)
      {
        sub_1D900C004(v37, v16, type metadata accessor for TTMLRequest);
        v64 = *(*(v17 + 56) + 8 * v35);
      }

      else
      {
        sub_1D900BF9C(v37, v16, type metadata accessor for TTMLRequest);
        v64 = *(*(v17 + 56) + 8 * v35);
      }

      v38 = *(v20 + 40);
      sub_1D9179DBC();
      v39 = v62;
      sub_1D8ECA48C(v16, v62);
      v40 = v59;
      if ((*v57)(v39, 1, v59) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v41 = v56;
        (*v55)(v56, v39, v40);
        sub_1D9179DDC();
        sub_1D8D111F4(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
        sub_1D917814C();
        (*v54)(v41, v40);
      }

      v42 = v61;
      v43 = LODWORD(flt_1D918CD50[v16[*(v61 + 20)]]);
      sub_1D9179DEC();
      v44 = &v16[*(v42 + 24)];
      v45 = *v44;
      v46 = *(v44 + 1);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v17 = v58;
      if (v16[*(v42 + 28)] > 3u)
      {
        v16[*(v42 + 28)];
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v28 = -1 << *(v20 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v27 + 8 * (v29 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v28) >> 6;
        while (++v30 != v48 || (v47 & 1) == 0)
        {
          v49 = v30 == v48;
          if (v30 == v48)
          {
            v30 = 0;
          }

          v47 |= v49;
          v50 = *(v27 + 8 * v30);
          if (v50 != -1)
          {
            v31 = __clz(__rbit64(~v50)) + (v30 << 6);
            goto LABEL_10;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v27 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      result = sub_1D900C004(v16, *(v20 + 48) + v65 * v31, type metadata accessor for TTMLRequest);
      *(*(v20 + 56) + 8 * v31) = v64;
      ++*(v20 + 16);
    }

    v33 = v21;
    while (1)
    {
      v21 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v21 >= v26)
      {
        break;
      }

      v34 = v22[v21];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v25 = (v34 - 1) & v34;
        goto LABEL_18;
      }
    }

    if ((v63 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_42;
    }

    v51 = 1 << *(v17 + 32);
    v3 = v53;
    if (v51 >= 64)
    {
      bzero(v22, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v51;
    }

    *(v17 + 16) = 0;
  }

LABEL_42:
  *v3 = v20;
  return result;
}

uint64_t sub_1D9005930(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v52 - v12;
  v13 = type metadata accessor for ShazamSignatureRequest();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4358, &qword_1D9188EB8);
  v63 = a2;
  result = sub_1D917978C();
  v20 = result;
  if (*(v17 + 16))
  {
    v59 = v6;
    v53 = v3;
    v21 = 0;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v57 = (v7 + 48);
    v58 = v17;
    v54 = (v7 + 8);
    v55 = (v7 + 32);
    v27 = result + 64;
    while (v25)
    {
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_18:
      v35 = v32 | (v21 << 6);
      v36 = *(v17 + 48);
      v65 = *(v60 + 72);
      v37 = v36 + v65 * v35;
      if (v63)
      {
        sub_1D900C004(v37, v16, type metadata accessor for ShazamSignatureRequest);
        v64 = *(*(v17 + 56) + 8 * v35);
      }

      else
      {
        sub_1D900BF9C(v37, v16, type metadata accessor for ShazamSignatureRequest);
        v64 = *(*(v17 + 56) + 8 * v35);
      }

      v38 = *(v20 + 40);
      sub_1D9179DBC();
      v39 = v62;
      sub_1D8ECA48C(v16, v62);
      v40 = v59;
      if ((*v57)(v39, 1, v59) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v41 = v56;
        (*v55)(v56, v39, v40);
        sub_1D9179DDC();
        sub_1D8D111F4(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
        sub_1D917814C();
        (*v54)(v41, v40);
      }

      v42 = v61;
      v43 = LODWORD(flt_1D918CD50[v16[*(v61 + 20)]]);
      sub_1D9179DEC();
      v44 = &v16[*(v42 + 24)];
      v45 = *v44;
      v46 = *(v44 + 1);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v17 = v58;
      if (v16[*(v42 + 28)] > 3u)
      {
        v16[*(v42 + 28)];
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v28 = -1 << *(v20 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v27 + 8 * (v29 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v28) >> 6;
        while (++v30 != v48 || (v47 & 1) == 0)
        {
          v49 = v30 == v48;
          if (v30 == v48)
          {
            v30 = 0;
          }

          v47 |= v49;
          v50 = *(v27 + 8 * v30);
          if (v50 != -1)
          {
            v31 = __clz(__rbit64(~v50)) + (v30 << 6);
            goto LABEL_10;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v27 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      result = sub_1D900C004(v16, *(v20 + 48) + v65 * v31, type metadata accessor for ShazamSignatureRequest);
      *(*(v20 + 56) + 8 * v31) = v64;
      ++*(v20 + 16);
    }

    v33 = v21;
    while (1)
    {
      v21 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v21 >= v26)
      {
        break;
      }

      v34 = v22[v21];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v25 = (v34 - 1) & v34;
        goto LABEL_18;
      }
    }

    if ((v63 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_42;
    }

    v51 = 1 << *(v17 + 32);
    v3 = v53;
    if (v51 >= 64)
    {
      bzero(v22, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v51;
    }

    *(v17 + 16) = 0;
  }

LABEL_42:
  *v3 = v20;
  return result;
}

uint64_t sub_1D9005FD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
  v40 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90062A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1D9179DAC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D9006580(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v47 = a6;
  v9 = v6;
  v12 = a3(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v17 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v46 = a2;
  result = sub_1D917978C();
  v19 = result;
  if (*(v16 + 16))
  {
    v44 = v9;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(*(v16 + 48) + 8 * v31);
      v33 = *(v45 + 72);
      v34 = *(v16 + 56) + v33 * v31;
      if (v46)
      {
        sub_1D900C004(v34, v15, v47);
      }

      else
      {
        sub_1D900BF9C(v34, v15, v47);
      }

      v35 = *(v19 + 40);
      result = sub_1D9179DAC();
      v36 = -1 << *(v19 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v26 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v26 + 8 * v38);
          if (v42 != -1)
          {
            v27 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v37) & ~*(v26 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v19 + 48) + 8 * v27) = v32;
      result = sub_1D900C004(v15, *(v19 + 56) + v33 * v27, v47);
      ++*(v19 + 16);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v16 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero((v16 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v43;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v9 = v19;
  return result;
}

uint64_t sub_1D900689C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
  v38 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v36 = v3;
    v15 = result + 64;
    v37 = v5;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 2 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      sub_1D9179DDC();
      if (v25 != 26)
      {
        MediaRequest.IncludeExtendTypes.rawValue.getter();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
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

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 2 * v16);
      *v17 = v24;
      v17[1] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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
        goto LABEL_39;
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
      goto LABEL_37;
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

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9006C9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B8, &qword_1D9188E10);
  v33 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9006FE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42D0, &unk_1D9188E30);
  v33 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900737C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
  v39 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9007620(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  v36 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1D8D65618(v25, v37);
      }

      else
      {
        sub_1D8CFAD1C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1D8D65618(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90078EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1D8D65618((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1D8D9A2A4(v24, &v38);
        sub_1D8CFAD1C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1D91793CC();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1D8D65618(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D9007BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B20, &unk_1D91A6C20);
  v37 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *v23;
      v38 = *(v23 + 8);
      v25 = *(v23 + 24);
      if ((v37 & 1) == 0)
      {

        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_1D917913C();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v24;
      *(v17 + 8) = v38;
      *(v17 + 24) = v25;
      ++*(v8 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1D9007E60(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_1D9176E3C();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B18, &unk_1D91A6C00);
  v41 = a2;
  result = sub_1D917978C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v42 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v6 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v41)
      {
        (*v42)(v43, v27, v44);
      }

      else
      {
        (*v39)(v43, v27, v44);
      }

      v28 = *(v12 + 40);
      sub_1D9179DBC();
      v29 = *&aStdq_9[8 * v25];
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = (*v42)(*(v12 + 56) + v26 * v20, v43, v44);
      ++*(v12 + 16);
      v6 = v40;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1D90081F8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_1D9179DAC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1D9008474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v33 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](v21);
      result = sub_1D9179E1C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9008718(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B10, &qword_1D9199740);
  v36 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v37 = *v23;
      if ((v36 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1D9179DBC();
      v26 = *&aStdq_9[8 * v22];
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v37;
      v17[1] = v24;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90089D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D0, &unk_1D9188D10);
  v36 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_1D8D752C4(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9008C8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4280, &unk_1D91A6BF0);
  v35 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900912C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v31 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v32 = *(*(v5 + 56) + 16 * v23);
      if ((a2 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 16 * v19) = v32;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D90095B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
  v34 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v21);
      result = sub_1D9179E1C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}