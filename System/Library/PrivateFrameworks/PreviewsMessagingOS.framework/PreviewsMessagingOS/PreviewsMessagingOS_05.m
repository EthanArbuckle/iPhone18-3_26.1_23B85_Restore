uint64_t PurgePayload.workspaceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurgePayload.workspaceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsMessagingOS::PurgePayload __swiftcall PurgePayload.init(workspaceID:killAgents:)(PreviewsMessagingOS::PurgePayload workspaceID, Swift::Bool killAgents)
{
  *v2 = workspaceID.workspaceID;
  *(v2 + 16) = killAgents;
  workspaceID.killAgents = killAgents;
  return workspaceID;
}

uint64_t sub_25F44D010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6567416C6C696BLL;
  }

  else
  {
    v4 = 0x636170736B726F77;
  }

  if (v3)
  {
    v5 = 0xEB00000000444965;
  }

  else
  {
    v5 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v6 = 0x6E6567416C6C696BLL;
  }

  else
  {
    v6 = 0x636170736B726F77;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007374;
  }

  else
  {
    v7 = 0xEB00000000444965;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44D0C4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44D154()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44D1D0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44D268(uint64_t *a1@<X8>)
{
  v2 = 0x636170736B726F77;
  if (*v1)
  {
    v2 = 0x6E6567416C6C696BLL;
  }

  v3 = 0xEB00000000444965;
  if (*v1)
  {
    v3 = 0xEA00000000007374;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44D2B4()
{
  if (*v0)
  {
    result = 0x6E6567416C6C696BLL;
  }

  else
  {
    result = 0x636170736B726F77;
  }

  *v0;
  return result;
}

uint64_t PurgePayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_25F4A25A0();
}

uint64_t PurgePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for PurgePayload.Key;
  v5 = sub_25F45011C();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PurgePayload.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    v11 = v17;
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11 & 1;
  }

  return result;
}

uint64_t sub_25F44D564()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_25F4A25A0();
}

uint64_t RequestPreviewVariantsPayload.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RequestPreviewVariantsPayload.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RequestPreviewVariantsPayload.contentOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t RequestPreviewVariantsPayload.contentOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void __swiftcall RequestPreviewVariantsPayload.init(contentCategory:contentOverride:)(PreviewsMessagingOS::RequestPreviewVariantsPayload *__return_ptr retstr, PreviewsMessagingOS::ContentCategory contentCategory, PreviewsMessagingOS::ContentOverride_optional contentOverride)
{
  v4 = *(contentCategory.rawValue._countAndFlagsBits + 8);
  v5 = *contentCategory.rawValue._object;
  v6 = *(contentCategory.rawValue._object + 1);
  retstr->contentCategory.rawValue._countAndFlagsBits = *contentCategory.rawValue._countAndFlagsBits;
  retstr->contentCategory.rawValue._object = v4;

  retstr->contentOverride.value.rawValue._countAndFlagsBits = v5;
  retstr->contentOverride.value.rawValue._object = v6;
}

uint64_t sub_25F44D6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4F746E65746E6F63;
  }

  else
  {
    v4 = 0x43746E65746E6F63;
  }

  if (v3)
  {
    v5 = 0xEF79726F67657461;
  }

  else
  {
    v5 = 0xEF65646972726576;
  }

  if (*a2)
  {
    v6 = 0x4F746E65746E6F63;
  }

  else
  {
    v6 = 0x43746E65746E6F63;
  }

  if (*a2)
  {
    v7 = 0xEF65646972726576;
  }

  else
  {
    v7 = 0xEF79726F67657461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44D784()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44D820()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44D8A8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44D94C(uint64_t *a1@<X8>)
{
  v2 = 0x43746E65746E6F63;
  if (*v1)
  {
    v2 = 0x4F746E65746E6F63;
  }

  v3 = 0xEF79726F67657461;
  if (*v1)
  {
    v3 = 0xEF65646972726576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44D9A4()
{
  if (*v0)
  {
    result = 0x4F746E65746E6F63;
  }

  else
  {
    result = 0x43746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_25F44DA10()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t sub_25F44DA44()
{
  sub_25F45017C();
  sub_25F406680();
  sub_25F4066D4();

  v0 = sub_25F4A28D0();

  return v0;
}

uint64_t RequestPreviewVariantsPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for RequestPreviewVariantsPayload.Key;
  v5 = sub_25F45017C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F406680();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = v16;
    v7 = v17;
    v14 = &type metadata for RequestPreviewVariantsPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4066D4();
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);

    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
    a2[3] = v12;
  }

  return result;
}

uint64_t sub_25F44DCCC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t PreviewVariantsPayload.groups.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PreviewVariantsPayload.propertyListValue.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4501D0();
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  return sub_25F4A25C0();
}

uint64_t PreviewVariantsPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewVariantsPayload.Key;
  v7[4] = sub_25F4501D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F44DFF8()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4501D0();
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  return sub_25F4A25C0();
}

uint64_t sub_25F44E0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewVariantsPayload.Key;
  v7[4] = sub_25F4501D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t RequestContentOverridePayload.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RequestContentOverridePayload.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RequestContentOverridePayload.requestedOverrides.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

PreviewsMessagingOS::RequestContentOverridePayload __swiftcall RequestContentOverridePayload.init(contentCategory:requestedOverrides:)(PreviewsMessagingOS::ContentCategory contentCategory, Swift::OpaquePointer requestedOverrides)
{
  v3 = *(contentCategory.rawValue._countAndFlagsBits + 8);
  *v2 = *contentCategory.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = contentCategory.rawValue._object;
  result.contentCategory = contentCategory;
  result.requestedOverrides = requestedOverrides;
  return result;
}

uint64_t sub_25F44E2C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x43746E65746E6F63;
  }

  if (v3)
  {
    v5 = 0xEF79726F67657461;
  }

  else
  {
    v5 = 0x800000025F4B66C0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x43746E65746E6F63;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B66C0;
  }

  else
  {
    v7 = 0xEF79726F67657461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44E380()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44E414()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44E494()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44E530(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B66C0;
  v3 = 0x43746E65746E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEF79726F67657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F44E580()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x43746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t RequestContentOverridePayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t sub_25F44E614()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBD8, &qword_25F4AB548);
  sub_25F450284();
  sub_25F406680();
  sub_25F4502D8(&qword_27FD6EBE0, &qword_27FD6EBD8, &qword_25F4AB548, sub_25F4066D4);
  v0 = sub_25F4A28D0();

  return v0;
}

uint64_t RequestContentOverridePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for RequestContentOverridePayload.Key;
  v5 = sub_25F450284();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F406680();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for RequestContentOverridePayload.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBD8, &qword_25F4AB548);
    sub_25F4502D8(&qword_27FD6EBE0, &qword_27FD6EBD8, &qword_25F4AB548, sub_25F4066D4);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t sub_25F44E8E0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t ContentOverridePayload.contentOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ContentOverridePayload.contentOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

PreviewsMessagingOS::ContentOverridePayload __swiftcall ContentOverridePayload.init(contentOverride:)(PreviewsMessagingOS::ContentOverride_optional contentOverride)
{
  v2 = v1;
  v3 = *contentOverride.value.rawValue._countAndFlagsBits;
  v4 = *(contentOverride.value.rawValue._countAndFlagsBits + 8);

  *v2 = v3;
  v2[1] = v4;
  result.contentOverride.value.rawValue._object = v6;
  result.contentOverride.value.rawValue._countAndFlagsBits = v5;
  result.contentOverride.is_nil = v7;
  return result;
}

uint64_t ContentOverridePayload.propertyListValue.getter()
{
  v2 = *v0;
  sub_25F450354();
  sub_25F4066D4();
  return sub_25F4A25C0();
}

double ContentOverridePayload.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for ContentOverridePayload.Key;
  v7[4] = sub_25F450354();
  sub_25F4066D4();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F44EC10()
{
  v2 = *v0;
  sub_25F450354();
  sub_25F4066D4();
  return sub_25F4A25C0();
}

double sub_25F44EC84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for ContentOverridePayload.Key;
  v7[4] = sub_25F450354();
  sub_25F4066D4();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t CapabilitiesPayload.propertyListValue.getter()
{
  v2 = *v0;
  sub_25F4503B4();
  return sub_25F4A25C0();
}

uint64_t CapabilitiesPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for CapabilitiesPayload.Key;
  v7[4] = sub_25F4503B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F44EFC8()
{
  v2 = *v0;
  sub_25F4503B4();
  return sub_25F4A25C0();
}

uint64_t sub_25F44F038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for CapabilitiesPayload.Key;
  v7[4] = sub_25F4503B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS14OSCapabilitiesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && ((a1[4] ^ a2[4]) & 1) == 0 && ((a1[5] ^ a2[5]) & 1) == 0 && ((a1[6] ^ a2[6]) & 1) == 0 && ((a1[7] ^ a2[7]) & 1) == 0 && ((a1[8] ^ a2[8]) & 1) == 0 && ((a1[9] ^ a2[9]) & 1) == 0)
  {
    v2 = (a2[10] ^ a1[10] | a2[11] ^ a1[11]) ^ 1;
  }

  return v2 & 1;
}

uint64_t _s19PreviewsMessagingOS15AgentDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = sub_25F4A3270(), result = 0, (v10 & 1) != 0))
  {
    if (v2 == v6 && v4 == v7 || (sub_25F4A3270() & 1) != 0)
    {
      if (v5)
      {
        if (v8 && (v3 == v9 && v5 == v8 || (sub_25F4A3270() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_25F44F2F0()
{
  v0 = sub_25F4A2A70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD6D378 != -1)
  {
    swift_once();
  }

  v6[2] = qword_27FD6EA60;

  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC90, &unk_25F4A6630);
  sub_25F3F2708(&qword_27FD6DC98, &qword_27FD6DC90, &unk_25F4A6630);
  sub_25F4A29B0();
  (*(v1 + 8))(v4, v0);

  return sub_25F4A3210();
}

uint64_t _s19PreviewsMessagingOS14ServiceMessageV0E4TypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F44F534()
{
  result = qword_27FD6EAE8;
  if (!qword_27FD6EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAE8);
  }

  return result;
}

unint64_t sub_25F44F588()
{
  result = qword_27FD6EAF0;
  if (!qword_27FD6EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAF0);
  }

  return result;
}

uint64_t sub_25F44F5DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25F44665C();
}

unint64_t sub_25F44F5E8()
{
  result = qword_27FD6EAF8;
  if (!qword_27FD6EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAF8);
  }

  return result;
}

unint64_t sub_25F44F63C()
{
  result = qword_27FD6EB00;
  if (!qword_27FD6EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB00);
  }

  return result;
}

unint64_t sub_25F44F698()
{
  result = qword_27FD6EB08;
  if (!qword_27FD6EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB08);
  }

  return result;
}

unint64_t sub_25F44F6EC()
{
  result = qword_27FD6EB10;
  if (!qword_27FD6EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB10);
  }

  return result;
}

unint64_t sub_25F44F740()
{
  result = qword_27FD6EB18;
  if (!qword_27FD6EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB18);
  }

  return result;
}

unint64_t sub_25F44F794()
{
  result = qword_27FD6EB20;
  if (!qword_27FD6EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB20);
  }

  return result;
}

unint64_t sub_25F44F7E8()
{
  result = qword_27FD6EB30;
  if (!qword_27FD6EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6EB28, &qword_25F4AB528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB30);
  }

  return result;
}

unint64_t sub_25F44F870()
{
  result = qword_27FD6EB38;
  if (!qword_27FD6EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB38);
  }

  return result;
}

unint64_t sub_25F44F8C4()
{
  result = qword_27FD6EB40;
  if (!qword_27FD6EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB40);
  }

  return result;
}

unint64_t sub_25F44F920()
{
  result = qword_27FD6EB48;
  if (!qword_27FD6EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB48);
  }

  return result;
}

unint64_t sub_25F44F98C()
{
  result = qword_27FD6EB50;
  if (!qword_27FD6EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB50);
  }

  return result;
}

unint64_t sub_25F44F9E0()
{
  result = qword_27FD6EB58;
  if (!qword_27FD6EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB58);
  }

  return result;
}

unint64_t sub_25F44FA34()
{
  result = qword_27FD6EB60;
  if (!qword_27FD6EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB60);
  }

  return result;
}

unint64_t sub_25F44FA90()
{
  result = qword_27FD6EB68;
  if (!qword_27FD6EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB68);
  }

  return result;
}

unint64_t sub_25F44FAEC()
{
  result = qword_27FD6EB70;
  if (!qword_27FD6EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB70);
  }

  return result;
}

_BYTE *sub_25F44FB40(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 32) & 1;
  return result;
}

unint64_t sub_25F44FB58()
{
  result = qword_27FD6EB78;
  if (!qword_27FD6EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB78);
  }

  return result;
}

unint64_t sub_25F44FBAC()
{
  result = qword_27FD6EB80;
  if (!qword_27FD6EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB80);
  }

  return result;
}

uint64_t sub_25F44FC00()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F44FC4C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F44FC98()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F44FCE4()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F44FD30()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F44FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = &type metadata for ProcessID.Key;
  v5 = sub_25F44FB58();
  v19 = v5;
  LOBYTE(v17[0]) = 0;
  sub_25F44FBAC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    v18 = &type metadata for ProcessID.Key;
    v19 = v5;
    LOBYTE(v17[0]) = 2;
    sub_25F4A2530();
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);

LABEL_6:
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = 0;
    v11 = v14;
    v12 = 0uLL;
    v10 = 1;
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v14)
  {
    v18 = &type metadata for ProcessID.Key;
    v19 = v5;
    LOBYTE(v17[0]) = 2;
    sub_25F4A2530();
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    goto LABEL_6;
  }

  v18 = &type metadata for ProcessID.Key;
  v19 = v5;
  LOBYTE(v17[0]) = 1;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2530();
  v8 = sub_25F4A25E0();
  (*(*(v8 - 8) + 8))(a1, v8);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = 0;
  v11 = v14;
  v12 = v15;
  v13 = v16;
LABEL_7:
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v10;
  return result;
}

unint64_t sub_25F450014()
{
  result = qword_27FD6EB88;
  if (!qword_27FD6EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB88);
  }

  return result;
}

unint64_t sub_25F450068()
{
  result = qword_27FD6EB90;
  if (!qword_27FD6EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB90);
  }

  return result;
}

unint64_t sub_25F4500BC()
{
  result = qword_27FD6EB98;
  if (!qword_27FD6EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB98);
  }

  return result;
}

uint64_t sub_25F450110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_25F44D344();
}

unint64_t sub_25F45011C()
{
  result = qword_27FD6EBA0;
  if (!qword_27FD6EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBA0);
  }

  return result;
}

uint64_t sub_25F450170()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25F44DA44();
}

unint64_t sub_25F45017C()
{
  result = qword_27FD6EBA8;
  if (!qword_27FD6EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBA8);
  }

  return result;
}

unint64_t sub_25F4501D0()
{
  result = qword_27FD6EBB8;
  if (!qword_27FD6EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBB8);
  }

  return result;
}

unint64_t sub_25F450224()
{
  result = qword_27FD6EBC8;
  if (!qword_27FD6EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBC8);
  }

  return result;
}

uint64_t sub_25F450278()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25F44E614();
}

unint64_t sub_25F450284()
{
  result = qword_27FD6EBD0;
  if (!qword_27FD6EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBD0);
  }

  return result;
}

uint64_t sub_25F4502D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F450354()
{
  result = qword_27FD6EBE8;
  if (!qword_27FD6EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBE8);
  }

  return result;
}

unint64_t sub_25F4503B4()
{
  result = qword_27FD6EBF0;
  if (!qword_27FD6EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBF0);
  }

  return result;
}

unint64_t sub_25F45040C()
{
  result = qword_27FD6EBF8;
  if (!qword_27FD6EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBF8);
  }

  return result;
}

unint64_t sub_25F450464()
{
  result = qword_27FD6EC00;
  if (!qword_27FD6EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC00);
  }

  return result;
}

unint64_t sub_25F4504BC()
{
  result = qword_27FD6EC08;
  if (!qword_27FD6EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC08);
  }

  return result;
}

unint64_t sub_25F450514()
{
  result = qword_27FD6EC10;
  if (!qword_27FD6EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC10);
  }

  return result;
}

unint64_t sub_25F45056C()
{
  result = qword_27FD6EC18;
  if (!qword_27FD6EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC18);
  }

  return result;
}

unint64_t sub_25F4505C4()
{
  result = qword_27FD6EC20;
  if (!qword_27FD6EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC20);
  }

  return result;
}

unint64_t sub_25F45061C()
{
  result = qword_27FD6EC28;
  if (!qword_27FD6EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC28);
  }

  return result;
}

uint64_t sub_25F450694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ServiceMessage.Content(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25F450760(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ServiceMessage.Content(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F450804()
{
  sub_25F4512DC(319, &qword_27FD6EC40);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServiceMessage.Content(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ServiceMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25F4509E8()
{
  sub_25F4512DC(319, &qword_27FD6EC58);
  if (v0 <= 0x3F)
  {
    sub_25F450AD4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ForwardPayload(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ShellUpdatePayload();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_25F450AD4()
{
  if (!qword_27FD6EC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6EC60);
    }
  }
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OSCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OSCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapabilitiesPayload(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F450D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_25F450D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS10DeviceTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F450E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F450E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_25F450ECC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessID(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F45103C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25F451120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_25F4511E0()
{
  sub_25F4A25E0();
  if (v0 <= 0x3F)
  {
    sub_25F4512DC(319, &qword_27FD6EC78);
    if (v1 <= 0x3F)
    {
      sub_25F4512DC(319, &qword_27FD6EC80);
      if (v2 <= 0x3F)
      {
        sub_25F4512DC(319, &qword_27FD6EC40);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F4512DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25F4A3060();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25F451328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25F451370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F4513E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F451428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F4515D4()
{
  result = qword_27FD6EC88;
  if (!qword_27FD6EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC88);
  }

  return result;
}

unint64_t sub_25F45162C()
{
  result = qword_27FD6EC90;
  if (!qword_27FD6EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC90);
  }

  return result;
}

unint64_t sub_25F451684()
{
  result = qword_27FD6EC98;
  if (!qword_27FD6EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC98);
  }

  return result;
}

unint64_t sub_25F4516DC()
{
  result = qword_27FD6ECA0;
  if (!qword_27FD6ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECA0);
  }

  return result;
}

unint64_t sub_25F451734()
{
  result = qword_27FD6ECA8;
  if (!qword_27FD6ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECA8);
  }

  return result;
}

unint64_t sub_25F45178C()
{
  result = qword_27FD6ECB0;
  if (!qword_27FD6ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECB0);
  }

  return result;
}

unint64_t sub_25F4517E4()
{
  result = qword_27FD6ECB8;
  if (!qword_27FD6ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECB8);
  }

  return result;
}

unint64_t sub_25F45183C()
{
  result = qword_27FD6ECC0;
  if (!qword_27FD6ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECC0);
  }

  return result;
}

unint64_t sub_25F451894()
{
  result = qword_27FD6ECC8;
  if (!qword_27FD6ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECC8);
  }

  return result;
}

unint64_t sub_25F4518EC()
{
  result = qword_27FD6ECD0;
  if (!qword_27FD6ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECD0);
  }

  return result;
}

unint64_t sub_25F451944()
{
  result = qword_27FD6ECD8;
  if (!qword_27FD6ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECD8);
  }

  return result;
}

unint64_t sub_25F45199C()
{
  result = qword_27FD6ECE0;
  if (!qword_27FD6ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECE0);
  }

  return result;
}

unint64_t sub_25F4519F4()
{
  result = qword_27FD6ECE8;
  if (!qword_27FD6ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECE8);
  }

  return result;
}

unint64_t sub_25F451A4C()
{
  result = qword_27FD6ECF0;
  if (!qword_27FD6ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECF0);
  }

  return result;
}

unint64_t sub_25F451AA4()
{
  result = qword_27FD6ECF8;
  if (!qword_27FD6ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECF8);
  }

  return result;
}

unint64_t sub_25F451AFC()
{
  result = qword_27FD6ED00;
  if (!qword_27FD6ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED00);
  }

  return result;
}

unint64_t sub_25F451B54()
{
  result = qword_27FD6ED08;
  if (!qword_27FD6ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED08);
  }

  return result;
}

unint64_t sub_25F451BAC()
{
  result = qword_27FD6ED10;
  if (!qword_27FD6ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED10);
  }

  return result;
}

unint64_t sub_25F451C04()
{
  result = qword_27FD6ED18;
  if (!qword_27FD6ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED18);
  }

  return result;
}

unint64_t sub_25F451CA0()
{
  result = qword_27FD6ED30;
  if (!qword_27FD6ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED30);
  }

  return result;
}

unint64_t sub_25F451CF8()
{
  result = qword_27FD6ED38;
  if (!qword_27FD6ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED38);
  }

  return result;
}

unint64_t sub_25F451D50()
{
  result = qword_27FD6ED40;
  if (!qword_27FD6ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED40);
  }

  return result;
}

unint64_t sub_25F451DA4()
{
  result = qword_27FD6ED48;
  if (!qword_27FD6ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED48);
  }

  return result;
}

unint64_t sub_25F451DF8()
{
  result = qword_27FD6ED50;
  if (!qword_27FD6ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED50);
  }

  return result;
}

uint64_t sub_25F451E4C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F451E98()
{
  result = qword_27FD6ED58;
  if (!qword_27FD6ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED58);
  }

  return result;
}

unint64_t sub_25F451EEC()
{
  result = qword_27FD6ED60;
  if (!qword_27FD6ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED60);
  }

  return result;
}

unint64_t sub_25F451F40()
{
  result = qword_27FD6ED68;
  if (!qword_27FD6ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED68);
  }

  return result;
}

uint64_t sub_25F451F94()
{
  v1 = v0[24];
  if (v0[17])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | v0[16];
  v0[18];
  v0[19];
  v0[20];
  v0[21];
  v0[22];
  v0[23];
  v0[25];
  v0[26];
  v0[27];
  return sub_25F444784();
}

unint64_t sub_25F45205C()
{
  result = qword_27FD6ED70;
  if (!qword_27FD6ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED70);
  }

  return result;
}

unint64_t sub_25F452158()
{
  result = qword_27FD6ED80;
  if (!qword_27FD6ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED80);
  }

  return result;
}

unint64_t sub_25F4521AC()
{
  result = qword_27FD6ED88;
  if (!qword_27FD6ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED88);
  }

  return result;
}

unint64_t sub_25F452200()
{
  result = qword_27FD6ED90;
  if (!qword_27FD6ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED90);
  }

  return result;
}

unint64_t sub_25F452278()
{
  result = qword_27FD6EDA0;
  if (!qword_27FD6EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDA0);
  }

  return result;
}

unint64_t sub_25F4522D0()
{
  result = qword_27FD6EDA8;
  if (!qword_27FD6EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDA8);
  }

  return result;
}

unint64_t sub_25F452324()
{
  result = qword_27FD6EDB0;
  if (!qword_27FD6EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDB0);
  }

  return result;
}

uint64_t PropertyList.lazy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A25E0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LazyPropertyList()
{
  result = qword_27FD6EDB8;
  if (!qword_27FD6EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LazyPropertyList.propertyList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for LazyPropertyList();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F4526E8(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    v8 = v7[1];
    v10 = objc_opt_self();
    v11 = sub_25F4A2050();
    v20[0] = 0;
    v12 = [v10 propertyListWithData:v11 options:0 format:0 error:v20];

    v13 = v20[0];
    if (v12)
    {
      sub_25F4A3090();
      swift_unknownObjectRelease();
      sub_25F4031FC(v21, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4F0, &qword_25F4AD740);
      if (swift_dynamicCast())
      {
        sub_25F4A2560();
      }

      else
      {
        sub_25F4287E4();
        swift_allocError();
        sub_25F4031FC(v21, v17);
        swift_willThrow();
      }

      sub_25F428790(v9, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v16 = v13;
      sub_25F4A1FD0();

      swift_willThrow();
      result = sub_25F428790(v9, v8);
    }
  }

  else
  {
    v14 = sub_25F4A25E0();
    result = (*(*(v14 - 8) + 32))(a1, v7, v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F4526E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyPropertyList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LazyPropertyList.data.getter()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LazyPropertyList();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F4526E8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v10;
    v12 = v10[1];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = objc_opt_self();
    sub_25F4A2570();
    v14 = sub_25F4A2B50();

    v20[0] = 0;
    v15 = [v13 dataWithPropertyList:v14 format:200 options:0 error:v20];

    v16 = v20[0];
    if (v15)
    {
      v17 = sub_25F4A2060();

      (*(v3 + 8))(v6, v2);
      result = v17;
    }

    else
    {
      v18 = v16;
      sub_25F4A1FD0();

      swift_willThrow();
      result = (*(v3 + 8))(v6, v2);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F4529B8()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD00000000000004CLL, 0x800000025F4B81A0);
  sub_25F4A3140();
  return 0;
}

uint64_t sub_25F452A48(uint64_t a1)
{
  v2 = sub_25F452BEC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F452A84(uint64_t a1)
{
  v2 = sub_25F452BEC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F452AC0()
{
  result = sub_25F4A25E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F452B40()
{
  result = qword_27FD6EDC8;
  if (!qword_27FD6EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDC8);
  }

  return result;
}

unint64_t sub_25F452B98()
{
  result = qword_27FD6EDD0;
  if (!qword_27FD6EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDD0);
  }

  return result;
}

unint64_t sub_25F452BEC()
{
  result = qword_27FD6EDD8;
  if (!qword_27FD6EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDD8);
  }

  return result;
}

uint64_t sub_25F452C40(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a1, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a2, v15);
  if (v15[0] == v3 && v15[1] == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = v16;
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (v7)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (v7)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v5)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_25F4A3270();

        v8 = v14 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F452D4C(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a1, v15);
  if (v15[0] == v3 && v15[1] == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = v16;
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (v7)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (v7)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v5)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_25F4A3270();

        v8 = v14 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F452E60(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a1, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a2, v15);
  v6 = v15[0] == v3 && v15[1] == v4;
  if (v6 || (v7 = v16, (sub_25F4A3270() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (v7)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v5)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25F4A3270();
    }
  }

  return v13 & 1;
}

BOOL static JITLoadCommand.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v12);
  v3 = v12[0];
  v4 = v12[1];
  v5 = v13;
  v6 = v14;
  v7 = v15;
  sub_25F412FDC(a1, v9);
  v16[0] = v9[0];
  v16[1] = v9[1];
  v17 = v10;
  v18 = v11;
  v19[0] = v3;
  v19[1] = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v16, v19);
}

uint64_t JITLoadCommand.hash(into:)()
{
  sub_25F412FDC(v0, v3);
  v1 = v3[4];
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v1)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();
  return sub_25F4A2C60();
}

uint64_t JITLoadCommand.hashValue.getter()
{
  sub_25F412FDC(v0, v3);
  v1 = v3[4];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4531D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v5)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F4532BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v5)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

BOOL sub_25F453390(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = v3;
  v10 = *(a1 + 24);
  v11[0] = v4;
  v11[1] = v5;
  v12 = v6;
  v13 = *(a2 + 3);
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v8, v11);
}

uint64_t sub_25F4533EC()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F453460()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4534B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25F453528(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F455E8C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4535EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646E616D6D6F63;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x646E616D6D6F63;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F45369C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F453728()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4537A0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F453834(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F45387C()
{
  if (*v0)
  {
    result = 0x646E616D6D6F63;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t JITLoadCommand.propertyListValue.getter()
{
  sub_25F412FDC(v0, v9);
  v1 = v9[0];
  v2 = v9[1];
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = sub_25F455344();
  sub_25F455398();
  sub_25F4A25C0();
  v8[5] = v1;
  v8[6] = v2;
  v8[7] = v3;
  v8[8] = v4;
  v8[9] = v5;
  v8[3] = &type metadata for JITLoadCommand.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4553EC();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t JITLoadCommand.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25F4556E4(a1, v5);
  if (!v2)
  {
    return sub_25F412FDC(v5, a2);
  }

  return result;
}

uint64_t sub_25F4539EC()
{
  sub_25F412FDC(v0, v9);
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = sub_25F455344();
  sub_25F455398();
  sub_25F4A25C0();
  v8[5] = v1;
  v8[6] = v2;
  v8[7] = v3;
  v8[8] = v4;
  v8[9] = v5;
  v8[3] = &type metadata for JITLoadCommand.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4553EC();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_25F453AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25F4556E4(a1, v5);
  if (!v2)
  {
    return sub_25F412FDC(v5, a2);
  }

  return result;
}

PreviewsMessagingOS::JITLoadCommand::LoadDylib::Linkage_optional __swiftcall JITLoadCommand.LoadDylib.Linkage.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_JITLoadCommand_LoadDylib_Linkage_weak;
  }

  else
  {
    v2.value = PreviewsMessagingOS_JITLoadCommand_LoadDylib_Linkage_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t JITLoadCommand.LoadDylib.Linkage.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1801545079;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t sub_25F453B9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1801545079;
  }

  else
  {
    v4 = 0x676E6F727473;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1801545079;
  }

  else
  {
    v6 = 0x676E6F727473;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F453C38()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F453CB0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F453D14()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F453D94(uint64_t *a1@<X8>)
{
  v2 = 1801545079;
  if (!*v1)
  {
    v2 = 0x676E6F727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F453DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F455EE0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t JITLoadCommand.LoadDylib.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JITLoadCommand.LoadDylib.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JITLoadCommand.LoadDylib.symbolsPath.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t JITLoadCommand.LoadDylib.symbolsPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall JITLoadCommand.LoadDylib.init(path:linkage:symbolsPath:)(PreviewsMessagingOS::JITLoadCommand::LoadDylib *__return_ptr retstr, Swift::String path, PreviewsMessagingOS::JITLoadCommand::LoadDylib::Linkage linkage, Swift::String_optional symbolsPath)
{
  retstr->path = path;
  retstr->linkage = linkage & 1;
  retstr->symbolsPath = symbolsPath;
}

uint64_t sub_25F453FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6567616B6E696CLL;
  if (v2 != 1)
  {
    v4 = 0x50736C6F626D7973;
    v3 = 0xEB00000000687461;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1752457584;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6567616B6E696CLL;
  if (*a2 != 1)
  {
    v8 = 0x50736C6F626D7973;
    v7 = 0xEB00000000687461;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4540F0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F454194()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F454224()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4542C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F455888();
  *a2 = result;
  return result;
}

void sub_25F4542F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6567616B6E696CLL;
  if (v2 != 1)
  {
    v5 = 0x50736C6F626D7973;
    v4 = 0xEB00000000687461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F454354()
{
  v1 = 0x6567616B6E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x50736C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_25F4543EC(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v4 = *a1;
  v5 = a1[1];
  v3 = *(a1 + 16);
  sub_25F455F34();
  sub_25F455F88();
  return sub_25F4A28C0();
}

double JITLoadCommand.LoadDylib.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F4558D4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t JITLoadCommand.LoadDylib.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A2C60();
  *(v0 + 16);
  *(v0 + 16);
  sub_25F4A2C60();

  if (!v0[4])
  {
    return sub_25F4A3320();
  }

  v3 = v0[3];
  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t JITLoadCommand.LoadDylib.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  sub_25F4A2C60();
  v4 = v0[3];
  v5 = v0[4];
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v5)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F454668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v5)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F454730()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v5)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4547F8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

double sub_25F454848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F4558D4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_25F454890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v5, v7);
}

uint64_t JITLoadCommand.pathsForTransferrableArtifactsOnHost.getter()
{
  sub_25F412FDC(v0, v5);
  v1 = v7;
  if (v7)
  {
    v2 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t JITLoadCommand.LoadDylib.pathsForTransferrableArtifactsOnHost.getter()
{
  v6 = *(v0 + 24);
  v1 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    v2 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_25F455AC0(&v6, &v5);
  return v3;
}

Swift::Void __swiftcall JITLoadCommand.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    if (*(a1._rawValue + 2))
    {
      v9 = sub_25F3EEC04(v6, v7);
      if (v10)
      {
        v11 = (*(a1._rawValue + 7) + 16 * v9);
        v6 = *v11;
        v12 = v11[1];

        v7 = v12;
      }
    }
  }

  *v2 = v3;
  v2[1] = v4;
  *(v2 + 16) = v5;
  v2[3] = v6;
  v2[4] = v7;
}

Swift::Void __swiftcall JITLoadCommand.LoadDylib.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (v3 && *(a1._rawValue + 2))
  {
    v5 = sub_25F3EEC04(*(v2 + 24), v3);
    if (v6)
    {
      v7 = (*(a1._rawValue + 7) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];

      *(v2 + 24) = v9;
      *(v2 + 32) = v8;
    }
  }
}

uint64_t sub_25F454B00()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

Swift::Void __swiftcall JITLoadCommand.describe(with:)(Swift::OpaquePointer *with)
{
  sub_25F412FDC(v1, v37);
  v3 = v37[0];
  v4 = v37[1];
  v5 = v38;
  v6 = v39;
  v7 = v40;
  v8 = sub_25F4A2A00();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v35 = 0;
  v36 = 0xE000000000000000;
  v34 = v5;
  sub_25F4A3140();
  MEMORY[0x25F8DD480](44, 0xE100000000000000);
  MEMORY[0x25F8DD480](v3, v4);
  sub_25F4A2D70();

  if (v7)
  {
    v15 = *MEMORY[0x277D40528];
    v31 = v9[13];
    v31(v14, v15, v8);
    rawValue = with->_rawValue;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      rawValue = sub_25F3EE67C(0, rawValue[2] + 1, 1, rawValue);
    }

    v19 = rawValue[2];
    v18 = rawValue[3];
    if (v19 >= v18 >> 1)
    {
      rawValue = sub_25F3EE67C(v18 > 1, v19 + 1, 1, rawValue);
    }

    rawValue[2] = v19 + 1;
    v21 = v9[4];
    v20 = v9 + 4;
    v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
    v23 = v20[5];
    v24 = rawValue + v22 + v23 * v19;
    v25 = v33;
    v30 = v21;
    v21(v24, v14, v33);
    with->_rawValue = rawValue;
    v35 = v6;
    v36 = v7;
    sub_25F4A2D70();

    v26 = v32;
    v31(v32, *MEMORY[0x277D40530], v25);
    v27 = with->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_25F3EE67C(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_25F3EE67C(v28 > 1, v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30(&v27[v22 + v29 * v23], v26, v33);
    with->_rawValue = v27;
  }
}

uint64_t sub_25F454F18()
{
  sub_25F3F2EC0();

  return sub_25F4A29D0();
}

uint64_t static JITLoadCommand.LoadDylib.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_25F4A3270() & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    if (*(a1 + 16))
    {
      v5 = 1801545079;
    }

    else
    {
      v5 = 0x676E6F727473;
    }

    if (*(a1 + 16))
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (*(a2 + 16))
    {
      v7 = 1801545079;
    }

    else
    {
      v7 = 0x676E6F727473;
    }

    if (*(a2 + 16))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v5 == v7 && v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_25F4A3270();
    }
  }

  return v10 & 1;
}

uint64_t sub_25F455088(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  sub_25F412FDC(a1, v8);
  sub_25F412FDC(a2, v9);
  return a5(v8, v9) & 1;
}

uint64_t sub_25F4550DC(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v2 || (v3 = *(a1 + 16), v4 = *(a2 + 16), v5 = *(a1 + 8), (sub_25F4A3270() & 1) == 0))
  {
    v11 = 0;
  }

  else
  {
    if (v3)
    {
      v6 = 1801545079;
    }

    else
    {
      v6 = 0x676E6F727473;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (v4)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_25F4A3270();
    }
  }

  return v11 & 1;
}

BOOL _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 1801545079;
  }

  else
  {
    v5 = 0x676E6F727473;
  }

  if (*(a1 + 16))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*(a2 + 16))
  {
    v7 = 1801545079;
  }

  else
  {
    v7 = 0x676E6F727473;
  }

  if (*(a2 + 16))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_25F4A3270();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    return v12 && (*(a1 + 24) == *(a2 + 24) && v11 == v12 || (sub_25F4A3270() & 1) != 0);
  }

  return !v12;
}

_BYTE *sub_25F455338(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

unint64_t sub_25F455344()
{
  result = qword_27FD6EDE0;
  if (!qword_27FD6EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDE0);
  }

  return result;
}

unint64_t sub_25F455398()
{
  result = qword_27FD6EDE8;
  if (!qword_27FD6EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDE8);
  }

  return result;
}

unint64_t sub_25F4553EC()
{
  result = qword_27FD6EDF0;
  if (!qword_27FD6EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDF0);
  }

  return result;
}

uint64_t sub_25F455440(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a1 && a5 == a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (a6)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (a6)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a3)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (a3)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v13 = sub_25F4A3270();

        v8 = v13 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F45552C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4 && a2 == a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (a3)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (a3)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a6)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (a6)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v13 = sub_25F4A3270();

        v8 = v13 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F45560C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a1 && a5 == a2 || (sub_25F4A3270() & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    if (a6)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (a6)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (a3)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (a3)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_25F4A3270();
    }
  }

  return v12 & 1;
}

uint64_t sub_25F4556E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v15 = &type metadata for JITLoadCommand.Key;
  v5 = sub_25F455344();
  *(&v15 + 1) = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F455398();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12[3] = &type metadata for JITLoadCommand.Key;
    v12[4] = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4553EC();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    v9 = v13[1];
    v10 = v14;
    v11 = v15;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t sub_25F455888()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4558D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
  v5 = sub_25F455F34();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F455F88();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 2;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t sub_25F455AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5F0, &qword_25F4A4420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19PreviewsMessagingOS14JITLoadCommandO1loiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a1, v15);
  v6 = v15[0] == v3 && v15[1] == v4;
  if (v6 || (v7 = v16, (sub_25F4A3270() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (v7)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v5)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25F4A3270();
    }
  }

  return v13 & 1;
}

unint64_t sub_25F455C28()
{
  result = qword_27FD6EDF8;
  if (!qword_27FD6EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDF8);
  }

  return result;
}

unint64_t sub_25F455C80()
{
  result = qword_27FD6EE00;
  if (!qword_27FD6EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE00);
  }

  return result;
}

unint64_t sub_25F455CD8()
{
  result = qword_27FD6EE08;
  if (!qword_27FD6EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE08);
  }

  return result;
}

unint64_t sub_25F455D30()
{
  result = qword_27FD6EE10;
  if (!qword_27FD6EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE10);
  }

  return result;
}

unint64_t sub_25F455DE0()
{
  result = qword_27FD6EE18;
  if (!qword_27FD6EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE18);
  }

  return result;
}

unint64_t sub_25F455E38()
{
  result = qword_27FD6EE20;
  if (!qword_27FD6EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE20);
  }

  return result;
}

unint64_t sub_25F455E8C()
{
  result = qword_27FD6EE28;
  if (!qword_27FD6EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE28);
  }

  return result;
}

unint64_t sub_25F455EE0()
{
  result = qword_27FD6EE30;
  if (!qword_27FD6EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE30);
  }

  return result;
}

unint64_t sub_25F455F34()
{
  result = qword_27FD6EE38;
  if (!qword_27FD6EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE38);
  }

  return result;
}

unint64_t sub_25F455F88()
{
  result = qword_27FD6EE40;
  if (!qword_27FD6EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE40);
  }

  return result;
}

unint64_t sub_25F455FF0()
{
  result = qword_27FD6EE48;
  if (!qword_27FD6EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE48);
  }

  return result;
}

_OWORD *sub_25F456060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_25F4A30B0();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_25F456E48(v7, result, *(a1 + 36), 0, a1);
    *(a2 + 8) = v6;
    return sub_25F4031EC(v7, (a2 + 16));
  }

  return result;
}

uint64_t PreviewIncrementalUpdate.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F456138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *PreviewIncrementalUpdate.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  return sub_25F4561AC(a3, (a4 + 16));
}

_OWORD *sub_25F4561AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_25F456210(void *a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  v9 = *(a3 + 5);
  v5 = a3[5];
  v6 = __swift_project_boxed_opaque_existential_1(a3 + 2, v5);
  *(a2 + 24) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
}

_OWORD *PreviewIncrementalUpdate.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = sub_25F4A2570();
  sub_25F456060(v4, &v21);

  if (*(&v21 + 1))
  {
    v23 = v21;
    sub_25F4031EC(v22, v24);
    v5 = v23;
    sub_25F4031EC(v24, v25);
    sub_25F4031FC(v25, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
    if (swift_dynamicCast())
    {
      v6 = sub_25F4A25E0();
      (*(*(v6 - 8) + 8))(a1, v6);
      __swift_destroy_boxed_opaque_existential_1(v25);
      sub_25F4561AC(&v21, &v23);
      result = sub_25F4561AC(&v23, a2 + 1);
      *a2 = v5;
    }

    else
    {

      memset(v22, 0, sizeof(v22));
      v21 = 0u;
      sub_25F3F21F4(&v21, &qword_27FD6EE70, &qword_25F4ADFD8);
      type metadata accessor for PreviewIncrementalUpdate.UnarchiveError();
      sub_25F456DA0(&qword_27FD6EE58);
      swift_allocError();
      v13 = v12;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
      v15 = *(v14 + 48);
      v16 = (v13 + *(v14 + 64));
      v17 = sub_25F4A25E0();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v13, a1, v17);
      sub_25F4031FC(v25, v13 + v15);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE78, &qword_25F4ADFE0);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE80, &qword_25F4ADFE8);
      *v16 = v19;
      (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
      swift_willThrow();
      (*(v18 + 8))(a1, v17);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    sub_25F3F21F4(&v21, &qword_27FD6EE50, &qword_25F4ADFC0);
    type metadata accessor for PreviewIncrementalUpdate.UnarchiveError();
    sub_25F456DA0(&qword_27FD6EE58);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    swift_willThrow();
    v11 = sub_25F4A25E0();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }

  return result;
}

uint64_t type metadata accessor for PreviewIncrementalUpdate.UnarchiveError()
{
  result = qword_27FD6EE88;
  if (!qword_27FD6EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewIncrementalUpdate.description.getter()
{
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
  sub_25F4A3140();
  return 0;
}

unint64_t sub_25F45674C()
{
  v1 = v0;
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreviewIncrementalUpdate.UnarchiveError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F456DE4(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0xD00000000000003DLL;
  }

  v13 = *(v11 + 48);
  v14 = *(v11 + 64);
  (*(v3 + 32))(v6, v10, v2);
  sub_25F4031EC(&v10[v13], v22);
  sub_25F4031EC(&v10[v14], v21);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD00000000000002ALL, 0x800000025F4B81F0);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getDynamicType();
  v15 = sub_25F4A33B0();
  MEMORY[0x25F8DD480](v15);

  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B8220);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](8250, 0xE200000000000000);
  sub_25F4A2570();
  v16 = sub_25F4A2B70();
  v18 = v17;

  MEMORY[0x25F8DD480](v16, v18);

  v12 = v20[0];
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t sub_25F456A48()
{
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
  sub_25F4A3140();
  return 0;
}

uint64_t sub_25F456B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F456BE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F456C70()
{
  sub_25F456CC8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25F456CC8()
{
  if (!qword_27FD6EE98)
  {
    sub_25F4A25E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FD6EE98);
    }
  }
}

uint64_t sub_25F456D38(uint64_t a1)
{
  *(a1 + 8) = sub_25F456DA0(&qword_27FD6EEA0);
  result = sub_25F456DA0(&qword_27FD6EE58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F456DA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewIncrementalUpdate.UnarchiveError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F456DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewIncrementalUpdate.UnarchiveError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F456E48(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    sub_25F4031FC(*(a5 + 56) + 32 * a2, result);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

PreviewsMessagingOS::JITCapabilities __swiftcall JITCapabilities.init(supportsJITLinking:supportsLoadCommands:)(Swift::Bool supportsJITLinking, Swift::Bool supportsLoadCommands)
{
  if (supportsLoadCommands)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | supportsJITLinking);
}

uint64_t sub_25F456F6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "linkage";
  }

  else
  {
    v5 = "supportsJITLinking";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "supportsJITLinking";
  }

  else
  {
    v8 = "linkage";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25F4A3270();
  }

  return v10 & 1;
}

uint64_t sub_25F457018()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F457098()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F457104()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F457180@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25F4571E0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "supportsJITLinking";
  }

  else
  {
    v3 = "linkage";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_25F457220()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_25F45731C()
{
  v1 = *(v0 + 16);
  *(v0 + 17);
  return sub_25F4572A4();
}

uint64_t sub_25F457358(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for JITCapabilities.Key;
  v6[4] = sub_25F457990();
  LOBYTE(v6[0]) = a3 & 1;
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOBYTE(v6[0]) = v7 & 1;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_25F457418()
{
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F457460@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F457694(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

id static JITCapabilities.userDefaultSupportsJITLinking.getter()
{
  if (qword_27FD6D388 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25F4A2C10();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25F45757C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EEA8, &qword_25F4AE218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F4A43D0;
  *(inited + 32) = 0xD000000000000014;
  v2 = inited + 32;
  *(inited + 40) = 0x800000025F4B8280;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_25F4929F4(inited);
  swift_setDeallocating();
  sub_25F457928(v2);
  v3 = sub_25F4A2B50();

  [v0 registerDefaults_];
}

uint64_t sub_25F457694(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_25F457358(KeyPath, a1, 0);
  if (v1)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {

    v4 = swift_getKeyPath();
    sub_25F457358(v4, a1, 1);
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for JITCapabilities(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JITCapabilities(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F457928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EEB0, &qword_25F4AE220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F457990()
{
  result = qword_27FD6EEB8;
  if (!qword_27FD6EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EEB8);
  }

  return result;
}

unint64_t sub_25F4579F8()
{
  result = qword_27FD6EEC0;
  if (!qword_27FD6EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EEC0);
  }

  return result;
}

uint64_t DaemonConnection.invalidationHandle.getter()
{
  sub_25F45968C();
}

char *DaemonConnection.__allocating_init(connection:role:serviceDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = sub_25F459694(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a2);

  return v12;
}

char *DaemonConnection.init(connection:role:serviceDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_25F459694(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a2);

  return v7;
}

uint64_t sub_25F457C0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_25F4A2710();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  swift_getWitnessTable();
  sub_25F441084();
  sub_25F4A2690();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F457D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v5 = *a2;
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_25F404B8C(a2 + v5[16], v20 - v14, &qword_27FD6DF98, &unk_25F4A7580);
  v16 = *v15;

  v17 = *(v12 + 56);
  sub_25F4A2A80();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2650();
  (*(v7 + 8))(v10, v6);
  (*(*(v18 - 8) + 8))(&v15[v17], v18);
  sub_25F4A20B0();
  return (*(v5[11] + 16))(v5[10]);
}

uint64_t DaemonConnection.activate(receiver:interruptionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = *v2;
  v24 = sub_25F4A2A70();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(v2 + v5[14]);

  sub_25F4A20C0();
  v16 = v5[10];
  v17 = v5[11];
  v25[3] = type metadata accessor for DaemonConnection.Receiver();
  v25[4] = swift_getWitnessTable();
  v25[0] = v23;
  v25[1] = a2;

  sub_25F4A2100();
  sub_25F3F21F4(v25, &qword_27FD6EEC8, &unk_25F4AE338);
  sub_25F404B8C(v3 + *(*v3 + 128), v14, &qword_27FD6DF98, &unk_25F4A7580);
  v18 = *v14;

  v19 = *(v11 + 56);
  sub_25F4A2A80();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2680();
  (*(v6 + 8))(v9, v24);
  return (*(*(v20 - 8) + 8))(&v14[v19], v20);
}

uint64_t DaemonConnection.sender.getter()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F458310, 0, 0);
}

uint64_t sub_25F458310()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25F404B8C(*(v0 + 16) + *(**(v0 + 16) + 128), v2, &qword_27FD6DF98, &unk_25F4A7580);
  v3 = *v2;
  *(v0 + 40) = v3;
  *(v0 + 64) = *(v1 + 48);
  v4 = *(MEMORY[0x277D857C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  *v5 = v0;
  v5[1] = sub_25F45841C;
  v7 = MEMORY[0x277D84950];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v6, v3, v8, v6, v7);
}

uint64_t sub_25F45841C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);

    v5 = sub_25F458618;
  }

  else
  {
    v5 = sub_25F458538;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F458538()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v5 - 8) + 8))(v3 + v1, v5);

  v6 = *(v0 + 8);

  return v6(sub_25F45A094, v4);
}

uint64_t sub_25F458618()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 56);

  return v4();
}

void sub_25F4586C8(void *a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v3 = sub_25F4A2A70();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TransportReply();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  sub_25F404B8C(v34, v11, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25F3F21F4(v11, &qword_27FD6DEB0, &qword_25F4AB200);
    v19 = *(v2 + *(*v2 + 112));
    v20 = LazyPropertyList.encoded.getter();
    sub_25F4A20F0();
  }

  else
  {
    v30 = v18;
    sub_25F40CA18(v11, v18);
    v34 = *(v2 + *(*v2 + 112));
    v35 = LazyPropertyList.encoded.getter();
    sub_25F4A2A80();
    sub_25F412F00(v18, v16);
    v21 = v31;
    v23 = v32 + 32;
    v22 = *(v32 + 32);
    v24 = v7;
    v25 = v33;
    v22(v31, v24, v33);
    v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v27 = (v14 + *(v23 + 48) + v26) & ~*(v23 + 48);
    v28 = swift_allocObject();
    sub_25F40CA18(v16, v28 + v26);
    v22((v28 + v27), v21, v25);
    v29 = v35;
    sub_25F4A20E0();

    sub_25F412CE4(v30, type metadata accessor for TransportReply);
  }
}

uint64_t DaemonConnection.description.getter()
{
  v1 = v0;
  v2 = *v0;
  sub_25F4A30F0();
  v3 = (*(*(v2 + 88) + 8))(*(v2 + 80), *(v2 + 88));

  MEMORY[0x25F8DD480](0x7463656E6E6F6320, 0xEF206E6F206E6F69);
  MEMORY[0x25F8DD480](*(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8));
  return v3;
}

uint64_t DaemonConnection.send(serviceMessage:reply:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for LazyPropertyList();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F4A25E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServiceMessage(0);
  sub_25F459B48();
  sub_25F4A2940();
  (*(v12 + 32))(v10, v15, v11);
  swift_storeEnumTagMultiPayload();
  sub_25F412F00(a2, v6);
  v16 = type metadata accessor for TransportReply();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  sub_25F4586C8(v10, v6);
  sub_25F3F21F4(v6, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v10, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F458D88(void *a1, void (*a2)(uint64_t *, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for LazyPropertyList();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 data];
  v13 = sub_25F4A2060();
  v15 = v14;

  *v11 = v13;
  v11[1] = v15;
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TransportReply();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  a2(v11, v7);
  sub_25F3F21F4(v7, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v11, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F458F30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, char *), uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v31 = a2;
  v32 = a3;
  v30 = sub_25F4A2910();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F4A2A70();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for LazyPropertyList();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [a1 data];
  v21 = sub_25F4A2060();
  v23 = v22;

  *v19 = v21;
  v19[1] = v23;
  swift_storeEnumTagMultiPayload();
  sub_25F4A2A80();
  *(swift_allocObject() + 16) = a1;
  (*(v6 + 104))(v9, *MEMORY[0x277D404C0], v30);
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  v26 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2440();
  v27 = type metadata accessor for TransportReply();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  v34(v19, v15);
  sub_25F3F21F4(v15, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v19, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F4592A4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_25F458D88(a1, *v2);
}

uint64_t sub_25F4592B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  return sub_25F458F30(a1, a2, a3, *v4, *(v4 + 8));
}

char *DaemonConnection.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  v3 = *&v0[*(*v0 + 112)];

  v4 = *&v0[*(*v0 + 120) + 8];

  sub_25F3F21F4(&v0[*(*v0 + 128)], &qword_27FD6DF98, &unk_25F4A7580);
  return v0;
}

uint64_t DaemonConnection.__deallocating_deinit()
{
  DaemonConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F459428()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F4594B8;

  return DaemonConnection.sender.getter();
}

uint64_t sub_25F4594B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_25F4595C8()
{
  v1 = *v0;
  sub_25F45968C();
}

uint64_t sub_25F459620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

char *sub_25F459694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v38 = a2;
  v40 = *v4;
  v41 = v40;
  v7 = *(v40 + 80);
  v8 = *(v7 - 8);
  v39 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v33 - v9;
  v34 = sub_25F4A2A70();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F4A2910();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 104))(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v18 = sub_25F4A29F0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v4 + 2) = sub_25F4A29E0();
  v21 = &v5[*(*v5 + 128)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580) + 48);
  sub_25F4A2A80();
  v23 = sub_25F4A2F70();
  (*(v10 + 8))(v13, v34);
  *v21 = v23;
  *&v5[*(*v5 + 112)] = a1;
  v24 = &v5[*(*v5 + 120)];
  v25 = v36;
  *v24 = v35;
  *(v24 + 1) = v25;
  v26 = *(v8 + 16);
  v27 = v38;
  v26(&v5[*(*v5 + 104)], v38, v7);

  sub_25F4A20D0();
  v42 = v5;
  v28 = v37;
  v26(v37, v27, v7);
  v29 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v30 = swift_allocObject();
  v31 = v40;
  *(v30 + 2) = v7;
  *(v30 + 3) = *(v31 + 88);
  *(v30 + 4) = v5;
  *(v30 + 5) = a1;
  (*(v8 + 32))(&v30[v29], v28, v7);

  swift_getWitnessTable();
  sub_25F4A2930();

  return v5;
}

unint64_t sub_25F459B48()
{
  result = qword_27FD6EED0[0];
  if (!qword_27FD6EED0[0])
  {
    type metadata accessor for ServiceMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6EED0);
  }

  return result;
}

uint64_t sub_25F459BA0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_25F459C44(uint64_t a1)
{
  v1 = MEMORY[0x277D83428] + 64;
  v9 = MEMORY[0x277D83428] + 64;
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v11 = v1;
    v12 = &unk_25F4AE478;
    sub_25F459D88();
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v13 = &v8;
      swift_initClassMetadata2();
    }
  }
}

void sub_25F459D88()
{
  if (!qword_27FD6EF58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v0 = sub_25F4A2F80();
    if (!v1)
    {
      atomic_store(v0, qword_27FD6EF58);
    }
  }
}

uint64_t sub_25F459E00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F459E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F459E84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25F459EC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F459EF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F459F30()
{
  v1 = *(type metadata accessor for TransportReply() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F4A2A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F45A0A0()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

CGSize __swiftcall PreviewTraits.Orientation.rotatedSize(_:)(CGSize result)
{
  v2 = *v1;
  if (v2 >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (v2 >= 2)
  {
    result.height = result.width;
  }

  v4 = height;
  result.width = v4;
  return result;
}

uint64_t PreviewTraits.Orientation.deviceRotationAngle.getter()
{
  v1 = dbl_25F4AE538[*v0];
  v2 = [objc_opt_self() degrees];
  v3 = sub_25F45A264();
  v4.n128_f64[0] = v1;

  return MEMORY[0x28211B708](v2, v3, v4);
}

unint64_t sub_25F45A264()
{
  result = qword_27FD6EFE0[0];
  if (!qword_27FD6EFE0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD6EFE0);
  }

  return result;
}

uint64_t sub_25F45A2B0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PipeServiceInterface();
  swift_getWitnessTable();
  type metadata accessor for TransportEvent();
  result = sub_25F4A2F50();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25F45A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[16] = *(v3 + 88);
  v4[17] = *(v3 + 80);
  v4[18] = swift_getAssociatedTypeWitness();
  v4[19] = swift_getAssociatedConformanceWitness();
  v4[20] = type metadata accessor for PipeServiceInterface();
  v4[21] = swift_getWitnessTable();
  type metadata accessor for TransportEvent();
  v5 = sub_25F4A2F50();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  swift_getObjectType();
  v9 = sub_25F4A2E40();
  v4[26] = v9;
  v4[27] = v8;

  return MEMORY[0x2822009F8](sub_25F45A5B0, v9, v8);
}

uint64_t sub_25F45A5B0()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  Transport.activate<A>(forReceivingEvents:)(v3, v7, v3, v8, v2);
  v10 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  v11 = type metadata accessor for PipeServiceInterface();
  v12 = swift_task_alloc();
  v0[28] = v12;
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_25F45A700;

  return Transport.transportSender<A>(for:)((v0 + 2), v11, v10, v11, v9);
}

uint64_t sub_25F45A700()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_25F45AAE0;
  }

  else
  {
    v7 = sub_25F45A83C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F45A83C()
{
  v31 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v23 = v1;
  v24 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 120);
  v22 = *(v0 + 112);
  v7 = *(v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v25 = *(v0 + 24);
  (*(v3 + 16))(v2);
  v26 = v7;
  v27 = v25;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();

  v13 = sub_25F45B740(v2, &v26);
  type metadata accessor for Junction();
  WitnessTable = swift_getWitnessTable();

  v16 = sub_25F440E98(v15, WitnessTable, 0, 0, sub_25F460F44, v13, sub_25F460EF0, v13);
  v17 = *(*v13 + 120);
  v18 = *&v13[v17];
  *&v13[v17] = v16;
  swift_retain_n();

  *(v0 + 104) = v13;
  sub_25F412F74(v22, v0 + 64);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  sub_25F412FDC((v0 + 64), v19 + 24);

  swift_getWitnessTable();
  sub_25F4A28F0();

  (*(v3 + 8))(v23, v24);

  v20 = *(v0 + 8);

  return v20(v13, v16);
}

uint64_t sub_25F45AAE0()
{
  v1 = v0[24];
  (*(v0[23] + 8))(v0[25], v0[22]);

  v2 = v0[1];
  v3 = v0[29];

  return v2();
}

uint64_t sub_25F45AB68(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = *v2;
  v5 = sub_25F4A2710();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  v3[15] = swift_getAssociatedTypeWitness();
  v3[16] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PipeEvent.Content();
  v3[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[19] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v3[20] = v13;
  v3[21] = *(v13 + 64);
  v3[22] = swift_task_alloc();
  v14 = type metadata accessor for PipeEvent();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  type metadata accessor for PipeServiceInterface();
  swift_getWitnessTable();
  v17 = type metadata accessor for TransportMessage();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();
  v20 = type metadata accessor for TransportEvent();
  v3[29] = v20;
  v21 = *(v20 - 8);
  v3[30] = v21;
  v22 = *(v21 + 64) + 15;
  v3[31] = swift_task_alloc();
  v23 = *(*(sub_25F4A3060() - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v24 = sub_25F4A2F40();
  v3[33] = v24;
  v25 = *(v24 - 8);
  v3[34] = v25;
  v26 = *(v25 + 64) + 15;
  v3[35] = swift_task_alloc();
  swift_getObjectType();
  v28 = sub_25F4A2E40();
  v3[36] = v28;
  v3[37] = v27;

  return MEMORY[0x2822009F8](sub_25F45AFAC, v28, v27);
}

uint64_t sub_25F45AFAC()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[10];
  v4 = *(*v3 + 104);
  sub_25F4A2F50();
  sub_25F4A2F10();
  v0[38] = *(*v3 + 128);
  swift_beginAccess();
  v5 = v0[8];
  v6 = v0[9];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_25F45B0BC;
  v9 = v0[35];
  v10 = v0[32];
  v11 = v0[33];

  return MEMORY[0x2822003E8](v10, v5, v6, v11);
}

uint64_t sub_25F45B0BC()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_25F45B1DC, v4, v3);
}

uint64_t sub_25F45B1DC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[31];
    v57 = v0[28];
    v58 = v0[25];
    v5 = v0[22];
    v61 = v0[18];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];
    (*(v0[34] + 8))(v0[35], v0[33]);
    v0[5] = v10;
    swift_getWitnessTable();
    sub_25F441084();
    sub_25F4A2690();
    (*(v7 + 8))(v6, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[31];
    v14 = v0[26];
    v15 = v0[27];
    (*(v3 + 32))(v13, v1, v2);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      v16 = v0[19];
      v17 = *(v0[10] + v0[38]);

      if (sub_25F4A2DE0())
      {
        v18 = 0;
        do
        {
          v19 = v0[19];
          v20 = sub_25F4A2DD0();
          sub_25F4A2D40();
          if (v20)
          {
            (*(v0[20] + 16))(v0[22], v17 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v18, v0[19]);
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_15;
            }
          }

          else
          {
            v31 = v0[21];
            v32 = v0[19];
            v33 = sub_25F4A3100();
            if (v31 != 8)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v33, v34, v35, v36);
            }

            v37 = v0[22];
            v38 = v0[19];
            v39 = v0[20];
            v0[6] = v33;
            (*(v39 + 16))(v37, v0 + 6, v38);
            swift_unknownObjectRelease();
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          v23 = v0[24];
          v22 = v0[25];
          v24 = v0[22];
          v60 = v0[23];
          v62 = v0[19];
          v25 = v17;
          v26 = v0[17];
          v27 = v0[18];
          v29 = v0[15];
          v28 = v0[16];
          v59 = v0[10];
          swift_storeEnumTagMultiPayload();
          v30 = v27;
          v17 = v25;
          sub_25F40BD68(v30, v24, v22);
          sub_25F45C544();
          (*(v23 + 8))(v22, v60);
          ++v18;
        }

        while (v21 != sub_25F4A2DE0());
      }

      v48 = v0[13];
      v47 = v0[14];
      v49 = v0[11];
      v50 = v0[12];
      v51 = v0[10];

      v0[7] = v51;
      swift_getWitnessTable();
      sub_25F441084();
      sub_25F4A2690();
      (*(v48 + 8))(v47, v50);
    }

    else
    {
LABEL_16:
      v41 = v0[27];
      v40 = v0[28];
      v43 = v0[25];
      v42 = v0[26];
      v44 = v0[23];
      v45 = v0[24];
      v46 = v0[10];
      (*(v41 + 32))(v40, v0[31], v42);
      sub_25F45BB14(v42, v43);
      sub_25F45C544();
      (*(v45 + 8))(v43, v44);
      (*(v41 + 8))(v40, v42);
    }

    v52 = v0[8];
    v53 = v0[9];
    v54 = *(MEMORY[0x277D85798] + 4);
    v55 = swift_task_alloc();
    v0[39] = v55;
    *v55 = v0;
    v55[1] = sub_25F45B0BC;
    v56 = v0[35];
    v33 = v0[32];
    v36 = v0[33];
    v34 = v52;
    v35 = v53;

    return MEMORY[0x2822003E8](v33, v34, v35, v36);
  }
}

char *sub_25F45B6F4(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_25F45B740(a1, a2);
}

char *sub_25F45B740(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *a2;
  v20 = *(a2 + 3);
  v8 = a2[5];
  v9 = sub_25F4A2990();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v2 + 2) = sub_25F4A2980();
  *&v2[*(*v2 + 120)] = 0;
  v12 = *(*v2 + 128);
  v13 = *(v6 + 88);
  v14 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v19 = *(a2 + 1);
  *&v3[v12] = sub_25F4A2DB0();
  v15 = *(*v3 + 104);
  type metadata accessor for PipeServiceInterface();
  swift_getWitnessTable();
  type metadata accessor for TransportEvent();
  v16 = sub_25F4A2F50();
  (*(*(v16 - 8) + 32))(&v3[v15], a1, v16);
  v17 = &v3[*(*v3 + 112)];
  *v17 = v7;
  *(v17 + 8) = v19;
  *(v17 + 24) = v20;
  *(v17 + 5) = v8;
  return v3;
}

uint64_t sub_25F45B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_getObjectType();
  swift_getWitnessTable();
  v7 = *(a2 + 8);
  return sub_25F4A2900();
}

uint64_t sub_25F45BA6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a2 + 120);
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;

  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = *(*(v6 + 8) + 8);
  return sub_25F4A2690();
}

uint64_t sub_25F45BB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = *(a1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v65 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v67 = swift_getAssociatedTypeWitness();
  v66 = *(v67 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v65 - v9;
  v10 = type metadata accessor for PipeServiceInterface.TwoWayContent();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = &v65 - v12;
  v87 = type metadata accessor for TransportReply();
  v71 = *(v87 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v88 = v5;
  v89 = v10;
  v90 = v4;
  v91 = WitnessTable;
  v16 = type metadata accessor for PipeServiceInterface.Message();
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = *(v77 + 64);
  MEMORY[0x28223BE20](v16);
  v76 = &v65 - v18;
  v19 = type metadata accessor for PipeServiceInterface.OneWayContent();
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v23 = swift_getWitnessTable();
  v88 = v5;
  v89 = v19;
  v90 = v4;
  v91 = v23;
  v24 = type metadata accessor for PipeServiceInterface.Message();
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v65 - v27;
  v29 = *(a1 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_getAssociatedTypeWitness();
  v83 = *(v33 - 8);
  v84 = v33;
  v34 = *(v83 + 64);
  MEMORY[0x28223BE20](v33);
  v85 = &v65 - v35;
  v81 = type metadata accessor for PipeEvent.Content();
  v36 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v65 - v37;
  (*(v29 + 16))(v32, v80, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v49 = v87;
    v50 = v72;
    (*(v72 + 32))(v28, v32, v24);
    (*(v73 + 16))(v22, v28, v19);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
    v52 = (*(*(v51 - 8) + 48))(v22, 3, v51);
    if (v52 > 1)
    {
      v55 = v85;
    }

    else
    {
      if (!v52)
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
        v54 = sub_25F4A25E0();
        v48 = v79;
        (*(*(v54 - 8) + 32))();
        (*(v71 + 56))(v48 + v53, 1, 1, v49);
        v55 = v85;
LABEL_12:
        swift_storeEnumTagMultiPayload();
        (*(v83 + 16))(v55, &v28[*(v24 + 52)], v84);
        (*(v50 + 8))(v28, v24);
        return sub_25F40BD68(v48, v55, v86);
      }

      v55 = v85;
    }

    v48 = v79;
    goto LABEL_12;
  }

  v38 = v78;
  v39 = *(swift_getTupleTypeMetadata2() + 48);
  v40 = v76;
  v41 = v77;
  (*(v77 + 32))(v76, v32, v38);
  sub_25F40CA18(&v32[v39], v82);
  v42 = v75;
  (*(v74 + 16))(v75, v40, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v38;
    v44 = v41;
    v45 = v40;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
    v47 = sub_25F4A25E0();
    v48 = v79;
    (*(*(v47 - 8) + 32))(v79, v42, v47);
    sub_25F40CA18(v82, v48 + v46);
    (*(v71 + 56))(v48 + v46, 0, 1, v87);
  }

  else
  {
    v56 = v67;
    v57 = AssociatedTypeWitness;
    v58 = *(swift_getTupleTypeMetadata2() + 48);
    v80 = *(v66 + 32);
    v59 = v65;
    v80(v65, v42, v56);
    v74 = *(v69 + 32);
    v60 = v68;
    (v74)(v68, &v42[v58], v57);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v62 = *(TupleTypeMetadata3 + 48);
    v87 = *(TupleTypeMetadata3 + 64);
    v48 = v79;
    v63 = v59;
    v43 = v78;
    v80(v79, v63, v56);
    v44 = v77;
    (v74)(v48 + v62, v60, v57);
    v45 = v76;
    sub_25F40CA18(v82, v48 + v87);
  }

  swift_storeEnumTagMultiPayload();
  v55 = v85;
  (*(v83 + 16))(v85, &v45[*(v43 + 52)], v84);
  (*(v44 + 8))(v45, v43);
  return sub_25F40BD68(v48, v55, v86);
}

uint64_t sub_25F45C544()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PipeEvent();
  return sub_25F40C854(sub_25F460ED4);
}

uint64_t sub_25F45C624(uint64_t a1, uint64_t a2)
{
  v151 = a2;
  v152 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = *(AssociatedTypeWitness - 8);
  v6 = *(v135 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v134 = &v118 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v129 = swift_getAssociatedTypeWitness();
  v133 = *(v129 - 8);
  v8 = *(v133 + 64);
  MEMORY[0x28223BE20](v129);
  v132 = &v118 - v9;
  v10 = type metadata accessor for PipeServiceInterface.TwoWayContent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v124 = &v118 - v12;
  WitnessTable = swift_getWitnessTable();
  v153 = v4;
  v154 = v10;
  v155 = v5;
  v156 = WitnessTable;
  v123 = WitnessTable;
  v127 = type metadata accessor for PipeServiceInterface.Message();
  v126 = *(v127 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v118 - v15;
  v130 = type metadata accessor for TransportReply();
  v121 = *(v130 - 8);
  v16 = *(v121 + 64);
  v17 = MEMORY[0x28223BE20](v130);
  v131 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v118 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v120 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v118 - v24;
  v26 = sub_25F4A25E0();
  v128 = *(v26 - 8);
  v27 = *(v128 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_getAssociatedTypeWitness();
  v148 = *(v30 - 8);
  v149 = v30;
  v31 = *(v148 + 64);
  MEMORY[0x28223BE20](v30);
  v150 = &v118 - v32;
  v33 = type metadata accessor for PipeServiceInterface.OneWayContent();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v137 = &v118 - v35;
  v36 = swift_getWitnessTable();
  v153 = v4;
  v154 = v33;
  v138 = v36;
  v139 = v33;
  v155 = v5;
  v156 = v36;
  v37 = type metadata accessor for PipeServiceInterface.Message();
  v141 = *(v37 - 8);
  v142 = v37;
  v38 = *(v141 + 64);
  MEMORY[0x28223BE20](v37);
  v140 = &v118 - v39;
  v40 = type metadata accessor for PipeEvent.Content();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v118 - v42;
  v44 = *v2;
  v45 = v2[2];
  v46 = v2[3];
  v143 = v2[1];
  v144 = v45;
  v48 = v2[4];
  v47 = v2[5];
  v145 = v46;
  v146 = v48;
  v147 = v47;
  v49 = v152;
  (*(v50 + 16))(v43, v152, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v119 = v25;
    v54 = v128;
    v118 = v10;
    if (EnumCaseMultiPayload)
    {
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      v89 = v54;
      (*(v54 + 32))(v29, v43, v26);
      v90 = &v43[v88];
      v91 = v119;
      sub_25F40C8DC(v90, v119);
      v92 = v120;
      sub_25F40C94C(v91, v120);
      if ((*(v121 + 48))(v92, 1, v130) == 1)
      {
        sub_25F3F21F4(v92, &qword_27FD6DEB0, &qword_25F4AB200);
        v153 = v44;
        v154 = v143;
        v155 = v144;
        v156 = v145;
        v157 = v146;
        v158 = v147;
        v93 = v137;
        (*(v89 + 16))(v137, v29, v26);
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        (*(*(v94 - 8) + 56))(v93, 0, 3, v94);
        v95 = type metadata accessor for PipeEvent();
        v96 = v150;
        (*(v148 + 16))(v150, v152 + *(v95 + 36), v149);
        v97 = v140;
        sub_25F45D9C8(v93, v96, v139, v140);
        v98 = v151;
        v99 = swift_getWitnessTable();
        v100 = v142;
        v101 = swift_getWitnessTable();
        TransportSenderProtocol<>.send(oneWay:)(v97, v98, v99, v101);
        (*(v141 + 8))(v97, v100);
        sub_25F3F21F4(v119, &qword_27FD6DEB0, &qword_25F4AB200);
        return (*(v89 + 8))(v29, v26);
      }

      else
      {
        v102 = v26;
        sub_25F40CA18(v92, v122);
        v153 = v44;
        v154 = v143;
        v155 = v144;
        v156 = v145;
        v157 = v146;
        v158 = v147;
        v103 = v89;
        v104 = *(v89 + 16);
        v105 = v124;
        v106 = v29;
        v107 = v29;
        v108 = v102;
        v104(v124, v107, v102);
        v109 = v118;
        swift_storeEnumTagMultiPayload();
        v110 = type metadata accessor for PipeEvent();
        v111 = v150;
        (*(v148 + 16))(v150, v152 + *(v110 + 36), v149);
        v112 = v125;
        sub_25F45D9C8(v105, v111, v109, v125);
        v113 = v151;
        v114 = swift_getWitnessTable();
        v115 = v127;
        v116 = swift_getWitnessTable();
        v117 = v122;
        TransportSenderProtocol<>.send(message:reply:)(v112, v122, v113, v114, v116);
        (*(v126 + 8))(v112, v115);
        sub_25F40C9BC(v117);
        sub_25F3F21F4(v119, &qword_27FD6DEB0, &qword_25F4AB200);
        return (*(v103 + 8))(v106, v108);
      }
    }

    else
    {
      v55 = v129;
      v56 = AssociatedTypeWitness;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v58 = *(TupleTypeMetadata3 + 48);
      v59 = *(TupleTypeMetadata3 + 64);
      v60 = v133;
      v61 = v132;
      (*(v133 + 32))(v132, v43, v55);
      (*(v135 + 32))(v134, &v43[v58], v56);
      sub_25F40CA18(&v43[v59], v131);
      v153 = v44;
      v154 = v143;
      v155 = v144;
      v156 = v145;
      v157 = v146;
      v158 = v147;
      v62 = v56;
      v63 = *(swift_getTupleTypeMetadata2() + 48);
      v64 = *(v60 + 16);
      v65 = v124;
      v66 = v55;
      v64(v124, v61, v55);
      v67 = v135;
      v68 = v134;
      (*(v135 + 16))(v65 + v63, v134, v62);
      v69 = v118;
      swift_storeEnumTagMultiPayload();
      v70 = type metadata accessor for PipeEvent();
      v71 = v150;
      (*(v148 + 16))(v150, v152 + *(v70 + 36), v149);
      v72 = v125;
      sub_25F45D9C8(v65, v71, v69, v125);
      v73 = v151;
      v74 = swift_getWitnessTable();
      v75 = v127;
      v76 = swift_getWitnessTable();
      v77 = v131;
      TransportSenderProtocol<>.send(message:reply:)(v72, v131, v73, v74, v76);
      (*(v126 + 8))(v72, v75);
      sub_25F40C9BC(v77);
      (*(v67 + 8))(v68, AssociatedTypeWitness);
      return (*(v133 + 8))(v132, v66);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v153 = v44;
      v154 = v143;
      v155 = v144;
      v156 = v145;
      v157 = v146;
      v158 = v147;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      v53 = v137;
      (*(*(v79 - 8) + 56))(v137, 1, 3, v79);
    }

    else
    {
      v153 = v44;
      v154 = v143;
      v155 = v144;
      v156 = v145;
      v157 = v146;
      v158 = v147;
      if (EnumCaseMultiPayload == 3)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        v53 = v137;
        (*(*(v52 - 8) + 56))(v137, 2, 3, v52);
      }

      else
      {
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        v53 = v137;
        (*(*(v80 - 8) + 56))(v137, 3, 3, v80);
      }
    }

    v81 = type metadata accessor for PipeEvent();
    v82 = v150;
    (*(v148 + 16))(v150, v49 + *(v81 + 36), v149);
    v83 = v140;
    sub_25F45D9C8(v53, v82, v139, v140);
    v84 = v151;
    v85 = swift_getWitnessTable();
    v86 = v142;
    v87 = swift_getWitnessTable();
    TransportSenderProtocol<>.send(oneWay:)(v83, v84, v85, v87);
    return (*(v141 + 8))(v83, v86);
  }
}

uint64_t sub_25F45D574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a3;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v16 - v11;
  if (*(a2 + *(v5 + 120)))
  {

    sub_25F440F18(a1);
  }

  else
  {
    v14 = type metadata accessor for PipeEvent();
    (*(v9 + 16))(v12, v17 + *(v14 + 36), AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v12, AssociatedTypeWitness, v15);
    return swift_willThrow();
  }
}

char *sub_25F45D798()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PipeServiceInterface();
  swift_getWitnessTable();
  type metadata accessor for TransportEvent();
  v6 = sub_25F4A2F50();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);
  v7 = &v0[*(*v0 + 112)];
  v8 = *(v7 + 1);
  v9 = *(v7 + 3);
  v10 = *(v7 + 5);

  v11 = *&v0[*(*v0 + 120)];

  v12 = *&v0[*(*v0 + 128)];

  return v0;
}

uint64_t sub_25F45D940()
{
  sub_25F45D798();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F45D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  v6 = *(type metadata accessor for PipeServiceInterface.Message() + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a4 + v6, a2, AssociatedTypeWitness);
}

uint64_t sub_25F45DAB4()
{
  v0 = sub_25F4A3170();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F45DB08()
{
  type metadata accessor for PipeServiceInterface.Message.Key();
  sub_25F4A3220();
  swift_allocObject();
  v0 = sub_25F4A2D30();
  *v1 = 256;
  return sub_25F4622B0(v0);
}

uint64_t sub_25F45DB74(char a1)
{
  if (a1)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_25F45DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F45DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DC94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45DD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DDE0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_25F45DAB4();
  *a3 = result;
  return result;
}

uint64_t sub_25F45DE1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = sub_25F45DB74(*v2);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_25F45DE54(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_25F45DB74(*v1);
}

uint64_t sub_25F45DE68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_25F45DB08();
  *a2 = result;
  return result;
}

uint64_t sub_25F45DE9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  return sub_25F4A25A0();
}

uint64_t sub_25F45DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v51 = a1;
  v59 = a4;
  v60 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F4A3060();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - v11;
  v12 = sub_25F4A3060();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v46 - v14;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v49 = type metadata accessor for PipeServiceInterface.Message.Key();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = TupleTypeMetadata2;
  v61 = *(TupleTypeMetadata2 - 8);
  v16 = *(v61 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = swift_getTupleTypeMetadata2();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v46 - v28;
  v30 = *(v27 + 48);
  *(&v46 - v28) = 0;
  v31 = *(a3 - 8);
  v32 = v51;
  (*(v31 + 16))(&v46 + v30 - v28, v51, a3);
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v21;
  *v21 = 1;
  v63 = v60;
  v64 = a3;
  v65 = v59;
  v66 = v57;
  v35 = *(type metadata accessor for PipeServiceInterface.Message() + 52);
  v36 = *(AssociatedTypeWitness - 8);
  v37 = v32 + v35;
  v38 = AssociatedTypeWitness;
  (*(v36 + 16))(&v34[v33], v37);
  v39 = *(v58 + 16);
  v48 = v22;
  v39(v26, v29, v22);
  LOBYTE(v33) = *v26;
  v40 = &v26[*(v22 + 48)];
  v41 = v50;
  (*(v31 + 32))(v50, v40, a3);
  (*(v31 + 56))(v41, 0, 1, a3);
  LOBYTE(v63) = v33;
  v42 = v46;
  (*(v61 + 16))(v19, v34, v46);
  LOBYTE(v33) = *v19;
  v43 = v52;
  (*(v36 + 32))(v52, &v19[*(v42 + 48)], v38);
  (*(v36 + 56))(v43, 0, 1, v38);
  v62 = v33;
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v44 = sub_25F4A28D0();
  (*(v55 + 8))(v43, v56);
  (*(v53 + 8))(v41, v54);
  (*(v61 + 8))(v34, v42);
  (*(v58 + 8))(v29, v48);
  return v44;
}

uint64_t sub_25F45E46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v26 - v14;
  v30 = *(a3 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v18 = type metadata accessor for PipeServiceInterface.Message.Key();
  v36 = v18;
  WitnessTable = swift_getWitnessTable();
  v37 = WitnessTable;
  LOBYTE(v35[0]) = 0;
  sub_25F4A2530();
  if (v6)
  {
    v20 = sub_25F4A25E0();
    (*(*(v20 - 8) + 8))(a1, v20);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    (*(v30 + 32))(v38, v17, a3);
    v36 = v18;
    v37 = WitnessTable;
    LOBYTE(v35[0]) = 1;
    v22 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v23 = v28;
    sub_25F4A2530();
    v24 = sub_25F4A25E0();
    (*(*(v24 - 8) + 8))(a1, v24);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v35[0] = a2;
    v35[1] = a3;
    v35[2] = a4;
    v36 = a5;
    v25 = type metadata accessor for PipeServiceInterface.Message();
    return (*(v27 + 32))(v38 + *(v25 + 52), v23, v22);
  }
}

uint64_t sub_25F45E7C8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F45E814(unsigned __int8 a1)
{
  v1 = 0x704F6D6165727473;
  if (a1)
  {
    v1 = 0x654D6D6165727473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25F45E8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45E948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EA94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F45E7C8();
  *a3 = result;
  return result;
}

uint64_t sub_25F45EAE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45EBD4(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  result = (*(*(v5 - 8) + 48))(v3, 3, v5);
  if (result > 1)
  {
    if (result != 2)
    {
      return 3;
    }
  }

  else if (result)
  {
    return 0;
  }

  else
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(v3, v7);
    return 1;
  }

  return result;
}

uint64_t sub_25F45ED24(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25F45ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EDD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45EE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F45F72C();
  *a3 = result;
  return result;
}

uint64_t sub_25F45EF7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25F45ED24(*v1);
}

uint64_t sub_25F45EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_25F4A25E0();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 24);
  v29 = *(a1 + 16);
  v30 = v18;
  v31 = v3;
  v19 = type metadata accessor for PipeServiceInterface.OneWayContent.Key();
  type metadata accessor for PipeServiceInterface.OneWayContent.Discriminant();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = a2;
  sub_25F4A25C0();
  (*(v14 + 16))(v17, v3, a1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  result = (*(*(v21 - 8) + 48))(v17, 3, v21);
  if (!result)
  {
    v24 = v26;
    v23 = v27;
    (*(v27 + 32))(v26, v17, v10);
    (*(v23 + 16))(v9, v24, v10);
    (*(v23 + 56))(v9, 0, 1, v10);
    v32[3] = v19;
    v32[4] = WitnessTable;
    LOBYTE(v32[0]) = 1;
    sub_25F4A2520();
    sub_25F3F21F4(v9, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v23 + 8))(v24, v10);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  return result;
}

uint64_t sub_25F45F2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for PipeServiceInterface.OneWayContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-1] - v7;
  v9 = type metadata accessor for PipeServiceInterface.OneWayContent.Key();
  v25 = v9;
  WitnessTable = swift_getWitnessTable();
  v26 = WitnessTable;
  LOBYTE(v24[0]) = 0;
  type metadata accessor for PipeServiceInterface.OneWayContent.Discriminant();
  swift_getWitnessTable();
  sub_25F4A2530();
  if (v2)
  {
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v13 = v8;
    v14 = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v17 = sub_25F4A25E0();
        (*(*(v17 - 8) + 8))(a1, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        return (*(*(v18 - 8) + 56))(v14, 2, 3, v18);
      }

      else
      {
        v20 = sub_25F4A25E0();
        (*(*(v20 - 8) + 8))(a1, v20);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        return (*(*(v21 - 8) + 56))(v14, 3, 3, v21);
      }
    }

    else if (v27)
    {
      v25 = v9;
      v26 = WitnessTable;
      LOBYTE(v24[0]) = 1;
      v19 = sub_25F4A25E0();
      sub_25F4A2530();
      (*(*(v19 - 8) + 8))(a1, v19);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      (*(*(v22 - 8) + 56))(v13, 0, 3, v22);
      return (*(v5 + 32))(v14, v13, v4);
    }

    else
    {
      v15 = sub_25F4A25E0();
      (*(*(v15 - 8) + 8))(a1, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      return (*(*(v16 - 8) + 56))(v14, 1, 3, v16);
    }
  }
}

uint64_t sub_25F45F72C()
{
  v0 = sub_25F4A3170();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F45F77C(char a1)
{
  if (a1)
  {
    return 0x654D6D6165727473;
  }

  else
  {
    return 0x7453657461657263;
  }
}

uint64_t sub_25F45F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_25F45F2E4(a1, a3);
}

uint64_t sub_25F45F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F860(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F9AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F45F72C();
  *a3 = result;
  return result;
}

uint64_t sub_25F45FA04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25F45FA40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

BOOL sub_25F45FB30(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    AssociatedTypeWitness = sub_25F4A25E0();
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v10 - 8) + 8))(&v4[*(TupleTypeMetadata2 + 48)], v10);
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);
  return EnumCaseMultiPayload == 1;
}

uint64_t sub_25F45FD28()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F45FD74(unsigned __int8 a1)
{
  v1 = 0x696D697263736964;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (a1)
  {
    v1 = 0x6E696769726FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F45FDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45FE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45FFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F45FD28();
  *a3 = result;
  return result;
}

uint64_t sub_25F460004@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25F46003C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25F45FD74(*v1);
}

uint64_t sub_25F460048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_25F4A25E0();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v44 - v9;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = AssociatedTypeWitness;
  v13 = swift_getAssociatedTypeWitness();
  v48 = sub_25F4A3060();
  v47 = *(v48 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v44 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v44 - v19;
  v44 = *(v13 - 8);
  v20 = *(v44 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v53 = &v44 - v22;
  v23 = *(a1 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v11;
  v61 = v10;
  v62 = v2;
  v27 = type metadata accessor for PipeServiceInterface.TwoWayContent.Key();
  type metadata accessor for PipeServiceInterface.TwoWayContent.Discriminant();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v52 = WitnessTable;
  sub_25F4A25C0();
  (*(v23 + 16))(v26, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v57;
    v29 = v58;
    v31 = v51;
    (*(v57 + 32))(v51, v26, v58);
    v32 = v56;
    (*(v30 + 16))(v56, v31, v29);
    (*(v30 + 56))(v32, 0, 1, v29);
    v64 = v27;
    v65 = v52;
    LOBYTE(v63[0]) = 3;
    sub_25F4A2520();
    sub_25F3F21F4(v32, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v30 + 8))(v31, v29);
  }

  else
  {
    v33 = v13;
    v34 = v55;
    v35 = *(swift_getTupleTypeMetadata2() + 48);
    v36 = v44;
    v37 = v53;
    (*(v44 + 32))(v53, v26, v33);
    v38 = &v26[v35];
    v39 = v50;
    (*(v54 + 32))(v50, v38, v34);
    v40 = v45;
    (*(v36 + 16))(v45, v37, v33);
    (*(v36 + 56))(v40, 0, 1, v33);
    v41 = v52;
    v64 = v27;
    v65 = v52;
    LOBYTE(v63[0]) = 1;
    swift_getAssociatedConformanceWitness();
    sub_25F4A2520();
    (*(v47 + 8))(v40, v48);
    __swift_destroy_boxed_opaque_existential_1(v63);
    v42 = v56;
    (*(v10 + 56))(v39, v11, v10);
    (*(v57 + 56))(v42, 0, 1, v58);
    v64 = v27;
    v65 = v41;
    LOBYTE(v63[0]) = 2;
    sub_25F4A2520();
    sub_25F3F21F4(v42, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v54 + 8))(v39, v55);
    (*(v36 + 8))(v53, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_25F46076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v44 = sub_25F4A25E0();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PipeServiceInterface.TwoWayContent();
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for PipeServiceInterface.TwoWayContent.Key();
  v46 = v18;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  LOBYTE(v45[0]) = 0;
  type metadata accessor for PipeServiceInterface.TwoWayContent.Discriminant();
  swift_getWitnessTable();
  v20 = v43;
  sub_25F4A2530();
  if (v20)
  {
    (*(v7 + 8))(a1, v44);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v22 = a2;
  v37 = v17;
  v38 = 0;
  v43 = v7;
  v23 = a1;
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (v48)
  {
    v46 = v18;
    v47 = WitnessTable;
    LOBYTE(v45[0]) = 3;
    v24 = v44;
    v25 = v38;
    sub_25F4A2530();
    if (v25)
    {
      (*(v43 + 8))(a1, v24);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    (*(v43 + 8))(a1, v24);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v30 = v40;
    swift_storeEnumTagMultiPayload();
    v28 = v15;
  }

  else
  {
    v36 = v18;
    v46 = v18;
    v47 = WitnessTable;
    v26 = WitnessTable;
    LOBYTE(v45[0]) = 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v28 = v37;
    v27 = v38;
    sub_25F4A2530();
    v29 = v44;
    if (v27)
    {
      (*(v43 + 8))(a1, v44);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    v38 = v22;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v46 = v36;
    v47 = v26;
    LOBYTE(v45[0]) = 2;
    v31 = v39;
    sub_25F4A2530();
    v32 = a3;
    v33 = v38;
    swift_getAssociatedTypeWitness();
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    __swift_destroy_boxed_opaque_existential_1(v45);
    (*(v32 + 64))(v31, v33, v32);
    v35 = *(v43 + 8);
    v35(v23, v29);
    v35(v31, v29);
    v30 = v40;
    swift_storeEnumTagMultiPayload();
  }

  return (*(v41 + 32))(v42, v28, v30);
}

uint64_t sub_25F460D4C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F460E10(_BYTE *a1, _BYTE *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a1 = 0;
  v7 = type metadata accessor for PipeServiceInterface.OneWayContent();
  result = sub_25F45EBD4(v7);
  *a2 = result;
  return result;
}

BOOL sub_25F460E94(_BYTE *a1, _BYTE *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a1 = 0;
  v7 = type metadata accessor for PipeServiceInterface.TwoWayContent();
  result = sub_25F45FB30(v7);
  *a2 = result;
  return result;
}

uint64_t sub_25F460EF8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F460F5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for PipeEvent.Content();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v31 = *(AssociatedTypeWitness - 8);
  v12 = *(v31 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = *(v7 + 16);
  v32 = a1;
  v17(v10, a1, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v29 = *(TupleTypeMetadata3 + 48);
    v20 = *(TupleTypeMetadata3 + 64);
    v21 = v31;
    (*(v31 + 32))(v16, v10, AssociatedTypeWitness);
    sub_25F40C9BC(&v10[v20]);
    (*(*(v18 - 8) + 8))(&v10[v29], v18);
    (*(v21 + 16))(v30, v16, AssociatedTypeWitness);
    v22 = *(*v2 + 128);
    swift_beginAccess();
    sub_25F4A2E20();
    sub_25F4A2DF0();
    swift_endAccess();
    (*(v21 + 8))(v16, AssociatedTypeWitness);
  }

  v23 = (v2 + *(*v2 + 112));
  v25 = v23[3];
  v24 = v23[4];
  v26 = v23[5];
  v33 = *v23;
  v31 = *(v23 + 1);
  v34 = v31;
  v35 = v25;
  v36 = v24;
  v37 = v26;
  type metadata accessor for PipeServiceInterface();

  swift_getWitnessTable();
  v27 = type metadata accessor for TransportSender();
  sub_25F45C624(v32, v27);
}

uint64_t sub_25F4613B4(void *a1)
{
  v2 = a1[3];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[4];
    v6 = a1[2];
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F461454(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (v14 & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v11)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v10 + 48);

          return v22((a1 + v14) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_25F4616CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 16);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(v11 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v12)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v11 + 56);

    v23(&a1[v15] & ~v14, a2);
  }
}

uint64_t sub_25F4619D0()
{
  sub_25F461B58();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25F461A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F461AC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_25F461B58()
{
  if (!qword_27FD6F470[0])
  {
    v0 = sub_25F4A25E0();
    if (!v1)
    {
      atomic_store(v0, qword_27FD6F470);
    }
  }
}

void sub_25F461BA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    sub_25F461B58();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F461CBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(sub_25F4A25E0() - 8) + 64);
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      v18 = *(a1 + v11);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 255;
}

void sub_25F461EE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((v9 + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  v12 = *(*(sub_25F4A25E0() - 8) + 64);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  v13 = v12 + 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 254) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v12] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F4622DC(void *a1)
{
  v2 = *v1;
  v24[1] = v1 + 4;
  v25 = v2;
  v3 = v2;
  v26 = *a1;
  v27 = a1;
  v4 = sub_25F4A2120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  sub_25F4A2110();
  v28 = 0x2068636E617262;
  v29 = 0xE700000000000000;
  sub_25F46A788(&qword_27FD6E928);
  v12 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v12);

  v13 = v28;
  v14 = v29;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_25F4634D0(v13, v14, v3, WitnessTable);

  (*(v5 + 16))(v9, v11, v4);
  v30 = sub_25F46708C(v16, v3, WitnessTable);
  v31 = v17;
  swift_beginAccess();
  v18 = *(v25 + 80);
  v19 = *(v25 + 88);
  type metadata accessor for Junction();
  v20 = v27;
  v21 = *(v26 + 88);
  v22 = *(v26 + 80);
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  sub_25F46A788(&qword_27FD6F608);
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  sub_25F440BC0(v16, v20);

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25F462610()
{
  v1 = v0;
  v2 = swift_allocObject();
  sub_25F466974();
  WitnessTable = swift_getWitnessTable();
  sub_25F4629D0(v1, WitnessTable);
  return v2;
}

void *sub_25F462678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();

  v10 = sub_25F463C40(a1, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_25F4629D0(v5, WitnessTable);
  return v10;
}

uint64_t sub_25F462728@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

void *sub_25F4629D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Junction();
  v7 = *(v6 + 8);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v3;
  v10 = swift_unknownObjectRetain();
  v11 = sub_25F440E98(v10, v7, 0x6B6E757274, 0xE500000000000000, sub_25F46A760, v8, sub_25F46A6EC, v9);
  v12 = *(a2 + 24);
  swift_unknownObjectRetain_n();

  v12(v13, a1, a2);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v3;
  v15 = *(v7 + 8);
  swift_unknownObjectRetain();
  sub_25F4A28F0();

  return v11;
}

uint64_t sub_25F462BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v9 = *(*(*(a6 + 8) + 8) + 8);
  v10 = *(a2 + 8);
  return sub_25F4A2900();
}

uint64_t sub_25F462C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v36 = a1;
  v37 = a3;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for PipeEvent.Content();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v32 = type metadata accessor for TransportReply();
  v12 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v30 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = v36;
  (*(v8 + 16))(v11);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v11, v7);
    return sub_25F463094(v23, v37, v38);
  }

  else
  {
    v25 = v19;
    v26 = v35;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v28 = *(TupleTypeMetadata3 + 48);
    v31 = *(TupleTypeMetadata3 + 64);
    v32 = v25;
    (*(v25 + 32))(v22, v11, v18);
    (*(v34 + 32))(v17, &v11[v28], v26);
    v29 = v33;
    sub_25F40CA18(&v11[v31], v33);
    (*(v38 + 80))(v23, a2, v22, v17, v29, v37);
    sub_25F40C9BC(v29);
    (*(v34 + 8))(v17, v35);
    return (*(v32 + 8))(v22, v18);
  }
}

uint64_t sub_25F463094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  if ((*(a3 + 16))(a2, a3))
  {
    sub_25F440F18(a1);
  }

  else
  {
    v13 = type metadata accessor for PipeEvent();
    (*(v8 + 16))(v11, a1 + *(v13 + 36), AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v11, AssociatedTypeWitness, v14);
    return swift_willThrow();
  }
}

uint64_t sub_25F4632CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  v12 = *(type metadata accessor for PipeEvent() + 36);
  if ((*(a3 + 40))(a1 + v12, a2, a3))
  {

    sub_25F440F18(a1);
  }

  else
  {
    (*(v8 + 16))(v11, a1 + v12, AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v11, AssociatedTypeWitness, v14);
    return swift_willThrow();
  }
}

void *sub_25F4634D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Junction();
  v11 = *(v10 + 8);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v5;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v5;
  v14 = swift_unknownObjectRetain();
  v15 = sub_25F440E98(v14, v11, a1, a2, sub_25F468E38, v12, sub_25F468D78, v13);
  swift_unknownObjectRetain_n();

  return v15;
}

uint64_t sub_25F463624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a4;
  v11[5] = a3;
  v12 = *(a2 + 8);
  swift_unknownObjectRetain();

  sub_25F4A28F0();
}

uint64_t sub_25F4636E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  result = (*(a3 + 48))();
  if (result)
  {
    v8 = v7;
    v9 = *(a3 + 56);
    v10 = result;

    v9(v10, v8, a2, a3);

    v11 = sub_25F441228();
    MEMORY[0x28223BE20](v11);
    v12 = *(a3 + 8);
    v13 = *(v5 + 80);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();
    swift_getWitnessTable();
    sub_25F4A2CF0();
  }

  return result;
}

uint64_t sub_25F4638F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v23 = a1;
  v4 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PipeEvent.Content();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = type metadata accessor for PipeEvent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v8, v23, AssociatedTypeWitness);
  sub_25F40BD68(v12, v8, v17);
  v18 = swift_allocObject();
  v19 = v25;
  v18[2] = v24;
  v18[3] = v19;
  v18[4] = v26;
  swift_unknownObjectRetain();
  sub_25F40C854(sub_25F468E10);
  (*(v14 + 8))(v17, v13);
}

void *sub_25F463C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = sub_25F4A2990();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v4[6] = sub_25F4A2980();
  v4[7] = 0;
  v12 = v8[11];
  v13 = v8[10];
  v14 = v8[12];
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v16 = sub_25F4A2DB0();
  v17 = v8[13];
  v18 = sub_25F467170(v16, v12, TupleTypeMetadata2, v17);

  v5[8] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  swift_getTupleTypeMetadata2();
  v20 = sub_25F4A2DB0();
  v21 = sub_25F467170(v20, v12, v19, v17);

  v5[9] = v21;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return v5;
}

uint64_t sub_25F463EA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v18[0] = *(*v1 + 88);
  v4 = *(v18[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v18 - v7;
  v9 = v1[2];
  v10 = v1[3];
  v9(v6);
  swift_beginAccess();
  v11 = v2[8];
  v12 = v3[10];
  v13 = v3[12];
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v14 = v3[13];
  v15 = v18[0];
  sub_25F4A2BB0();
  v16 = v18[1];
  swift_endAccess();
  (*(v4 + 8))(v8, v15);
  return v16;
}

uint64_t sub_25F4640B0(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25F4A3060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_25F464310(a1, &v16 - v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    v13 = &v11[*(TupleTypeMetadata2 + 48)];
    v12 = *v13;
    v14 = *(v13 + 1);
    (*(*(v3 - 8) + 8))(v11, v3);
  }

  return v12;
}

uint64_t sub_25F464310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v18 = *(*v2 + 80);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = sub_25F4A3060();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  swift_beginAccess();
  v36 = v2[8];
  v33 = *(&v18 + 1);
  v11 = *(v4 + 104);
  v34 = v11;
  v35 = a1;
  *&v12 = v5;
  *(&v12 + 1) = v11;
  v28 = v18;
  v29 = v12;
  v30 = sub_25F46A54C;
  v31 = &v32;
  sub_25F4A2BA0();

  swift_getWitnessTable();
  sub_25F4A2CE0();

  v26 = *(&v18 + 1);
  v27 = v11;
  v20 = v18;
  v21 = v5;
  v22 = v11;
  v23 = sub_25F46A584;
  v24 = &v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F462728(sub_25F46A5F4, v19, MEMORY[0x277D84A98], TupleTypeMetadata2, v14, v17);
  return (*(v7 + 8))(v10, v6);
}