uint64_t DataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_275AE54F4(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_275AE54F4(), !v4))
    {
      result = sub_275ABF758(v3, a1, a2, a3, type metadata accessor for DataResponse);
      if (!v4)
      {
        sub_275ABA204(v3, a1, a2, a3, type metadata accessor for DataResponse);
        v9 = v3 + *(type metadata accessor for DataResponse(0) + 24);
        return sub_275AE5284();
      }
    }
  }

  return result;
}

uint64_t sub_275ABA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABA2C8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v7) = 2;
  return result;
}

uint64_t sub_275ABA364(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25588, type metadata accessor for DataResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABA404()
{
  sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABA470()
{
  sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABA5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25580, type metadata accessor for NotificationPendingRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABA670()
{
  sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABA6DC()
{
  sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABA780()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static NotificationPendingResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NotificationPendingResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isNotificationPending";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxDelayTimestampMillis";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t NotificationPendingResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for NotificationPendingResponse(0) + 20);
      sub_275AE5364();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for NotificationPendingResponse(0) + 24);
      sub_275AE53B4();
    }
  }

  return result;
}

uint64_t NotificationPendingResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABF660(v3, a1, a2, a3, type metadata accessor for NotificationPendingResponse);
  if (!v4)
  {
    sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for NotificationPendingResponse);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABAB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_275ABABC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25578, type metadata accessor for NotificationPendingResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABAC60()
{
  sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABACCC()
{
  sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABAE00()
{
  v0 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  type metadata accessor for NotificationState(0);
  sub_275ADD244(&qword_280A246A8, type metadata accessor for NotificationState);
  return sub_275AE5404();
}

uint64_t sub_275ABAEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NotificationState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationStateWriteRequest(0);
  sub_275A5F510(a1 + *(v14 + 20), v8, &qword_280A24660, &qword_275AEAC60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24660, &qword_275AEAC60);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for NotificationState);
  sub_275ADD244(&qword_280A246A8, type metadata accessor for NotificationState);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for NotificationState);
}

uint64_t sub_275ABB1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25570, type metadata accessor for NotificationStateWriteRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABB248()
{
  sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABB2B4()
{
  sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABB414(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25568, type metadata accessor for NotificationStateWriteResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABB4B4()
{
  sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABB520()
{
  sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABB5C4()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SetCliActivityRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SetCliActivityRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "delaySecs";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "message";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275ABB868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275ABB8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275ABB9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25560, type metadata accessor for SetCliActivityRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABBA94()
{
  sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABBB00()
{
  sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABBC60()
{
  v0 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  type metadata accessor for CliActivityState(0);
  sub_275ADD244(&qword_280A24690, type metadata accessor for CliActivityState);
  return sub_275AE5404();
}

uint64_t sub_275ABBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CliActivityState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SetCliActivityResponse(0);
  sub_275A5F510(a1 + *(v14 + 20), v8, &qword_280A24668, &qword_275AE7970);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24668, &qword_275AE7970);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for CliActivityState);
  sub_275ADD244(&qword_280A24690, type metadata accessor for CliActivityState);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for CliActivityState);
}

uint64_t sub_275ABC008(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25558, type metadata accessor for SetCliActivityResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABC0A8()
{
  sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABC114()
{
  sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABC31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25550, type metadata accessor for MobileAssetDownloadRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABC3BC()
{
  sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABC428()
{
  sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABC588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      sub_275AE53B4();
    }
  }

  return result;
}

uint64_t sub_275ABC6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25548, type metadata accessor for MobileAssetDownloadResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABC790()
{
  sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABC7FC()
{
  sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABC988(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25540, type metadata accessor for MobileAssetGetVersionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABCA28()
{
  sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABCA94()
{
  sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABCC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25538, type metadata accessor for MobileAssetGetVersionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABCD38()
{
  sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABCDA4()
{
  sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABCE78()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DisplayDelayedOfferRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DisplayDelayedOfferRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notificationId";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failsafeMode";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t DisplayDelayedOfferRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for DisplayDelayedOfferRequest(0) + 20);
      sub_275AE53E4();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for DisplayDelayedOfferRequest(0) + 24);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t sub_275ABD1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_275ABD27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25530, type metadata accessor for DisplayDelayedOfferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABD31C()
{
  sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABD388()
{
  sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABD4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25528, type metadata accessor for DisplayDelayedOfferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABD588()
{
  sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABD5F4()
{
  sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABD750(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25520, type metadata accessor for ActivityStatusRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABD7F0()
{
  sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABD85C()
{
  sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest);

  return sub_275AE5474();
}

uint64_t ActivityStatusResponse.decodeMessage<A>(decoder:)()
{
  result = sub_275AE5344();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ActivityStatusResponse.Activity(0);
        sub_275ADD244(&qword_280A24F60, type metadata accessor for ActivityStatusResponse.Activity);
        sub_275AE53F4();
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t ActivityStatusResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ActivityStatusResponse.Activity(0), sub_275ADD244(&qword_280A24F60, type metadata accessor for ActivityStatusResponse.Activity), result = sub_275AE5524(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ActivityStatusResponse(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABDBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25518, type metadata accessor for ActivityStatusResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABDC58()
{
  sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABDCC4()
{
  sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABDD80()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityStatusResponse.Activity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityStatusResponse.Activity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "criteria";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ActivityStatusResponse.Activity.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_275ABE120();
        break;
      case 2:
        sub_275ABE0AC();
        break;
      case 1:
        v3 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 20);
        sub_275AE53E4();
        break;
    }
  }

  return result;
}

uint64_t sub_275ABE0AC()
{
  v0 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 24);
  sub_275AE27D8();
  return sub_275AE5374();
}

uint64_t sub_275ABE120()
{
  v0 = *(type metadata accessor for ActivityStatusResponse.Activity(0) + 28);
  type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  return sub_275AE5404();
}

uint64_t ActivityStatusResponse.Activity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AB7138(v3, a1, a2, a3, type metadata accessor for ActivityStatusResponse.Activity);
  if (!v4)
  {
    sub_275ABE270(v3);
    sub_275ABE314(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABE270(uint64_t a1)
{
  result = type metadata accessor for ActivityStatusResponse.Activity(0);
  v3 = (a1 + *(result + 24));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_275AE27D8();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275ABE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityStatusResponse.Activity(0);
  sub_275A5F510(a1 + *(v14 + 28), v8, &qword_280A24DA0, &qword_275AEA460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24DA0, &qword_275AEA460);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
}

uint64_t sub_275ABE57C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a1[7];
  v8 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_275ABE65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25510, type metadata accessor for ActivityStatusResponse.Activity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABE6FC()
{
  sub_275ADD244(&qword_280A24F60, type metadata accessor for ActivityStatusResponse.Activity);

  return sub_275AE5464();
}

uint64_t sub_275ABE768()
{
  sub_275ADD244(&qword_280A24F60, type metadata accessor for ActivityStatusResponse.Activity);

  return sub_275AE5474();
}

uint64_t sub_275ABE7E8()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityStatusResponse.Activity.Status._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityStatusResponse.Activity.Status._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOT_SCHEDULED";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SCHEDULED_TO_RUN";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275ABEA64()
{
  result = MEMORY[0x277C86E00](0x697265746972432ELL, 0xE900000000000061);
  static ActivityStatusResponse.Activity.Criteria.protoMessageName = 0xD00000000000001FLL;
  unk_280A25D70 = 0x8000000275AF11B0;
  return result;
}

uint64_t *ActivityStatusResponse.Activity.Criteria.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  return &static ActivityStatusResponse.Activity.Criteria.protoMessageName;
}

uint64_t static ActivityStatusResponse.Activity.Criteria.protoMessageName.getter()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  v0 = static ActivityStatusResponse.Activity.Criteria.protoMessageName;

  return v0;
}

uint64_t sub_275ABEB8C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityStatusResponse.Activity.Criteria._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityStatusResponse.Activity.Criteria._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intervalSecs";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intervalTimeDelta";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275ABEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      v9 = *(a4(0) + 24);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t sub_275ABEEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(v7, a1, a2, a3, a4);
  if (!v8)
  {
    a7(v7, a1, a2, a3, a6);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABF004()
{
  if (qword_280A244D8 != -1)
  {
    swift_once();
  }

  v0 = static ActivityStatusResponse.Activity.Criteria.protoMessageName;

  return v0;
}

uint64_t sub_275ABF09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25508, type metadata accessor for ActivityStatusResponse.Activity.Criteria);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABF13C()
{
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);

  return sub_275AE5464();
}

uint64_t sub_275ABF1A8()
{
  sub_275ADD244(&qword_280A252B8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);

  return sub_275AE5474();
}

uint64_t sub_275ABF27C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ActivityClearRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ActivityClearRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cliActivity";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delayedNotificationActivity";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mobileAssetDownloadActivity";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ActivityClearRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for ActivityClearRequest(0) + 28);
LABEL_3:
        v0 = 0;
        sub_275AE5364();
        break;
      case 2:
        v1 = *(type metadata accessor for ActivityClearRequest(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for ActivityClearRequest(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t ActivityClearRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABF660(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest);
  if (!v4)
  {
    sub_275ABF6DC(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest);
    sub_275ABF758(v3, a1, a2, a3, type metadata accessor for ActivityClearRequest);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275ABF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275ABF824@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_275ABF8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A25500, type metadata accessor for ActivityClearRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABF950()
{
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest);

  return sub_275AE5464();
}

uint64_t sub_275ABF9BC()
{
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest);

  return sub_275AE5474();
}

uint64_t sub_275ABFB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254F8, type metadata accessor for ActivityClearResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ABFBBC()
{
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse);

  return sub_275AE5464();
}

uint64_t sub_275ABFC28()
{
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse);

  return sub_275AE5474();
}

uint64_t sub_275ABFCCC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static GetBiomeStreamRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static GetBiomeStreamRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startTsMillis";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTsMillis";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "streamType";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t GetBiomeStreamRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_275ABFFF0();
        break;
      case 2:
        v4 = *(type metadata accessor for GetBiomeStreamRequest(0) + 24);
LABEL_10:
        v0 = 0;
        sub_275AE53B4();
        break;
      case 1:
        v3 = *(type metadata accessor for GetBiomeStreamRequest(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_275ABFFF0()
{
  v0 = *(type metadata accessor for GetBiomeStreamRequest(0) + 28);
  sub_275AE2784();
  return sub_275AE5374();
}

uint64_t GetBiomeStreamRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275ABB868(v3, a1, a2, a3, type metadata accessor for GetBiomeStreamRequest);
  if (!v4)
  {
    sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for GetBiomeStreamRequest);
    sub_275AC0118(v3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC0118(uint64_t a1)
{
  result = type metadata accessor for GetBiomeStreamRequest(0);
  v3 = (a1 + *(result + 28));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_275AE2784();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275AC0204@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t sub_275AC02AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254F0, type metadata accessor for GetBiomeStreamRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC034C()
{
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC03B8()
{
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC0438()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static GetBiomeStreamRequest.StreamType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static GetBiomeStreamRequest.StreamType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NO_TYPE";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IND";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NOTIFICATION";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t GetBiomeStreamResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_275AE53C4();
    }
  }

  return result;
}

uint64_t GetBiomeStreamResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_275AE54F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for GetBiomeStreamResponse(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC08C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254E8, type metadata accessor for GetBiomeStreamResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC0968()
{
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC09D4()
{
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC0A68(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AC0B48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275AE5574();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_275AE5564();
}

uint64_t sub_275AC0C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254E0, type metadata accessor for ActivityHistoryRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC0CDC()
{
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC0D48()
{
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC0E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_275AE5344();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_275AC0EFC()
{
  v0 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  type metadata accessor for SystemActivityHistory_File(0);
  sub_275ADD244(&qword_281410900, type metadata accessor for SystemActivityHistory_File);
  return sub_275AE5404();
}

uint64_t sub_275AC0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SystemActivityHistory_File(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityHistoryResponse(0);
  sub_275A5F510(a1 + *(v14 + 20), v8, &qword_280A24E88, &qword_275AEAC68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24E88, &qword_275AEAC68);
  }

  sub_275A9ED50(v8, v13, type metadata accessor for SystemActivityHistory_File);
  sub_275ADD244(&qword_281410900, type metadata accessor for SystemActivityHistory_File);
  sub_275AE5534();
  return sub_275A9FCE4(v13, type metadata accessor for SystemActivityHistory_File);
}

uint64_t sub_275AC12B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_275AC138C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254D8, type metadata accessor for ActivityHistoryResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC142C()
{
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC1498()
{
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC1540()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ShadowEvaluationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ShadowEvaluationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_275AE7220;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "startDays";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_275AE5544();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "endDays";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "labelDurationInDays";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dummyData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "numOffsets";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "modelNames";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "skipPublishMetrics";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_275AE5554();
}

uint64_t ShadowEvaluationRequest.decodeMessage<A>(decoder:)()
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
          v1 = *(type metadata accessor for ShadowEvaluationRequest(0) + 24);
          goto LABEL_3;
        case 2:
          v8 = *(type metadata accessor for ShadowEvaluationRequest(0) + 28);
LABEL_3:
          v0 = 0;
          sub_275AE53B4();
          break;
        case 3:
          v5 = *(type metadata accessor for ShadowEvaluationRequest(0) + 32);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_275AE53C4();
      }

      else if (result == 7)
      {
        v6 = *(type metadata accessor for ShadowEvaluationRequest(0) + 44);
        goto LABEL_18;
      }
    }

    else
    {
      if (result != 4)
      {
        v4 = *(type metadata accessor for ShadowEvaluationRequest(0) + 40);
        goto LABEL_3;
      }

      v7 = *(type metadata accessor for ShadowEvaluationRequest(0) + 36);
LABEL_18:
      v0 = 0;
      sub_275AE5364();
    }
  }
}

uint64_t ShadowEvaluationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AB87F8(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest);
  if (!v4)
  {
    sub_275AB7AE8(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest);
    sub_275AC1B5C(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest);
    sub_275AC1BE0(v3);
    sub_275AC1C58(v3);
    if (*(*v3 + 16))
    {
      sub_275AE54F4();
    }

    sub_275AC1CD0(v3, a1, a2, a3, type metadata accessor for ShadowEvaluationRequest);
    v9 = v3 + *(type metadata accessor for ShadowEvaluationRequest(0) + 20);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC1B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AC1BE0(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275AC1C58(uint64_t a1)
{
  result = type metadata accessor for ShadowEvaluationRequest(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275AC1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275AC1D94@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[8] = 1;
  *(a2 + v9) = 2;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_275AC1E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254D0, type metadata accessor for ShadowEvaluationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC1F08()
{
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC1F74()
{
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC201C()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ShadowEvaluationResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ShadowEvaluationResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dummyData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "modelPerformanceMetrics";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "delayPerformanceMetrics";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ShadowEvaluationResponse.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for ShadowEvaluationResponse(0) + 28);
      sub_275AE5364();
    }
  }

  return result;
}

uint64_t sub_275AC2384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a5(v6, a1, a2, a3, a4, 1);
  if (!v7)
  {
    if (*(*v6 + 16))
    {
      sub_275AE54F4();
    }

    if (*(v6[1] + 16))
    {
      sub_275AE54F4();
    }

    v10 = v6 + *(a6(0) + 24);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC24B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + *(a1 + 24);
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  *(a2 + *(a1 + 28)) = 2;
  return result;
}

uint64_t sub_275AC2548(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254C8, type metadata accessor for ShadowEvaluationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC25E8()
{
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC2654()
{
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse);

  return sub_275AE5474();
}

uint64_t DeleteDaemonStateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_275AE5344();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_275AC2818(a1, v5, a2, a3, type metadata accessor for DeleteDaemonStateRequest, sub_275AE2730);
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275AC2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 20);
  a6();
  return sub_275AE5374();
}

uint64_t DeleteDaemonStateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AC2928(v3, a1, a2, a3, type metadata accessor for DeleteDaemonStateRequest, sub_275AE2730);
  if (!v4)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  result = a5(0);
  v10 = (a1 + *(result + 20));
  if ((*(v10 + 9) & 1) == 0)
  {
    v11 = *v10;
    v12 = v10[1] & 1;
    a6(result, v9);
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275AC2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_275AC2AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254C0, type metadata accessor for DeleteDaemonStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC2B54()
{
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest);

  return sub_275AE5464();
}

uint64_t sub_275AC2BC0()
{
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest);

  return sub_275AE5474();
}

uint64_t sub_275AC2C40()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DeleteDaemonStateRequest.StateCategory._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DeleteDaemonStateRequest.StateCategory._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE9490;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOTIFICATION";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PFL_AND_PET";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MOBILE_ASSET";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "IND_XPC_BACKOFF";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275AC2F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275AE5574();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_275AE7E30;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_275AE5544();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_275AE5554();
}

uint64_t sub_275AC319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(v5, a1, a2, a3, a4);
  if (!v6)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275AC3294(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254B8, type metadata accessor for DeleteDaemonStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AC3334()
{
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse);

  return sub_275AE5464();
}

uint64_t sub_275AC33A0()
{
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse);

  return sub_275AE5474();
}

uint64_t sub_275AC3474()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SubscriptionClientRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SubscriptionClientRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_275AEA800;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 2;
  *v5 = "ping";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "newOffer";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "features";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "getState";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "Data";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "notificationPending";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "setCliActivity";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "displayDelayedOffer";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v22 = "activityStatus";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 13;
  *v24 = "activityClear";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 14;
  *v26 = "getBiomeStream";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 15;
  *v28 = "notificationStateWrite";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 16;
  *v30 = "activityHistory";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 17;
  *v32 = "mobileAssetDownload";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "shadowEvaluation";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "mobileAssetGetVersion";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 21;
  *v37 = "deleteDaemonState";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  return sub_275AE5554();
}

uint64_t SubscriptionClientRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        sub_275AC3C78(v5, a1, a2, a3);
        break;
      case 3:
        sub_275AC4228(v5, a1, a2, a3);
        break;
      case 4:
        sub_275AC47E4(v5, a1, a2, a3);
        break;
      case 5:
        sub_275AC4DA0(v5, a1, a2, a3);
        break;
      case 6:
        sub_275AC535C(v5, a1, a2, a3);
        break;
      case 7:
        sub_275AC5918(v5, a1, a2, a3);
        break;
      case 9:
        sub_275AC5ED4(v5, a1, a2, a3);
        break;
      case 11:
        sub_275AC6490(v5, a1, a2, a3);
        break;
      case 12:
        sub_275AC6A4C(v5, a1, a2, a3);
        break;
      case 13:
        sub_275AC7008(v5, a1, a2, a3);
        break;
      case 14:
        sub_275AC75C4(v5, a1, a2, a3);
        break;
      case 15:
        sub_275AC7B80(v5, a1, a2, a3);
        break;
      case 16:
        sub_275AC813C(v5, a1, a2, a3);
        break;
      case 17:
        sub_275AC86F8(v5, a1, a2, a3);
        break;
      case 19:
        sub_275AC8CB4(v5, a1, a2, a3);
        break;
      case 20:
        sub_275AC9270(v5, a1, a2, a3);
        break;
      case 21:
        sub_275AC982C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_275AC3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for PingRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25698, &qword_275AEEA70);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }

    else
    {
      sub_275A5FE04(v28, &qword_280A25698, &qword_275AEEA70);
      v35 = v43;
      sub_275A9ED50(v20, v43, type metadata accessor for PingRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for PingRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25698, &qword_275AEEA70);
  }

  sub_275A5F510(v28, v36, &qword_280A25698, &qword_275AEEA70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25698, &qword_275AEEA70);
    return sub_275A5FE04(v36, &qword_280A25698, &qword_275AEEA70);
  }

  else
  {
    v39 = v44;
    sub_275A9ED50(v36, v44, type metadata accessor for PingRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25698, &qword_275AEEA70);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for PingRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NewOfferRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256A0, &qword_275AEEA78);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v28, &qword_280A256A0, &qword_275AEEA78);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NewOfferRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for NewOfferRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256A0, &qword_275AEEA78);
  }

  sub_275A5F510(v28, v36, &qword_280A256A0, &qword_275AEEA78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256A0, &qword_275AEEA78);
    return sub_275A5FE04(v36, &qword_280A256A0, &qword_275AEEA78);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NewOfferRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256A0, &qword_275AEEA78);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for NewOfferRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FeaturesRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256A8, &qword_275AEEA80);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v28, &qword_280A256A8, &qword_275AEEA80);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for FeaturesRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for FeaturesRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256A8, &qword_275AEEA80);
  }

  sub_275A5F510(v28, v36, &qword_280A256A8, &qword_275AEEA80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256A8, &qword_275AEEA80);
    return sub_275A5FE04(v36, &qword_280A256A8, &qword_275AEEA80);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for FeaturesRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256A8, &qword_275AEEA80);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for FeaturesRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  StateRequest = type metadata accessor for GetStateRequest(0);
  v6 = *(StateRequest - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](StateRequest);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256B0, &qword_275AEEA88);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = StateRequest;
  v30 = StateRequest;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_275A5FE04(v28, &qword_280A256B0, &qword_275AEEA88);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for GetStateRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for GetStateRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256B0, &qword_275AEEA88);
  }

  sub_275A5F510(v28, v36, &qword_280A256B0, &qword_275AEEA88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256B0, &qword_275AEEA88);
    return sub_275A5FE04(v36, &qword_280A256B0, &qword_275AEEA88);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for GetStateRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256B0, &qword_275AEEA88);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for GetStateRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DataRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256B8, &qword_275AEEA90);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_275A5FE04(v28, &qword_280A256B8, &qword_275AEEA90);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DataRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for DataRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256B8, &qword_275AEEA90);
  }

  sub_275A5F510(v28, v36, &qword_280A256B8, &qword_275AEEA90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256B8, &qword_275AEEA90);
    return sub_275A5FE04(v36, &qword_280A256B8, &qword_275AEEA90);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DataRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256B8, &qword_275AEEA90);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for DataRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NotificationPendingRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256C0, &qword_275AEEA98);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_275A5FE04(v28, &qword_280A256C0, &qword_275AEEA98);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NotificationPendingRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for NotificationPendingRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256C0, &qword_275AEEA98);
  }

  sub_275A5F510(v28, v36, &qword_280A256C0, &qword_275AEEA98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256C0, &qword_275AEEA98);
    return sub_275A5FE04(v36, &qword_280A256C0, &qword_275AEEA98);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NotificationPendingRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256C0, &qword_275AEEA98);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for NotificationPendingRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for SetCliActivityRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256C8, &qword_275AEEAA0);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_275A5FE04(v28, &qword_280A256C8, &qword_275AEEAA0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for SetCliActivityRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for SetCliActivityRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256C8, &qword_275AEEAA0);
  }

  sub_275A5F510(v28, v36, &qword_280A256C8, &qword_275AEEAA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256C8, &qword_275AEEAA0);
    return sub_275A5FE04(v36, &qword_280A256C8, &qword_275AEEAA0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for SetCliActivityRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256C8, &qword_275AEEAA0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for SetCliActivityRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256D0, &qword_275AEEAA8);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_275A5FE04(v28, &qword_280A256D0, &qword_275AEEAA8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DisplayDelayedOfferRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for DisplayDelayedOfferRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256D0, &qword_275AEEAA8);
  }

  sub_275A5F510(v28, v36, &qword_280A256D0, &qword_275AEEAA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256D0, &qword_275AEEAA8);
    return sub_275A5FE04(v36, &qword_280A256D0, &qword_275AEEAA8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DisplayDelayedOfferRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256D0, &qword_275AEEAA8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for DisplayDelayedOfferRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC6A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityStatusRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256D8, &qword_275AEEAB0);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_275A5FE04(v28, &qword_280A256D8, &qword_275AEEAB0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityStatusRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityStatusRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256D8, &qword_275AEEAB0);
  }

  sub_275A5F510(v28, v36, &qword_280A256D8, &qword_275AEEAB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256D8, &qword_275AEEAB0);
    return sub_275A5FE04(v36, &qword_280A256D8, &qword_275AEEAB0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityStatusRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256D8, &qword_275AEEAB0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityStatusRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityClearRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256E0, &qword_275AEEAB8);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_275A5FE04(v28, &qword_280A256E0, &qword_275AEEAB8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityClearRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityClearRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256E0, &qword_275AEEAB8);
  }

  sub_275A5F510(v28, v36, &qword_280A256E0, &qword_275AEEAB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256E0, &qword_275AEEAB8);
    return sub_275A5FE04(v36, &qword_280A256E0, &qword_275AEEAB8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityClearRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256E0, &qword_275AEEAB8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityClearRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v6 = *(BiomeStreamRequest - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](BiomeStreamRequest);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256E8, &qword_275AEEAC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = BiomeStreamRequest;
  v30 = BiomeStreamRequest;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_275A5FE04(v28, &qword_280A256E8, &qword_275AEEAC0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for GetBiomeStreamRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for GetBiomeStreamRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256E8, &qword_275AEEAC0);
  }

  sub_275A5F510(v28, v36, &qword_280A256E8, &qword_275AEEAC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256E8, &qword_275AEEAC0);
    return sub_275A5FE04(v36, &qword_280A256E8, &qword_275AEEAC0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for GetBiomeStreamRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256E8, &qword_275AEEAC0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for GetBiomeStreamRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC7B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NotificationStateWriteRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256F0, &qword_275AEEAC8);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_275A5FE04(v28, &qword_280A256F0, &qword_275AEEAC8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NotificationStateWriteRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for NotificationStateWriteRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256F0, &qword_275AEEAC8);
  }

  sub_275A5F510(v28, v36, &qword_280A256F0, &qword_275AEEAC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256F0, &qword_275AEEAC8);
    return sub_275A5FE04(v36, &qword_280A256F0, &qword_275AEEAC8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NotificationStateWriteRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256F0, &qword_275AEEAC8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for NotificationStateWriteRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityHistoryRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A256F8, &qword_275AEEAD0);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_275A5FE04(v28, &qword_280A256F8, &qword_275AEEAD0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityHistoryRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityHistoryRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A256F8, &qword_275AEEAD0);
  }

  sub_275A5F510(v28, v36, &qword_280A256F8, &qword_275AEEAD0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A256F8, &qword_275AEEAD0);
    return sub_275A5FE04(v36, &qword_280A256F8, &qword_275AEEAD0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityHistoryRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A256F8, &qword_275AEEAD0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityHistoryRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC86F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for MobileAssetDownloadRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25700, &qword_275AEEAD8);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_275A5FE04(v28, &qword_280A25700, &qword_275AEEAD8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for MobileAssetDownloadRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for MobileAssetDownloadRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25700, &qword_275AEEAD8);
  }

  sub_275A5F510(v28, v36, &qword_280A25700, &qword_275AEEAD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25700, &qword_275AEEAD8);
    return sub_275A5FE04(v36, &qword_280A25700, &qword_275AEEAD8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for MobileAssetDownloadRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25700, &qword_275AEEAD8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for MobileAssetDownloadRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC8CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ShadowEvaluationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25708, &qword_275AEEAE0);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_275A5FE04(v28, &qword_280A25708, &qword_275AEEAE0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ShadowEvaluationRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for ShadowEvaluationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25708, &qword_275AEEAE0);
  }

  sub_275A5F510(v28, v36, &qword_280A25708, &qword_275AEEAE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25708, &qword_275AEEAE0);
    return sub_275A5FE04(v36, &qword_280A25708, &qword_275AEEAE0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ShadowEvaluationRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25708, &qword_275AEEAE0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for ShadowEvaluationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  v6 = *(VersionRequest - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](VersionRequest);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25710, &qword_275AEEAE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = VersionRequest;
  v30 = VersionRequest;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_275A5FE04(v28, &qword_280A25710, &qword_275AEEAE8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for MobileAssetGetVersionRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for MobileAssetGetVersionRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25710, &qword_275AEEAE8);
  }

  sub_275A5F510(v28, v36, &qword_280A25710, &qword_275AEEAE8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25710, &qword_275AEEAE8);
    return sub_275A5FE04(v36, &qword_280A25710, &qword_275AEEAE8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for MobileAssetGetVersionRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25710, &qword_275AEEAE8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for MobileAssetGetVersionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AC982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DeleteDaemonStateRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25718, &unk_275AEEAF0);
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
  sub_275A5F510(a1, v14, &qword_280A24C20, &qword_275AEAC70);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24C20, &qword_275AEAC70);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_275A5FE04(v28, &qword_280A25718, &unk_275AEEAF0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DeleteDaemonStateRequest);
      sub_275A9ED50(v35, v28, type metadata accessor for DeleteDaemonStateRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25718, &unk_275AEEAF0);
  }

  sub_275A5F510(v28, v36, &qword_280A25718, &unk_275AEEAF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25718, &unk_275AEEAF0);
    return sub_275A5FE04(v36, &qword_280A25718, &unk_275AEEAF0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DeleteDaemonStateRequest);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25718, &unk_275AEEAF0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24C20, &qword_275AEAC70);
    sub_275A9ED50(v39, v40, type metadata accessor for DeleteDaemonStateRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t SubscriptionClientRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_275A5F510(v3, &v15 - v10, &qword_280A24C20, &qword_275AEAC70);
  v12 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275ACA3D8(v3, a1, a2, a3);
        goto LABEL_27;
      case 2u:
        sub_275ACA610(v3, a1, a2, a3);
        goto LABEL_27;
      case 3u:
        sub_275ACA848(v3, a1, a2, a3);
        goto LABEL_27;
      case 4u:
        sub_275ACAA80(v3, a1, a2, a3);
        goto LABEL_27;
      case 5u:
        sub_275ACACB8(v3, a1, a2, a3);
        goto LABEL_27;
      case 6u:
        sub_275ACAEF0(v3, a1, a2, a3);
        goto LABEL_27;
      case 7u:
        sub_275ACB128(v3, a1, a2, a3);
        goto LABEL_27;
      case 8u:
        sub_275ACB360(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 9u:
        sub_275ACB598(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xAu:
        sub_275ACB7D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xBu:
        sub_275ACBA08(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xCu:
        sub_275ACBC40(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xDu:
        sub_275ACBE78(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xEu:
        sub_275ACC0B0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0xFu:
        sub_275ACC2E8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      case 0x10u:
        sub_275ACC520(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        }

LABEL_9:
        sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        break;
      default:
        sub_275ACA1A4(v3, a1, a2, a3);
LABEL_27:
        result = sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v13 = v3 + *(type metadata accessor for SubscriptionClientRequest(0) + 20);
  return sub_275AE5284();
}

uint64_t sub_275ACA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for PingRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A9ED50(v8, v12, type metadata accessor for PingRequest);
    sub_275ADD244(&qword_280A25088, type metadata accessor for PingRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for PingRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NewOfferRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NewOfferRequest);
    sub_275ADD244(&qword_280A25058, type metadata accessor for NewOfferRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NewOfferRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeaturesRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for FeaturesRequest);
    sub_275ADD244(&qword_280A250B8, type metadata accessor for FeaturesRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for FeaturesRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACA848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  StateRequest = type metadata accessor for GetStateRequest(0);
  v10 = *(*(StateRequest - 8) + 64);
  MEMORY[0x28223BE20](StateRequest);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for GetStateRequest);
    sub_275ADD244(&qword_280A250F8, type metadata accessor for GetStateRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for GetStateRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACAA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DataRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DataRequest);
    sub_275ADD244(&qword_280A25128, type metadata accessor for DataRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DataRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACACB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NotificationPendingRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NotificationPendingRequest);
    sub_275ADD244(&qword_280A25158, type metadata accessor for NotificationPendingRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NotificationPendingRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SetCliActivityRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for SetCliActivityRequest);
    sub_275ADD244(&qword_280A251B8, type metadata accessor for SetCliActivityRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for SetCliActivityRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DisplayDelayedOfferRequest);
    sub_275ADD244(&qword_280A25248, type metadata accessor for DisplayDelayedOfferRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DisplayDelayedOfferRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityStatusRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityStatusRequest);
    sub_275ADD244(&qword_280A25278, type metadata accessor for ActivityStatusRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityStatusRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityClearRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityClearRequest);
    sub_275ADD244(&qword_280A252D0, type metadata accessor for ActivityClearRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityClearRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v10 = *(*(BiomeStreamRequest - 8) + 64);
  MEMORY[0x28223BE20](BiomeStreamRequest);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for GetBiomeStreamRequest);
    sub_275ADD244(&qword_280A25300, type metadata accessor for GetBiomeStreamRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for GetBiomeStreamRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NotificationStateWriteRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NotificationStateWriteRequest);
    sub_275ADD244(&qword_280A25188, type metadata accessor for NotificationStateWriteRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NotificationStateWriteRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityHistoryRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityHistoryRequest);
    sub_275ADD244(&qword_280A25330, type metadata accessor for ActivityHistoryRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityHistoryRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACBE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for MobileAssetDownloadRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetDownloadRequest);
    sub_275ADD244(&qword_280A251E8, type metadata accessor for MobileAssetDownloadRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for MobileAssetDownloadRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ShadowEvaluationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ShadowEvaluationRequest);
    sub_275ADD244(&qword_280A25360, type metadata accessor for ShadowEvaluationRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ShadowEvaluationRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  v10 = *(*(VersionRequest - 8) + 64);
  MEMORY[0x28223BE20](VersionRequest);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetGetVersionRequest);
    sub_275ADD244(&qword_280A25218, type metadata accessor for MobileAssetGetVersionRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for MobileAssetGetVersionRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DeleteDaemonStateRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24C20, &qword_275AEAC70);
  v13 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24C20, &qword_275AEAC70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DeleteDaemonStateRequest);
    sub_275ADD244(&qword_281410C10, type metadata accessor for DeleteDaemonStateRequest);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DeleteDaemonStateRequest);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275ACC808(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254B0, type metadata accessor for SubscriptionClientRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275ACC8A8()
{
  sub_275ADD244(qword_281411C70, type metadata accessor for SubscriptionClientRequest);

  return sub_275AE5464();
}

uint64_t sub_275ACC914()
{
  sub_275ADD244(qword_281411C70, type metadata accessor for SubscriptionClientRequest);

  return sub_275AE5474();
}

uint64_t sub_275ACC9BC()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static SubscriptionClientResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SubscriptionClientResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_275AEA810;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "error";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v41 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ping";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v41 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "newOffer";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v41 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "features";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v41 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "getState";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v41 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Data";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v41 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "notificationPending";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v41 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "setCliActivity";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v41 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "displayDelayedOffer";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v41 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "activityStatus";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v41 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "activityClear";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v41 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "getBiomeStream";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v41 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "notificationStateWrite";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v41 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 16;
  *v32 = "activityHistory";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v41 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 17;
  *v34 = "mobileAssetDownload";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v41 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 19;
  *v36 = "shadowEvaluation";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v41 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 20;
  *v37 = "mobileAssetGetVersion";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v41 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 21;
  *v39 = "deleteDaemonState";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t SubscriptionClientResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_275ACD214(v5, a1, a2, a3);
        break;
      case 2:
        sub_275ACD7C4(v5, a1, a2, a3);
        break;
      case 3:
        sub_275ACDD80(v5, a1, a2, a3);
        break;
      case 4:
        sub_275ACE33C(v5, a1, a2, a3);
        break;
      case 5:
        sub_275ACE8F8(v5, a1, a2, a3);
        break;
      case 6:
        sub_275ACEEB4(v5, a1, a2, a3);
        break;
      case 7:
        sub_275ACF470(v5, a1, a2, a3);
        break;
      case 9:
        sub_275ACFA2C(v5, a1, a2, a3);
        break;
      case 11:
        sub_275ACFFE8(v5, a1, a2, a3);
        break;
      case 12:
        sub_275AD05A4(v5, a1, a2, a3);
        break;
      case 13:
        sub_275AD0B60(v5, a1, a2, a3);
        break;
      case 14:
        sub_275AD111C(v5, a1, a2, a3);
        break;
      case 15:
        sub_275AD16D8(v5, a1, a2, a3);
        break;
      case 16:
        sub_275AD1C94(v5, a1, a2, a3);
        break;
      case 17:
        sub_275AD2250(v5, a1, a2, a3);
        break;
      case 19:
        sub_275AD280C(v5, a1, a2, a3);
        break;
      case 20:
        sub_275AD2DC8(v5, a1, a2, a3);
        break;
      case 21:
        sub_275AD3384(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_275ACD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ErrorResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25600, &qword_275AEE9C8);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }

    else
    {
      sub_275A5FE04(v28, &qword_280A25600, &qword_275AEE9C8);
      v35 = v43;
      sub_275A9ED50(v20, v43, type metadata accessor for ErrorResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for ErrorResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25600, &qword_275AEE9C8);
  }

  sub_275A5F510(v28, v36, &qword_280A25600, &qword_275AEE9C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25600, &qword_275AEE9C8);
    return sub_275A5FE04(v36, &qword_280A25600, &qword_275AEE9C8);
  }

  else
  {
    v39 = v44;
    sub_275A9ED50(v36, v44, type metadata accessor for ErrorResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25600, &qword_275AEE9C8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for ErrorResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for PingResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25608, &qword_275AEE9D0);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_275A5FE04(v28, &qword_280A25608, &qword_275AEE9D0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for PingResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for PingResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25608, &qword_275AEE9D0);
  }

  sub_275A5F510(v28, v36, &qword_280A25608, &qword_275AEE9D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25608, &qword_275AEE9D0);
    return sub_275A5FE04(v36, &qword_280A25608, &qword_275AEE9D0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for PingResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25608, &qword_275AEE9D0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for PingResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACDD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NewOfferResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25610, &qword_275AEE9D8);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A5FE04(v28, &qword_280A25610, &qword_275AEE9D8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NewOfferResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for NewOfferResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25610, &qword_275AEE9D8);
  }

  sub_275A5F510(v28, v36, &qword_280A25610, &qword_275AEE9D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25610, &qword_275AEE9D8);
    return sub_275A5FE04(v36, &qword_280A25610, &qword_275AEE9D8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NewOfferResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25610, &qword_275AEE9D8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for NewOfferResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FeaturesResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25618, &qword_275AEE9E0);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_275A5FE04(v28, &qword_280A25618, &qword_275AEE9E0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for FeaturesResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for FeaturesResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25618, &qword_275AEE9E0);
  }

  sub_275A5F510(v28, v36, &qword_280A25618, &qword_275AEE9E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25618, &qword_275AEE9E0);
    return sub_275A5FE04(v36, &qword_280A25618, &qword_275AEE9E0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for FeaturesResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25618, &qword_275AEE9E0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for FeaturesResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  StateResponse = type metadata accessor for GetStateResponse(0);
  v6 = *(StateResponse - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](StateResponse);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25620, &qword_275AEE9E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = StateResponse;
  v30 = StateResponse;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_275A5FE04(v28, &qword_280A25620, &qword_275AEE9E8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for GetStateResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for GetStateResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25620, &qword_275AEE9E8);
  }

  sub_275A5F510(v28, v36, &qword_280A25620, &qword_275AEE9E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25620, &qword_275AEE9E8);
    return sub_275A5FE04(v36, &qword_280A25620, &qword_275AEE9E8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for GetStateResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25620, &qword_275AEE9E8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for GetStateResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DataResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25628, &qword_275AEE9F0);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_275A5FE04(v28, &qword_280A25628, &qword_275AEE9F0);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DataResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for DataResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25628, &qword_275AEE9F0);
  }

  sub_275A5F510(v28, v36, &qword_280A25628, &qword_275AEE9F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25628, &qword_275AEE9F0);
    return sub_275A5FE04(v36, &qword_280A25628, &qword_275AEE9F0);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DataResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25628, &qword_275AEE9F0);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for DataResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACF470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NotificationPendingResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25630, &qword_275AEE9F8);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_275A5FE04(v28, &qword_280A25630, &qword_275AEE9F8);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NotificationPendingResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for NotificationPendingResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25630, &qword_275AEE9F8);
  }

  sub_275A5F510(v28, v36, &qword_280A25630, &qword_275AEE9F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25630, &qword_275AEE9F8);
    return sub_275A5FE04(v36, &qword_280A25630, &qword_275AEE9F8);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NotificationPendingResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25630, &qword_275AEE9F8);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for NotificationPendingResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for SetCliActivityResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25638, &qword_275AEEA00);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_275A5FE04(v28, &qword_280A25638, &qword_275AEEA00);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for SetCliActivityResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for SetCliActivityResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25638, &qword_275AEEA00);
  }

  sub_275A5F510(v28, v36, &qword_280A25638, &qword_275AEEA00);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25638, &qword_275AEEA00);
    return sub_275A5FE04(v36, &qword_280A25638, &qword_275AEEA00);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for SetCliActivityResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25638, &qword_275AEEA00);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for SetCliActivityResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275ACFFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DisplayDelayedOfferResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25640, &qword_275AEEA08);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_275A5FE04(v28, &qword_280A25640, &qword_275AEEA08);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DisplayDelayedOfferResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for DisplayDelayedOfferResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25640, &qword_275AEEA08);
  }

  sub_275A5F510(v28, v36, &qword_280A25640, &qword_275AEEA08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25640, &qword_275AEEA08);
    return sub_275A5FE04(v36, &qword_280A25640, &qword_275AEEA08);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DisplayDelayedOfferResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25640, &qword_275AEEA08);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for DisplayDelayedOfferResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityStatusResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25648, &qword_275AEEA10);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_275A5FE04(v28, &qword_280A25648, &qword_275AEEA10);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityStatusResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityStatusResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25648, &qword_275AEEA10);
  }

  sub_275A5F510(v28, v36, &qword_280A25648, &qword_275AEEA10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25648, &qword_275AEEA10);
    return sub_275A5FE04(v36, &qword_280A25648, &qword_275AEEA10);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityStatusResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25648, &qword_275AEEA10);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityStatusResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD0B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityClearResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25650, &qword_275AEEA18);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_275A5FE04(v28, &qword_280A25650, &qword_275AEEA18);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityClearResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityClearResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25650, &qword_275AEEA18);
  }

  sub_275A5F510(v28, v36, &qword_280A25650, &qword_275AEEA18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25650, &qword_275AEEA18);
    return sub_275A5FE04(v36, &qword_280A25650, &qword_275AEEA18);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityClearResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25650, &qword_275AEEA18);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityClearResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  v6 = *(BiomeStreamResponse - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](BiomeStreamResponse);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25658, &qword_275AEEA20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = BiomeStreamResponse;
  v30 = BiomeStreamResponse;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_275A5FE04(v28, &qword_280A25658, &qword_275AEEA20);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for GetBiomeStreamResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for GetBiomeStreamResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25658, &qword_275AEEA20);
  }

  sub_275A5F510(v28, v36, &qword_280A25658, &qword_275AEEA20);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25658, &qword_275AEEA20);
    return sub_275A5FE04(v36, &qword_280A25658, &qword_275AEEA20);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for GetBiomeStreamResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25658, &qword_275AEEA20);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for GetBiomeStreamResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NotificationStateWriteResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25660, &qword_275AEEA28);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_275A5FE04(v28, &qword_280A25660, &qword_275AEEA28);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for NotificationStateWriteResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for NotificationStateWriteResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25660, &qword_275AEEA28);
  }

  sub_275A5F510(v28, v36, &qword_280A25660, &qword_275AEEA28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25660, &qword_275AEEA28);
    return sub_275A5FE04(v36, &qword_280A25660, &qword_275AEEA28);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for NotificationStateWriteResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25660, &qword_275AEEA28);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for NotificationStateWriteResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ActivityHistoryResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25668, &qword_275AEEA30);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_275A5FE04(v28, &qword_280A25668, &qword_275AEEA30);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ActivityHistoryResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for ActivityHistoryResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25668, &qword_275AEEA30);
  }

  sub_275A5F510(v28, v36, &qword_280A25668, &qword_275AEEA30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25668, &qword_275AEEA30);
    return sub_275A5FE04(v36, &qword_280A25668, &qword_275AEEA30);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ActivityHistoryResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25668, &qword_275AEEA30);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for ActivityHistoryResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for MobileAssetDownloadResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25670, &qword_275AEEA38);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_275A5FE04(v28, &qword_280A25670, &qword_275AEEA38);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for MobileAssetDownloadResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for MobileAssetDownloadResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25670, &qword_275AEEA38);
  }

  sub_275A5F510(v28, v36, &qword_280A25670, &qword_275AEEA38);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25670, &qword_275AEEA38);
    return sub_275A5FE04(v36, &qword_280A25670, &qword_275AEEA38);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for MobileAssetDownloadResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25670, &qword_275AEEA38);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for MobileAssetDownloadResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ShadowEvaluationResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25678, &qword_275AEEA40);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_275A5FE04(v28, &qword_280A25678, &qword_275AEEA40);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for ShadowEvaluationResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for ShadowEvaluationResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25678, &qword_275AEEA40);
  }

  sub_275A5F510(v28, v36, &qword_280A25678, &qword_275AEEA40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25678, &qword_275AEEA40);
    return sub_275A5FE04(v36, &qword_280A25678, &qword_275AEEA40);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for ShadowEvaluationResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25678, &qword_275AEEA40);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for ShadowEvaluationResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  v6 = *(VersionResponse - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](VersionResponse);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25680, &qword_275AEEA48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = VersionResponse;
  v30 = VersionResponse;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_275A5FE04(v28, &qword_280A25680, &qword_275AEEA48);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for MobileAssetGetVersionResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for MobileAssetGetVersionResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25680, &qword_275AEEA48);
  }

  sub_275A5F510(v28, v36, &qword_280A25680, &qword_275AEEA48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25680, &qword_275AEEA48);
    return sub_275A5FE04(v36, &qword_280A25680, &qword_275AEEA48);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for MobileAssetGetVersionResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25680, &qword_275AEEA48);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for MobileAssetGetVersionResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_275AD3384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for DeleteDaemonStateResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25688, &unk_275AEEA50);
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
  sub_275A5F510(a1, v14, &qword_280A24E60, "\by");
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_275A5FE04(v14, &qword_280A24E60, "\by");
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_275A9ED50(v14, v22, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    sub_275A9ED50(v22, v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_275A5FE04(v28, &qword_280A25688, &unk_275AEEA50);
      v35 = v44;
      sub_275A9ED50(v20, v44, type metadata accessor for DeleteDaemonStateResponse);
      sub_275A9ED50(v35, v28, type metadata accessor for DeleteDaemonStateResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_275A9FCE4(v20, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse);
  v37 = v47;
  sub_275AE5404();
  if (v37)
  {
    return sub_275A5FE04(v28, &qword_280A25688, &unk_275AEEA50);
  }

  sub_275A5F510(v28, v36, &qword_280A25688, &unk_275AEEA50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_275A5FE04(v28, &qword_280A25688, &unk_275AEEA50);
    return sub_275A5FE04(v36, &qword_280A25688, &unk_275AEEA50);
  }

  else
  {
    v39 = v43;
    sub_275A9ED50(v36, v43, type metadata accessor for DeleteDaemonStateResponse);
    if (v32 != 1)
    {
      sub_275AE5354();
    }

    sub_275A5FE04(v28, &qword_280A25688, &unk_275AEEA50);
    v40 = v42;
    sub_275A5FE04(v42, &qword_280A24E60, "\by");
    sub_275A9ED50(v39, v40, type metadata accessor for DeleteDaemonStateResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t SubscriptionClientResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_275A5F510(v3, &v15 - v10, &qword_280A24E60, "\by");
  v12 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_275AD3F54(v3, a1, a2, a3);
        goto LABEL_28;
      case 2u:
        sub_275AD418C(v3, a1, a2, a3);
        goto LABEL_28;
      case 3u:
        sub_275AD43C4(v3, a1, a2, a3);
        goto LABEL_28;
      case 4u:
        sub_275AD45FC(v3, a1, a2, a3);
        goto LABEL_28;
      case 5u:
        sub_275AD4834(v3, a1, a2, a3);
        goto LABEL_28;
      case 6u:
        sub_275AD4A6C(v3, a1, a2, a3);
        goto LABEL_28;
      case 7u:
        sub_275AD4CA4(v3, a1, a2, a3);
        goto LABEL_28;
      case 8u:
        sub_275AD4EDC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 9u:
        sub_275AD5114(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xAu:
        sub_275AD534C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xBu:
        sub_275AD5584(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xCu:
        sub_275AD57BC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xDu:
        sub_275AD59F4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xEu:
        sub_275AD5C2C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0xFu:
        sub_275AD5E64(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      case 0x10u:
        sub_275AD609C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        }

        goto LABEL_8;
      case 0x11u:
        sub_275AD62D4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        }

LABEL_8:
        sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        break;
      default:
        sub_275AD3D20(v3, a1, a2, a3);
LABEL_28:
        result = sub_275A9FCE4(v11, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v13 = v3 + *(type metadata accessor for SubscriptionClientResponse(0) + 20);
  return sub_275AE5284();
}

uint64_t sub_275AD3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ErrorResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ErrorResponse);
    sub_275ADD244(&qword_280A24E58, type metadata accessor for ErrorResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ErrorResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for PingResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for PingResponse);
    sub_275ADD244(&qword_280A250A0, type metadata accessor for PingResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for PingResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NewOfferResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NewOfferResponse);
    sub_275ADD244(&qword_280A25070, type metadata accessor for NewOfferResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NewOfferResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD43C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeaturesResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for FeaturesResponse);
    sub_275ADD244(&qword_280A250E0, type metadata accessor for FeaturesResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for FeaturesResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  StateResponse = type metadata accessor for GetStateResponse(0);
  v10 = *(*(StateResponse - 8) + 64);
  MEMORY[0x28223BE20](StateResponse);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for GetStateResponse);
    sub_275ADD244(&qword_280A25110, type metadata accessor for GetStateResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for GetStateResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DataResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DataResponse);
    sub_275ADD244(&qword_280A25140, type metadata accessor for DataResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DataResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NotificationPendingResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NotificationPendingResponse);
    sub_275ADD244(&qword_280A25170, type metadata accessor for NotificationPendingResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NotificationPendingResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SetCliActivityResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for SetCliActivityResponse);
    sub_275ADD244(&qword_280A251D0, type metadata accessor for SetCliActivityResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for SetCliActivityResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DisplayDelayedOfferResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DisplayDelayedOfferResponse);
    sub_275ADD244(&qword_280A25260, type metadata accessor for DisplayDelayedOfferResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DisplayDelayedOfferResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityStatusResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityStatusResponse);
    sub_275ADD244(&qword_280A25290, type metadata accessor for ActivityStatusResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityStatusResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityClearResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityClearResponse);
    sub_275ADD244(&qword_280A252E8, type metadata accessor for ActivityClearResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityClearResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  v10 = *(*(BiomeStreamResponse - 8) + 64);
  MEMORY[0x28223BE20](BiomeStreamResponse);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for GetBiomeStreamResponse);
    sub_275ADD244(&qword_280A25318, type metadata accessor for GetBiomeStreamResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for GetBiomeStreamResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD57BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NotificationStateWriteResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for NotificationStateWriteResponse);
    sub_275ADD244(&qword_280A251A0, type metadata accessor for NotificationStateWriteResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for NotificationStateWriteResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ActivityHistoryResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ActivityHistoryResponse);
    sub_275ADD244(&qword_280A25348, type metadata accessor for ActivityHistoryResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ActivityHistoryResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for MobileAssetDownloadResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetDownloadResponse);
    sub_275ADD244(&qword_280A25200, type metadata accessor for MobileAssetDownloadResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for MobileAssetDownloadResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ShadowEvaluationResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for ShadowEvaluationResponse);
    sub_275ADD244(&qword_280A25378, type metadata accessor for ShadowEvaluationResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for ShadowEvaluationResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  v10 = *(*(VersionResponse - 8) + 64);
  MEMORY[0x28223BE20](VersionResponse);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for MobileAssetGetVersionResponse);
    sub_275ADD244(&qword_280A25230, type metadata accessor for MobileAssetGetVersionResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for MobileAssetGetVersionResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DeleteDaemonStateResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A5F510(a1, v8, &qword_280A24E60, "\by");
  v13 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_275A5FE04(v8, &qword_280A24E60, "\by");
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_275A9ED50(v8, v12, type metadata accessor for DeleteDaemonStateResponse);
    sub_275ADD244(&qword_281410AD0, type metadata accessor for DeleteDaemonStateResponse);
    sub_275AE5534();
    return sub_275A9FCE4(v12, type metadata accessor for DeleteDaemonStateResponse);
  }

  result = sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_275AD6558(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_275AE5B54();
  a1(0);
  sub_275ADD244(a2, a3);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275AD65F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_275AD66B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275ADD244(&qword_280A254A8, type metadata accessor for SubscriptionClientResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275AD6758()
{
  sub_275ADD244(&qword_281411B18, type metadata accessor for SubscriptionClientResponse);

  return sub_275AE5464();
}

uint64_t sub_275AD67C4()
{
  sub_275ADD244(&qword_281411B18, type metadata accessor for SubscriptionClientResponse);

  return sub_275AE5474();
}

uint64_t _s31iCloudSubscriptionOptimizerCore29NotificationStateWriteRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E8, &qword_275AE7E08);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for NotificationStateWriteRequest(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_275A5F510(a1 + v17, v16, &qword_280A24660, &qword_275AEAC60);
  sub_275A5F510(a2 + v17, &v16[v18], &qword_280A24660, &qword_275AEAC60);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24660, &qword_275AEAC60);
LABEL_9:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v20 = sub_275AE5664();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v16, v11, &qword_280A24660, &qword_275AEAC60);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_275A9FCE4(v11, type metadata accessor for NotificationState);
LABEL_6:
    sub_275A5FE04(v16, &qword_280A246E8, &qword_275AE7E08);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_275A9ED50(&v16[v18], v24[0], type metadata accessor for NotificationState);
  v22 = static NotificationState.== infix(_:_:)(v11, v21);
  sub_275A9FCE4(v21, type metadata accessor for NotificationState);
  sub_275A9FCE4(v11, type metadata accessor for NotificationState);
  sub_275A5FE04(v16, &qword_280A24660, &qword_275AEAC60);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore27NotificationPendingResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationPendingResponse(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AD6C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
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

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore26DisplayDelayedOfferRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v5 = *(v4 + 20);
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
      v12 = sub_275AE5AC4();
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

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore24ShadowEvaluationResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShadowEvaluationResponse(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  if (sub_275A9515C(*a1, *a2) & 1) != 0 && (sub_275A9515C(a1[1], a2[1]))
  {
    v8 = *(v4 + 24);
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore24DeleteDaemonStateRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DeleteDaemonStateRequest(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      return sub_275AE5664() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 <= 1)
      {
        if (v11)
        {
          if (v10 == 1)
          {
            goto LABEL_3;
          }
        }

        else if (!v10)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 2)
      {
        if (v10 == 2)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 3)
      {
        if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v10 == 4)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore23ShadowEvaluationRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShadowEvaluationRequest(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
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
      return 0;
    }
  }

  v28 = v4;
  if ((sub_275A9515C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v29 = v28[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  v33 = v28[5];
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore23ActivityHistoryResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemActivityHistory_File(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E88, &qword_275AEAC68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25720, &unk_275AEEB00);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for ActivityHistoryResponse(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  sub_275A5F510(a1 + v17, v16, &qword_280A24E88, &qword_275AEAC68);
  sub_275A5F510(a2 + v17, &v16[v18], &qword_280A24E88, &qword_275AEAC68);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_275A5F510(v16, v11, &qword_280A24E88, &qword_275AEAC68);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v27[0];
      sub_275A9ED50(&v16[v18], v27[0], type metadata accessor for SystemActivityHistory_File);
      if (sub_275A95248(*v11, *v24))
      {
        v25 = *(v4 + 20);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        v26 = sub_275AE5664();
        sub_275A9FCE4(v24, type metadata accessor for SystemActivityHistory_File);
        sub_275A9FCE4(v11, type metadata accessor for SystemActivityHistory_File);
        sub_275A5FE04(v16, &qword_280A24E88, &qword_275AEAC68);
        if (v26)
        {
          goto LABEL_4;
        }

LABEL_9:
        v20 = 0;
        return v20 & 1;
      }

      sub_275A9FCE4(v24, type metadata accessor for SystemActivityHistory_File);
      sub_275A9FCE4(v11, type metadata accessor for SystemActivityHistory_File);
      v21 = &qword_280A24E88;
      v22 = &qword_275AEAC68;
LABEL_8:
      sub_275A5FE04(v16, v21, v22);
      goto LABEL_9;
    }

    sub_275A9FCE4(v11, type metadata accessor for SystemActivityHistory_File);
LABEL_7:
    v21 = &qword_280A25720;
    v22 = &unk_275AEEB00;
    goto LABEL_8;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_275A5FE04(v16, &qword_280A24E88, &qword_275AEAC68);
LABEL_4:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  v20 = sub_275AE5664();
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore22SetCliActivityResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CliActivityState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E0, &qword_275AE7E00);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for SetCliActivityResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_275A5F510(a1 + v17, v16, &qword_280A24668, &qword_275AE7970);
  sub_275A5F510(a2 + v17, &v16[v18], &qword_280A24668, &qword_275AE7970);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24668, &qword_275AE7970);
LABEL_9:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v20 = sub_275AE5664();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v16, v11, &qword_280A24668, &qword_275AE7970);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_275A9FCE4(v11, type metadata accessor for CliActivityState);
LABEL_6:
    sub_275A5FE04(v16, &qword_280A246E0, &qword_275AE7E00);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_275A9ED50(&v16[v18], v24[0], type metadata accessor for CliActivityState);
  v22 = static CliActivityState.== infix(_:_:)(v11, v21);
  sub_275A9FCE4(v21, type metadata accessor for CliActivityState);
  sub_275A9FCE4(v11, type metadata accessor for CliActivityState);
  sub_275A5FE04(v16, &qword_280A24668, &qword_275AE7970);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore22ActivityStatusResponseV0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStatusResponse.Activity.Criteria(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA8, &qword_275AEA468);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for ActivityStatusResponse.Activity(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_31;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_275AE5AC4();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_31;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 9);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 9);
  if (v28)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v30)
    {
      goto LABEL_31;
    }

    v36 = *v27;
    v37 = *v29;
    if (v29[1])
    {
      if (v37)
      {
        if (v37 == 1)
        {
          if (v36 != 1)
          {
            goto LABEL_31;
          }
        }

        else if (v36 != 2)
        {
          goto LABEL_31;
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }
    }

    else if (v36 != v37)
    {
      goto LABEL_31;
    }
  }

  v31 = v17[7];
  v32 = *(v13 + 48);
  sub_275A5F510(a1 + v31, v16, &qword_280A24DA0, &qword_275AEA460);
  v33 = a2 + v31;
  v34 = v32;
  sub_275A5F510(v33, &v16[v32], &qword_280A24DA0, &qword_275AEA460);
  v35 = *(v5 + 48);
  if (v35(v16, 1, v4) != 1)
  {
    sub_275A5F510(v16, v12, &qword_280A24DA0, &qword_275AEA460);
    if (v35(&v16[v34], 1, v4) == 1)
    {
      sub_275A9FCE4(v12, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
      goto LABEL_23;
    }

    sub_275A9ED50(&v16[v34], v8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    v38 = sub_275AD7DF4(v12, v8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A9FCE4(v8, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A9FCE4(v12, type metadata accessor for ActivityStatusResponse.Activity.Criteria);
    sub_275A5FE04(v16, &qword_280A24DA0, &qword_275AEA460);
    if (v38)
    {
      goto LABEL_27;
    }

LABEL_31:
    v39 = 0;
    return v39 & 1;
  }

  if (v35(&v16[v34], 1, v4) != 1)
  {
LABEL_23:
    sub_275A5FE04(v16, &qword_280A24DA8, &qword_275AEA468);
    goto LABEL_31;
  }

  sub_275A5FE04(v16, &qword_280A24DA0, &qword_275AEA460);
LABEL_27:
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  v39 = sub_275AE5664();
  return v39 & 1;
}

uint64_t sub_275AD7DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore21GetBiomeStreamRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v5 = BiomeStreamRequest[5];
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

  v10 = BiomeStreamRequest[6];
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

  v15 = BiomeStreamRequest[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 9);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 9);
  if ((v17 & 1) == 0)
  {
    if (v19)
    {
      return 0;
    }

    v21 = *v16;
    v22 = *v18;
    if (v18[1])
    {
      if (!v22)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        return 0;
      }

      if (v22 == 1)
      {
        if (v21 != 1)
        {
          return 0;
        }
      }

      else if (v21 != 2)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }

LABEL_15:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  if (v19)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore20ActivityClearRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityClearRequest(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16NewOfferResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for NewOfferResponse(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 9);
  v21 = a2 + v18;
  v22 = *(a2 + v18 + 9);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_24;
    }

    v28 = *v19;
    v29 = *v21;
    if (*(v21 + 8))
    {
      if (v29 <= 2)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            if (v28 != 1)
            {
              goto LABEL_24;
            }
          }

          else if (v28 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v28)
        {
          goto LABEL_24;
        }
      }

      else if (v29 > 4)
      {
        if (v29 == 5)
        {
          if (v28 != 5)
          {
            goto LABEL_24;
          }
        }

        else if (v28 != 6)
        {
          goto LABEL_24;
        }
      }

      else if (v29 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_24;
        }
      }

      else if (v28 != 4)
      {
        goto LABEL_24;
      }
    }

    else if (v28 != v29)
    {
      goto LABEL_24;
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
      goto LABEL_24;
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
      goto LABEL_24;
    }
  }

  v30 = v17[7];
  v31 = a1;
  v32 = *(v13 + 48);
  v47 = v31;
  v48 = v17;
  sub_275A5F510(v31 + v30, v16, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(a2 + v30, &v16[v32], &qword_280A24658, &unk_275AE7960);
  v33 = *(v5 + 48);
  if (v33(v16, 1, v4) != 1)
  {
    sub_275A5F510(v16, v12, &qword_280A24658, &unk_275AE7960);
    if (v33(&v16[v32], 1, v4) != 1)
    {
      sub_275A9ED50(&v16[v32], v8, type metadata accessor for QuotaServerState);
      v36 = static QuotaServerState.== infix(_:_:)(v12, v8);
      sub_275A9FCE4(v8, type metadata accessor for QuotaServerState);
      sub_275A9FCE4(v12, type metadata accessor for QuotaServerState);
      sub_275A5FE04(v16, &qword_280A24658, &unk_275AE7960);
      if ((v36 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    sub_275A9FCE4(v12, type metadata accessor for QuotaServerState);
LABEL_23:
    sub_275A5FE04(v16, &qword_280A246F0, qword_275AE7E10);
    goto LABEL_24;
  }

  if (v33(&v16[v32], 1, v4) != 1)
  {
    goto LABEL_23;
  }

  sub_275A5FE04(v16, &qword_280A24658, &unk_275AE7960);
LABEL_31:
  v37 = v48[8];
  v38 = (v47 + v37);
  v39 = *(v47 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_24;
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
      goto LABEL_24;
    }
  }

  v42 = v48[9];
  v43 = (v47 + v42);
  v44 = *(v47 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_55:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    v34 = sub_275AE5664();
    return v34 & 1;
  }

  if (!v46)
  {
    goto LABEL_55;
  }

LABEL_24:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16GetStateResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31[0] = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E80, &qword_275AEAC58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25728, &unk_275AEEB10);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = *(type metadata accessor for GetStateResponse(0) + 20);
  v18 = *(v13 + 56);
  v31[1] = a1;
  sub_275A5F510(a1 + v17, v16, &qword_280A24E80, &qword_275AEAC58);
  sub_275A5F510(a2 + v17, &v16[v18], &qword_280A24E80, &qword_275AEAC58);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_275A5FE04(v16, &qword_280A24E80, &qword_275AEAC58);
LABEL_12:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v22 = sub_275AE5664();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v16, v11, &qword_280A24E80, &qword_275AEAC58);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_275A9FCE4(v11, type metadata accessor for DaemonState);
LABEL_6:
    v20 = &qword_280A25728;
    v21 = &unk_275AEEB10;
LABEL_7:
    sub_275A5FE04(v16, v20, v21);
    goto LABEL_8;
  }

  v23 = v31[0];
  sub_275A9ED50(&v16[v18], v31[0], type metadata accessor for DaemonState);
  v24 = *(v4 + 20);
  v25 = *&v11[v24];
  v26 = *(v23 + v24);
  if (v25 != v26)
  {
    v27 = *&v11[v24];

    v28 = sub_275A5D96C(v25, v26);

    if (!v28)
    {
      sub_275A9FCE4(v23, type metadata accessor for DaemonState);
      sub_275A9FCE4(v11, type metadata accessor for DaemonState);
      v20 = &qword_280A24E80;
      v21 = &qword_275AEAC58;
      goto LABEL_7;
    }
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  v29 = sub_275AE5664();
  sub_275A9FCE4(v23, type metadata accessor for DaemonState);
  sub_275A9FCE4(v11, type metadata accessor for DaemonState);
  sub_275A5FE04(v16, &qword_280A24E80, &qword_275AEAC58);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore16FeaturesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FeaturesResponse(0);
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

  if (sub_275A9701C(*a1, *a2))
  {
    v10 = *(v4 + 20);
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore15NewOfferRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v58 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  v11 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v13 = &v58 - v12;
  v14 = type metadata accessor for LitmusInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F8, &qword_275AEEB30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v58 - v25;
  v27 = type metadata accessor for NewOfferRequest(0);
  v28 = *(v27 + 20);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_14;
    }
  }

  v58 = v7;
  v59 = v13;
  v33 = *(v27 + 24);
  v34 = *(v23 + 48);
  v60 = a1;
  v61 = v27;
  sub_275A5F510(a1 + v33, v26, &qword_280A24650, &qword_275AEAC50);
  v35 = a2 + v33;
  v36 = a2;
  sub_275A5F510(v35, &v26[v34], &qword_280A24650, &qword_275AEAC50);
  v37 = *(v15 + 48);
  if (v37(v26, 1, v14) == 1)
  {
    if (v37(&v26[v34], 1, v14) == 1)
    {
      sub_275A5FE04(v26, &qword_280A24650, &qword_275AEAC50);
      goto LABEL_17;
    }

LABEL_12:
    v38 = &qword_280A246F8;
    v39 = &qword_275AEEB30;
    v40 = v26;
LABEL_13:
    sub_275A5FE04(v40, v38, v39);
    goto LABEL_14;
  }

  sub_275A5F510(v26, v22, &qword_280A24650, &qword_275AEAC50);
  if (v37(&v26[v34], 1, v14) == 1)
  {
    sub_275A9FCE4(v22, type metadata accessor for LitmusInfo);
    goto LABEL_12;
  }

  sub_275A9ED50(&v26[v34], v18, type metadata accessor for LitmusInfo);
  v43 = static LitmusInfo.== infix(_:_:)(v22, v18);
  sub_275A9FCE4(v18, type metadata accessor for LitmusInfo);
  sub_275A9FCE4(v22, type metadata accessor for LitmusInfo);
  sub_275A5FE04(v26, &qword_280A24650, &qword_275AEAC50);
  if ((v43 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v44 = *(v61 + 28);
  v45 = (v60 + v44);
  v46 = *(v60 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if (v46)
  {
    v49 = v59;
    if (!v48)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    v49 = v59;
    if (v48)
    {
      goto LABEL_14;
    }
  }

  v50 = *(v61 + 32);
  v51 = *(v63 + 48);
  sub_275A5F510(v60 + v50, v49, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(v36 + v50, v49 + v51, &qword_280A24658, &unk_275AE7960);
  v52 = v65;
  v53 = *(v64 + 48);
  if (v53(v49, 1, v65) == 1)
  {
    if (v53(v49 + v51, 1, v52) == 1)
    {
      sub_275A5FE04(v49, &qword_280A24658, &unk_275AE7960);
LABEL_30:
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v41 = sub_275AE5664();
      return v41 & 1;
    }

    goto LABEL_28;
  }

  v54 = v62;
  sub_275A5F510(v49, v62, &qword_280A24658, &unk_275AE7960);
  if (v53(v49 + v51, 1, v52) == 1)
  {
    sub_275A9FCE4(v54, type metadata accessor for QuotaServerState);
LABEL_28:
    v38 = &qword_280A246F0;
    v39 = qword_275AE7E10;
    v40 = v49;
    goto LABEL_13;
  }

  v55 = v49 + v51;
  v56 = v58;
  sub_275A9ED50(v55, v58, type metadata accessor for QuotaServerState);
  v57 = static QuotaServerState.== infix(_:_:)(v54, v56);
  sub_275A9FCE4(v56, type metadata accessor for QuotaServerState);
  sub_275A9FCE4(v54, type metadata accessor for QuotaServerState);
  sub_275A5FE04(v49, &qword_280A24658, &unk_275AE7960);
  if (v57)
  {
    goto LABEL_30;
  }

LABEL_14:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore15FeaturesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FeaturesRequest(0);
  v5 = *(v4 + 28);
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

  if (sub_275A9515C(*a1, *a2) & 1) != 0 && (sub_275A9515C(a1[1], a2[1]))
  {
    v10 = *(v4 + 24);
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore14FeatureDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDetails(0);
  v5 = *(v4 + 20);
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
      v12 = sub_275AE5AC4();
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

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_275AE5AC4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore12DataResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_275A9515C(*a1, *a2) & 1) == 0 || (sub_275A9515C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DataResponse(0);
  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[8];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v12 = v4[6];
  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275AD9540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_275AE5AC4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_275AE52A4();
    sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore11DataRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataRequest(0);
  v5 = v4[5];
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

  v10 = v4[6];
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

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
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
      return 0;
    }
  }

  v28 = v4[10];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      return 0;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v31 = v4[11];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24E60, "\by");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A255F8, "\b>");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_275A5F510(a1, &v24 - v16, &qword_280A24E60, "\by");
  sub_275A5F510(a2, &v17[v18], &qword_280A24E60, "\by");
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_275A5FE04(v17, &qword_280A24E60, "\by");
LABEL_9:
      v22 = *(type metadata accessor for SubscriptionClientResponse(0) + 20);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v20 = sub_275AE5664();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v17, v12, &qword_280A24E60, "\by");
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_275A9FCE4(v12, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
LABEL_6:
    sub_275A5FE04(v17, &qword_280A255F8, "\b>");
    goto LABEL_7;
  }

  sub_275A9ED50(&v17[v18], v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  v21 = _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
  sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  sub_275A9FCE4(v12, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  sub_275A5FE04(v17, &qword_280A24E60, "\by");
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B14ClientResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v210 = a2;
  v211 = a1;
  v195 = type metadata accessor for DeleteDaemonStateResponse(0);
  v2 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v197 = (&v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  VersionResponse = type metadata accessor for MobileAssetGetVersionResponse(0);
  v4 = *(*(VersionResponse - 8) + 64);
  MEMORY[0x28223BE20](VersionResponse);
  v196 = (&v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ShadowEvaluationResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v192 = (&v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = type metadata accessor for MobileAssetDownloadResponse(0);
  v9 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v194 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityHistoryResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v188 = (&v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NotificationStateWriteResponse(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v190 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  BiomeStreamResponse = type metadata accessor for GetBiomeStreamResponse(0);
  v17 = *(*(BiomeStreamResponse - 8) + 64);
  MEMORY[0x28223BE20](BiomeStreamResponse);
  v189 = (&v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ActivityClearResponse(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v187 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ActivityStatusResponse(0);
  v22 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v186 = (&v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for DisplayDelayedOfferResponse(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v185 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SetCliActivityResponse(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v184 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for NotificationPendingResponse(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v183 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DataResponse(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v182 = (&v173 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  StateResponse = type metadata accessor for GetStateResponse(0);
  v37 = *(*(StateResponse - 8) + 64);
  MEMORY[0x28223BE20](StateResponse - 8);
  v180 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FeaturesResponse(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v179 = (&v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for NewOfferResponse(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v178 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for PingResponse(0);
  v45 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v181 = (&v173 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = type metadata accessor for ErrorResponse(0);
  v47 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v176 = (&v173 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for SubscriptionClientResponse.OneOf_Type(0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v209 = (&v173 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x28223BE20](v51);
  v208 = (&v173 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v205 = (&v173 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v207 = (&v173 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v202 = (&v173 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v203 = (&v173 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v206 = (&v173 - v64);
  v65 = MEMORY[0x28223BE20](v63);
  v201 = (&v173 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v204 = (&v173 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v200 = (&v173 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v198 = &v173 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = &v173 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = (&v173 - v77);
  v79 = MEMORY[0x28223BE20](v76);
  v81 = &v173 - v80;
  v82 = MEMORY[0x28223BE20](v79);
  v84 = (&v173 - v83);
  v85 = MEMORY[0x28223BE20](v82);
  v87 = &v173 - v86;
  v88 = MEMORY[0x28223BE20](v85);
  v199 = (&v173 - v89);
  MEMORY[0x28223BE20](v88);
  v91 = (&v173 - v90);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25730, &unk_275AEEB20);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x28223BE20](v92 - 8);
  v96 = &v173 - v95;
  v97 = *(v94 + 56);
  sub_275A9FC7C(v211, &v173 - v95, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  v211 = v97;
  sub_275A9FC7C(v210, &v96[v97], type metadata accessor for SubscriptionClientResponse.OneOf_Type);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = v199;
      sub_275A9FC7C(v96, v199, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v137 = v211;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v99 = type metadata accessor for PingResponse;
        goto LABEL_83;
      }

      v101 = v181;
      sub_275A9ED50(&v96[v137], v181, type metadata accessor for PingResponse);
      v138 = *(v177 + 20);
      v139 = (v91 + v138);
      v140 = *(v91 + v138 + 8);
      v141 = (v101 + v138);
      v142 = v141[1];
      if (v140)
      {
        if (!v142 || (*v139 != *v141 || v140 != v142) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      else if (v142)
      {
LABEL_106:
        v159 = type metadata accessor for PingResponse;
        goto LABEL_117;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      if (sub_275AE5664())
      {
        v116 = type metadata accessor for PingResponse;
        goto LABEL_114;
      }

      goto LABEL_106;
    case 2u:
      sub_275A9FC7C(v96, v87, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v127 = v211;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v128 = v178;
        sub_275A9ED50(&v96[v127], v178, type metadata accessor for NewOfferResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16NewOfferResponseV2eeoiySbAC_ACtFZ_0(v87, v128);
        sub_275A9FCE4(v128, type metadata accessor for NewOfferResponse);
        v121 = v87;
        v129 = type metadata accessor for NewOfferResponse;
        goto LABEL_64;
      }

      v156 = type metadata accessor for NewOfferResponse;
      v157 = v87;
      goto LABEL_84;
    case 3u:
      sub_275A9FC7C(v96, v84, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v132 = v211;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v133 = v179;
        sub_275A9ED50(&v96[v132], v179, type metadata accessor for FeaturesResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16FeaturesResponseV2eeoiySbAC_ACtFZ_0(v84, v133);
        v120 = type metadata accessor for FeaturesResponse;
        sub_275A9FCE4(v133, type metadata accessor for FeaturesResponse);
        v121 = v84;
        goto LABEL_63;
      }

      v156 = type metadata accessor for FeaturesResponse;
      v157 = v84;
      goto LABEL_84;
    case 4u:
      sub_275A9FC7C(v96, v81, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v117 = v211;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v118 = v180;
        sub_275A9ED50(&v96[v117], v180, type metadata accessor for GetStateResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore16GetStateResponseV2eeoiySbAC_ACtFZ_0(v81, v118);
        v120 = type metadata accessor for GetStateResponse;
        sub_275A9FCE4(v118, type metadata accessor for GetStateResponse);
        v121 = v81;
        goto LABEL_63;
      }

      v156 = type metadata accessor for GetStateResponse;
      v157 = v81;
      goto LABEL_84;
    case 5u:
      sub_275A9FC7C(v96, v78, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v149 = v211;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v150 = v182;
        sub_275A9ED50(&v96[v149], v182, type metadata accessor for DataResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore12DataResponseV2eeoiySbAC_ACtFZ_0(v78, v150);
        v120 = type metadata accessor for DataResponse;
        sub_275A9FCE4(v150, type metadata accessor for DataResponse);
        v121 = v78;
        goto LABEL_63;
      }

      v156 = type metadata accessor for DataResponse;
      v157 = v78;
      goto LABEL_84;
    case 6u:
      sub_275A9FC7C(v96, v75, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v153 = v211;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v135 = v183;
        sub_275A9ED50(&v96[v153], v183, type metadata accessor for NotificationPendingResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore27NotificationPendingResponseV2eeoiySbAC_ACtFZ_0(v75, v135);
        v136 = type metadata accessor for NotificationPendingResponse;
        goto LABEL_56;
      }

      v158 = type metadata accessor for NotificationPendingResponse;
      goto LABEL_80;
    case 7u:
      v75 = v198;
      sub_275A9FC7C(v96, v198, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v134 = v211;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v135 = v184;
        sub_275A9ED50(&v96[v134], v184, type metadata accessor for SetCliActivityResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore22SetCliActivityResponseV2eeoiySbAC_ACtFZ_0(v75, v135);
        v136 = type metadata accessor for SetCliActivityResponse;
LABEL_56:
        v120 = v136;
        sub_275A9FCE4(v135, v136);
        v121 = v75;
        goto LABEL_63;
      }

      v158 = type metadata accessor for SetCliActivityResponse;
LABEL_80:
      v156 = v158;
      v157 = v75;
      goto LABEL_84;
    case 8u:
      v91 = v200;
      sub_275A9FC7C(v96, v200, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v155 = v211;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v123 = v185;
        sub_275A9ED50(&v96[v155], v185, type metadata accessor for DisplayDelayedOfferResponse);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v124 = type metadata accessor for DisplayDelayedOfferResponse;
        goto LABEL_61;
      }

      v99 = type metadata accessor for DisplayDelayedOfferResponse;
      goto LABEL_83;
    case 9u:
      v91 = v204;
      sub_275A9FC7C(v96, v204, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v125 = v211;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v99 = type metadata accessor for ActivityStatusResponse;
        goto LABEL_83;
      }

      v101 = v186;
      sub_275A9ED50(&v96[v125], v186, type metadata accessor for ActivityStatusResponse);
      if (sub_275A96938(*v91, *v101))
      {
        v126 = *(v173 + 20);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        if (sub_275AE5664())
        {
          v116 = type metadata accessor for ActivityStatusResponse;
          goto LABEL_114;
        }
      }

      v159 = type metadata accessor for ActivityStatusResponse;
      goto LABEL_117;
    case 0xAu:
      v91 = v201;
      sub_275A9FC7C(v96, v201, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v154 = v211;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v123 = v187;
        sub_275A9ED50(&v96[v154], v187, type metadata accessor for ActivityClearResponse);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v124 = type metadata accessor for ActivityClearResponse;
        goto LABEL_61;
      }

      v99 = type metadata accessor for ActivityClearResponse;
      goto LABEL_83;
    case 0xBu:
      v91 = v206;
      sub_275A9FC7C(v96, v206, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v114 = v211;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v99 = type metadata accessor for GetBiomeStreamResponse;
        goto LABEL_83;
      }

      v101 = v189;
      sub_275A9ED50(&v96[v114], v189, type metadata accessor for GetBiomeStreamResponse);
      if (sub_275A9515C(*v91, *v101))
      {
        v115 = *(BiomeStreamResponse + 20);
        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        if (sub_275AE5664())
        {
          v116 = type metadata accessor for GetBiomeStreamResponse;
          goto LABEL_114;
        }
      }

      v159 = type metadata accessor for GetBiomeStreamResponse;
      goto LABEL_117;
    case 0xCu:
      v91 = v203;
      sub_275A9FC7C(v96, v203, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v122 = v211;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v99 = type metadata accessor for NotificationStateWriteResponse;
        goto LABEL_83;
      }

      v123 = v190;
      sub_275A9ED50(&v96[v122], v190, type metadata accessor for NotificationStateWriteResponse);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      StateResponseV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
      v124 = type metadata accessor for NotificationStateWriteResponse;
LABEL_61:
      v120 = v124;
      v152 = v123;
      goto LABEL_62;
    case 0xDu:
      v91 = v202;
      sub_275A9FC7C(v96, v202, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v151 = v211;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v131 = v188;
        sub_275A9ED50(&v96[v151], v188, type metadata accessor for ActivityHistoryResponse);
        StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore23ActivityHistoryResponseV2eeoiySbAC_ACtFZ_0(v91, v131);
        v124 = type metadata accessor for ActivityHistoryResponse;
        goto LABEL_53;
      }

      v99 = type metadata accessor for ActivityHistoryResponse;
      goto LABEL_83;
    case 0xEu:
      v91 = v207;
      sub_275A9FC7C(v96, v207, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v107 = v211;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v99 = type metadata accessor for MobileAssetDownloadResponse;
        goto LABEL_83;
      }

      v108 = v194;
      sub_275A9ED50(&v96[v107], v194, type metadata accessor for MobileAssetDownloadResponse);
      v109 = *(v191 + 20);
      v110 = (v91 + v109);
      v111 = *(v91 + v109 + 8);
      v112 = (v108 + v109);
      v113 = *(v108 + v109 + 8);
      if (v111)
      {
        if (!v113)
        {
LABEL_14:
          sub_275A9FCE4(v108, type metadata accessor for MobileAssetDownloadResponse);
          goto LABEL_98;
        }
      }

      else
      {
        if (*v110 != *v112)
        {
          LOBYTE(v113) = 1;
        }

        if (v113)
        {
          goto LABEL_14;
        }
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v165 = sub_275AE5664();
      sub_275A9FCE4(v108, type metadata accessor for MobileAssetDownloadResponse);
      if (v165)
      {
        v166 = type metadata accessor for MobileAssetDownloadResponse;
        v167 = v91;
        goto LABEL_115;
      }

LABEL_98:
      v168 = type metadata accessor for MobileAssetDownloadResponse;
      v169 = v91;
LABEL_118:
      sub_275A9FCE4(v169, v168);
      sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
LABEL_119:
      StateResponseV2eeoiySbAC_ACtFZ_0 = 0;
      return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
    case 0xFu:
      v91 = v205;
      sub_275A9FC7C(v96, v205, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v130 = v211;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v99 = type metadata accessor for ShadowEvaluationResponse;
        goto LABEL_83;
      }

      v131 = v192;
      sub_275A9ED50(&v96[v130], v192, type metadata accessor for ShadowEvaluationResponse);
      StateResponseV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore24ShadowEvaluationResponseV2eeoiySbAC_ACtFZ_0(v91, v131);
      v124 = type metadata accessor for ShadowEvaluationResponse;
LABEL_53:
      v120 = v124;
      v152 = v131;
LABEL_62:
      sub_275A9FCE4(v152, v124);
      v121 = v91;
LABEL_63:
      v129 = v120;
LABEL_64:
      sub_275A9FCE4(v121, v129);
      sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
    case 0x10u:
      v91 = v208;
      sub_275A9FC7C(v96, v208, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v100 = v211;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v99 = type metadata accessor for MobileAssetGetVersionResponse;
        goto LABEL_83;
      }

      v101 = v196;
      sub_275A9ED50(&v96[v100], v196, type metadata accessor for MobileAssetGetVersionResponse);
      v102 = *(VersionResponse + 20);
      v103 = (v91 + v102);
      v104 = *(v91 + v102 + 8);
      v105 = (v101 + v102);
      v106 = v105[1];
      if (v104)
      {
        if (!v106 || (*v103 != *v105 || v104 != v106) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (v106)
      {
        goto LABEL_102;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      if (sub_275AE5664())
      {
        v116 = type metadata accessor for MobileAssetGetVersionResponse;
        goto LABEL_114;
      }

LABEL_102:
      v159 = type metadata accessor for MobileAssetGetVersionResponse;
      goto LABEL_117;
    case 0x11u:
      v91 = v209;
      sub_275A9FC7C(v96, v209, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v143 = v211;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        v99 = type metadata accessor for DeleteDaemonStateResponse;
        goto LABEL_83;
      }

      v101 = v197;
      sub_275A9ED50(&v96[v143], v197, type metadata accessor for DeleteDaemonStateResponse);
      v144 = *(v195 + 20);
      v145 = (v91 + v144);
      v146 = *(v91 + v144 + 8);
      v147 = (v101 + v144);
      v148 = v147[1];
      if (v146)
      {
        if (!v148 || (*v145 != *v147 || v146 != v148) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else if (v148)
      {
        goto LABEL_110;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      if (sub_275AE5664())
      {
        v116 = type metadata accessor for DeleteDaemonStateResponse;
        goto LABEL_114;
      }

LABEL_110:
      v159 = type metadata accessor for DeleteDaemonStateResponse;
      goto LABEL_117;
    default:
      sub_275A9FC7C(v96, v91, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
      v98 = v211;
      if (swift_getEnumCaseMultiPayload())
      {
        v99 = type metadata accessor for ErrorResponse;
LABEL_83:
        v156 = v99;
        v157 = v91;
LABEL_84:
        sub_275A9FCE4(v157, v156);
        sub_275A5FE04(v96, &qword_280A25730, &unk_275AEEB20);
        goto LABEL_119;
      }

      v101 = v176;
      sub_275A9ED50(&v96[v98], v176, type metadata accessor for ErrorResponse);
      v160 = *(v175 + 20);
      v161 = (v91 + v160);
      v162 = *(v91 + v160 + 8);
      v163 = (v101 + v160);
      v164 = v163[1];
      if (v162)
      {
        if (!v164 || (*v161 != *v163 || v162 != v164) && (sub_275AE5AC4() & 1) == 0)
        {
          goto LABEL_116;
        }
      }

      else if (v164)
      {
        goto LABEL_116;
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      if (sub_275AE5664())
      {
        v116 = type metadata accessor for ErrorResponse;
LABEL_114:
        v170 = v116;
        sub_275A9FCE4(v101, v116);
        v167 = v91;
        v166 = v170;
LABEL_115:
        sub_275A9FCE4(v167, v166);
        sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientResponse.OneOf_Type);
        StateResponseV2eeoiySbAC_ACtFZ_0 = 1;
        return StateResponseV2eeoiySbAC_ACtFZ_0 & 1;
      }

LABEL_116:
      v159 = type metadata accessor for ErrorResponse;
LABEL_117:
      v171 = v159;
      sub_275A9FCE4(v101, v159);
      v169 = v91;
      v168 = v171;
      goto LABEL_118;
  }
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C20, &qword_275AEAC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25690, &qword_275AEEA68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_275A5F510(a1, &v24 - v16, &qword_280A24C20, &qword_275AEAC70);
  sub_275A5F510(a2, &v17[v18], &qword_280A24C20, &qword_275AEAC70);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_275A5FE04(v17, &qword_280A24C20, &qword_275AEAC70);
LABEL_9:
      v22 = *(type metadata accessor for SubscriptionClientRequest(0) + 20);
      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v20 = sub_275AE5664();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_275A5F510(v17, v12, &qword_280A24C20, &qword_275AEAC70);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_275A9FCE4(v12, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
LABEL_6:
    sub_275A5FE04(v17, &qword_280A25690, &qword_275AEEA68);
    goto LABEL_7;
  }

  sub_275A9ED50(&v17[v18], v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  v21 = _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
  sub_275A9FCE4(v8, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  sub_275A9FCE4(v12, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  sub_275A5FE04(v17, &qword_280A24C20, &qword_275AEAC70);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore0B13ClientRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v183 = a2;
  v184 = a1;
  v2 = type metadata accessor for DeleteDaemonStateRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v170 = (&v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  VersionRequest = type metadata accessor for MobileAssetGetVersionRequest(0);
  v6 = *(*(VersionRequest - 8) + 64);
  MEMORY[0x28223BE20](VersionRequest - 8);
  v171 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShadowEvaluationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v168 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for MobileAssetDownloadRequest(0);
  v11 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityHistoryRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v167 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NotificationStateWriteRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v165 = (&v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  BiomeStreamRequest = type metadata accessor for GetBiomeStreamRequest(0);
  v20 = *(*(BiomeStreamRequest - 8) + 64);
  MEMORY[0x28223BE20](BiomeStreamRequest - 8);
  v164 = (&v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ActivityClearRequest(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v162 = (&v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for ActivityStatusRequest(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v163 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DisplayDelayedOfferRequest(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v161 = (&v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for SetCliActivityRequest(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v160 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NotificationPendingRequest(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v159 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DataRequest(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v157 = (&v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  StateRequest = type metadata accessor for GetStateRequest(0);
  v41 = *(*(StateRequest - 8) + 64);
  MEMORY[0x28223BE20](StateRequest - 8);
  v158 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FeaturesRequest(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v156 = (&v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for NewOfferRequest(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v155 = &v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for PingRequest(0);
  v49 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SubscriptionClientRequest.OneOf_Type(0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51);
  v180 = (&v152 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x28223BE20](v53);
  v181 = &v152 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v178 = (&v152 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v182 = (&v152 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v179 = &v152 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v177 = (&v152 - v64);
  v65 = MEMORY[0x28223BE20](v63);
  v175 = (&v152 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v174 = (&v152 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v176 = &v152 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v172 = (&v152 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v75 = &v152 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v173 = &v152 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v80 = (&v152 - v79);
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v152 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = (&v152 - v85);
  v87 = MEMORY[0x28223BE20](v84);
  v89 = &v152 - v88;
  MEMORY[0x28223BE20](v87);
  v91 = &v152 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25738, &unk_275AEEB38);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x28223BE20](v92 - 8);
  v96 = &v152 - v95;
  v97 = *(v94 + 56);
  sub_275A9FC7C(v184, &v152 - v95, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  v184 = v97;
  sub_275A9FC7C(v183, &v96[v97], type metadata accessor for SubscriptionClientRequest.OneOf_Type);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_275A9FC7C(v96, v89, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v123 = v184;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v124 = v155;
        sub_275A9ED50(&v96[v123], v155, type metadata accessor for NewOfferRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore15NewOfferRequestV2eeoiySbAC_ACtFZ_0(v89, v124);
        v115 = type metadata accessor for NewOfferRequest;
        sub_275A9FCE4(v124, type metadata accessor for NewOfferRequest);
        v116 = v89;
        goto LABEL_37;
      }

      v139 = type metadata accessor for NewOfferRequest;
      goto LABEL_60;
    case 2u:
      sub_275A9FC7C(v96, v86, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v113 = v184;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v114 = v156;
        sub_275A9ED50(&v96[v113], v156, type metadata accessor for FeaturesRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore15FeaturesRequestV2eeoiySbAC_ACtFZ_0(v86, v114);
        v115 = type metadata accessor for FeaturesRequest;
        sub_275A9FCE4(v114, type metadata accessor for FeaturesRequest);
        v116 = v86;
        goto LABEL_37;
      }

      v99 = type metadata accessor for FeaturesRequest;
      v100 = v86;
      goto LABEL_61;
    case 3u:
      sub_275A9FC7C(v96, v83, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v118 = v184;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v119 = v158;
        sub_275A9ED50(&v96[v118], v158, type metadata accessor for GetStateRequest);
        sub_275AE52A4();
        v110 = v96;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v120 = type metadata accessor for GetStateRequest;
        sub_275A9FCE4(v119, type metadata accessor for GetStateRequest);
        v121 = v83;
        goto LABEL_41;
      }

      v99 = type metadata accessor for GetStateRequest;
      v100 = v83;
      goto LABEL_61;
    case 4u:
      sub_275A9FC7C(v96, v80, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v107 = v184;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v102 = v157;
        sub_275A9ED50(&v96[v107], v157, type metadata accessor for DataRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore11DataRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for DataRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for DataRequest;
      goto LABEL_58;
    case 5u:
      v89 = v173;
      sub_275A9FC7C(v96, v173, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v125 = v184;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v109 = v159;
        sub_275A9ED50(&v96[v125], v159, type metadata accessor for NotificationPendingRequest);
        sub_275AE52A4();
        v110 = v96;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v111 = type metadata accessor for NotificationPendingRequest;
        goto LABEL_40;
      }

      v139 = type metadata accessor for NotificationPendingRequest;
      goto LABEL_60;
    case 6u:
      sub_275A9FC7C(v96, v75, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v133 = v184;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v134 = v160;
        sub_275A9ED50(&v96[v133], v160, type metadata accessor for SetCliActivityRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AD7DF4(v75, v134, type metadata accessor for SetCliActivityRequest);
        v110 = v96;
        sub_275A9FCE4(v134, type metadata accessor for SetCliActivityRequest);
        v121 = v75;
        v135 = type metadata accessor for SetCliActivityRequest;
        goto LABEL_42;
      }

      v99 = type metadata accessor for SetCliActivityRequest;
      v100 = v75;
      goto LABEL_61;
    case 7u:
      v80 = v172;
      sub_275A9FC7C(v96, v172, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v122 = v184;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v102 = v161;
        sub_275A9ED50(&v96[v122], v161, type metadata accessor for DisplayDelayedOfferRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore26DisplayDelayedOfferRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for DisplayDelayedOfferRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for DisplayDelayedOfferRequest;
      goto LABEL_58;
    case 8u:
      v89 = v176;
      sub_275A9FC7C(v96, v176, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v137 = v184;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v109 = v163;
        sub_275A9ED50(&v96[v137], v163, type metadata accessor for ActivityStatusRequest);
        sub_275AE52A4();
        v110 = v96;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v111 = type metadata accessor for ActivityStatusRequest;
        goto LABEL_40;
      }

      v139 = type metadata accessor for ActivityStatusRequest;
      goto LABEL_60;
    case 9u:
      v80 = v174;
      sub_275A9FC7C(v96, v174, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v112 = v184;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v102 = v162;
        sub_275A9ED50(&v96[v112], v162, type metadata accessor for ActivityClearRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore20ActivityClearRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for ActivityClearRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for ActivityClearRequest;
      goto LABEL_58;
    case 0xAu:
      v80 = v175;
      sub_275A9FC7C(v96, v175, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v136 = v184;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v102 = v164;
        sub_275A9ED50(&v96[v136], v164, type metadata accessor for GetBiomeStreamRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore21GetBiomeStreamRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for GetBiomeStreamRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for GetBiomeStreamRequest;
      goto LABEL_58;
    case 0xBu:
      v80 = v177;
      sub_275A9FC7C(v96, v177, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v106 = v184;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v102 = v165;
        sub_275A9ED50(&v96[v106], v165, type metadata accessor for NotificationStateWriteRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore29NotificationStateWriteRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for NotificationStateWriteRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for NotificationStateWriteRequest;
      goto LABEL_58;
    case 0xCu:
      v89 = v179;
      sub_275A9FC7C(v96, v179, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v108 = v184;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v109 = v167;
        sub_275A9ED50(&v96[v108], v167, type metadata accessor for ActivityHistoryRequest);
        sub_275AE52A4();
        v110 = v96;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v111 = type metadata accessor for ActivityHistoryRequest;
        goto LABEL_40;
      }

      v139 = type metadata accessor for ActivityHistoryRequest;
      goto LABEL_60;
    case 0xDu:
      v80 = v182;
      sub_275A9FC7C(v96, v182, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v126 = v184;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v138 = type metadata accessor for MobileAssetDownloadRequest;
        goto LABEL_58;
      }

      v127 = v169;
      sub_275A9ED50(&v96[v126], v169, type metadata accessor for MobileAssetDownloadRequest);
      v128 = *(v166 + 20);
      v129 = (v80 + v128);
      v130 = *(v80 + v128 + 8);
      v131 = (v127 + v128);
      v132 = *(v127 + v128 + 8);
      if (v130)
      {
        if (!v132)
        {
LABEL_31:
          sub_275A9FCE4(v127, type metadata accessor for MobileAssetDownloadRequest);
          goto LABEL_75;
        }
      }

      else
      {
        if (*v129 != *v131)
        {
          LOBYTE(v132) = 1;
        }

        if (v132)
        {
          goto LABEL_31;
        }
      }

      sub_275AE52A4();
      sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
      v147 = sub_275AE5664();
      sub_275A9FCE4(v127, type metadata accessor for MobileAssetDownloadRequest);
      if (v147)
      {
        v148 = type metadata accessor for MobileAssetDownloadRequest;
        v149 = v80;
        goto LABEL_79;
      }

LABEL_75:
      v150 = type metadata accessor for MobileAssetDownloadRequest;
      v151 = v80;
LABEL_81:
      sub_275A9FCE4(v151, v150);
      sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      goto LABEL_62;
    case 0xEu:
      v80 = v178;
      sub_275A9FC7C(v96, v178, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v105 = v184;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v102 = v168;
        sub_275A9ED50(&v96[v105], v168, type metadata accessor for ShadowEvaluationRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore23ShadowEvaluationRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for ShadowEvaluationRequest;
        goto LABEL_36;
      }

      v138 = type metadata accessor for ShadowEvaluationRequest;
      goto LABEL_58;
    case 0xFu:
      v89 = v181;
      sub_275A9FC7C(v96, v181, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v117 = v184;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v109 = v171;
        sub_275A9ED50(&v96[v117], v171, type metadata accessor for MobileAssetGetVersionRequest);
        sub_275AE52A4();
        v110 = v96;
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = sub_275AE5664();
        v111 = type metadata accessor for MobileAssetGetVersionRequest;
LABEL_40:
        v120 = v111;
        sub_275A9FCE4(v109, v111);
        v121 = v89;
LABEL_41:
        v135 = v120;
LABEL_42:
        sub_275A9FCE4(v121, v135);
        sub_275A9FCE4(v110, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v139 = type metadata accessor for MobileAssetGetVersionRequest;
LABEL_60:
      v99 = v139;
      v100 = v89;
      goto LABEL_61;
    case 0x10u:
      v80 = v180;
      sub_275A9FC7C(v96, v180, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v101 = v184;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v102 = v170;
        sub_275A9ED50(&v96[v101], v170, type metadata accessor for DeleteDaemonStateRequest);
        BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = _s31iCloudSubscriptionOptimizerCore24DeleteDaemonStateRequestV2eeoiySbAC_ACtFZ_0(v80, v102);
        v104 = type metadata accessor for DeleteDaemonStateRequest;
LABEL_36:
        v115 = v104;
        sub_275A9FCE4(v102, v104);
        v116 = v80;
LABEL_37:
        sub_275A9FCE4(v116, v115);
        sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
        return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v138 = type metadata accessor for DeleteDaemonStateRequest;
LABEL_58:
      v99 = v138;
      v100 = v80;
      goto LABEL_61;
    default:
      sub_275A9FC7C(v96, v91, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
      v98 = v184;
      if (!swift_getEnumCaseMultiPayload())
      {
        v141 = v154;
        sub_275A9ED50(&v96[v98], v154, type metadata accessor for PingRequest);
        v142 = *(v153 + 20);
        v143 = &v91[v142];
        v144 = *&v91[v142 + 8];
        v145 = (v141 + v142);
        v146 = v145[1];
        if (v144)
        {
          if (!v146 || (*v143 != *v145 || v144 != v146) && (sub_275AE5AC4() & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (v146)
        {
          goto LABEL_80;
        }

        sub_275AE52A4();
        sub_275ADD244(&qword_280A24638, MEMORY[0x277D216C8]);
        if (sub_275AE5664())
        {
          sub_275A9FCE4(v141, type metadata accessor for PingRequest);
          v149 = v91;
          v148 = type metadata accessor for PingRequest;
LABEL_79:
          sub_275A9FCE4(v149, v148);
          sub_275A9FCE4(v96, type metadata accessor for SubscriptionClientRequest.OneOf_Type);
          BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = 1;
          return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
        }

LABEL_80:
        sub_275A9FCE4(v141, type metadata accessor for PingRequest);
        v151 = v91;
        v150 = type metadata accessor for PingRequest;
        goto LABEL_81;
      }

      v99 = type metadata accessor for PingRequest;
      v100 = v91;
LABEL_61:
      sub_275A9FCE4(v100, v99);
      sub_275A5FE04(v96, &qword_280A25738, &unk_275AEEB38);
LABEL_62:
      BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 = 0;
      return BiomeStreamRequestV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_275ADD244(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275ADD290()
{
  result = qword_280A24FE0;
  if (!qword_280A24FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FE0);
  }

  return result;
}

unint64_t sub_275ADD2E8()
{
  result = qword_280A24FE8;
  if (!qword_280A24FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FE8);
  }

  return result;
}

unint64_t sub_275ADD340()
{
  result = qword_280A24FF0;
  if (!qword_280A24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24FF0);
  }

  return result;
}

unint64_t sub_275ADD3C8()
{
  result = qword_280A25008;
  if (!qword_280A25008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25008);
  }

  return result;
}

unint64_t sub_275ADD420()
{
  result = qword_280A25010;
  if (!qword_280A25010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25010);
  }

  return result;
}

unint64_t sub_275ADD478()
{
  result = qword_280A25018;
  if (!qword_280A25018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25018);
  }

  return result;
}

unint64_t sub_275ADD500()
{
  result = qword_281410C28;
  if (!qword_281410C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C28);
  }

  return result;
}

unint64_t sub_275ADD558()
{
  result = qword_281410C18;
  if (!qword_281410C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C18);
  }

  return result;
}

unint64_t sub_275ADD5B0()
{
  result = qword_281410C20;
  if (!qword_281410C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281410C20);
  }

  return result;
}

void sub_275AE0384()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF68, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275AE04F8(319, &qword_281412450, type metadata accessor for LitmusInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_275AE04F8(319, &qword_281412150, type metadata accessor for QuotaServerState, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275AE04F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275AE0584()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_280A24CC8, &type metadata for NewOfferAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275AE04F8(319, &qword_281412150, type metadata accessor for QuotaServerState, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275AE0718(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_275AE52A4();
  if (v7 <= 0x3F)
  {
    sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE0854()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE0924()
{
  sub_275AE04F8(319, &qword_280A253B8, type metadata accessor for FeatureDetails, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0AAC()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0BC8()
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE0D20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_275AE52A4();
  if (v11 <= 0x3F)
  {
    sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      sub_275AE1E64(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275AE10C8()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A25438, &type metadata for ActivityStatusResponse.Activity.Status, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275AE04F8(319, &qword_280A25440, type metadata accessor for ActivityStatusResponse.Activity.Criteria, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_136Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void sub_275AE13E4()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE14E4()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_280A25478, &type metadata for GetBiomeStreamRequest.StreamType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_275AE52A4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_275AE52A4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_275AE18C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_275AE52A4();
  if (v7 <= 0x3F)
  {
    sub_275AE04F8(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275AE19A0()
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275AE52A4();
    if (v1 <= 0x3F)
    {
      sub_275AE1E64(319, &qword_28140FF48, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275AE1E64(319, &qword_280A24A58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275AE52A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_65Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE52A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_275AE1C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_275AE1E64(319, &qword_280A24A40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v7 <= 0x3F)
  {
    sub_275AE52A4();
    if (v8 <= 0x3F)
    {
      sub_275AE1E64(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_275AE1E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_275AE20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_275AE52A4();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275AE2178()
{
  result = type metadata accessor for PingRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewOfferRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeaturesRequest(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for GetStateRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for DataRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for NotificationPendingRequest(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for SetCliActivityRequest(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for DisplayDelayedOfferRequest(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ActivityStatusRequest(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ActivityClearRequest(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for GetBiomeStreamRequest(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for NotificationStateWriteRequest(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for ActivityHistoryRequest(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for MobileAssetDownloadRequest(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for ShadowEvaluationRequest(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for MobileAssetGetVersionRequest(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for DeleteDaemonStateRequest(319);
                                  if (v17 <= 0x3F)
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

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_377Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_275AE52A4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_378Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_275AE52A4();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_275AE257C()
{
  result = type metadata accessor for ErrorResponse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PingResponse(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NewOfferResponse(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeaturesResponse(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for GetStateResponse(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for DataResponse(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for NotificationPendingResponse(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for SetCliActivityResponse(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for DisplayDelayedOfferResponse(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ActivityStatusResponse(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for ActivityClearResponse(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for GetBiomeStreamResponse(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for NotificationStateWriteResponse(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for ActivityHistoryResponse(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for MobileAssetDownloadResponse(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for ShadowEvaluationResponse(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for MobileAssetGetVersionResponse(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for DeleteDaemonStateResponse(319);
                                    if (v18 <= 0x3F)
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

  return result;
}

unint64_t sub_275AE2730()
{
  result = qword_281410C30[0];
  if (!qword_281410C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281410C30);
  }

  return result;
}

unint64_t sub_275AE2784()
{
  result = qword_280A255E8;
  if (!qword_280A255E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A255E8);
  }

  return result;
}

unint64_t sub_275AE27D8()
{
  result = qword_280A255F0;
  if (!qword_280A255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A255F0);
  }

  return result;
}

uint64_t XpcSubscriptionClientConnection.__allocating_init(onError:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for XpcSubscriptionClientConnection();
  v4 = swift_allocObject();
  XpcSubscriptionClientConnection.init(forServiceName:onError:)(0xD000000000000031, 0x8000000275AEF080, a1, a2);
  return v4;
}

uint64_t sub_275AE2BD8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v2, qword_280A25740);
  v5 = __swift_project_value_buffer(v0, qword_280A25740);
  v9[1] = type metadata accessor for XpcSubscriptionClientConnection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25770, "z=");
  *v4 = sub_275AE56E4();
  v4[1] = v6;
  v7 = *(v0 + 20);

  sub_275AE5594();
  return sub_275A7B5F0(v4, v5);
}

uint64_t XpcSubscriptionClientConnection.__allocating_init(forServiceName:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  XpcSubscriptionClientConnection.init(forServiceName:onError:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *XpcSubscriptionClientConnection.init(forServiceName:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v9 = sub_275AE5674();

  v10 = [v8 initWithMachServiceName:v9 options:0];

  v4[2] = v10;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  [v4[2] resume];
  v14 = v4[2];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v7;
  v21[4] = sub_275AE336C;
  v21[5] = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_275AE316C;
  v21[3] = &block_descriptor_2;
  v16 = _Block_copy(v21);
  v17 = v14;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_275AE59A4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25758, &qword_275AEEB48);
  if (swift_dynamicCast())
  {
    v19 = v21[7];

    v4[3] = v19;
  }

  else
  {
    sub_275AE3390();
    swift_allocError();
    swift_willThrow();

    type metadata accessor for XpcSubscriptionClientConnection();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_275AE3034(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280A24548 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, qword_280A25740);
  sub_275AE5A14();
  MEMORY[0x277C86E00](0xD00000000000001ALL, 0x8000000275AF1630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25810, &unk_275AE93E0);
  sub_275AE5A44();
  MEMORY[0x277C86E00](46, 0xE100000000000000);
  sub_275A7B8C0(3u, 0, 0xE000000000000000);

  return a2(a1);
}

void sub_275AE316C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t XpcSubscriptionClientConnection.XpcError.hashValue.getter()
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t sub_275AE3258()
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t sub_275AE32C4()
{
  sub_275AE5B54();
  MEMORY[0x277C871E0](0);
  return sub_275AE5B74();
}

uint64_t XpcSubscriptionClientConnection.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XpcSubscriptionClientConnection.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_275AE336C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_275AE3034(a1, *(v1 + 16));
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275AE3390()
{
  result = qword_280A25760;
  if (!qword_280A25760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25760);
  }

  return result;
}

unint64_t sub_275AE33E8()
{
  result = qword_280A25768;
  if (!qword_280A25768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A25768);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XpcSubscriptionClientConnection.XpcError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XpcSubscriptionClientConnection.XpcError(_WORD *result, int a2, int a3)
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

uint64_t sub_275AE3564(uint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = type metadata accessor for Logger();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  a3(0);
  sub_275AE4600(a4, a5);
  v11 = sub_275AE5454();
  v13 = v12;
  v14 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_275A9CC80(v11, v13);
  v15 = sub_275AE5154();
  v16 = [v14 initWithData_];

  sub_275A785F8(v11, v13);
  v17 = sub_275AE5674();
  [a2 encodeObject:v16 forKey:v17];

  return sub_275A785F8(v11, v13);
}

uint64_t sub_275AE3860@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275AE5304();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_275A9CFE0();
  v14 = sub_275AE5924();
  if (v14)
  {
    v15 = v14;
    v21[1] = v11;
    v16 = a1(0);
    v17 = v15;
    sub_275A9C4A4(v17);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_275AE52F4();
    sub_275AE4600(a2, a3);
    sub_275AE5444();

    return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
  }

  else
  {
    if (qword_280A243F0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_280A24E18);
    sub_275AE4538(v18, v11, type metadata accessor for Logger);
    sub_275A7B8C0(3u, 0xD000000000000030, 0x8000000275AF10C0);
    sub_275AE45A0(v11, type metadata accessor for Logger);
    v19 = a1(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }
}

id XpcSubscriptionClientRequest.__allocating_init(withProto:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_275AE4538(a1, v3 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_275AE45A0(a1, type metadata accessor for SubscriptionClientRequest);
  return v4;
}

uint64_t sub_275AE3CCC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v2, qword_280A25780);
  v5 = __swift_project_value_buffer(v0, qword_280A25780);
  v9[1] = type metadata accessor for XpcSubscriptionClientRequest();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A25818, "^=");
  *v4 = sub_275AE56E4();
  v4[1] = v6;
  v7 = *(v0 + 20);

  sub_275AE5594();
  return sub_275AE4648(v4, v5, type metadata accessor for Logger);
}

id XpcSubscriptionClientRequest.init(withProto:)(uint64_t a1)
{
  sub_275AE4538(a1, v1 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XpcSubscriptionClientRequest();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_275AE45A0(a1, type metadata accessor for SubscriptionClientRequest);
  return v3;
}

uint64_t type metadata accessor for XpcSubscriptionClientRequest()
{
  result = qword_281411E98;
  if (!qword_281411E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XpcSubscriptionClientRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25798, &qword_275AEEC50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SubscriptionClientRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE3860(type metadata accessor for SubscriptionClientRequest, qword_281411C70, type metadata accessor for SubscriptionClientRequest, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_275AE41E0(v7);
    if (qword_280A24550 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, qword_280A25780);
    sub_275A7B8C0(3u, 0xD000000000000025, 0x8000000275AF1650);

    type metadata accessor for XpcSubscriptionClientRequest();
    v14 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v15 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_275AE4648(v7, v12, type metadata accessor for SubscriptionClientRequest);
    sub_275AE4648(v12, v2 + OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto, type metadata accessor for SubscriptionClientRequest);
    v17 = type metadata accessor for XpcSubscriptionClientRequest();
    v19.receiver = v2;
    v19.super_class = v17;
    v18 = objc_msgSendSuper2(&v19, sel_init);

    return v18;
  }
}

uint64_t sub_275AE41E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25798, &qword_275AEEC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id XpcSubscriptionClientRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XpcSubscriptionClientRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XpcSubscriptionClientRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275AE44A8()
{
  result = type metadata accessor for SubscriptionClientRequest(319);
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

uint64_t sub_275AE4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275AE45A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275AE4600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275AE4648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id XpcSubscriptionClientResponse.__allocating_init(fromProto:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_275AE4CF0(a1, v3 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_275AE4D58(a1, type metadata accessor for SubscriptionClientResponse);
  return v4;
}

uint64_t sub_275AE4740()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v2, qword_280A25880);
  v5 = __swift_project_value_buffer(v0, qword_280A25880);
  v9[1] = type metadata accessor for SubscriptionClientResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A258A8, "<=");
  *v4 = sub_275AE56E4();
  v4[1] = v6;
  v7 = *(v0 + 20);

  sub_275AE5594();
  return sub_275AE500C(v4, v5, type metadata accessor for Logger);
}

id XpcSubscriptionClientResponse.init(fromProto:)(uint64_t a1)
{
  sub_275AE4CF0(a1, v1 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XpcSubscriptionClientResponse();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_275AE4D58(a1, type metadata accessor for SubscriptionClientResponse);
  return v3;
}

uint64_t type metadata accessor for XpcSubscriptionClientResponse()
{
  result = qword_281411E88;
  if (!qword_281411E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XpcSubscriptionClientResponse.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25898, &qword_275AEEC90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SubscriptionClientResponse(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275AE3818(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_275AE4C88(v11);
    if (qword_280A24558 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_280A25880);
    sub_275AE4CF0(v17, v7, type metadata accessor for Logger);
    sub_275A7B8C0(3u, 0xD000000000000025, 0x8000000275AF1740);

    sub_275AE4D58(v7, type metadata accessor for Logger);
    type metadata accessor for XpcSubscriptionClientResponse();
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v19 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_275AE500C(v11, v16, type metadata accessor for SubscriptionClientResponse);
    sub_275AE500C(v16, v2 + OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto, type metadata accessor for SubscriptionClientResponse);
    v21 = type metadata accessor for XpcSubscriptionClientResponse();
    v23.receiver = v2;
    v23.super_class = v21;
    v22 = objc_msgSendSuper2(&v23, sel_init);

    return v22;
  }
}

uint64_t sub_275AE4C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A25898, &qword_275AEEC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275AE4CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275AE4D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id XpcSubscriptionClientResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XpcSubscriptionClientResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XpcSubscriptionClientResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275AE4F7C()
{
  result = type metadata accessor for SubscriptionClientResponse(319);
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

uint64_t sub_275AE500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}