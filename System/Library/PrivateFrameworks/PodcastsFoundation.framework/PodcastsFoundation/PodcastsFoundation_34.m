uint64_t ChannelAttributes.__deallocating_deinit()
{
  ChannelAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D903A1F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9310, &qword_1D91A9A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E398();
  sub_1D9179F1C();
  v31 = *(v3 + 16);
  v30 = 0;
  type metadata accessor for ServerDescription();
  sub_1D903E83C(&qword_1ECAB20B8, 255, type metadata accessor for ServerDescription);
  sub_1D917999C();
  if (!v2)
  {
    v31 = *(v3 + 24);
    v30 = 1;
    type metadata accessor for ServerArtwork();
    sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork);
    sub_1D917999C();
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    LOBYTE(v31) = 2;
    sub_1D91799BC();
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    LOBYTE(v31) = 3;
    sub_1D917998C();
    v15 = *(v3 + 64);
    v16 = *(v3 + 72);
    LOBYTE(v31) = 4;
    sub_1D917998C();
    LOBYTE(v31) = *(v3 + 73);
    v30 = 5;
    sub_1D903E3EC();
    sub_1D917999C();
    v17 = *(v3 + 74);
    LOBYTE(v31) = 6;
    sub_1D917995C();
    v18 = *(v3 + 80);
    v19 = *(v3 + 88);
    LOBYTE(v31) = 7;
    sub_1D917994C();
    v20 = *(v3 + 96);
    v21 = *(v3 + 104);
    LOBYTE(v31) = 8;
    sub_1D917994C();
    v31 = *(v3 + 112);
    v30 = 9;
    type metadata accessor for ChannelEditorialArtworkContainer();
    sub_1D903E83C(&unk_1ECAB1358, v22, type metadata accessor for ChannelEditorialArtworkContainer);
    sub_1D917999C();
    v31 = *(v3 + 120);
    v30 = 10;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4610, &qword_1D91A9A90);
    sub_1D903E530(&qword_1ECAAFF58, &qword_1ECAB2078);
    v29 = v23;
    sub_1D917999C();
    v31 = *(v3 + 128);
    v30 = 11;
    sub_1D917999C();
    v24 = *(v3 + 136);
    v25 = *(v3 + 144);
    LOBYTE(v31) = 12;
    sub_1D917994C();
    v31 = *(v3 + 152);
    v30 = 13;
    sub_1D917999C();
    v26 = *(v3 + 160);
    v27 = *(v3 + 168);
    LOBYTE(v31) = 14;
    sub_1D917994C();
    LOBYTE(v31) = *(v3 + 176);
    v30 = 15;
    sub_1D903E488();
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ChannelAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ChannelAttributes.init(from:)(a1);
  return v2;
}

uint64_t ChannelAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9320, &qword_1D91A9A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E398();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ChannelAttributes();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerDescription();
    v22 = 0;
    sub_1D903E83C(&qword_1EDCD4760, 255, type metadata accessor for ServerDescription);
    sub_1D917989C();
    *(v1 + 16) = v23;
    type metadata accessor for ServerArtwork();
    v22 = 1;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    *(v1 + 24) = v23;
    LOBYTE(v23) = 2;
    *(v1 + 32) = sub_1D91798BC();
    *(v1 + 40) = v11;
    LOBYTE(v23) = 3;
    v21[1] = 0;
    *(v1 + 48) = sub_1D917988C();
    *(v1 + 56) = v12 & 1;
    LOBYTE(v23) = 4;
    *(v1 + 64) = sub_1D917988C();
    *(v1 + 72) = v13 & 1;
    v22 = 5;
    sub_1D903E4DC();
    sub_1D917989C();
    *(v1 + 73) = v23;
    LOBYTE(v23) = 6;
    *(v1 + 74) = sub_1D917985C();
    LOBYTE(v23) = 7;
    *(v1 + 80) = sub_1D917984C();
    *(v1 + 88) = v15;
    LOBYTE(v23) = 8;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v16;
    type metadata accessor for ChannelEditorialArtworkContainer();
    v22 = 9;
    sub_1D903E83C(&qword_1EDCD1ED8, v17, type metadata accessor for ChannelEditorialArtworkContainer);
    sub_1D917989C();
    *(v1 + 112) = v23;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4610, &qword_1D91A9A90);
    v22 = 10;
    v21[3] = sub_1D903E530(&qword_1EDCD0A88, &qword_1EDCD4690);
    v21[4] = v18;
    sub_1D917989C();
    *(v3 + 120) = v23;
    v22 = 11;
    sub_1D917989C();
    *(v3 + 128) = v23;
    LOBYTE(v23) = 12;
    *(v3 + 136) = sub_1D917984C();
    *(v3 + 144) = v19;
    v22 = 13;
    sub_1D917989C();
    *(v3 + 152) = v23;
    LOBYTE(v23) = 14;
    *(v3 + 160) = sub_1D917984C();
    *(v3 + 168) = v20;
    v22 = 15;
    sub_1D903E5CC();
    sub_1D917989C();
    (*(v6 + 8))(v9, v5);
    *(v3 + 176) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

void *ChannelRelationships.podcasts.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D903B134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736163646F70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D903B1BC(uint64_t a1)
{
  v2 = sub_1D903E620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903B1F8(uint64_t a1)
{
  v2 = sub_1D903E620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChannelRelationships.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ChannelRelationships.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9328, &qword_1D91A9AA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E620();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  type metadata accessor for PodcastRelationshipContainer();
  sub_1D903E83C(&qword_1ECAB9338, 255, type metadata accessor for PodcastRelationshipContainer);
  sub_1D917999C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t ChannelRelationships.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ChannelRelationships.init(from:)(a1);
  return v2;
}

uint64_t *ChannelRelationships.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9340, &qword_1D91A9AA8);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E620();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PodcastRelationshipContainer();
    sub_1D903E83C(&qword_1ECAB17C8, 255, type metadata accessor for PodcastRelationshipContainer);
    sub_1D917989C();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t *sub_1D903B658@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ChannelRelationships.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D903B6F4()
{
  v1 = *v0;
  v2 = 0x6F6C4665726F7473;
  if (v1 != 4)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  v4 = 0xD000000000000014;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D903B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D903FC78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D903B7F4(uint64_t a1)
{
  v2 = sub_1D903E674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903B830(uint64_t a1)
{
  v2 = sub_1D903E674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ChannelEditorialArtworkContainer.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t ChannelEditorialArtworkContainer.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1D903B914(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9348, &qword_1D91A9AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E674();
  sub_1D9179F1C();
  v13 = v3[2];
  HIBYTE(v12) = 0;
  type metadata accessor for ServerArtwork();
  sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork);
  sub_1D917999C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[3];
  HIBYTE(v12) = 1;
  sub_1D917999C();
  v13 = v3[4];
  HIBYTE(v12) = 2;
  sub_1D917999C();
  v13 = v3[5];
  HIBYTE(v12) = 3;
  sub_1D917999C();
  v13 = v3[6];
  HIBYTE(v12) = 4;
  sub_1D917999C();
  v13 = v3[7];
  HIBYTE(v12) = 5;
  sub_1D917999C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t ChannelEditorialArtworkContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ChannelEditorialArtworkContainer.init(from:)(a1);
  return v2;
}

void *ChannelEditorialArtworkContainer.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9350, &qword_1D91A9AB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E674();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ChannelEditorialArtworkContainer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    v12 = 0;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    v1[2] = v13;
    v12 = 1;
    sub_1D917989C();
    v1[3] = v13;
    v12 = 2;
    sub_1D917989C();
    v1[4] = v13;
    v12 = 3;
    v11 = 0;
    sub_1D917989C();
    v1[5] = v13;
    v12 = 4;
    sub_1D917989C();
    v1[6] = v13;
    v12 = 5;
    sub_1D917989C();
    (*(v5 + 8))(v8, v4);
    v1[7] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

PodcastsFoundation::SubscriptionOffer::Kind_optional __swiftcall SubscriptionOffer.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOffer.Kind.rawValue.getter()
{
  v1 = 0x687475616FLL;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7070612D6E69;
  }
}

uint64_t sub_1D903C140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x687475616FLL;
  if (v2 != 1)
  {
    v4 = 0x6269726373627573;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7070612D6E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x687475616FLL;
  if (*a2 != 1)
  {
    v8 = 0x6269726373627573;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7070612D6E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D903C240()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D903C2E0()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D903C36C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903C414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x687475616FLL;
  if (v2 != 1)
  {
    v5 = 0x6269726373627573;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7070612D6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::SubscriptionOffer::AppType_optional __swiftcall SubscriptionOffer.AppType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOffer.AppType.rawValue.getter()
{
  v1 = 0x636973756DLL;
  v2 = 30324;
  if (*v0 != 2)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    v1 = 1937204590;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D903C5EC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D903C698()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D903C730()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903C7E4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x636973756DLL;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (*v1 != 2)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 1937204590;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SubscriptionOffer.eligibilityType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SubscriptionOffer.offerName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SubscriptionOffer.description.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t SubscriptionOffer.appId.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t SubscriptionOffer.appName.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t SubscriptionOffer.authorizationUrl.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

unint64_t sub_1D903CA6C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x796C696D61467369;
      break;
    case 2:
      result = 0x7263736275537369;
      break;
    case 3:
      result = 0x6C69626967696C65;
      break;
    case 4:
      result = 0x6D614E726566666FLL;
      break;
    case 5:
      result = 1684957547;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x646F69726570;
      break;
    case 8:
      result = 0x6E65647574537369;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 10:
      result = 0x6D61726150797562;
      break;
    case 11:
      result = 0x6169725465657266;
      break;
    case 12:
      result = 0x6169725465657266;
      break;
    case 13:
      result = 0x656572467369;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x6449707061;
      break;
    case 16:
      result = 0x65707954707061;
      break;
    case 17:
      result = 0x656D614E707061;
      break;
    case 18:
      result = 0x6F77747241707061;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D903CC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D903FE84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D903CCD0(uint64_t a1)
{
  v2 = sub_1D903E6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903CD0C(uint64_t a1)
{
  v2 = sub_1D903E6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *SubscriptionOffer.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[16];

  v7 = v0[18];

  v8 = v0[21];

  v9 = v0[23];

  v10 = v0[25];

  v11 = v0[28];

  v12 = v0[29];

  v13 = v0[31];

  return v0;
}

uint64_t SubscriptionOffer.__deallocating_deinit()
{
  SubscriptionOffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D903CDFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9358, &qword_1D91A9AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E6C8();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v40) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = *(v3 + 32);
    LOBYTE(v40) = 1;
    sub_1D917995C();
    v14 = *(v3 + 33);
    LOBYTE(v40) = 2;
    sub_1D917995C();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v40) = 3;
    sub_1D917994C();
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    LOBYTE(v40) = 4;
    sub_1D917994C();
    LOBYTE(v40) = *(v3 + 72);
    v41 = 5;
    sub_1D903E71C();
    sub_1D917999C();
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    LOBYTE(v40) = 6;
    sub_1D917994C();
    v21 = *(v3 + 96);
    v22 = *(v3 + 104);
    LOBYTE(v40) = 7;
    sub_1D917994C();
    v23 = *(v3 + 112);
    LOBYTE(v40) = 8;
    sub_1D917995C();
    v24 = *(v3 + 120);
    v25 = *(v3 + 128);
    LOBYTE(v40) = 9;
    sub_1D917994C();
    v26 = *(v3 + 136);
    v27 = *(v3 + 144);
    LOBYTE(v40) = 10;
    sub_1D917994C();
    v28 = *(v3 + 152);
    LOBYTE(v40) = 11;
    sub_1D917995C();
    v29 = *(v3 + 160);
    v30 = *(v3 + 168);
    LOBYTE(v40) = 12;
    sub_1D917994C();
    v31 = *(v3 + 176);
    LOBYTE(v40) = 13;
    sub_1D917995C();
    v40 = *(v3 + 184);
    v41 = 14;
    type metadata accessor for ValueProposition();
    sub_1D903E83C(&qword_1ECAB9368, v32, type metadata accessor for ValueProposition);
    sub_1D917999C();
    v33 = *(v3 + 192);
    v34 = *(v3 + 200);
    LOBYTE(v40) = 15;
    sub_1D917994C();
    LOBYTE(v40) = *(v3 + 208);
    v41 = 16;
    sub_1D903E794();
    sub_1D917999C();
    v35 = *(v3 + 216);
    v36 = *(v3 + 224);
    LOBYTE(v40) = 17;
    sub_1D917994C();
    v40 = *(v3 + 232);
    v41 = 18;
    type metadata accessor for ServerArtwork();
    sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork);
    sub_1D917999C();
    v37 = *(v3 + 240);
    v38 = *(v3 + 248);
    LOBYTE(v40) = 19;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SubscriptionOffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SubscriptionOffer.init(from:)(a1);
  return v2;
}

uint64_t SubscriptionOffer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9378, &qword_1D91A9AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E6C8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for SubscriptionOffer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v28) = 0;
    *(v1 + 16) = sub_1D91798BC();
    *(v1 + 24) = v11;
    LOBYTE(v28) = 1;
    *(v1 + 32) = sub_1D917985C();
    LOBYTE(v28) = 2;
    *(v1 + 33) = sub_1D917985C();
    LOBYTE(v28) = 3;
    *(v1 + 40) = sub_1D917984C();
    *(v1 + 48) = v13;
    LOBYTE(v28) = 4;
    *(v1 + 56) = sub_1D917984C();
    *(v1 + 64) = v14;
    v29 = 5;
    sub_1D903E7E8();
    sub_1D917989C();
    *(v1 + 72) = v28;
    LOBYTE(v28) = 6;
    v15 = sub_1D917984C();
    v27 = 0;
    *(v1 + 80) = v15;
    *(v1 + 88) = v16;
    LOBYTE(v28) = 7;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v17;
    LOBYTE(v28) = 8;
    *(v1 + 112) = sub_1D917985C();
    LOBYTE(v28) = 9;
    *(v1 + 120) = sub_1D917984C();
    *(v1 + 128) = v18;
    LOBYTE(v28) = 10;
    *(v1 + 136) = sub_1D917984C();
    *(v1 + 144) = v19;
    LOBYTE(v28) = 11;
    *(v1 + 152) = sub_1D917985C();
    LOBYTE(v28) = 12;
    *(v1 + 160) = sub_1D917984C();
    *(v1 + 168) = v20;
    LOBYTE(v28) = 13;
    *(v1 + 176) = sub_1D917985C();
    type metadata accessor for ValueProposition();
    v29 = 14;
    sub_1D903E83C(&qword_1ECAB2118, v21, type metadata accessor for ValueProposition);
    sub_1D917989C();
    *(v1 + 184) = v28;
    LOBYTE(v28) = 15;
    *(v1 + 192) = sub_1D917984C();
    *(v1 + 200) = v22;
    v29 = 16;
    sub_1D903E884();
    sub_1D917989C();
    *(v1 + 208) = v28;
    LOBYTE(v28) = 17;
    *(v1 + 216) = sub_1D917984C();
    *(v1 + 224) = v23;
    type metadata accessor for ServerArtwork();
    v29 = 18;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    *(v1 + 232) = v28;
    LOBYTE(v28) = 19;
    v24 = sub_1D917984C();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    *(v3 + 240) = v24;
    *(v3 + 248) = v26;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ValueProposition.price.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ValueProposition.priceForDisplay.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D903DD0C()
{
  if (*v0)
  {
    result = 0x726F466563697270;
  }

  else
  {
    result = 0x6563697270;
  }

  *v0;
  return result;
}

uint64_t sub_1D903DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F466563697270 && a2 == 0xEF79616C70736944)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D903DE30(uint64_t a1)
{
  v2 = sub_1D903E8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903DE6C(uint64_t a1)
{
  v2 = sub_1D903E8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueProposition.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ValueProposition.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D903DF10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9380, &qword_1D91A9AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E8D8();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v16[15] = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v16[14] = 1;
    sub_1D91799BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ValueProposition.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ValueProposition.init(from:)(a1);
  return v2;
}

void *ValueProposition.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9388, &qword_1D91A9AD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E8D8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ValueProposition();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    v16 = 1;
    v12 = sub_1D91798BC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v1[4] = v12;
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D903E304@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1D903E398()
{
  result = qword_1EDCD4B48[0];
  if (!qword_1EDCD4B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4B48);
  }

  return result;
}

unint64_t sub_1D903E3EC()
{
  result = qword_1ECAB20E8;
  if (!qword_1ECAB20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20E8);
  }

  return result;
}

unint64_t sub_1D903E488()
{
  result = qword_1ECAB9318;
  if (!qword_1ECAB9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9318);
  }

  return result;
}

unint64_t sub_1D903E4DC()
{
  result = qword_1EDCD4B28;
  if (!qword_1EDCD4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B28);
  }

  return result;
}

uint64_t sub_1D903E530(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4610, &qword_1D91A9A90);
    sub_1D903E83C(a2, v5, type metadata accessor for SubscriptionOffer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D903E5CC()
{
  result = qword_1EDCD4B20;
  if (!qword_1EDCD4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B20);
  }

  return result;
}

unint64_t sub_1D903E620()
{
  result = qword_1ECAB9330;
  if (!qword_1ECAB9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9330);
  }

  return result;
}

unint64_t sub_1D903E674()
{
  result = qword_1EDCD1EF0[0];
  if (!qword_1EDCD1EF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD1EF0);
  }

  return result;
}

unint64_t sub_1D903E6C8()
{
  result = qword_1ECAB20B0;
  if (!qword_1ECAB20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20B0);
  }

  return result;
}

unint64_t sub_1D903E71C()
{
  result = qword_1ECAB9360;
  if (!qword_1ECAB9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9360);
  }

  return result;
}

unint64_t sub_1D903E794()
{
  result = qword_1ECAB9370;
  if (!qword_1ECAB9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9370);
  }

  return result;
}

unint64_t sub_1D903E7E8()
{
  result = qword_1ECAB2090;
  if (!qword_1ECAB2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2090);
  }

  return result;
}

uint64_t sub_1D903E83C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D903E884()
{
  result = qword_1ECAB2080;
  if (!qword_1ECAB2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2080);
  }

  return result;
}

unint64_t sub_1D903E8D8()
{
  result = qword_1ECAB2130;
  if (!qword_1ECAB2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2130);
  }

  return result;
}

unint64_t sub_1D903E930()
{
  result = qword_1ECAB9390;
  if (!qword_1ECAB9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9390);
  }

  return result;
}

unint64_t sub_1D903E988()
{
  result = qword_1ECAB9398;
  if (!qword_1ECAB9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9398);
  }

  return result;
}

unint64_t sub_1D903E9E0()
{
  result = qword_1ECAB93A0;
  if (!qword_1ECAB93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93A0);
  }

  return result;
}

unint64_t sub_1D903EA38()
{
  result = qword_1ECAB93A8;
  if (!qword_1ECAB93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriptionOffer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D903EF84()
{
  result = qword_1ECAB93B0;
  if (!qword_1ECAB93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93B0);
  }

  return result;
}

unint64_t sub_1D903EFDC()
{
  result = qword_1ECAB93B8;
  if (!qword_1ECAB93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93B8);
  }

  return result;
}

unint64_t sub_1D903F034()
{
  result = qword_1ECAB93C0;
  if (!qword_1ECAB93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93C0);
  }

  return result;
}

unint64_t sub_1D903F08C()
{
  result = qword_1ECAB93C8;
  if (!qword_1ECAB93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93C8);
  }

  return result;
}

unint64_t sub_1D903F0E4()
{
  result = qword_1ECAB93D0;
  if (!qword_1ECAB93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93D0);
  }

  return result;
}

unint64_t sub_1D903F13C()
{
  result = qword_1ECAB93D8;
  if (!qword_1ECAB93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93D8);
  }

  return result;
}

unint64_t sub_1D903F194()
{
  result = qword_1ECAB2120;
  if (!qword_1ECAB2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2120);
  }

  return result;
}

unint64_t sub_1D903F1EC()
{
  result = qword_1ECAB2128;
  if (!qword_1ECAB2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2128);
  }

  return result;
}

unint64_t sub_1D903F244()
{
  result = qword_1ECAB20A0;
  if (!qword_1ECAB20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20A0);
  }

  return result;
}

unint64_t sub_1D903F29C()
{
  result = qword_1ECAB20A8;
  if (!qword_1ECAB20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20A8);
  }

  return result;
}

unint64_t sub_1D903F2F4()
{
  result = qword_1EDCD1EE0;
  if (!qword_1EDCD1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1EE0);
  }

  return result;
}

unint64_t sub_1D903F34C()
{
  result = qword_1EDCD1EE8;
  if (!qword_1EDCD1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1EE8);
  }

  return result;
}

unint64_t sub_1D903F3A4()
{
  result = qword_1ECAB93E0;
  if (!qword_1ECAB93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93E0);
  }

  return result;
}

unint64_t sub_1D903F3FC()
{
  result = qword_1ECAB93E8;
  if (!qword_1ECAB93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93E8);
  }

  return result;
}

unint64_t sub_1D903F454()
{
  result = qword_1EDCD4B38;
  if (!qword_1EDCD4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B38);
  }

  return result;
}

unint64_t sub_1D903F4AC()
{
  result = qword_1EDCD4B40;
  if (!qword_1EDCD4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B40);
  }

  return result;
}

unint64_t sub_1D903F504()
{
  result = qword_1EDCD5488;
  if (!qword_1EDCD5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5488);
  }

  return result;
}

unint64_t sub_1D903F55C()
{
  result = qword_1EDCD5490;
  if (!qword_1EDCD5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5490);
  }

  return result;
}

uint64_t sub_1D903F5B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1717924456 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D903F768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F43776F6873 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91C8030 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91C8080 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C80F0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91C7FF0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x777472416F676F6CLL && a2 == 0xEB000000006B726FLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D38B0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D91C7FD0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C80D0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D903FC78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D3940 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D3960 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D3980 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D39A0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C4665726F7473 && a2 == 0xED00006573616377 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D39D0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D9179ACC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D903FE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D61467369 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69626967696C65 && a2 == 0xEF65707954797469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E726566666FLL && a2 == 0xE900000000000065 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65647574537369 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D61726150797562 && a2 == 0xE900000000000073 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6169725465657266 && a2 == 0xE90000000000006CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6169725465657266 && a2 == 0xEF646F697265506CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656572467369 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D3A90 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65707954707061 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F77747241707061 && a2 == 0xEA00000000006B72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D3AD0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_1D90404BC()
{
  result = qword_1ECAB2088;
  if (!qword_1ECAB2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2088);
  }

  return result;
}

unint64_t sub_1D9040510()
{
  result = qword_1ECAB2098;
  if (!qword_1ECAB2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2098);
  }

  return result;
}

unint64_t sub_1D9040564()
{
  result = qword_1ECAB93F0;
  if (!qword_1ECAB93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93F0);
  }

  return result;
}

unint64_t sub_1D90405B8()
{
  result = qword_1EDCD4B30;
  if (!qword_1EDCD4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B30);
  }

  return result;
}

id ServerSyncResponse.Episode.fullEpisode.getter()
{
  v1 = v0[6];
  if (!v1)
  {
    return 0;
  }

  v16 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v7 = *v0;
  v6 = v0[1];
  v8 = type metadata accessor for ServerPodcastEpisode();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v9[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v11 = &v9[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v11 = v7;
  *(v11 + 1) = v6;
  v12 = &v9[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v12 = v5;
  *(v12 + 1) = v4;
  v13 = &v9[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v13 = v3;
  *(v13 + 1) = v2;
  *&v9[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v1;
  swift_beginAccess();
  *&v9[v10] = v16;
  v17.receiver = v9;
  v17.super_class = v8;

  v14 = v16;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t ServerSyncResponse.Meta.nextSyncToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerSyncResponse.Meta.reason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall ServerSyncResponse.Meta.init(nextSyncToken:reset:reason:startWithBootstrap:)(PodcastsFoundation::ServerSyncResponse::Meta *__return_ptr retstr, Swift::String_optional nextSyncToken, Swift::Bool_optional reset, Swift::String_optional reason, Swift::Bool_optional startWithBootstrap)
{
  retstr->nextSyncToken = nextSyncToken;
  retstr->reset = reset;
  retstr->reason = reason;
  retstr->startWithBootstrap = startWithBootstrap;
}

unint64_t sub_1D90407F8()
{
  v1 = 0x636E79537478656ELL;
  v2 = 0x7465736572;
  if (*v0 != 2)
  {
    v2 = 0x6E6F73616572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D904087C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9042FFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90408A4(uint64_t a1)
{
  v2 = sub_1D9042484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90408E0(uint64_t a1)
{
  v2 = sub_1D9042484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Meta.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB93F8, &qword_1D91AAA90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v17 = *(v1 + 16);
  v15 = *(v1 + 17);
  v10 = v1[3];
  v14[0] = v1[4];
  v14[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9042484();
  sub_1D9179F1C();
  v21 = 0;
  v12 = v16;
  sub_1D917994C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = 1;
  sub_1D917995C();
  v19 = 2;
  sub_1D917995C();
  v18 = 3;
  sub_1D917994C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerSyncResponse.Meta.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9400, &qword_1D91AAA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9042484();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = 0;
  v11 = sub_1D917984C();
  v13 = v12;
  v14 = v11;
  v27 = 1;
  v15 = sub_1D917985C();
  v26 = 2;
  v24 = sub_1D917985C();
  v25 = 3;
  v17 = sub_1D917984C();
  v18 = *(v6 + 8);
  v23 = v17;
  v19 = v9;
  v21 = v20;
  v18(v19, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 17) = v24;
  *(a2 + 24) = v23;
  *(a2 + 32) = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9040DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9040E30(uint64_t a1)
{
  v2 = sub_1D90424D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9040E6C(uint64_t a1)
{
  v2 = sub_1D90424D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Episode.Meta.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9408, &qword_1D91AAAA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179F1C();
  sub_1D917995C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerSyncResponse.Episode.Meta.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9410, &qword_1D91AAAA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179EEC();
  if (!v2)
  {
    v11 = sub_1D917985C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D904114C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9408, &qword_1D91AAAA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179F1C();
  sub_1D917995C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerSyncResponse.Episode.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerSyncResponse.Episode.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerSyncResponse.Episode.href.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *ServerSyncResponse.Episode.relationships.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t ServerSyncResponse.Episode.init(id:type:href:attributes:relationships:meta:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v10 = *a10;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v10;
  return result;
}

uint64_t sub_1D9041370()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7475626972747461;
  v4 = 0x6E6F6974616C6572;
  if (v1 != 4)
  {
    v4 = 1635018093;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 1717924456;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D9041414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9043168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D904143C(uint64_t a1)
{
  v2 = sub_1D904252C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9041478(uint64_t a1)
{
  v2 = sub_1D904252C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Episode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9418, &qword_1D91AAAB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[6];
  v21 = v1[7];
  v22 = v12;
  v20 = *(v1 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904252C();
  sub_1D9179F1C();
  LOBYTE(v29) = 0;
  v14 = v27;
  sub_1D91799BC();
  if (!v14)
  {
    v16 = v21;
    v15 = v22;
    v17 = v20;
    LOBYTE(v29) = 1;
    sub_1D91799BC();
    LOBYTE(v29) = 2;
    sub_1D91799BC();
    v29 = v15;
    v28 = 3;
    type metadata accessor for PodcastEpisodeAttributes(0);
    sub_1D90425D4(&qword_1ECAB9420, type metadata accessor for PodcastEpisodeAttributes);
    sub_1D917999C();
    v29 = v16;
    v28 = 4;
    type metadata accessor for PodcastEpisodeRelationships();
    sub_1D90425D4(&qword_1ECAB9428, type metadata accessor for PodcastEpisodeRelationships);
    sub_1D917999C();
    LOBYTE(v29) = v17;
    v28 = 5;
    sub_1D9042580();
    sub_1D917999C();
  }

  return (*(v4 + 8))(v7, v3);
}

void ServerSyncResponse.Episode.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9438, &qword_1D91AAAB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904252C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v11 = sub_1D91798BC();
    v13 = v12;
    LOBYTE(v37[0]) = 1;
    v28 = sub_1D91798BC();
    v31 = v14;
    LOBYTE(v37[0]) = 2;
    v15 = sub_1D91798BC();
    v30 = v16;
    v27 = v15;
    type metadata accessor for PodcastEpisodeAttributes(0);
    v29 = 0;
    LOBYTE(v32) = 3;
    sub_1D90425D4(&qword_1EDCD2E70, type metadata accessor for PodcastEpisodeAttributes);
    v17 = v29;
    sub_1D917989C();
    if (v17)
    {
      (*(v6 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v18 = v29;

      if (!v18)
      {
      }
    }

    else
    {
      v26 = v37[0];
      type metadata accessor for PodcastEpisodeRelationships();
      LOBYTE(v32) = 4;
      sub_1D90425D4(&qword_1EDCD2758, type metadata accessor for PodcastEpisodeRelationships);
      sub_1D917989C();
      v25 = v37[0];
      v39 = 5;
      sub_1D904261C();
      sub_1D917989C();
      (*(v6 + 8))(v9, v5);
      *&v32 = v11;
      *(&v32 + 1) = v13;
      v20 = v30;
      v19 = v31;
      *&v33 = v28;
      *(&v33 + 1) = v31;
      *&v34 = v27;
      *(&v34 + 1) = v30;
      v21 = v26;
      *&v35 = v26;
      *(&v35 + 1) = v25;
      v22 = v40;
      v36 = v40;
      *(a2 + 64) = v40;
      v23 = v35;
      *(a2 + 32) = v34;
      *(a2 + 48) = v23;
      v24 = v33;
      *a2 = v32;
      *(a2 + 16) = v24;
      sub_1D9042670(&v32, v37);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v37[0] = v11;
      v37[1] = v13;
      v37[2] = v28;
      v37[3] = v19;
      v37[4] = v27;
      v37[5] = v20;
      v37[6] = v21;
      v37[7] = v25;
      v38 = v22;
      sub_1D90426A8(v37);
    }
  }
}

uint64_t ServerSyncResponse.next.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerSyncResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 ServerSyncResponse.init(next:meta:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = *(a3 + 24);
  *(a5 + 40) = result;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_1D9041DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D904336C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9041DD8(uint64_t a1)
{
  v2 = sub_1D90426D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9041E14(uint64_t a1)
{
  v2 = sub_1D90426D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9440, &qword_1D91AAAC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v30 = *(v1 + 32);
  v19 = *(v1 + 33);
  v12 = v1[5];
  v11 = v1[6];
  v20 = v10;
  v21 = v11;
  v17 = v1[7];
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90426D8();
  sub_1D9179F1C();
  LOBYTE(v24) = 0;
  v14 = v23;
  sub_1D917994C();
  if (!v14)
  {
    v24 = v20;
    v25 = v22;
    v26 = v30;
    v27 = v19;
    v15 = v17;
    v28 = v18;
    v29 = v21;
    v31 = 1;
    sub_1D904272C();

    sub_1D91799FC();

    v24 = v15;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9450, &qword_1D91AAAC8);
    sub_1D9042828(&qword_1ECAB9458, sub_1D9042780);
    sub_1D91799FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerSyncResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9468, &qword_1D91AAAD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90426D8();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_1D917984C();
  v13 = v12;
  v29 = v11;
  LOBYTE(v30) = 1;
  sub_1D90427D4();
  sub_1D91798FC();
  v24 = v34;
  v27 = v35;
  v23 = v36;
  v26 = BYTE1(v36);
  v25 = v37;
  v28 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9450, &qword_1D91AAAC8);
  v42 = 2;
  sub_1D9042828(&qword_1EDCD0A80, sub_1D90428A0);
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v22 = v43;
  v15 = v28;
  v14 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v13;
  v16 = v24;
  v17 = v27;
  *&v31 = v24;
  *(&v31 + 1) = v27;
  v18 = v23;
  LOBYTE(v32) = v23;
  BYTE1(v32) = v26;
  *(&v32 + 1) = v25;
  *&v33 = v28;
  *(&v33 + 1) = v43;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  sub_1D90428F4(&v30, &v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34 = v14;
  v35 = v13;
  v36 = v16;
  v37 = v17;
  LOBYTE(v38) = v18;
  BYTE1(v38) = v26;
  v39 = v25;
  v40 = v15;
  v41 = v22;
  return sub_1D904292C(&v34);
}

unint64_t sub_1D9042484()
{
  result = qword_1EDCD43E8;
  if (!qword_1EDCD43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43E8);
  }

  return result;
}

unint64_t sub_1D90424D8()
{
  result = qword_1ECAB1F90;
  if (!qword_1ECAB1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F90);
  }

  return result;
}

unint64_t sub_1D904252C()
{
  result = qword_1EDCD43C8;
  if (!qword_1EDCD43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43C8);
  }

  return result;
}

unint64_t sub_1D9042580()
{
  result = qword_1ECAB9430;
  if (!qword_1ECAB9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9430);
  }

  return result;
}

uint64_t sub_1D90425D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D904261C()
{
  result = qword_1EDCD43B0;
  if (!qword_1EDCD43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43B0);
  }

  return result;
}

unint64_t sub_1D90426D8()
{
  result = qword_1EDCD4400;
  if (!qword_1EDCD4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4400);
  }

  return result;
}

unint64_t sub_1D904272C()
{
  result = qword_1ECAB9448;
  if (!qword_1ECAB9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9448);
  }

  return result;
}

unint64_t sub_1D9042780()
{
  result = qword_1ECAB9460;
  if (!qword_1ECAB9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9460);
  }

  return result;
}

unint64_t sub_1D90427D4()
{
  result = qword_1EDCD43D0;
  if (!qword_1EDCD43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43D0);
  }

  return result;
}

uint64_t sub_1D9042828(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9450, &qword_1D91AAAC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90428A0()
{
  result = qword_1EDCD43A8;
  if (!qword_1EDCD43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43A8);
  }

  return result;
}

uint64_t sub_1D904296C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D90429C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D9042A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D9042A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerSyncResponse.Episode.Meta(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1D9042BE0()
{
  result = qword_1ECAB9470;
  if (!qword_1ECAB9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9470);
  }

  return result;
}

unint64_t sub_1D9042C38()
{
  result = qword_1ECAB9478;
  if (!qword_1ECAB9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9478);
  }

  return result;
}

unint64_t sub_1D9042C90()
{
  result = qword_1ECAB9480;
  if (!qword_1ECAB9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9480);
  }

  return result;
}

unint64_t sub_1D9042CE8()
{
  result = qword_1ECAB9488;
  if (!qword_1ECAB9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9488);
  }

  return result;
}

unint64_t sub_1D9042D40()
{
  result = qword_1EDCD43F0;
  if (!qword_1EDCD43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43F0);
  }

  return result;
}

unint64_t sub_1D9042D98()
{
  result = qword_1EDCD43F8;
  if (!qword_1EDCD43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43F8);
  }

  return result;
}

unint64_t sub_1D9042DF0()
{
  result = qword_1EDCD43B8;
  if (!qword_1EDCD43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43B8);
  }

  return result;
}

unint64_t sub_1D9042E48()
{
  result = qword_1EDCD43C0;
  if (!qword_1EDCD43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43C0);
  }

  return result;
}

unint64_t sub_1D9042EA0()
{
  result = qword_1ECAB1F80;
  if (!qword_1ECAB1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F80);
  }

  return result;
}

unint64_t sub_1D9042EF8()
{
  result = qword_1ECAB1F88;
  if (!qword_1ECAB1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F88);
  }

  return result;
}

unint64_t sub_1D9042F50()
{
  result = qword_1EDCD43D8;
  if (!qword_1EDCD43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43D8);
  }

  return result;
}

unint64_t sub_1D9042FA8()
{
  result = qword_1EDCD43E0;
  if (!qword_1EDCD43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43E0);
  }

  return result;
}

uint64_t sub_1D9042FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D3B40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9043168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D904336C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ServerTimeframe.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerTimeframe.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *ServerTimeframe.__allocating_init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ServerTimeframe.init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ServerTimeframe.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t static ServerTimeframe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D9043640()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D904368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9045280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90436B4(uint64_t a1)
{
  v2 = sub_1D90439B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90436F0(uint64_t a1)
{
  v2 = sub_1D90439B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ServerTimeframe.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t ServerTimeframe.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9490, &qword_1D91AB1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90439B8();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v19 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v18 = 1;
    sub_1D91799BC();
    v17 = v3[6];
    v16[15] = 2;
    type metadata accessor for ServerTimeframeAttributes();
    sub_1D9044D24(&qword_1ECAB94A0, type metadata accessor for ServerTimeframeAttributes);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D90439B8()
{
  result = qword_1ECAB9498;
  if (!qword_1ECAB9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9498);
  }

  return result;
}

uint64_t ServerTimeframe.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerTimeframe.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerTimeframe.init(from:)(a1);
  return v2;
}

uint64_t *ServerTimeframe.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94A8, &qword_1D91AB1A8);
  v5 = *(v14[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14[0]);
  v8 = v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90439B8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v10 = v14[0];
    v1[2] = sub_1D91798BC();
    v1[3] = v11;
    v16 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v12;
    type metadata accessor for ServerTimeframeAttributes();
    v15 = 2;
    sub_1D9044D24(&qword_1ECAB94B0, type metadata accessor for ServerTimeframeAttributes);
    sub_1D91798FC();
    (*(v5 + 8))(v8, v10);
    v1[6] = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D9043DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9043E38(uint64_t a1)
{
  v2 = sub_1D90440A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9043E74(uint64_t a1)
{
  v2 = sub_1D90440A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTimeframeContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ServerTimeframeContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframeContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94B8, &unk_1D91AB1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90440A0();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D904436C(&qword_1ECAB7650, &qword_1ECAB7658);
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D90440A0()
{
  result = qword_1ECAB94C0;
  if (!qword_1ECAB94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94C0);
  }

  return result;
}

uint64_t ServerTimeframeContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerTimeframeContainer.init(from:)(a1);
  return v2;
}

uint64_t *ServerTimeframeContainer.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94C8, &qword_1D91AB1C0);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90440A0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D904436C(&qword_1ECAB8528, &qword_1ECAB8530);
    sub_1D91798FC();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D904436C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D9044D24(a2, type metadata accessor for ServerTimeframe);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ServerTimeframeAttributes.startInMilliseconds.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ServerTimeframeAttributes.endInMilliseconds.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ServerTimeframeAttributes.__allocating_init(startInMilliseconds:endInMilliseconds:offerTypes:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  return result;
}

uint64_t ServerTimeframeAttributes.init(startInMilliseconds:endInMilliseconds:offerTypes:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  *(v5 + 48) = a5;
  return v5;
}

unint64_t sub_1D904450C()
{
  v1 = 0x707954726566666FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D9044578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9045398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90445A0(uint64_t a1)
{
  v2 = sub_1D904489C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90445DC(uint64_t a1)
{
  v2 = sub_1D904489C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTimeframeAttributes.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t ServerTimeframeAttributes.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframeAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94D0, &qword_1D91AB1C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904489C();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v19 = 0;
  sub_1D917996C();
  if (!v2)
  {
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    v18 = 1;
    sub_1D917996C();
    v17 = *(v3 + 48);
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    sub_1D90448F0(&qword_1ECAB94E8, sub_1D9044968);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D904489C()
{
  result = qword_1ECAB94D8;
  if (!qword_1ECAB94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94D8);
  }

  return result;
}

uint64_t sub_1D90448F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9044968()
{
  result = qword_1ECAB94F0;
  if (!qword_1ECAB94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94F0);
  }

  return result;
}

uint64_t ServerTimeframeAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerTimeframeAttributes.init(from:)(a1);
  return v2;
}

uint64_t *ServerTimeframeAttributes.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94F8, &qword_1D91AB1D8);
  v5 = *(v14[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14[0]);
  v8 = v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904489C();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v10 = v14[0];
    v1[2] = sub_1D917986C();
    *(v1 + 24) = v11 & 1;
    v16 = 1;
    v1[4] = sub_1D917986C();
    *(v1 + 40) = v13 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    v15 = 2;
    sub_1D90448F0(&qword_1ECAAFF00, sub_1D9044C88);
    sub_1D91798FC();
    (*(v5 + 8))(v8, v10);
    v1[6] = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9044C88()
{
  result = qword_1ECAB10D8;
  if (!qword_1ECAB10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10D8);
  }

  return result;
}

uint64_t sub_1D9044D24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9044D98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1D9044F6C()
{
  result = qword_1ECAB9508;
  if (!qword_1ECAB9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9508);
  }

  return result;
}

unint64_t sub_1D9044FC4()
{
  result = qword_1ECAB9510;
  if (!qword_1ECAB9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9510);
  }

  return result;
}

unint64_t sub_1D904501C()
{
  result = qword_1ECAB9518;
  if (!qword_1ECAB9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9518);
  }

  return result;
}

unint64_t sub_1D9045074()
{
  result = qword_1ECAB9520;
  if (!qword_1ECAB9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9520);
  }

  return result;
}

unint64_t sub_1D90450CC()
{
  result = qword_1ECAB9528;
  if (!qword_1ECAB9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9528);
  }

  return result;
}

unint64_t sub_1D9045124()
{
  result = qword_1ECAB9530;
  if (!qword_1ECAB9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9530);
  }

  return result;
}

unint64_t sub_1D904517C()
{
  result = qword_1ECAB9538;
  if (!qword_1ECAB9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9538);
  }

  return result;
}

unint64_t sub_1D90451D4()
{
  result = qword_1ECAB9540;
  if (!qword_1ECAB9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9540);
  }

  return result;
}

unint64_t sub_1D904522C()
{
  result = qword_1ECAB9548;
  if (!qword_1ECAB9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9548);
  }

  return result;
}

uint64_t sub_1D9045280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9045398(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001D91D3C10 == a2;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D3C30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D90454D0(uint64_t a1)
{
  v2 = sub_1D90456EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D904550C(uint64_t a1)
{
  v2 = sub_1D90456EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9550, &qword_1D91AB760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90456EC();

  sub_1D9179F1C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9558, &qword_1D91AB768);
  sub_1D9045944(&qword_1ECAB9560, sub_1D9045740);
  sub_1D91799FC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D90456EC()
{
  result = qword_1ECAB18D8;
  if (!qword_1ECAB18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18D8);
  }

  return result;
}

unint64_t sub_1D9045740()
{
  result = qword_1ECAB9568;
  if (!qword_1ECAB9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9568);
  }

  return result;
}

uint64_t EpisodeTranscriptContainer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9570, &qword_1D91AB770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90456EC();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9558, &qword_1D91AB768);
    sub_1D9045944(&qword_1ECAAFF38, sub_1D90459BC);
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9045944(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9558, &qword_1D91AB768);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90459BC()
{
  result = qword_1ECAB1D48;
  if (!qword_1ECAB1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D48);
  }

  return result;
}

uint64_t EpisodeTranscriptData.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}

uint64_t sub_1D9045AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9045B50(uint64_t a1)
{
  v2 = sub_1D9045D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9045B8C(uint64_t a1)
{
  v2 = sub_1D9045D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptData.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9578, &qword_1D91AB778);
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v13 - v5;
  v7 = v1[1];
  v15 = *v1;
  v14 = *(v1 + 16);
  v8 = v1[3];
  v13 = v1[4];
  v9 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9045D88();

  sub_1D9179F1C();
  v17 = v15;
  v18 = v7;
  v19 = v14;
  v20 = v8;
  v21 = v13;
  v22 = v9;
  sub_1D9045DDC();
  v11 = v16;
  sub_1D91799FC();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_1D9045D88()
{
  result = qword_1ECAB1D60;
  if (!qword_1ECAB1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D60);
  }

  return result;
}

unint64_t sub_1D9045DDC()
{
  result = qword_1ECAB9580;
  if (!qword_1ECAB9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9580);
  }

  return result;
}

uint64_t EpisodeTranscriptData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9588, &qword_1D91AB780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9045D88();
  sub_1D9179EEC();
  if (!v2)
  {
    sub_1D9045FB8();
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v11 = v16[1];
    v12 = v17;
    v13 = v18;
    v14 = v19;
    *a2 = v16[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D9045FB8()
{
  result = qword_1ECAB1388;
  if (!qword_1ECAB1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1388);
  }

  return result;
}

uint64_t EpisodeTranscriptDataAttributes.ttmlToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EpisodeTranscriptDataAttributes.snippet.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D90460B0()
{
  v1 = 0x656B6F546C6D7474;
  v2 = 0x707954726566666FLL;
  if (*v0 != 2)
  {
    v2 = 0x74657070696E73;
  }

  if (*v0)
  {
    v1 = 0x72756F5374786574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D904613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9046BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9046164(uint64_t a1)
{
  v2 = sub_1D9046434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90461A0(uint64_t a1)
{
  v2 = sub_1D9046434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeTranscriptDataAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9590, &unk_1D91AB788);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v17 = *(v1 + 16);
  v10 = v1[3];
  v15[1] = v1[4];
  v16 = v10;
  v15[0] = v1[5];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9046434();
  sub_1D9179F1C();
  v24 = 0;
  v12 = v18;
  sub_1D91799BC();
  if (!v12)
  {
    v13 = v16;
    v23 = v17;
    v22 = 1;
    sub_1D9046488();
    sub_1D91799FC();
    v19 = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    sub_1D90448F0(&qword_1ECAB94E8, sub_1D9044968);
    sub_1D91799FC();
    v20 = 3;
    sub_1D917994C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9046434()
{
  result = qword_1ECAB13A0[0];
  if (!qword_1ECAB13A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB13A0);
  }

  return result;
}

unint64_t sub_1D9046488()
{
  result = qword_1ECAB9598;
  if (!qword_1ECAB9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9598);
  }

  return result;
}

uint64_t EpisodeTranscriptDataAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB95A0, &qword_1D91AB798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9046434();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = 0;
  v11 = sub_1D91798BC();
  v13 = v12;
  v14 = v11;
  v27 = 1;
  sub_1D90467FC();
  sub_1D91798FC();
  v23 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
  v26 = 2;
  sub_1D90448F0(&qword_1ECAAFF00, sub_1D9044C88);
  sub_1D91798FC();
  v22 = v24;
  v25 = 3;
  v16 = sub_1D917984C();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v16;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  v20 = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v20;
  *(a2 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D90467FC()
{
  result = qword_1ECAB2638;
  if (!qword_1ECAB2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2638);
  }

  return result;
}

unint64_t sub_1D90468E4()
{
  result = qword_1ECAB95A8;
  if (!qword_1ECAB95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95A8);
  }

  return result;
}

unint64_t sub_1D904693C()
{
  result = qword_1ECAB95B0;
  if (!qword_1ECAB95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95B0);
  }

  return result;
}

unint64_t sub_1D9046994()
{
  result = qword_1ECAB95B8;
  if (!qword_1ECAB95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95B8);
  }

  return result;
}

unint64_t sub_1D90469EC()
{
  result = qword_1ECAB1390;
  if (!qword_1ECAB1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1390);
  }

  return result;
}

unint64_t sub_1D9046A44()
{
  result = qword_1ECAB1398;
  if (!qword_1ECAB1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1398);
  }

  return result;
}

unint64_t sub_1D9046A9C()
{
  result = qword_1ECAB1D50;
  if (!qword_1ECAB1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D50);
  }

  return result;
}

unint64_t sub_1D9046AF4()
{
  result = qword_1ECAB1D58;
  if (!qword_1ECAB1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D58);
  }

  return result;
}

unint64_t sub_1D9046B4C()
{
  result = qword_1ECAB18C8;
  if (!qword_1ECAB18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18C8);
  }

  return result;
}

unint64_t sub_1D9046BA4()
{
  result = qword_1ECAB18D0;
  if (!qword_1ECAB18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18D0);
  }

  return result;
}

uint64_t sub_1D9046BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F546C6D7474 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F5374786574 && a2 == 0xEA00000000006563 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74657070696E73 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id GenericDataSourceSection.__allocating_init(title:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v6 = sub_1D8E3B050;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t GenericDataSourceSection.storedTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTGenericDataSourceSection_storedTitle);
  v2 = *(v0 + OBJC_IVAR___MTGenericDataSourceSection_storedTitle + 8);

  return v1;
}

uint64_t sub_1D9046F00()
{
  v1 = (v0 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1D9046F58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

uint64_t sub_1D904702C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D904708C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D9047554;
  a2[1] = v6;
}

uint64_t sub_1D9047118(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_1D904751C;
  v6[1] = v5;
}

id GenericDataSourceSection.init(title:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v3 = sub_1D8E3B050;
  v3[1] = 0;
  v4 = &v2[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v4 = a1;
  *(v4 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for GenericDataSourceSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id GenericDataSourceSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenericDataSourceSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericDataSourceSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D904751C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1D9047554@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.init(serverEpisode:showViewModelTypeIsSerial:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1D90475B8(SEL *a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (!v7)
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x1DA72AA90](0, v9);

    v12 = *(v19 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);

    swift_unknownObjectRelease();
    if (!v12)
    {
      return 0;
    }

LABEL_9:
    v14 = *(v12 + 16);

    if (v14)
    {
      v9 = *(v14 + 16);

      if (!(v9 >> 62))
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_12:
          if ((v9 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1DA72AA90](0, v9);
          }

          else
          {
            if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v15 = *(v9 + 32);
          }

          v16 = v15;

          v17 = [v16 *a1];

          if (v17)
          {
            v18 = sub_1D917820C();

            return v18;
          }

          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      result = sub_1D917935C();
      if (result)
      {
        goto LABEL_12;
      }

LABEL_23:

      return 0;
    }

    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(v9 + 32);
  v12 = *(v11 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (v12)
  {
    v13 = *(v11 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);

    goto LABEL_9;
  }

  return 0;
}

uint64_t IntermediateEyebrowBuilderEpisode.entitlementState.getter()
{
  v1 = [*v0 priceType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = sub_1D8FCEA04(v3, v5);
  if (v7)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.episodeTypeResolvedValue.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = 1;
  if (*(v1 + 168))
  {
    v3 = *(v1 + 160);
    v4 = *(v1 + 168);

    v5 = sub_1D917980C();

    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v5 == 2)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return v2;
}

BOOL IntermediateEyebrowBuilderEpisode.mediaType.getter()
{
  v1 = sub_1D91772BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);

  v7 = PodcastEpisodeAttributes.uti.getter();
  v9 = v8;

  sub_1D917729C();
  v10 = sub_1D917721C();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  if (!v9)
  {

    return 0;
  }

  if (v7 != v10 || v9 != v12)
  {
    v14 = sub_1D9179ACC();

    return (v14 & 1) != 0;
  }

  return 1;
}

uint64_t IntermediateEyebrowBuilderEpisode.isExplicit.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (!*(v1 + 224) || (v2 = *(v1 + 216), v3 = *(v1 + 224), , v4 = sub_1D917980C(), , v4 != 1))
  {
    LOBYTE(v4) = sub_1D9179ACC();
  }

  return v4 & 1;
}

double IntermediateEyebrowBuilderEpisode.durationOpt.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  result = *(v1 + 304) / 1000.0;
  if (!*(v1 + 312))
  {
    v3 = *(v1 + 304) / 1000.0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.seasonNumberOpt.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  result = *(v1 + 352);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.episodeNumberOpt.getter()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  result = *(v1 + 336);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t IntermediateEyebrowBuilderEpisode.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);

  PodcastEpisodeAttributes.releaseDateResolved.getter(a1);
}

uint64_t sub_1D9047C6C()
{
  v1 = [*v0 priceType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = sub_1D8FCEA04(v3, v5);
  if (v7)
  {
    return 0;
  }

  return result;
}

double sub_1D9047D30()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  result = *(v1 + 304) / 1000.0;
  if (!*(v1 + 312))
  {
    v3 = *(v1 + 304) / 1000.0;
  }

  return result;
}

uint64_t sub_1D9047D70()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  result = *(v1 + 352);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D9047DAC()
{
  v1 = *(*v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  result = *(v1 + 336);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D9047DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);

  PodcastEpisodeAttributes.releaseDateResolved.getter(a1);
}

unint64_t sub_1D9047E7C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D904817C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MAPIContentType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0x5374736163646F70;
      case 4:
        return 0x697263736E617274;
      case 5:
        return 0x69726F6765746163;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x74736163646F70;
      case 1:
        return 0x4574736163646F70;
      case 2:
        return 0x4374736163646F70;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D9047FE8()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    switch(v1)
    {
      case 0:
        return 0x74736163646F70;
      case 1:
        return 0x4574736163646F70;
      case 2:
        return 0x4374736163646F70;
    }

    goto LABEL_16;
  }

  switch(v1)
  {
    case 3:
      return 0x5374736163646F70;
    case 4:
      v3 = 0x63736E617274;
      break;
    case 5:
      v3 = 0x6F6765746163;
      break;
    default:
LABEL_16:
      v4 = *v0;
      result = sub_1D9179C9C();
      __break(1u);
      return result;
  }

  return v3 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
}

unint64_t MAPIContentType.mediaRequestContentType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    result = sub_1D9179C9C();
    __break(1u);
  }

  else
  {
    *a2 = 0x50402030001uLL >> (8 * result);
  }

  return result;
}

unint64_t sub_1D904817C(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D9048190()
{
  result = qword_1ECAB95D0;
  if (!qword_1ECAB95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95D0);
  }

  return result;
}

unint64_t sub_1D90481E8()
{
  result = qword_1ECAB95D8;
  if (!qword_1ECAB95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB95E0, &qword_1D91ABE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB95D8);
  }

  return result;
}

uint64_t sub_1D904825C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  return sub_1D8CFD9D8(v1 + v3, a1);
}

uint64_t sub_1D90482B4(__int128 *a1)
{
  v3 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1D8D04E9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D904837C(uint64_t a1, uint64_t *a2)
{
  sub_1D8CFD9D8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1D8D04E9C(v6, v3 + v4);
  return swift_endAccess();
}

id BaseMAPIRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseMAPIRequest.init()()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequestController();
  v3 = [objc_allocWithZone(v2) init];
  v4 = &v1[OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController];
  *(v4 + 3) = v2;
  *(v4 + 4) = &protocol witness table for MediaRequestController;
  *v4 = v3;
  swift_beginAccess();
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(1, v5, v6);
  swift_endAccess();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BaseMAPIRequest();
  return objc_msgSendSuper2(&v8, sel_init);
}

id BaseMAPIRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseMAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D90486E0(unint64_t a1, unint64_t a2, SEL *a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v27 = v4 & 0xFFFFFFFFFFFFFF8;
      v28 = v4 & 0xC000000000000001;
      v26 = v4;
      do
      {
        if (v28)
        {
          v9 = MEMORY[0x1DA72AA90](v6, v4);
        }

        else
        {
          if (v6 >= *(v27 + 16))
          {
            goto LABEL_23;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v30 = v6 + 1;
        v11 = [v9 *a3];
        v12 = v10;
        v13 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = *a2;
        v31 = *a2;
        v15 = a2;
        *a2 = 0x8000000000000000;
        a2 = sub_1D8D490F4(v11);
        v17 = *(v4 + 16);
        v18 = (v16 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_24;
        }

        v20 = v16;
        if (*(v4 + 24) >= v19)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v4 = v31;
            if (v16)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D8F84A00();
            v4 = v31;
            if (v20)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D9008460(v19, isUniquelyReferenced_nonNull_native);
          v21 = sub_1D8D490F4(v11);
          if ((v20 & 1) != (v22 & 1))
          {
            sub_1D9179CFC();
            __break(1u);
            return;
          }

          a2 = v21;
          v4 = v31;
          if (v20)
          {
LABEL_4:
            v7 = *(v4 + 56);
            v8 = *(v7 + 8 * a2);
            *(v7 + 8 * a2) = v12;

            goto LABEL_5;
          }
        }

        *(v4 + 8 * (a2 >> 6) + 64) |= 1 << a2;
        *(*(v4 + 48) + 8 * a2) = v11;
        *(*(v4 + 56) + 8 * a2) = v12;
        v23 = *(v4 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        *(v4 + 16) = v25;
LABEL_5:
        a2 = v15;
        *v15 = v4;

        ++v6;
        v4 = v26;
      }

      while (v30 != v5);
    }
  }
}

uint64_t sub_1D9048914()
{
  sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
  result = sub_1D917917C();
  qword_1ECAB95F0 = result;
  return result;
}

uint64_t sub_1D90489C4()
{
  v1 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9048A74(uint64_t a1)
{
  v3 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D9048ACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id MAPIResponseDatabaseObjectProvider.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache;
  *&v3[v4] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing] = 1;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate] = 0;
  *&v3[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MAPIResponseDatabaseObjectProvider.init(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing] = 1;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate] = 0;
  *&v1[OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MAPIResponseDatabaseObjectProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D9048D4C(uint64_t a1, uint64_t a2)
{
  sub_1D9048F34();
  v5 = qword_1ECAB36C8;
  v6 = *(v2 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache);
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = [v6 objectForKey_];

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9628, qword_1D91ABF70);
    sub_1D917804C();
  }

  v8 = sub_1D8E27440(MEMORY[0x1E69E7CC0]);

  if (v8[2] && (v9 = sub_1D8D490F4(a2), (v10 & 1) != 0) && (v11 = *(v8[7] + 8 * v9), , , *(v11 + 16)) && (v12 = sub_1D8D490F4(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    return v14;
  }

  else
  {

    return 0;
  }
}

void sub_1D9048F34()
{
  v1 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing;
  if (*(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing) == 1)
  {
    v2 = v0;
    sub_1D8E27440(MEMORY[0x1E69E7CC0]);
    v3 = qword_1F54618C0;
    v4 = sub_1D9049194(qword_1F54618C0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v4, v3, isUniquelyReferenced_nonNull_native);
    v6 = qword_1F54618C8;
    v7 = sub_1D9049194(qword_1F54618C8);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v7, v6, v8);
    v9 = qword_1F54618D0;
    v10 = sub_1D9049194(qword_1F54618D0);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v10, v9, v11);
    v12 = qword_1F54618D8;
    v13 = sub_1D9049194(qword_1F54618D8);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v13, v12, v14);
    v15 = qword_1F54618E0;
    v16 = sub_1D9049194(qword_1F54618E0);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v16, v15, v17);
    v18 = qword_1F54618E8;
    v19 = sub_1D9049194(qword_1F54618E8);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F50C9C(v19, v18, v20);
    v21 = *(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_databaseObjectsCache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9628, qword_1D91ABF70);
    v22 = sub_1D917802C();

    if (qword_1ECAB36C8 != -1)
    {
      swift_once();
    }

    [v21 setObject:v22 forKey:qword_1ECAB95F0];

    *(v2 + v1) = 0;
  }
}

uint64_t sub_1D9049194(uint64_t a1)
{
  v99[1] = *MEMORY[0x1E69E9840];
  v5 = [*(v1 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_response) itemsFor_];
  v6 = sub_1D91785FC();

  v94 = a1;
  if (v6 >> 62)
  {
    v7 = sub_1D917935C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = (v6 & 0xC000000000000001);
  v95 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v9)
    {
      v3 = MEMORY[0x1DA72AA90](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v3 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v89 = v9;
        v90 = sub_1D9176A6C();

        swift_willThrow();
        v29 = v2;

        goto LABEL_33;
      }
    }

    if (([v3 respondsToSelector_] & 1) == 0)
    {
      __break(1u);
    }

    v11 = [v3 id];
    v12 = sub_1D917820C();
    v14 = v13;

    v2 = sub_1D8FF31C8(v12, v14);
    LOBYTE(v14) = v15;
    swift_unknownObjectRelease();
    ++v8;
    if ((v14 & 1) == 0)
    {
      v16 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D8ECC9FC(0, *(v95 + 2) + 1, 1, v95);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v95 = v16;
      if (v18 >= v17 >> 1)
      {
        v95 = sub_1D8ECC9FC((v17 > 1), v18 + 1, 1, v16);
      }

      *(v95 + 2) = v18 + 1;
      *&v95[8 * v18 + 32] = v2;
      v8 = v10;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v99[0] = sub_1D8E27344(MEMORY[0x1E69E7CC0]);
  if ((v94 - 2) < 4)
  {

    v20 = sub_1D8E27344(MEMORY[0x1E69E7CC0]);

    v21 = *MEMORY[0x1E69E9840];
    return v20;
  }

  if (!v94)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D9189060;
    *(v23 + 32) = sub_1D917820C();
    *(v23 + 40) = v24;
    *(v23 + 48) = sub_1D917820C();
    *(v23 + 56) = v25;
    *(v23 + 64) = sub_1D917820C();
    *(v23 + 72) = v26;
    v27 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v3 = v27;
    v28 = *(v95 + 2);
    v29 = v93;
    if (v28)
    {
      v96 = v27;
      v98 = v19;
      sub_1D91795CC();
      v30 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        v31 = v98[2];
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v30 += 8;
        --v28;
      }

      while (v28);

      v32 = v98;
      v3 = v96;
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v46 = objc_opt_self();
    sub_1D8FC0EF8(v32);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v47 = sub_1D9178A8C();

    v48 = [v46 predicateForPodcastStoreIDs_];

    v49 = [v46 predicateForNotHiddenPodcasts];
    v50 = [v48 AND_];

    [v3 setPredicate_];
    sub_1D8F60B24(v23);
    v51 = sub_1D91785DC();

    [v3 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v52 = sub_1D91785DC();
    [v3 setSortDescriptors_];

    v8 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC;
    if (*(v93 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_showsFRC))
    {

      goto LABEL_33;
    }

    v57 = objc_opt_self();
    v58 = v3;
    v59 = [v57 sharedInstance];
    v60 = [v59 mainQueueContext];

    v61 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v58 managedObjectContext:v60 sectionNameKeyPath:0 cacheName:0];
    v62 = *(v93 + v8);
    v2 = v93;
    *(v93 + v8) = v61;
    v63 = v61;

    if (v63)
    {
      v64 = sub_1D91785DC();

      [v63 setPropertyKeys_];

      v65 = *(v93 + v8);
      if (!v65)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v65 = *(v93 + v8);
      if (!v65)
      {
        goto LABEL_47;
      }
    }

    v29 = v93;
    [v65 setDelegate_];
    v84 = *(v93 + v8);
    if (!v84)
    {
      goto LABEL_47;
    }

    v98 = 0;
    v85 = [v84 performFetch_];
    v9 = v98;
    if (!v85)
    {
      goto LABEL_61;
    }

    v86 = v98;
LABEL_33:
    v53 = *(v29 + v8);
    if (!v53 || (v54 = [v53 fetchedObjects]) == 0)
    {
LABEL_46:
      v58 = v3;
LABEL_47:

      result = v99[0];
      v75 = *MEMORY[0x1E69E9840];
      return result;
    }

    v55 = v54;
    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v56 = &selRef_storeCollectionId;
LABEL_45:
    v74 = sub_1D91785FC();

    sub_1D90486E0(v74, v99, v56);

    goto LABEL_46;
  }

  v33 = v93;
  if (v94 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D9197860;
    *(v34 + 32) = sub_1D917820C();
    *(v34 + 40) = v35;
    *(v34 + 48) = sub_1D917820C();
    *(v34 + 56) = v36;
    *(v34 + 64) = sub_1D917820C();
    *(v34 + 72) = v37;
    *(v34 + 80) = sub_1D917820C();
    *(v34 + 88) = v38;
    *(v34 + 96) = sub_1D917820C();
    *(v34 + 104) = v39;
    *(v34 + 112) = sub_1D917820C();
    *(v34 + 120) = v40;
    v41 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v3 = v41;
    v42 = *(v95 + 2);
    if (v42)
    {
      v97 = v41;
      v98 = v19;
      sub_1D91795CC();
      v43 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        v44 = v98[2];
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v43 += 8;
        --v42;
      }

      while (v42);

      v45 = v98;
      v3 = v97;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v66 = objc_opt_self();
    sub_1D8FC0EF8(v45);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v67 = sub_1D9178A8C();

    v68 = [v66 predicateForEpisodeStoreTrackIds_];

    [v3 setPredicate_];
    sub_1D8F60B24(v34);
    v69 = sub_1D91785DC();

    [v3 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v70 = sub_1D91785DC();
    [v3 setSortDescriptors_];

    v71 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC;
    if (*(v93 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_episodesFRC))
    {
    }

    else
    {
      v76 = objc_opt_self();
      v58 = v3;
      v77 = [v76 sharedInstance];
      v78 = [v77 mainQueueContext];

      v79 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v58 managedObjectContext:v78 sectionNameKeyPath:0 cacheName:0];
      v80 = *(v93 + v71);
      *(v93 + v71) = v79;
      v81 = v79;

      if (v81)
      {
        v82 = sub_1D91785DC();

        [v81 setPropertyKeys_];

        v83 = *(v93 + v71);
        if (!v83)
        {
          goto LABEL_47;
        }
      }

      else
      {

        v83 = *(v93 + v71);
        if (!v83)
        {
          goto LABEL_47;
        }
      }

      v33 = v93;
      [v83 setDelegate_];
      v87 = *(v93 + v71);
      if (!v87)
      {
        goto LABEL_47;
      }

      v98 = 0;
      if ([v87 performFetch_])
      {
        v88 = v98;
      }

      else
      {
        v91 = v98;
        v92 = sub_1D9176A6C();

        swift_willThrow();
        v33 = v93;
      }
    }

    v72 = *(v33 + v71);
    if (!v72)
    {
      goto LABEL_46;
    }

    v73 = [v72 fetchedObjects];
    if (!v73)
    {
      goto LABEL_46;
    }

    v55 = v73;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v56 = &selRef_storeTrackId;
    goto LABEL_45;
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

id sub_1D9049DA0()
{
  *(v0 + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing) = 1;
  v1 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result mapiResponseDatabaseObjectsDidChange];
  }

  return result;
}

id MAPIResponseDatabaseObjectProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAPIResponseDatabaseObjectProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAPIResponseDatabaseObjectProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MediaAPIRequest<>.parse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19MediaAPIClientErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D904A1B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D904A214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D904A264(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t MediaAPIResponse.contentHash.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MediaAPIResponse.init(objects:response:contentHash:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for MediaAPIResponse() + 36);

  return sub_1D8D85D0C(a5, v7);
}

void sub_1D904A39C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1D91786FC();
  if (v2 <= 0x3F)
  {
    sub_1D904A47C();
    if (v3 <= 0x3F)
    {
      sub_1D8CF4344();
      if (v4 <= 0x3F)
      {
        type metadata accessor for MediaRequest.Params();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D904A47C()
{
  result = qword_1ECAAFDD8;
  if (!qword_1ECAAFDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFDD8);
  }

  return result;
}

id MediaRequestController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D904A528, 0, 0);
}

uint64_t sub_1D904A528()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = type metadata accessor for MediaAPIResponse();
  *v8 = v0;
  v8[1] = sub_1D904A658;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000039, 0x80000001D91C99C0, sub_1D904E9D8, v5, v9);
}

uint64_t sub_1D904A658()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F49730, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

char *MediaRequestController.__allocating_init(responseQueue:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = a1;
  v6 = v3;

  return v6;
}

uint64_t MediaRequestControllerProtocol.perform(params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D904A838, 0, 0);
}

uint64_t sub_1D904A838()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CF8, &unk_1D91A6E00);
  *v5 = v0;
  v5[1] = sub_1D904A94C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000010, 0x80000001D91D27C0, sub_1D904EDE4, v3, v6);
}

uint64_t sub_1D904A94C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1D904AA94;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1D904AA68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D904AA94()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

void sub_1D904AAF8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D904AB58()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D904ABAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D904AC64()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D904ACA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1D904AD58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v48 = a2;
  v43 = a1;
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v49 = v14;
  *(v14 + 2) = v13;
  *(v14 + 3) = a3;
  v47 = v13;
  *(v14 + 4) = a4;
  sub_1D9179E2C();
  sub_1D8D85B08(a1, v12);
  v15 = *(v8 + 80);
  v16 = (v15 + 16) & ~v15;
  v46 = v9 + 7;
  v17 = (v9 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1D8D85D0C(v12, v20 + v16);
  *(v20 + v17) = MEMORY[0x1E69E7CC0];
  v21 = v20 + v18;
  *(v21 + 64) = v60;
  v22 = v59;
  *(v21 + 32) = v58;
  *(v21 + 48) = v22;
  v23 = v57;
  *v21 = v56;
  *(v21 + 16) = v23;
  v24 = v42;
  *(v20 + v19) = v42;
  v25 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v49;
  *v25 = sub_1D8E40BC8;
  v25[1] = v26;
  v27 = type metadata accessor for MediaRequestBuilder();

  v44 = v24;

  v28 = v43;
  sub_1D8D96644(v43);
  v29 = sub_1D8D963C0(v28);
  v30 = v45;
  sub_1D8D85B08(v28, v45);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  sub_1D8D85D0C(v30, v31 + ((v15 + 24) & ~v15));
  v54 = sub_1D8D85220;
  v55 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D8D85118;
  v53 = &block_descriptor_64;
  v32 = _Block_copy(&aBlock);

  v33 = [v29 thenWithBlock_];
  _Block_release(v32);

  sub_1D8D85B08(v28, v30);
  v34 = (v15 + 40) & ~v15;
  v35 = (v46 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = sub_1D904EE88;
  v36[4] = v20;
  sub_1D8D85D0C(v30, v36 + v34);
  v37 = v44;
  *(v36 + v35) = v44;
  v38 = v48;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v54 = sub_1D8D90DA8;
  v55 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1D8D5960C;
  v53 = &block_descriptor_22_1;
  v39 = _Block_copy(&aBlock);
  v40 = v38;
  v41 = v37;

  [v33 addFinishBlock_];

  _Block_release(v39);
}

uint64_t sub_1D904B1C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a3;
  v41 = a8;
  v39 = a7;
  v42 = a2;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = v12;
    v38 = v16;
    v22 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
    v23 = a5;
    v24 = result;
    swift_beginAccess();
    v36 = *&v24[v22];

    v25 = swift_allocObject();
    v26 = v40;
    v27 = v11;
    v28 = a1;
    v30 = v41;
    v29 = v42;
    v25[2] = v39;
    v25[3] = v30;
    v25[4] = v28;
    v25[5] = v29;
    v25[6] = v26;
    v25[7] = a4;
    v25[8] = v23;
    aBlock[4] = sub_1D905043C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_160_0;
    v31 = _Block_copy(aBlock);

    v32 = v29;

    v33 = v23;
    sub_1D9177E4C();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v34 = v36;
    MEMORY[0x1DA72A400](0, v20, v15, v31);
    _Block_release(v31);

    (*(v37 + 8))(v15, v27);
    (*(v17 + 8))(v20, v38);
  }

  return result;
}

void sub_1D904B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_1D8D85B08(a1, v12);
  v14 = *(v7 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v15;
  v35 = v16;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v17;
  v18 = swift_allocObject();
  v18[2] = sub_1D904EE8C;
  v18[3] = v13;
  v36 = v13;
  v18[4] = MEMORY[0x1E69E7CC0];
  sub_1D8D85D0C(v12, v18 + v15);
  v19 = v33;
  *(v18 + v16) = v33;
  *(v18 + v17) = 0;
  v20 = type metadata accessor for MediaRequestBuilder();

  v33 = v19;
  v21 = v31;
  sub_1D8D96644(v31);
  v22 = sub_1D8D963C0(v21);
  sub_1D8D85B08(v21, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  sub_1D8D85D0C(v9, v23 + ((v14 + 24) & ~v14));
  v41 = sub_1D905064C;
  v42 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1D8D85118;
  v40 = &block_descriptor_35_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 thenWithBlock_];
  _Block_release(v24);

  sub_1D8D85B08(v21, v9);
  v26 = v32;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = sub_1D904EEB4;
  v27[4] = v18;
  sub_1D8D85D0C(v9, v27 + v34);
  v28 = v33;
  *(v27 + v35) = v33;
  *(v27 + v26) = 0;
  v41 = sub_1D9050650;
  v42 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1D8D5960C;
  v40 = &block_descriptor_42_0;
  v29 = _Block_copy(&aBlock);
  v30 = v28;

  [v25 addFinishBlock_];

  _Block_release(v29);
}

void sub_1D904B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = type metadata accessor for MediaRequest.Params();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v10 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, v8);
  v11 = *(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_1D8D85D0C(v8, v12 + ((v11 + 24) & ~v11));
  v28 = sub_1D905064C;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D8D85118;
  v27 = &block_descriptor_49;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 thenWithBlock_];
  _Block_release(v13);

  sub_1D8D85B08(a1, v8);
  v15 = (v11 + 40) & ~v11;
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = 0;
  v17[3] = v18;
  v17[4] = a3;
  sub_1D8D85D0C(v8, v17 + v15);
  v19 = v23;
  *(v17 + v16) = v23;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v28 = sub_1D9050650;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D8D5960C;
  v27 = &block_descriptor_56_1;
  v20 = _Block_copy(&aBlock);

  v21 = v19;

  [v14 addFinishBlock_];
  _Block_release(v20);
}

void sub_1D904BB40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v27 = a3;
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v11 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, v9);
  v12 = *(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  sub_1D8D85D0C(v9, v13 + ((v12 + 24) & ~v12));
  v34 = sub_1D905064C;
  v35 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8D85118;
  v33 = &block_descriptor_63_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v11 thenWithBlock_];
  _Block_release(v14);

  sub_1D8D85B08(a1, v9);
  v16 = (v12 + 40) & ~v12;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  v19[2] = 0;
  v19[3] = v20;
  v19[4] = a4;
  sub_1D8D85D0C(v9, v19 + v16);
  v21 = v29;
  *(v19 + v17) = v29;
  v22 = v28;
  *(v19 + v18) = v28;
  v34 = sub_1D9050650;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8D5960C;
  v33 = &block_descriptor_70_0;
  v23 = _Block_copy(&aBlock);
  v24 = v22;

  v25 = v21;

  [v15 addFinishBlock_];
  _Block_release(v23);
}

void sub_1D904BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v16 = type metadata accessor for MediaRequest.Params();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v25 = MEMORY[0x1EEE9AC00](v21);
  if (a5)
  {
    v26 = a5;
    a6(0, a5);

    return;
  }

  v62 = a10;
  if (!a3)
  {
    (a6)(MEMORY[0x1E69E7CC0], 0, v25);
    return;
  }

  v59 = v24;
  v60 = v23;
  v27 = &v55 - v22;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = a11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a8 = sub_1D8ECD83C(0, a8[2] + 1, 1, a8);
  }

  v30 = a8[2];
  v29 = a8[3];
  if (v30 >= v29 >> 1)
  {
    a8 = sub_1D8ECD83C((v29 > 1), v30 + 1, 1, a8);
  }

  a8[2] = v30 + 1;
  a8[v30 + 4] = a3;
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
  if (*(a9 + 202) == 1)
  {
    if (v31)
    {

      sub_1D8D85B08(a9, v27);
      v32 = *(v27 + 20);
      if (v27[168])
      {
        v32 = 0;
      }

      v33 = *(v27 + 24);
      if (v27[200])
      {
        v33 = 0;
      }

      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
      }

      else
      {
        *(v27 + 24) = v35;
        v27[200] = 0;
        v55 = v27;
        sub_1D8D85B08(v27, v20);
        v36 = v59[80];
        v57 = (v36 + 40) & ~v36;
        v37 = (v17 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = v37;
        v56 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        v38[2] = a6;
        v38[3] = a7;
        v38[4] = a8;
        sub_1D8D85D0C(v20, v38 + ((v36 + 40) & ~v36));
        v39 = v61;
        v40 = v62;
        *(v38 + v37) = v62;
        *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
        v41 = v39;
        v42 = type metadata accessor for MediaRequestBuilder();
        v59 = v41;

        v62 = v40;
        v43 = v55;
        sub_1D8D96644(v55);
        v44 = sub_1D8D963C0(v43);
        v45 = v60;
        sub_1D8D85B08(v43, v60);
        v46 = swift_allocObject();
        *(v46 + 16) = v42;
        sub_1D8D85D0C(v45, v46 + ((v36 + 24) & ~v36));
        v67 = sub_1D905064C;
        v68 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D8D85118;
        v66 = &block_descriptor_121;
        v47 = _Block_copy(&aBlock);

        v48 = [v44 thenWithBlock_];
        _Block_release(v47);

        sub_1D8D85B08(v43, v45);
        v49 = v56;
        v50 = swift_allocObject();
        v50[2] = 0;
        v50[3] = sub_1D9050620;
        v50[4] = v38;
        sub_1D8D85D0C(v45, v50 + v57);
        v51 = v62;
        *(v50 + v58) = v62;
        *(v50 + v49) = v61;
        v67 = sub_1D9050650;
        v68 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D8D5960C;
        v66 = &block_descriptor_128;
        v52 = _Block_copy(&aBlock);
        v53 = v51;
        v54 = v59;

        [v48 addFinishBlock_];
        _Block_release(v52);

        sub_1D8D90BEC(v43);
      }

      return;
    }
  }

  else
  {
  }

  a6(a8, 0);
}

void sub_1D904C368(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, __int128 *a8, void *a9, void *a10, uint64_t a11)
{
  v73 = a6;
  v75 = a11;
  v74 = a10;
  v70 = a9;
  v16 = type metadata accessor for MediaRequest.Params();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v69 - v22;
  if (a3)
  {
    type metadata accessor for MediaRequestResponseParser();
    _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
    v24 = v23 == 0;
    if (v23)
    {
    }

    sub_1D90507E0(a3, &aBlock);
    v25 = aBlock;
    if (BYTE1(aBlock))
    {
      sub_1D904FAFC();
      a3 = swift_allocError();
      *v26 = v25;
      v27 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      LOBYTE(v76) = aBlock;
      v27 = sub_1D9052EB8(a3, &v76);
      a3 = v28;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v24 = 1;
  }

  *&aBlock = a7;

  sub_1D8E3016C(v27);
  v29 = aBlock;
  v30 = a8[3];
  v79 = a8[2];
  v80 = v30;
  v81 = *(a8 + 8);
  v31 = a8[1];
  v77 = *a8;
  v78 = v31;
  if (a4)
  {
    sub_1D904CA24();
    if (v32)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  if (a5)
  {

    v33 = a3;
    a3 = a5;
LABEL_15:
    v35 = a5;
    (v74)(0, a4, 0, 0, a3);

    return;
  }

  if (a3)
  {

    v34 = a3;
    v33 = a3;
    goto LABEL_15;
  }

  if (v24 || (*(v73 + 202) & 1) == 0)
  {
    v84 = v79;
    v85 = v80;
    v86 = v81;
    aBlock = v77;
    v83 = v78;
    v76 = sub_1D9179E0C();
    v36 = sub_1D9179A4C();
    (v74)(v29, a4, v36, v37, 0);
  }

  else
  {
    v38 = v72;
    sub_1D8D85B08(v73, v72);
    v39 = *(v38 + 160);
    if (*(v38 + 168))
    {
      v39 = 0;
    }

    v40 = *(v38 + 192);
    if (*(v38 + 200))
    {
      v40 = 0;
    }

    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      *(v38 + 192) = v42;
      *(v38 + 200) = 0;
      sub_1D8D85B08(v38, v20);
      v43 = *(v69 + 80);
      v44 = (v43 + 16) & ~v43;
      v73 = v17 + 7;
      v45 = (v17 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 79) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      sub_1D8D85D0C(v20, v48 + v44);
      *(v48 + v45) = v29;
      v49 = v48 + v46;
      *(v49 + 64) = v81;
      v50 = v80;
      *(v49 + 32) = v79;
      *(v49 + 48) = v50;
      v51 = v78;
      *v49 = v77;
      *(v49 + 16) = v51;
      v52 = v70;
      *(v48 + v47) = v70;
      v53 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
      v54 = v75;
      *v53 = v74;
      v53[1] = v54;
      v55 = type metadata accessor for MediaRequestBuilder();
      v74 = v52;

      v56 = v72;
      sub_1D8D96644(v72);
      v57 = sub_1D8D963C0(v56);
      v58 = v71;
      sub_1D8D85B08(v56, v71);
      v59 = swift_allocObject();
      *(v59 + 16) = v55;
      sub_1D8D85D0C(v58, v59 + ((v43 + 24) & ~v43));
      *&v84 = sub_1D905064C;
      *(&v84 + 1) = v59;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_1D8D85118;
      *(&v83 + 1) = &block_descriptor_147;
      v60 = _Block_copy(&aBlock);

      v61 = [v57 thenWithBlock_];
      _Block_release(v60);

      v62 = v56;
      sub_1D8D85B08(v56, v58);
      v63 = (v43 + 40) & ~v43;
      v64 = (v73 + v63) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = sub_1D9050624;
      v65[4] = v48;
      sub_1D8D85D0C(v58, v65 + v63);
      v66 = v74;
      *(v65 + v64) = v74;
      *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
      *&v84 = sub_1D9050650;
      *(&v84 + 1) = v65;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_1D8D5960C;
      *(&v83 + 1) = &block_descriptor_154;
      v67 = _Block_copy(&aBlock);
      v68 = v66;

      [v61 addFinishBlock_];
      _Block_release(v67);

      sub_1D8D90BEC(v62);
    }
  }
}

uint64_t sub_1D904CA24()
{
  v1 = [v0 allHeaderFields];
  v2 = sub_1D917805C();

  v8[0] = 1734440005;
  v8[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(v2 + 16) && (v3 = sub_1D8D6550C(v7), (v4 & 1) != 0))
  {
    sub_1D8CFAD1C(*(v2 + 56) + 32 * v3, v8);
    sub_1D8D9A308(v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_1D8D9A308(v7);
    return 0;
  }
}

uint64_t sub_1D904CB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v30 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_1D9176EAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  a6(a1, a2, a3, a4, a5);
  swift_beginAccess();
  sub_1D8D76CE0(v21, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1D8D798AC(v16);
  }

  v23 = v29;
  (*(v18 + 32))(v29, v16, v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
    MEMORY[0x1EEE9AC00](Strong);
    *(&v28 - 2) = v23;
    *(&v28 - 1) = 0;
    v27 = v26;

    os_unfair_lock_lock(v25 + 6);
    sub_1D9050654(&v25[4]);
    os_unfair_lock_unlock(v25 + 6);
  }

  return (*(v18 + 8))(v23, v17);
}

id MediaRequestController.__allocating_init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConcurrentOperationCount:a1 requestEncodingType:a2];
}

id MediaRequestController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaRequestController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D904CEE8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_1D904CF30())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t MediaRequestController.send<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27[0] = a2;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediaRequest.Params();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = v6;
  (*(a5 + 32))(a4, a5, v16);
  v19 = (*(a5 + 40))(a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v11 + 16))(v13, a1, a4);
  v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v27[0];
  *(v22 + 5) = a3;
  (*(v11 + 32))(&v22[v21], v13, a4);
  v23 = type metadata accessor for MediaRequestController();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v18, v19, 0, v25, sub_1D904EEB8, v22, v23, AssociatedTypeWitness, &protocol witness table for MediaRequestController, AssociatedConformanceWitness);

  return sub_1D8D90BEC(v18);
}

uint64_t sub_1D904D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D8D58924;

  return MediaRequestController.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t MediaRequestController.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D904D3D0, 0, 0);
}

uint64_t sub_1D904D3D0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1D904D4F4;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1D904EEFC, v3, AssociatedTypeWitness);
}

uint64_t sub_1D904D4F4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D904D630, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D904D630()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D904D704(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  if (a4)
  {
    sub_1D9176E8C();
    v15 = sub_1D9176EAC();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_1D9176EAC();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = a3;
  v18 = a5;
  v19 = a1;
  a6(v14, a5);

  return sub_1D8D798AC(v14);
}

uint64_t sub_1D904D858(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v41 = a5;
  v42 = a4;
  v40 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v35 - v12;
  v38 = a7;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  sub_1D904FC24();
  v36 = AssociatedTypeWitness;
  v19 = sub_1D9179EAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v35 - v22);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v24 = sub_1D9179EAC();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v35 - v27);
  (*(v29 + 16))(&v35 - v27, v40, v24, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v28;
    *v23 = v30;
    swift_storeEnumTagMultiPayload();
    v31 = v30;
    v42(v23);

    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    (*(v15 + 32))(v18, v28, v14);
    (*(a8 + 48))(v18, v38, a8);
    v33 = v39;
    v34 = v36;
    (*(v39 + 16))(v23, v13, v36);
    swift_storeEnumTagMultiPayload();
    v42(v23);
    (*(v20 + 8))(v23, v19);
    (*(v33 + 8))(v13, v34);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1D904DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v9 = sub_1D917877C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v10 + 32))(v16 + v15, v14, v9);
  MediaRequestController.send<A>(_:completion:)(a3, sub_1D904FB50, v16, a4, a5);
}

uint64_t sub_1D904DDF4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  sub_1D904FC24();
  v10 = sub_1D9179EAC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v20 - v13);
  (*(v15 + 16))(v20 - v13, a1, v10, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v17 = swift_allocError();
    *v18 = v16;
    v20[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    return sub_1D917875C();
  }

  else
  {
    (*(v3 + 32))(v9, v14, AssociatedTypeWitness);
    (*(v3 + 16))(v6, v9, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    sub_1D917876C();
    return (*(v3 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_1D904E09C(uint64_t a1, int a2, void *a3, uint64_t a4, char a5, void (*a6)(uint64_t, void, char *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a1;
  v38 = a8;
  v35 = a4;
  v36 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v17 = sub_1D9179EAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v33 - v25;
  if (a5)
  {
    *v26 = a3;
    swift_storeEnumTagMultiPayload();
    v27 = a3;
    v21 = v26;
LABEL_11:
    a6(v37, v36 & 1, v21);
    return (*(v18 + 8))(v21, v17);
  }

  v33[1] = a7;
  v34 = a6;
  if (v38)
  {
    v23 = [v38 beginParsing];
  }

  MEMORY[0x1EEE9AC00](v23);
  v33[-6] = a9;
  v33[-5] = a10;
  v33[-4] = a11;
  v33[-3] = a12;
  v28 = v35;
  v33[-2] = a3;
  v33[-1] = v28;
  sub_1D8D5D7BC(sub_1D90505C0, v16, v21);
  v29 = v38;
  if (v38)
  {
    Result.failure.getter(v17, &v39);
    v30 = v39;
    a6 = v34;
    if (v39)
    {
      v31 = sub_1D9176A5C();
    }

    else
    {
      v31 = 0;
    }

    [v29 endParsingWithError_];

    goto LABEL_11;
  }

  v34(v37, v36 & 1, v21);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1D904E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1D917656C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917655C();
  sub_1D917654C();

  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_1D904E3F0(uint64_t a1, unint64_t a2, int a3, id a4, id a5, void (*a6)(id, uint64_t, id, unint64_t, uint64_t))
{
  if (!a4)
  {
    if (!a5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v34[0] = a5;
    v13 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v14 = v35;
      v15 = [v35 domain];
      v16 = sub_1D917820C();
      v18 = v17;

      v19 = *MEMORY[0x1E698C548];
      if (v16 == sub_1D917820C() && v18 == v20)
      {
      }

      else
      {
        v22 = sub_1D9179ACC();

        if ((v22 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v25 = [v35 userInfo];
      v26 = sub_1D917805C();

      v27 = *MEMORY[0x1E698C568];
      v28 = sub_1D917820C();
      if (*(v26 + 16))
      {
        v30 = sub_1D8D33C70(v28, v29);
        v32 = v31;

        if (v32)
        {
          sub_1D8CFAD1C(*(v26 + 56) + 32 * v30, v34);

          if (swift_dynamicCast())
          {
            v12 = 0;
            v11 = v35;
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_27:
    }

LABEL_28:
    v11 = 0;
    v12 = 1;
    goto LABEL_29;
  }

  v11 = [a4 statusCode];
  if (a5)
  {
    v12 = 0;
LABEL_29:
    v33 = a5;
    a6(v11, v12, a5, 0, 1);

    return;
  }

LABEL_13:
  if (a2 >> 60 == 15)
  {
    sub_1D904FAFC();
    v23 = swift_allocError();
    *v24 = 3;
    a6(v11, a4 == 0, v23, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a6(v11, a4 == 0, a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

uint64_t sub_1D904E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v28 = a5;
  v29 = a4;
  v30 = a2;
  v10 = type metadata accessor for MediaRequest.Params();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaAPIResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v13 = sub_1D917877C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - v17;
  (*(v14 + 16))(&v25 - v17, a1, v13, v16);
  sub_1D8D85B08(a3, v12);
  v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v20 = (v15 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v26;
  *(v21 + 2) = v28;
  *(v21 + 3) = v23;
  *(v21 + 4) = a7;
  (*(v14 + 32))(&v21[v19], v18, v13);
  sub_1D8D85D0C(v12, &v21[v20]);
  (*(a7 + 32))(a3, v29, sub_1D9050474, v21, v22, a7);
}

void sub_1D904E9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v15 = type metadata accessor for MediaRequest.Params();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MediaAPIResponse();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v32 - v21);
  if (a1 && a2)
  {
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
    v24 = sub_1D91797FC();
    if (v24)
    {
      v25 = v24;
      sub_1D8D85B08(a7, v18);
      MediaAPIResponse.init(objects:response:contentHash:parameters:)(v25, v23, a3, a4, v18, v22);

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917877C();
      sub_1D917876C();
    }

    else
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9700, &qword_1D91AC300) | 0x8000000000000000;
      sub_1D8E40CCC();
      v30 = swift_allocError();
      *v31 = a9;
      v31[1] = v29;
      v33 = v30;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917877C();
      sub_1D917875C();
    }
  }

  else
  {
    sub_1D8E40CCC();
    v26 = swift_allocError();
    *v27 = a5;
    v27[1] = 0;
    v33 = v26;
    v28 = a5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D917877C();
    sub_1D917875C();
  }
}

uint64_t sub_1D904EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(a3, 0, 0, sub_1D9014CB0, v16, a4, a5);
}

uint64_t sub_1D904EDF0(int a1, int a2, id a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
    return sub_1D917875C();
  }

  else
  {
    sub_1D8D752C4(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
    return sub_1D917876C();
  }
}

uint64_t sub_1D904EE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D904EF08(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1D9176EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D8D798AC(v8);
  }

  v15 = (*(v10 + 32))(v13, v8, v9);
  v16 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = v13;

  os_unfair_lock_lock((v16 + 24));
  sub_1D9050608((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v19;

  result = (*(v10 + 8))(v13, v9);
  if (v17)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = sub_1D9176A5C();
    }

    [v17 endRequestEncodingWithError_];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D904F13C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_1D9176EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D8D798AC(v6);
  }

  v13 = (*(v8 + 32))(v11, v6, v7);
  v14 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v13);
  *(&v16 - 2) = v11;

  os_unfair_lock_lock((v14 + 24));
  sub_1D9050608((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  result = (*(v8 + 8))(v11, v7);
  if (v15)
  {
    [v15 beginNetworking];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D904F340(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1D9176EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D8D798AC(v8);
  }

  v15 = (*(v10 + 32))(v13, v8, v9);
  v16 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = v13;

  os_unfair_lock_lock((v16 + 24));
  sub_1D8D975C0((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v19;

  result = (*(v10 + 8))(v13, v9);
  if (v17)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = sub_1D9176A5C();
    }

    [v17 endNetworkingWithError_];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t dispatch thunk of MediaRequestControllerProtocol.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 88);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D8D58924;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D904FA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D904FA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D904FAFC()
{
  result = qword_1EDCD6178;
  if (!qword_1EDCD6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6178);
  }

  return result;
}

uint64_t sub_1D904FB50(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v5 = *(*(sub_1D917877C() - 8) + 80);

  return sub_1D904DDF4(a1);
}

unint64_t sub_1D904FC24()
{
  result = qword_1ECAB96E0;
  if (!qword_1ECAB96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB96E0);
  }

  return result;
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 56);

  v9 = *(v0 + v2 + 64);

  v10 = *(v0 + v2 + 72);

  v11 = *(v0 + v2 + 80);

  v12 = *(v0 + v2 + 88);

  v13 = *(v0 + v2 + 96);

  v14 = *(v0 + v2 + 104);

  v15 = *(v0 + v2 + 112);

  v16 = *(v0 + v2 + 120);

  v17 = *(v0 + v2 + 128);

  v18 = *(v0 + v2 + 136);

  v19 = *(v0 + v2 + 144);

  v20 = *(v0 + v2 + 176);

  v21 = *(v0 + v2 + 184);

  v22 = v1[28];
  v23 = sub_1D9176C2C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v6 + v22, v23);
  }

  v25 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v6 + v1[29] + 8);

  v27 = *(v6 + v1[31] + 8);

  v28 = *(v6 + v1[32]);

  v29 = *(v6 + v1[33] + 8);

  v30 = *(v6 + v1[35] + 8);

  return swift_deallocObject();
}

void sub_1D904FEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params() - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D904BDFC(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24), *(v5 + 32), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D904FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);
  v8 = *(v5 + 40);
  return sub_1D904CB3C(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24));
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));
  v5 = *(v0 + v3 + 48);

  v6 = *(v0 + v3 + 56);

  v7 = *(v0 + v3 + 64);

  v8 = *(v0 + v3 + 72);

  v9 = *(v0 + v3 + 80);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 112);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 128);

  v16 = *(v0 + v3 + 136);

  v17 = *(v0 + v3 + 144);

  v18 = *(v0 + v3 + 176);

  v19 = *(v0 + v3 + 184);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v4 + v1[29] + 8);

  v26 = *(v4 + v1[31] + 8);

  v27 = *(v4 + v1[32]);

  v28 = *(v4 + v1[33] + 8);

  v29 = *(v4 + v1[35] + 8);

  v30 = *(v0 + v23);

  v31 = *(v0 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 56);

  v9 = *(v0 + v2 + 64);

  v10 = *(v0 + v2 + 72);

  v11 = *(v0 + v2 + 80);

  v12 = *(v0 + v2 + 88);

  v13 = *(v0 + v2 + 96);

  v14 = *(v0 + v2 + 104);

  v15 = *(v0 + v2 + 112);

  v16 = *(v0 + v2 + 120);

  v17 = *(v0 + v2 + 128);

  v18 = *(v0 + v2 + 136);

  v19 = *(v0 + v2 + 144);

  v20 = *(v0 + v2 + 176);

  v21 = *(v0 + v2 + 184);

  v22 = v1[28];
  v23 = sub_1D9176C2C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v6 + v22, v23);
  }

  v25 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v6 + v1[29] + 8);

  v27 = *(v6 + v1[31] + 8);

  v28 = *(v6 + v1[32]);

  v29 = *(v6 + v1[33] + 8);

  v30 = *(v6 + v1[35] + 8);

  return swift_deallocObject();
}

void sub_1D9050474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  type metadata accessor for MediaAPIResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v13 = *(sub_1D917877C() - 8);
  v14 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for MediaRequest.Params() - 8);
  sub_1D904E9E8(a1, a2, a3, a4, a5, v5 + v14, v5 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)), v10, v11);
}

BOOL static MediaRequestResponseParser.parseResponse(_:params:)(uint64_t a1)
{
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a1);
  v3 = v2;
  if (v2)
  {
  }

  sub_1D90507E0(a1, v8);
  v4 = v8[0];
  if (v8[1])
  {
    sub_1D904FAFC();
    swift_allocError();
    *v5 = v4;
  }

  else
  {
    v7 = v8[0];
    sub_1D9052EB8(a1, &v7);
  }

  return v3 != 0;
}

PodcastsFoundation::MediaRequestResponseParser::MediaRequestResponseParseError_optional __swiftcall MediaRequestResponseParser.MediaRequestResponseParseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D9050748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9053264();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D90507A0()
{
  v0 = sub_1D917656C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D917655C();
  qword_1ECAB18B8 = result;
  return result;
}

char sub_1D90507E0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (!*(v3 + 16))
  {

    v8 = 257;
    goto LABEL_11;
  }

  v4 = *(v3 + 32);

  sub_1D91793EC();
  if (!*(v4 + 16) || (v5 = sub_1D8D6550C(v10), (v6 & 1) == 0))
  {

    LOBYTE(v3) = sub_1D8D9A308(v10);
    goto LABEL_9;
  }

  sub_1D8CFAD1C(*(v4 + 56) + 32 * v5, v11);
  sub_1D8D9A308(v10);

  LOBYTE(v3) = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
LABEL_9:
    v8 = 256;
    goto LABEL_11;
  }

  v7._countAndFlagsBits = 1701869940;
  v7._object = 0xE400000000000000;
  LOBYTE(v3) = MediaRequest.ContentType.init(rawValue:)(v7);
  if (v10[0] == 7)
  {
    v8 = 258;
LABEL_11:
    *a2 = v8;
    return v3;
  }

  *a2 = v10[0];
  *(a2 + 1) = 0;
  return v3;
}

uint64_t static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)(uint64_t a1, uint64_t a2)
{
  v2 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a2);
  if (!v2)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  sub_1D905315C();
  v3 = sub_1D917843C();

  return v3;
}

void sub_1D9050A28(uint64_t *a1@<X0>, void **a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = objc_opt_self();
  v9 = sub_1D917802C();
  *&v45[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:0 error:v45];

  v11 = *&v45[0];
  if (!v10)
  {
    v31 = v11;
    v32 = sub_1D9176A6C();

    swift_willThrow();
    v30 = v32;
LABEL_21:

    v33 = 0;
    goto LABEL_27;
  }

  v37 = a2;
  v40 = sub_1D9176C8C();
  v41 = v12;

  v13 = &off_1F5461918;
  v14 = 3;
  do
  {
    v15 = *(v13 - 1);
    v16 = *v13;

    v17 = sub_1D917802C();
    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v19 = [v17 valueForKeyPath_];

    if (v19)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45[0] = v43;
    v45[1] = v44;
    if (*(&v44 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v20 = v42;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v45, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v13 += 2;
    --v14;
  }

  while (v14);
  v20 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v21 = sub_1D9050EB4(v20, a2);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D917654C();
  if (v38)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F20);
    v23 = v38;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = sub_1D9176A5C();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "Failed to parse container with error: %@", v26, 0xCu);
      sub_1D8D08A50(v27, &unk_1ECAB6C70, &unk_1D9188C30);
      v29 = v27;
      a2 = v37;
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    sub_1D8D7567C(v40, v41);

    v30 = *a2;
    *a2 = v38;
    goto LABEL_21;
  }

  v33 = *&v45[0];
  if (v21 >> 62)
  {
    v34 = sub_1D917935C();
  }

  else
  {
    v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34 <= 0)
  {

    v21 = 0;
  }

  (*(a4 + 16))(v21, a3);
  sub_1D8D7567C(v40, v41);
LABEL_27:
  *a5 = v33;
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D9050EB4(uint64_t a1, void **a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v38 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    v35 = a1 + 32;
    while (1)
    {
      while (1)
      {
        if (v6 >= v4)
        {
          __break(1u);
LABEL_23:
          __break(1u);
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }

        v36 = v6 + 1;
        v8 = *(v35 + 8 * v6);
        v9 = objc_opt_self();

        v10 = sub_1D917802C();
        v37 = 0;
        v11 = [v9 dataWithJSONObject:v10 options:0 error:&v37];

        v12 = v37;
        if (v11)
        {
          break;
        }

        v27 = v12;
        v28 = sub_1D9176A6C();

        swift_willThrow();
        v7 = v28;
        v3 = 0;
LABEL_4:

        ++v6;
        if (v36 == v4)
        {
          goto LABEL_21;
        }
      }

      v13 = sub_1D9176C8C();
      v15 = v14;

      if (qword_1ECAB18B0 != -1)
      {
        swift_once();
      }

      type metadata accessor for ServerPodcastEpisode();
      sub_1D90532B8(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode);
      v16 = v3;
      sub_1D917654C();
      if (v3)
      {
        if (qword_1EDCD0F18 != -1)
        {
          swift_once();
        }

        v17 = sub_1D917744C();
        __swift_project_value_buffer(v17, qword_1EDCD0F20);
        v18 = v3;
        v19 = sub_1D917741C();
        v20 = sub_1D9178CFC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = v4;
          v23 = swift_slowAlloc();
          *v21 = 138412290;
          v24 = sub_1D9176A5C();
          *(v21 + 4) = v24;
          *v23 = v24;
          _os_log_impl(&dword_1D8CEC000, v19, v20, "Failed to parse episode with error: %@", v21, 0xCu);
          sub_1D8D08A50(v23, &unk_1ECAB6C70, &unk_1D9188C30);
          v25 = v23;
          v4 = v22;
          MEMORY[0x1DA72CB90](v25, -1, -1);
          v26 = v21;
          v5 = a2;
          MEMORY[0x1DA72CB90](v26, -1, -1);
        }

        sub_1D8D7567C(v13, v15);

        v7 = *v5;
        *v5 = v16;
        v3 = 0;
        goto LABEL_4;
      }

      sub_1D8D7567C(v13, v15);

      MEMORY[0x1DA729B90](v29);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      v33 = v38;
      v6 = v36;
      if (v36 == v4)
      {
        goto LABEL_21;
      }
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t sub_1D90512CC(uint64_t a1, void **a2)
{
  v41 = *MEMORY[0x1E69E9840];
  type metadata accessor for ServerPodcastStation();
  v4 = objc_opt_self();
  v5 = sub_1D917802C();
  *&v40[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v40];

  v7 = *&v40[0];
  if (!v6)
  {
    v26 = v7;
    v27 = sub_1D9176A6C();

    swift_willThrow();
    v25 = v27;
LABEL_21:

    v28 = 0;
    goto LABEL_27;
  }

  v36 = a2;
  v34 = sub_1D9176C8C();
  v35 = v8;

  v9 = &off_1F545D1D0;
  v10 = 3;
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = sub_1D917802C();
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v15 = [v13 valueForKeyPath_];

    if (v15)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    if (*(&v39 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v16 = v37;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v40, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v17 = sub_1D9050EB4(v16, v36);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D90532B8(&qword_1ECAB9728, type metadata accessor for ServerPodcastStation);
  sub_1D917654C();
  if (v2)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F20);
    v19 = v2;
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = sub_1D9176A5C();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Failed to parse container with error: %@", v22, 0xCu);
      sub_1D8D08A50(v23, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    sub_1D8D7567C(v34, v35);

    v25 = *v36;
    *v36 = v2;
    goto LABEL_21;
  }

  v28 = *&v40[0];
  if (v17 >> 62)
  {
    v29 = sub_1D917935C();
  }

  else
  {
    v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D7567C(v34, v35);
  if (v29 <= 0)
  {

    v17 = 0;
  }

  v30 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
  swift_beginAccess();
  v31 = *(v28 + v30);
  *(v28 + v30) = v17;

LABEL_27:
  v32 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t sub_1D9051798(uint64_t a1, void **a2)
{
  v41 = *MEMORY[0x1E69E9840];
  type metadata accessor for ServerPodcast();
  v4 = objc_opt_self();
  v5 = sub_1D917802C();
  *&v40[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v40];

  v7 = *&v40[0];
  if (!v6)
  {
    v26 = v7;
    v27 = sub_1D9176A6C();

    swift_willThrow();
    v25 = v27;
LABEL_21:

    v28 = 0;
    goto LABEL_27;
  }

  v36 = a2;
  v34 = sub_1D9176C8C();
  v35 = v8;

  v9 = &off_1F545D220;
  v10 = 3;
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = sub_1D917802C();
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v15 = [v13 valueForKeyPath_];

    if (v15)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    if (*(&v39 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
      if (swift_dynamicCast())
      {
        v16 = v37;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8D08A50(v40, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v17 = sub_1D9050EB4(v16, v36);

  if (qword_1ECAB18B0 != -1)
  {
    swift_once();
  }

  sub_1D90532B8(&qword_1ECAB26C0, type metadata accessor for ServerPodcast);
  sub_1D917654C();
  if (v2)
  {

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F20);
    v19 = v2;
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = sub_1D9176A5C();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Failed to parse container with error: %@", v22, 0xCu);
      sub_1D8D08A50(v23, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    sub_1D8D7567C(v34, v35);

    v25 = *v36;
    *v36 = v2;
    goto LABEL_21;
  }

  v28 = *&v40[0];
  if (v17 >> 62)
  {
    v29 = sub_1D917935C();
  }

  else
  {
    v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D7567C(v34, v35);
  if (v29 <= 0)
  {

    v17 = 0;
  }

  v30 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v31 = *(v28 + v30);
  *(v28 + v30) = v17;

LABEL_27:
  v32 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t sub_1D9051C64(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v8 = result + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return v7;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    v10 = *(v8 + 8 * v5);

    v12 = a3(v11, a2);
    if (v3)
    {

      return v7;
    }

    v13 = v12;

    ++v5;
    if (v13)
    {
      MEMORY[0x1DA729B90](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      result = sub_1D917869C();
      v7 = v16;
      v5 = v9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(uint64_t a1)
{
  v7[0] = 1635017060;
  v7[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(a1 + 16) && (v2 = sub_1D8D6550C(v6), (v3 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v7);
    sub_1D8D9A308(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D9A308(v6);
    return 0;
  }
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC012parseChannelE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v24 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v1 + 32;
      do
      {
        v22 = v2;
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
          }

          v10 = *(v6 + 8 * v7);
          v11 = objc_opt_self();
          v12 = sub_1D917802C();
          v23 = 0;
          v13 = [v11 dataWithJSONObject:v12 options:0 error:&v23];

          v14 = v23;
          if (v13)
          {
            break;
          }

          v8 = v14;
          v9 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v7)
          {
            v2 = v22;
            goto LABEL_15;
          }
        }

        v15 = sub_1D9176C8C();
        v17 = v16;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerChannel();
        sub_1D90532B8(&qword_1ECAB9720, type metadata accessor for ServerChannel);
        sub_1D917654C();
        v18 = sub_1D8D7567C(v15, v17);
        MEMORY[0x1DA729B90](v18);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        v5 = v7 + 1;
        sub_1D917869C();
        v2 = v24;
      }

      while (v4 - 1 != v7);
    }

LABEL_15:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC019parsePodcastEpisodeE0ySayAA06ServerhI0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v24 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v1 + 32;
      do
      {
        v22 = v2;
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
          }

          v10 = *(v6 + 8 * v7);
          v11 = objc_opt_self();
          v12 = sub_1D917802C();
          v23 = 0;
          v13 = [v11 dataWithJSONObject:v12 options:0 error:&v23];

          v14 = v23;
          if (v13)
          {
            break;
          }

          v8 = v14;
          v9 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v7)
          {
            v2 = v22;
            goto LABEL_15;
          }
        }

        v15 = sub_1D9176C8C();
        v17 = v16;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerPodcastEpisode();
        sub_1D90532B8(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode);
        sub_1D917654C();
        v18 = sub_1D8D7567C(v15, v17);
        MEMORY[0x1DA729B90](v18);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        v5 = v7 + 1;
        sub_1D917869C();
        v2 = v24;
      }

      while (v4 - 1 != v7);
    }

LABEL_15:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC015parseTranscriptE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v24 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v1 + 32;
      do
      {
        v22 = v2;
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
          }

          v10 = *(v6 + 8 * v7);
          v11 = objc_opt_self();
          v12 = sub_1D917802C();
          v23 = 0;
          v13 = [v11 dataWithJSONObject:v12 options:0 error:&v23];

          v14 = v23;
          if (v13)
          {
            break;
          }

          v8 = v14;
          v9 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v7)
          {
            v2 = v22;
            goto LABEL_15;
          }
        }

        v15 = sub_1D9176C8C();
        v17 = v16;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerTranscript(0);
        sub_1D90532B8(&qword_1ECAB2148, type metadata accessor for ServerTranscript);
        sub_1D917654C();
        v18 = sub_1D8D7567C(v15, v17);
        MEMORY[0x1DA729B90](v18);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        v5 = v7 + 1;
        sub_1D917869C();
        v2 = v24;
      }

      while (v4 - 1 != v7);
    }

LABEL_15:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC015parseCategoriesE0ySayAA14ServerCategoryCGSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v24 = MEMORY[0x1E69E7CC0];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v1 + 32;
      do
      {
        v22 = v2;
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
          }

          v10 = *(v6 + 8 * v7);
          v11 = objc_opt_self();
          v12 = sub_1D917802C();
          v23 = 0;
          v13 = [v11 dataWithJSONObject:v12 options:0 error:&v23];

          v14 = v23;
          if (v13)
          {
            break;
          }

          v8 = v14;
          v9 = sub_1D9176A6C();

          swift_willThrow();
          if (v4 == ++v7)
          {
            v2 = v22;
            goto LABEL_15;
          }
        }

        v15 = sub_1D9176C8C();
        v17 = v16;

        if (qword_1ECAB18B0 != -1)
        {
          swift_once();
        }

        type metadata accessor for ServerCategory();
        sub_1D90532B8(&qword_1ECAB8F68, type metadata accessor for ServerCategory);
        sub_1D917654C();
        v18 = sub_1D8D7567C(v15, v17);
        MEMORY[0x1DA729B90](v18);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        v5 = v7 + 1;
        sub_1D917869C();
        v2 = v24;
      }

      while (v4 - 1 != v7);
    }

LABEL_15:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D9052EB8(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 > 2)
  {
    if (*a2 <= 4u)
    {
      if (v2 == 3)
      {
        v3 = _s18PodcastsFoundation26MediaRequestResponseParserC012parseChannelE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(a1);
      }

      else
      {
        v3 = _s18PodcastsFoundation26MediaRequestResponseParserC015parseTranscriptE0ySayAA06ServerH0CGSDys11AnyHashableVypGFZ_0(a1);
      }

      goto LABEL_17;
    }

    if (v2 == 5)
    {
      v3 = _s18PodcastsFoundation26MediaRequestResponseParserC015parseCategoriesE0ySayAA14ServerCategoryCGSDys11AnyHashableVypGFZ_0(a1);
LABEL_17:
      v6 = v3;
      if (v3 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
        v7 = sub_1D91796FC();
        goto LABEL_20;
      }

      sub_1D9179C4C();
      goto LABEL_19;
    }

LABEL_11:
    v3 = _s18PodcastsFoundation26MediaRequestResponseParserC019parsePodcastEpisodeE0ySayAA06ServerhI0CGSDys11AnyHashableVypGFZ_0(a1);
    goto LABEL_17;
  }

  if (!*a2)
  {
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    v4 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
    if (v4)
    {
      v9 = 0;
      v5 = sub_1D9051798;
      goto LABEL_14;
    }

LABEL_21:
    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
    v7 = sub_1D91796FC();

    goto LABEL_20;
  }

  v4 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(a1);
  if (!v4)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v5 = sub_1D90512CC;
LABEL_14:
  v6 = sub_1D9051C64(v4, &v9, v5);

  if (v6 >> 62)
  {
    goto LABEL_22;
  }

LABEL_15:

  sub_1D9179C4C();
LABEL_19:
  v7 = v6;
LABEL_20:

  return v7;
}

uint64_t _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(uint64_t a1)
{
  v7[0] = 1954047342;
  v7[1] = 0xE400000000000000;
  sub_1D91793EC();
  if (*(a1 + 16) && (v2 = sub_1D8D6550C(v6), (v3 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v7);
    sub_1D8D9A308(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D9A308(v6);
    return 0;
  }
}

void sub_1D9053138(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 56);
  sub_1D9050A28(a1, *(v2 + 48), *(v2 + 16), *(v2 + 24), a2);
}

unint64_t sub_1D905315C()
{
  result = qword_1EDCD0A68;
  if (!qword_1EDCD0A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB5240, qword_1D918E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A68);
  }

  return result;
}

unint64_t sub_1D90531C4()
{
  result = qword_1ECAB9710;
  if (!qword_1ECAB9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9710);
  }

  return result;
}

unint64_t sub_1D9053264()
{
  result = qword_1ECAB9718;
  if (!qword_1ECAB9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9718);
  }

  return result;
}

uint64_t sub_1D90532B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9053300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_1D8E93CA4();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D8D65618(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D8D65618(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1D91793CC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1D8D65618(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}